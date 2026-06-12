# Example — National Virology Laboratory - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — National Virology Laboratory**

## Example Organization: Example — National Virology Laboratory

Profile: [ZW Laboratory (Organization)](StructureDefinition-zw-laboratory.md)

**identifier**: `http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-laboratories`/ZWLPAR001

**type**: Laboratory

**name**: National Virology Laboratory



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example-national-virology-lab",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory"]
  },
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-laboratories",
    "value" : "ZWLPAR001"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "other",
      "display" : "Other"
    }],
    "text" : "Laboratory"
  }],
  "name" : "National Virology Laboratory"
}

```
