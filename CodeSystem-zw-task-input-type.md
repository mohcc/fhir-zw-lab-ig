# ZW Lab Task Input Type - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Task Input Type**

## CodeSystem: ZW Lab Task Input Type 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWTaskInputType |

 
Type codes for Task.input slices on the ZWLabTask order profile. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-task-input-type",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type",
  "version" : "0.1.0",
  "name" : "CSZWTaskInputType",
  "title" : "ZW Lab Task Input Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T12:19:15+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Type codes for Task.input slices on the ZWLabTask order profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "pregnant",
    "display" : "Pregnant",
    "definition" : "Patient is pregnant at time of ordering."
  },
  {
    "code" : "breastfeeding",
    "display" : "Breastfeeding",
    "definition" : "Patient is breastfeeding at time of ordering."
  },
  {
    "code" : "art-start-date",
    "display" : "ART Start Date",
    "definition" : "Date the patient started ART."
  },
  {
    "code" : "regimen",
    "display" : "Regimen",
    "definition" : "Current ART regimen."
  }]
}

```
