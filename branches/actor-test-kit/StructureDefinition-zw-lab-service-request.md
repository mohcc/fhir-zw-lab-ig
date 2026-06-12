# ZW Lab Service Request - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Service Request**

## Resource Profile: ZW Lab Service Request 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:ZWLabServiceRequest |

 
A laboratory test request from a Zimbabwe health facility to a laboratory (ZW.LAB.A1 DE17–DE72). 

**Usages:**

* Use this Profile: [ZW Lab Order Transaction Bundle](StructureDefinition-zw-lab-order-bundle.md) and [ZW Lab Report Document Bundle](StructureDefinition-zw-lab-report-bundle.md)
* Refer to this Profile: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md), [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md), [ZW Lab Order Task](StructureDefinition-zw-lab-task.md) and [ZW Lab Specimen](StructureDefinition-zw-specimen.md)
* Examples for this Profile: [ServiceRequest/example-zw-service-request-vl](ServiceRequest-example-zw-service-request-vl.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-service-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-service-request.csv), [Excel](StructureDefinition-zw-lab-service-request.xlsx), [Schematron](StructureDefinition-zw-lab-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-service-request",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request",
  "version" : "0.1.0",
  "name" : "ZWLabServiceRequest",
  "title" : "ZW Lab Service Request",
  "status" : "active",
  "date" : "2026-06-12T09:30:06+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "A laboratory test request from a Zimbabwe health facility to a laboratory (ZW.LAB.A1 DE17–DE72).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Test requested (ZW.LAB.A.DE17)",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-lab-tests"
      }
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Ordering clinician/provider",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "short" : "Ordering facility (ZW.LAB.A.DE11)",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-facility"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Reason for test (ZW.LAB.A.DE30)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-reason-for-test"
      }
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "short" : "Specimen for this test request",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
