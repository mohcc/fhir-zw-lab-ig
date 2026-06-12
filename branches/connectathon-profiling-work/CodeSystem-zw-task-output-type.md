# ZW Lab Task Output Type - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Task Output Type**

## CodeSystem: ZW Lab Task Output Type 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-output-type | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWTaskOutputType |

 
Type codes for Task.output slices on the ZWLabTask order profile. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-task-output-type",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-output-type",
  "version" : "0.1.0",
  "name" : "CSZWTaskOutputType",
  "title" : "ZW Lab Task Output Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T12:17:30+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Type codes for Task.output slices on the ZWLabTask order profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "diagnostic-report",
    "display" : "Diagnostic Report",
    "definition" : "Reference to the DiagnosticReport produced by the LIMS."
  }]
}

```
