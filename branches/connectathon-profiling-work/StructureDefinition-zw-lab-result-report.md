# ZW Lab Result Report (ZW.LAB.A2) - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Result Report (ZW.LAB.A2)**

## Logical Model: ZW Lab Result Report (ZW.LAB.A2) 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-report | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWLabResultReport |

 
Logical model for reporting a laboratory result in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A2 of the Zimbabwe Lab DAK data dictionary. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-result-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-result-report.csv), [Excel](StructureDefinition-zw-lab-result-report.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-result-report",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-report",
  "version" : "0.1.0",
  "name" : "ZWLabResultReport",
  "title" : "ZW Lab Result Report (ZW.LAB.A2)",
  "status" : "active",
  "date" : "2026-06-11T12:17:30+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Logical model for reporting a laboratory result in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A2 of the Zimbabwe Lab DAK data dictionary.",
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
  "type" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-report",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "zw-lab-result-report",
      "path" : "zw-lab-result-report",
      "short" : "ZW Lab Result Report (ZW.LAB.A2)",
      "definition" : "Logical model for reporting a laboratory result in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A2 of the Zimbabwe Lab DAK data dictionary."
    },
    {
      "id" : "zw-lab-result-report.reportReviewState",
      "path" : "zw-lab-result-report.reportReviewState",
      "short" : "Report Review State (ZW.LAB.A.DE73)",
      "definition" : "Review/publication state of the result report in the laboratory workflow.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-report-review-state"
      }
    },
    {
      "id" : "zw-lab-result-report.resultSubmitter",
      "path" : "zw-lab-result-report.resultSubmitter",
      "short" : "Result Submitter (ZW.LAB.A.DE79)",
      "definition" : "Person who submitted the result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-result-report.resultVerifier",
      "path" : "zw-lab-result-report.resultVerifier",
      "short" : "Results Verifier (ZW.LAB.A.DE80)",
      "definition" : "Person who verified/interpreted the result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-result-report.dateSubmitted",
      "path" : "zw-lab-result-report.dateSubmitted",
      "short" : "Date Submitted (ZW.LAB.A.DE81)",
      "definition" : "Date and time the result was submitted.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "zw-lab-result-report.dateVerified",
      "path" : "zw-lab-result-report.dateVerified",
      "short" : "Date Verified (ZW.LAB.A.DE82)",
      "definition" : "Date and time the result was verified/issued.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "zw-lab-result-report.resultValue",
      "path" : "zw-lab-result-report.resultValue",
      "short" : "Result Value (ZW.LAB.A.DE83)",
      "definition" : "Measured/observed value of the test result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-result-report.resultUnit",
      "path" : "zw-lab-result-report.resultUnit",
      "short" : "Result Unit (ZW.LAB.A.DE84)",
      "definition" : "Unit of measure for the result value (UCUM). Required when the result is a quantity.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-result-report.resultStatus",
      "path" : "zw-lab-result-report.resultStatus",
      "short" : "Result Status (ZW.LAB.A.DE85)",
      "definition" : "Status of the individual result (e.g. preliminary, final, amended).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-status"
      }
    },
    {
      "id" : "zw-lab-result-report.testingMethod",
      "path" : "zw-lab-result-report.testingMethod",
      "short" : "Testing Method (ZW.LAB.A.DE86)",
      "definition" : "Method used to produce the result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "zw-lab-result-report.specimenRejectionReason",
      "path" : "zw-lab-result-report.specimenRejectionReason",
      "short" : "Specimen Rejection Reason (ZW.LAB.A.DE88)",
      "definition" : "Reason(s) the specimen was rejected by the laboratory, if applicable.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-rejection-reasons"
      }
    }]
  }
}

```
