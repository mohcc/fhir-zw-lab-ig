# ZW Health Facility (Location) - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Health Facility (Location)**

## Resource Profile: ZW Health Facility (Location) 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-facility | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWFacility |

 
A health facility placing a laboratory order in Zimbabwe (ZW.LAB.A.DE11). 

**Usages:**

* Refer to this Profile: [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md) and [ZW Lab Order Task](StructureDefinition-zw-lab-task.md)
* Examples for this Profile: [Harare City Health Clinic](Location-example-order-facility.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-facility.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-facility.csv), [Excel](StructureDefinition-zw-facility.xlsx), [Schematron](StructureDefinition-zw-facility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-facility",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-facility",
  "version" : "0.1.0",
  "name" : "ZWFacility",
  "title" : "ZW Health Facility (Location)",
  "status" : "active",
  "date" : "2026-06-11T12:19:15+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "A health facility placing a laboratory order in Zimbabwe (ZW.LAB.A.DE11).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "Ordering facility name (ZW.LAB.A.DE11)",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
