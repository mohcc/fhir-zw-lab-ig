# ZW Specimen Rejection Reasons - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Specimen Rejection Reasons**

## CodeSystem: ZW Specimen Rejection Reasons 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-rejection-reasons | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:CSZWRejectionReasons |

 
Reasons a specimen was rejected by the laboratory (ZW.LAB.A.DE88). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWRejectionReasons](ValueSet-zw-rejection-reasons.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-rejection-reasons",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-rejection-reasons",
  "version" : "0.1.0",
  "name" : "CSZWRejectionReasons",
  "title" : "ZW Specimen Rejection Reasons",
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
  "description" : "Reasons a specimen was rejected by the laboratory (ZW.LAB.A.DE88).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "no-identification",
    "display" : "Specimen Lacked Proper Identification",
    "definition" : "Sample container not labelled."
  },
  {
    "code" : "form-mismatch",
    "display" : "Mismatching Form and Specimen",
    "definition" : "Request form does not match the specimen."
  },
  {
    "code" : "insufficient-quantity",
    "display" : "Insufficient Specimen Quantity",
    "definition" : "Sample volume too small."
  },
  {
    "code" : "no-request-form",
    "display" : "Request Form Not Submitted",
    "definition" : "No accompanying request form."
  },
  {
    "code" : "no-specimen",
    "display" : "Specimen Not Submitted",
    "definition" : "Request form received without specimen."
  },
  {
    "code" : "contamination",
    "display" : "Cross Contamination",
    "definition" : "Specimen contaminated."
  },
  {
    "code" : "humidity-indicator",
    "display" : "Sample Collected on Humidity Indicator",
    "definition" : "DBS collected on humidity indicator card."
  },
  {
    "code" : "clotted",
    "display" : "Clotted Blood",
    "definition" : "Blood specimen is clotted."
  },
  {
    "code" : "too-old",
    "display" : "Specimen Too Old",
    "definition" : "Specimen transit time exceeded."
  },
  {
    "code" : "haemolysed",
    "display" : "Haemolysed",
    "definition" : "Haemolysis detected."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Other rejection reason."
  }]
}

```
