function fn() {
  // Environment is selected with -Dkarate.env=<name> (defaults to the ZW test server).
  // Use -Dkarate.env=local for a localhost server, or -Dkarate.env=hapi for the public sandbox.
  var env = karate.env;
  if (!env) {
    env = 'zw';
  }
  karate.log('karate.env =', env);

  var config = {
    // FHIR server base URL. Defaults to the ZW test server (which has the IG content loaded).
    // Override per run with:  mvn test -DargLine="-DbaseUrl=https://my.server/fhir"
    // or set a named environment below and run with -Dkarate.env=<name>.
    baseUrl: karate.properties['baseUrl'] || 'http://173.212.195.88/fhir'
  };

  if (env == 'local') {
    config.baseUrl = karate.properties['baseUrl'] || 'http://localhost:8080/fhir';
  } else if (env == 'hapi') {
    // Public HAPI R4 sandbox — handy for smoke-testing the scaffold.
    config.baseUrl = 'https://hapi.fhir.org/baseR4';
  }

  // Canonical URLs of the Zimbabwe profiles the $validate scenarios validate against.
  config.profiles = {
    order: 'http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request',
    result: 'http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-diagnostic-report'
  };

  // error/fatal issues from a $validate OperationOutcome (empty == conformant).
  config.errorIssues = function (oo) {
    return karate.jsonPath(oo, "$.issue[?(@.severity=='error' || @.severity=='fatal')]");
  };

  // Every request/response is FHIR JSON.
  karate.configure('headers', { 'Content-Type': 'application/fhir+json', 'Accept': 'application/fhir+json' });
  // Trust self-signed certs and give the server room to breathe.
  karate.configure('ssl', true);
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 20000);

  return config;
}
