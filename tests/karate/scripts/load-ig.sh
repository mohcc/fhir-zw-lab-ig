#!/usr/bin/env bash
# Loads this IG's conformance resources (and its zw.fhir.ig.core dependency)
# onto a FHIR server, so $validate?profile=... works there.
# Usage:
#   tests/karate/scripts/load-ig.sh [FHIR_BASE_URL]   # default http://localhost:8090/fhir
set -euo pipefail
cd "$(dirname "$0")/../../.."

BASE="${1:-${SHR_URL:-http://localhost:8090/fhir}}"
SRC="fsh-generated/resources"
CORE_PKG="$HOME/.fhir/packages/zw.fhir.ig.core#0.1.0/package"

if [ ! -d "$SRC" ]; then
  echo "ERROR: $SRC not found — run 'sushi .' first" >&2
  exit 1
fi

python3 - "$BASE" "$SRC" "$CORE_PKG" <<'PY'
import json
import os
import sys
import urllib.parse
import urllib.request

base, src, core = sys.argv[1], sys.argv[2], sys.argv[3]
CONFORMANCE = ('CodeSystem', 'ValueSet', 'StructureDefinition')

def put(resource):
    rt = resource['resourceType']
    canonical = resource.get('url')
    if canonical:
        # conditional update by canonical URL: avoids id collisions between
        # packages (e.g. both IGs define an SD with id 'citizenship')
        resource = dict(resource)
        resource.pop('id', None)
        target = f"{base}/{rt}?url={urllib.parse.quote(canonical, safe='')}"
    else:
        target = f"{base}/{rt}/{resource['id']}"
    data = json.dumps(resource).encode()
    req = urllib.request.Request(target, data=data, method='PUT',
                                 headers={'Content-Type': 'application/fhir+json'})
    with urllib.request.urlopen(req) as resp:
        return resp.status

def load_dir(path, label):
    if not os.path.isdir(path):
        print(f"  (skipping {label}: {path} not found)")
        return
    ok = failed = 0
    for name in sorted(os.listdir(path)):
        if not name.endswith('.json') or name.startswith('.'):
            continue
        try:
            with open(os.path.join(path, name)) as f:
                r = json.load(f)
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        if r.get('resourceType') not in CONFORMANCE or 'id' not in r:
            continue
        try:
            put(r)
            ok += 1
        except Exception as e:
            failed += 1
            print(f"  FAILED {name}: {e}")
    print(f"  {label}: {ok} loaded, {failed} failed")

print(f"Loading conformance resources onto {base}")
load_dir(core, 'zw.fhir.ig.core')
load_dir(src, 'zw.fhir.ig.lab')
PY
