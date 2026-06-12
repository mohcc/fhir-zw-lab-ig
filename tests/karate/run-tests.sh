#!/usr/bin/env bash
# ZW Lab actor conformance test kit runner.
#
#   ./run-tests.sh                       # default suite (happy path, all roles)
#   ./run-tests.sh @lab-order-placer     # one actor's suite
#   ./run-tests.sh @auditor              # audit externally submitted payloads
#   KARATE_ENV=hosted ./run-tests.sh     # hosted sandbox (see karate-config.js)
#   SHR_URL=https://my-shr/fhir ./run-tests.sh   # any FHIR base URL
set -euo pipefail
cd "$(dirname "$0")"
REPO_ROOT="$(cd ../.. && pwd)"

# returns success when a working Java 17+ is NOT on the PATH
need_java() {
  command -v java >/dev/null 2>&1 || return 0
  major="$(java -version 2>&1 | sed -n 's/.*version "\([0-9]*\).*/\1/p' | head -1)"
  [ -z "$major" ] && return 0
  [ "$major" -lt 17 ]
}

# Karate needs Java 17+. If the active java is missing or too old, use the
# SDKMAN candidate pinned in the repo's .sdkmanrc (sdkman-init.sh itself needs
# bash 4+, so address the candidate directory directly for portability).
if need_java; then
  JAVA_CANDIDATE="$(sed -n 's/^java=//p' "$REPO_ROOT/.sdkmanrc" 2>/dev/null || true)"
  SDK_JAVA="${SDKMAN_DIR:-$HOME/.sdkman}/candidates/java/${JAVA_CANDIDATE:-none}"
  if [ -x "$SDK_JAVA/bin/java" ]; then
    export JAVA_HOME="$SDK_JAVA"
    export PATH="$JAVA_HOME/bin:$PATH"
  fi
fi
if need_java; then
  echo "ERROR: Java 17+ required. With SDKMAN: 'sdk env install' in the repo root." >&2
  exit 1
fi

KARATE_VERSION="${KARATE_VERSION:-2.0.3}"
JAR="karate-${KARATE_VERSION}.jar"
if [ ! -f "$JAR" ]; then
  echo "Downloading Karate ${KARATE_VERSION} (one-time)..."
  curl -fL -o "$JAR" "https://github.com/karatelabs/karate/releases/download/v${KARATE_VERSION}/karate-${KARATE_VERSION}.jar"
fi

# Always exclude workshop placeholders and scenarios that need server-side
# write validation (not yet enabled on the sandbox).
TAGS=(-t "~@workshop" -t "~@pending-validation")
if [ $# -gt 0 ]; then
  for t in "$@"; do TAGS+=(-t "$t"); done
else
  # the auditor needs AUDIT_PATIENT_IDENTIFIER; only run it when asked for
  TAGS+=(-t "~@auditor")
fi

java -jar "$JAR" run "${TAGS[@]}" -e "${KARATE_ENV:-local}" -g . features/

echo
echo "HTML report: $(pwd)/target/karate-reports/karate-summary.html"
