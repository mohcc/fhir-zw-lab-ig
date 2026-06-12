# ZW Lab Order Transaction Bundle - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Order Transaction Bundle**

## Resource Profile: ZW Lab Order Transaction Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:ZWLabOrderBundle |

 
Transaction Bundle used to submit a laboratory order to the Shared Health Record: a ZWLabTask wrapping a ZWLabServiceRequest, together with the ZWLabPatient and any ZWSpecimen resources. Submitted by the Lab Order Placer as a FHIR transaction (step 1 of the HIE transaction flow). Entries may be created with POST or submitted as idempotent client-id updates with PUT. 

**Usages:**

* Examples for this Profile: [Bundle/example-zw-lab-order-bundle](Bundle-example-zw-lab-order-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-order-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-order-bundle.csv), [Excel](StructureDefinition-zw-lab-order-bundle.xlsx), [Schematron](StructureDefinition-zw-lab-order-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-order-bundle",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle",
  "version" : "0.1.0",
  "name" : "ZWLabOrderBundle",
  "title" : "ZW Lab Order Transaction Bundle",
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
  "description" : "Transaction Bundle used to submit a laboratory order to the Shared Health Record: a ZWLabTask wrapping a ZWLabServiceRequest, together with the ZWLabPatient and any ZWSpecimen resources. Submitted by the Lab Order Placer as a FHIR transaction (step 1 of the HIE transaction flow). Entries may be created with POST or submitted as idempotent client-id updates with PUT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "Slice bundle entries by resource profile",
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:task",
      "path" : "Bundle.entry",
      "sliceName" : "task",
      "short" : "The order Task (workflow wrapper)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:task.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:task.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-task"]
      }]
    },
    {
      "id" : "Bundle.entry:task.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:serviceRequest",
      "path" : "Bundle.entry",
      "sliceName" : "serviceRequest",
      "short" : "The test request being placed",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:serviceRequest.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:serviceRequest.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }]
    },
    {
      "id" : "Bundle.entry:serviceRequest.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "Subject of the order",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:patient.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:specimen",
      "path" : "Bundle.entry",
      "sliceName" : "specimen",
      "short" : "Specimen(s) collected for the order",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:specimen.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:specimen.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Specimen",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen"]
      }]
    },
    {
      "id" : "Bundle.entry:specimen.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancy",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancy",
      "short" : "Pregnancy status at time of ordering (ZW.LAB.A.DE13)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:pregnancy.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:pregnancy.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-pregnancy-status"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancy.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }]
    },
    {
      "id" : "Bundle.entry:breastfeeding",
      "path" : "Bundle.entry",
      "sliceName" : "breastfeeding",
      "short" : "Breastfeeding status at time of ordering (ZW.LAB.A.DE14)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:breastfeeding.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:breastfeeding.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-breastfeeding-status"]
      }]
    },
    {
      "id" : "Bundle.entry:breastfeeding.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "constraint" : [{
        "key" : "zw-order-entry-method",
        "severity" : "error",
        "human" : "Order bundle entries are submitted as creates (POST) or idempotent client-id updates (PUT).",
        "expression" : "method = 'POST' or method = 'PUT'",
        "source" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order-bundle"
      }]
    }]
  }
}

```
