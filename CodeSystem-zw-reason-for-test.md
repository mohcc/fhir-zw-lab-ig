# ZW Reason for Test - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Reason for Test**

## CodeSystem: ZW Reason for Test 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-reason-for-test | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWReasonForTest |

 
Coded reasons for laboratory test requests in Zimbabwe (ZW.LAB.A.DE30). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWReasonForTest](ValueSet-zw-reason-for-test.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-reason-for-test",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-reason-for-test",
  "version" : "0.1.0",
  "name" : "CSZWReasonForTest",
  "title" : "ZW Reason for Test",
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
  "description" : "Coded reasons for laboratory test requests in Zimbabwe (ZW.LAB.A.DE30).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 21,
  "concept" : [{
    "code" : "routine",
    "display" : "Routine",
    "definition" : "Routine monitoring."
  },
  {
    "code" : "target-clinical-failure",
    "display" : "Target Clinical Failure",
    "definition" : "Suspected clinical treatment failure."
  },
  {
    "code" : "targeted-immunological-failure",
    "display" : "Targeted Immunological Failure",
    "definition" : "Suspected immunological treatment failure."
  },
  {
    "code" : "repeat-after-adherence",
    "display" : "Repeat After Enhanced Adherence Counselling",
    "definition" : "Repeat test after adherence counselling."
  },
  {
    "code" : "baseline-viral-load",
    "display" : "Baseline Viral Load",
    "definition" : "Baseline measurement at ART initiation."
  },
  {
    "code" : "confirmation-of-treatment",
    "display" : "Confirmation of Treatment",
    "definition" : "Confirmation of treatment response."
  },
  {
    "code" : "failure-repeat-vl-3m",
    "display" : "Failure — Repeat VL at 3 Months",
    "definition" : "Suspected failure; repeat at 3 months."
  },
  {
    "code" : "single-drug-substitution",
    "display" : "Single Drug Substitution",
    "definition" : "Following a single drug substitution."
  },
  {
    "code" : "pregnant-mother",
    "display" : "Pregnant Mother",
    "definition" : "Pregnant woman monitoring."
  },
  {
    "code" : "lactating-mother",
    "display" : "Lactating Mother",
    "definition" : "Lactating/breastfeeding mother monitoring."
  },
  {
    "code" : "eid-initial-birth",
    "display" : "EID: Initial at Birth",
    "definition" : "Early infant diagnosis at birth."
  },
  {
    "code" : "eid-initial-6-8wks",
    "display" : "EID: Initial at 6–8 Weeks",
    "definition" : "Early infant diagnosis at 6–8 weeks."
  },
  {
    "code" : "eid-initial-gt2m",
    "display" : "EID: Initial at >2 Months",
    "definition" : "Early infant diagnosis at >2 months."
  },
  {
    "code" : "eid-repeat-6wks",
    "display" : "EID: Repeat at 6 Weeks",
    "definition" : "EID repeat test at 6 weeks."
  },
  {
    "code" : "eid-repeat-9m",
    "display" : "EID: Repeat at 9 Months",
    "definition" : "EID repeat test at 9 months."
  },
  {
    "code" : "eid-positive-rdt-gt18m",
    "display" : "EID: Following Positive RDT at >18 Months",
    "definition" : "EID after positive rapid test at >18 months."
  },
  {
    "code" : "eid-confirmatory",
    "display" : "EID: Confirmatory (After First EID Positive)",
    "definition" : "Confirmatory EID after first positive result."
  },
  {
    "code" : "postnatal-routine-1st",
    "display" : "Routine 1st Post-natal Tests",
    "definition" : "First routine post-natal testing."
  },
  {
    "code" : "symptomatic-child",
    "display" : "Symptomatic Child",
    "definition" : "Testing of a symptomatic infant/child."
  },
  {
    "code" : "post-weaning",
    "display" : "Post Weaning Test",
    "definition" : "Test following cessation of breastfeeding."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Other reason."
  }]
}

```
