# ZW Lab Order (ZW.LAB.A1) - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Order (ZW.LAB.A1)**

## Logical Model: ZW Lab Order (ZW.LAB.A1) 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:ZWLabOrder |

 
Logical model for ordering a laboratory test in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A1 of the Zimbabwe Lab DAK data dictionary. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-order.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-order.csv), [Excel](StructureDefinition-zw-lab-order.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-order",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order",
  "version" : "0.1.0",
  "name" : "ZWLabOrder",
  "title" : "ZW Lab Order (ZW.LAB.A1)",
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
  "description" : "Logical model for ordering a laboratory test in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A1 of the Zimbabwe Lab DAK data dictionary.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-order",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "zw-lab-order",
      "path" : "zw-lab-order",
      "short" : "ZW Lab Order (ZW.LAB.A1)",
      "definition" : "Logical model for ordering a laboratory test in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A1 of the Zimbabwe Lab DAK data dictionary."
    },
    {
      "id" : "zw-lab-order.ehrPatientId",
      "path" : "zw-lab-order.ehrPatientId",
      "short" : "EHR Patient ID (ZW.LAB.A.DE1)",
      "definition" : "Unique identifier of the client in the ordering EMR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-order.clientIdentifier",
      "path" : "zw-lab-order.clientIdentifier",
      "short" : "Client Identifier (ZW.LAB.A.DE2)",
      "definition" : "National or other client identifier used for identity matching.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "zw-lab-order.name",
      "path" : "zw-lab-order.name",
      "short" : "Client Name (ZW.LAB.A.DE3-DE4)",
      "definition" : "Client's given name (DE3) and family name (DE4).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "zw-lab-order.dateOfBirth",
      "path" : "zw-lab-order.dateOfBirth",
      "short" : "Date of Birth (ZW.LAB.A.DE5)",
      "definition" : "Client's date of birth.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "zw-lab-order.sex",
      "path" : "zw-lab-order.sex",
      "short" : "Sex (ZW.LAB.A.DE6)",
      "definition" : "Client's administrative sex.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
      }
    },
    {
      "id" : "zw-lab-order.artNumber",
      "path" : "zw-lab-order.artNumber",
      "short" : "ART Number (ZW.LAB.A.DE9)",
      "definition" : "Client's antiretroviral therapy (ART) number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-order.receivingLaboratory",
      "path" : "zw-lab-order.receivingLaboratory",
      "short" : "Receiving Laboratory (ZW.LAB.A.DE10)",
      "definition" : "Laboratory designated to perform the order, coded against the national laboratory list.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-laboratories"
      }
    },
    {
      "id" : "zw-lab-order.orderingFacility",
      "path" : "zw-lab-order.orderingFacility",
      "short" : "Ordering Facility (ZW.LAB.A.DE11)",
      "definition" : "Health facility placing the order.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-order.orderStatus",
      "path" : "zw-lab-order.orderStatus",
      "short" : "Order Status (ZW.LAB.A.DE12)",
      "definition" : "Lifecycle status of the fulfilment of the laboratory order.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "zw-lab-order.pregnant",
      "path" : "zw-lab-order.pregnant",
      "short" : "Pregnant (ZW.LAB.A.DE13)",
      "definition" : "Whether the client is pregnant at time of ordering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "zw-lab-order.breastfeeding",
      "path" : "zw-lab-order.breastfeeding",
      "short" : "Breastfeeding (ZW.LAB.A.DE14)",
      "definition" : "Whether the client is breastfeeding at time of ordering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "zw-lab-order.artStartDate",
      "path" : "zw-lab-order.artStartDate",
      "short" : "ART Start Date (ZW.LAB.A.DE15)",
      "definition" : "Date the client started antiretroviral therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "zw-lab-order.currentArtRegimen",
      "path" : "zw-lab-order.currentArtRegimen",
      "short" : "Current ART Regimen (ZW.LAB.A.DE16)",
      "definition" : "Client's current ART regimen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-order.testRequested",
      "path" : "zw-lab-order.testRequested",
      "short" : "Test Requested (ZW.LAB.A.DE17)",
      "definition" : "Laboratory test being requested, coded against the national test list.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-lab-tests"
      }
    },
    {
      "id" : "zw-lab-order.reasonForTest",
      "path" : "zw-lab-order.reasonForTest",
      "short" : "Reason for Test (ZW.LAB.A.DE30)",
      "definition" : "Clinical reason the test is being requested.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-reason-for-test"
      }
    },
    {
      "id" : "zw-lab-order.clientSampleId",
      "path" : "zw-lab-order.clientSampleId",
      "short" : "Client Sample Identifier (ZW.LAB.A.DE52)",
      "definition" : "Identifier assigned to the specimen at collection; the exchange key linking specimen, order and result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-order.sampleType",
      "path" : "zw-lab-order.sampleType",
      "short" : "Sample Type (ZW.LAB.A.DE53)",
      "definition" : "Type of specimen collected, coded against the national sample type list.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-sample-types"
      }
    },
    {
      "id" : "zw-lab-order.dateCollected",
      "path" : "zw-lab-order.dateCollected",
      "short" : "Date Collected (ZW.LAB.A.DE72)",
      "definition" : "Date and time the specimen was collected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
