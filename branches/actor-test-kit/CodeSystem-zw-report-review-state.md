# ZW Report Review State - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Report Review State**

## CodeSystem: ZW Report Review State 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-report-review-state | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:CSZWReportReviewState |

 
LIMS workflow/review state for a laboratory report (ZW.LAB.A.DE73). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWReportReviewState](ValueSet-zw-report-review-state.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-report-review-state",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-report-review-state",
  "version" : "0.1.0",
  "name" : "CSZWReportReviewState",
  "title" : "ZW Report Review State",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:30:06+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "LIMS workflow/review state for a laboratory report (ZW.LAB.A.DE73).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "pending",
    "display" : "Pending",
    "definition" : "Result entry in progress; not yet submitted."
  },
  {
    "code" : "received",
    "display" : "Received",
    "definition" : "Specimen received by the laboratory."
  },
  {
    "code" : "to-be-verified",
    "display" : "To Be Verified",
    "definition" : "Result awaiting verification."
  },
  {
    "code" : "verified",
    "display" : "Verified",
    "definition" : "Result verified by authorised person."
  },
  {
    "code" : "published",
    "display" : "Published",
    "definition" : "Report published and available to the requester."
  }]
}

```
