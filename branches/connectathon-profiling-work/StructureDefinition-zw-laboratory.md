# ZW Laboratory (Organization) - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Laboratory (Organization)**

## Resource Profile: ZW Laboratory (Organization) 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWLaboratory |

 
A laboratory in the national Zimbabwe laboratory network. Used as the receiving laboratory for an order (ZW.LAB.A.DE10) and as the reporting organisation for a DiagnosticReport. 

**Usages:**

* Refer to this Profile: [ZW Lab Order Task](StructureDefinition-zw-lab-task.md)
* Examples for this Profile: [National Virology Laboratory](Organization-example-national-virology-lab.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-laboratory.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-laboratory.csv), [Excel](StructureDefinition-zw-laboratory.xlsx), [Schematron](StructureDefinition-zw-laboratory.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-laboratory",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory",
  "version" : "0.1.0",
  "name" : "ZWLaboratory",
  "title" : "ZW Laboratory (Organization)",
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
  "description" : "A laboratory in the national Zimbabwe laboratory network. Used as the receiving laboratory for an order (ZW.LAB.A.DE10) and as the reporting organisation for a DiagnosticReport.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:nationalLabCode",
      "path" : "Organization.identifier",
      "sliceName" : "nationalLabCode",
      "short" : "National laboratory code (e.g. ZWLHRE002)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:nationalLabCode.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-laboratories"
    },
    {
      "id" : "Organization.identifier:nationalLabCode.value",
      "path" : "Organization.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Organization type — must include 'Laboratory'",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
