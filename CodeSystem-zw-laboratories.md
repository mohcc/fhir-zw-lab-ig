# ZW National Laboratory List - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW National Laboratory List**

## CodeSystem: ZW National Laboratory List 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-laboratories | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWLaboratories |

 
National identifiers for public-health laboratories in Zimbabwe. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWLaboratories](ValueSet-zw-laboratories.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-laboratories",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-laboratories",
  "version" : "0.1.0",
  "name" : "CSZWLaboratories",
  "title" : "ZW National Laboratory List",
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
  "description" : "National identifiers for public-health laboratories in Zimbabwe.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "ZWLHRE002",
    "display" : "National Microbiology Reference Laboratory (NMRL)"
  },
  {
    "code" : "ZW000A0C",
    "display" : "BRIDH Laboratory"
  },
  {
    "code" : "ZW04030A",
    "display" : "Kadoma Laboratory"
  },
  {
    "code" : "ZW03050A",
    "display" : "Marondera Provincial Laboratory"
  },
  {
    "code" : "ZW02010A",
    "display" : "Bindura Provincial Laboratory"
  },
  {
    "code" : "ZWL000AOD",
    "display" : "AiBst Laboratory"
  },
  {
    "code" : "ZWL000001",
    "display" : "BRTI Laboratory"
  },
  {
    "code" : "ZWLPAR001",
    "display" : "National Virology Laboratory"
  },
  {
    "code" : "ZW01050A",
    "display" : "Mutare Provincial Laboratory"
  },
  {
    "code" : "ZW08050A",
    "display" : "Masvingo Provincial Laboratory"
  },
  {
    "code" : "ZW07030A",
    "display" : "Gweru Provincial Laboratory"
  },
  {
    "code" : "ZW06030A",
    "display" : "Gwanda Provincial Laboratory"
  },
  {
    "code" : "ZW05040B",
    "display" : "St Lukes Laboratory"
  },
  {
    "code" : "ZW04050A",
    "display" : "Chinhoyi Provincial Hospital Laboratory"
  },
  {
    "code" : "ZW05030A",
    "display" : "Victoria Falls Laboratory"
  }]
}

```
