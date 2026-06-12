# ZW Report Review State - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Report Review State**

## ValueSet: ZW Report Review State 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ValueSet/zw-report-review-state | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:VSZWReportReviewState |

 
Value set of LIMS workflow states for a laboratory report (ZW.LAB.A.DE73). 

 **References** 

* [Report Review State](StructureDefinition-report-review-state.md)
* [ZW Lab Result Report (ZW.LAB.A2)](StructureDefinition-zw-lab-result-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zw-report-review-state",
  "url" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-report-review-state",
  "version" : "0.1.0",
  "name" : "VSZWReportReviewState",
  "title" : "ZW Report Review State",
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
  "description" : "Value set of LIMS workflow states for a laboratory report (ZW.LAB.A.DE73).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-report-review-state"
    }]
  }
}

```
