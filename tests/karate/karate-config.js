function fn() {
  var env = karate.env || 'local';

  var config = {
    igCanonical: 'http://mohcc.gov.zw/fhir/lab',
    // local hapi-sandbox (https://github.com/costateixeira/hapi-sandbox)
    shrUrl: 'http://localhost:8090/fhir'
  };

  if (env === 'hosted' || env === 'zw') {
    // Hosted hapi-sandbox (ZW server): IGs installed, validation-on-write enabled
    config.shrUrl = 'http://173.212.195.88/fhir';
  }

  // SHR_URL always wins, regardless of env (e.g. to test your own repository)
  var override = java.lang.System.getenv('SHR_URL');
  if (override) {
    config.shrUrl = override;
  }

  config.profiles = {
    orderBundle: config.igCanonical + '/StructureDefinition/zw-lab-order-bundle',
    reportBundle: config.igCanonical + '/StructureDefinition/zw-lab-report-bundle',
    task: config.igCanonical + '/StructureDefinition/zw-lab-task',
    serviceRequest: config.igCanonical + '/StructureDefinition/zw-lab-service-request',
    patient: config.igCanonical + '/StructureDefinition/zw-lab-patient',
    specimen: config.igCanonical + '/StructureDefinition/zw-specimen',
    diagnosticReport: config.igCanonical + '/StructureDefinition/zw-lab-diagnostic-report',
    observation: config.igCanonical + '/StructureDefinition/zw-lab-result-observation'
  };

  // aliases used by the transaction-level features (features/transactions/)
  config.baseUrl = config.shrUrl;
  config.profiles.order = config.profiles.serviceRequest;
  config.profiles.result = config.profiles.diagnosticReport;

  // error/fatal issues from a $validate OperationOutcome (empty == conformant)
  config.errorIssues = function (oo) {
    return karate.jsonPath(oo, "$.issue[?(@.severity=='error' || @.severity=='fatal')]");
  };

  config.systems = {
    ehrPatientId: config.igCanonical + '/identifier/ehr-patient-id',
    clientSampleId: config.igCanonical + '/identifier/client-sample-id',
    reportDocument: config.igCanonical + '/identifier/report-document',
    laboratories: config.igCanonical + '/CodeSystem/zw-laboratories'
  };

  karate.configure('headers', { 'Content-Type': 'application/fhir+json', 'Accept': 'application/fhir+json' });
  karate.configure('ssl', true);
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 60000);

  karate.log('ZW Lab test kit — env:', env, '— SHR:', config.shrUrl);
  return config;
}
