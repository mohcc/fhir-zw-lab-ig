# ZW Lab Specimen - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Specimen**

## Resource Profile: ZW Lab Specimen 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWSpecimen |

 
A laboratory specimen collected in the Zimbabwe lab workflow (ZW.LAB.A1 DE52–DE72). 

**Usages:**

* Refer to this Profile: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md), [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md) and [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md)
* Examples for this Profile: [Specimen/example-zw-specimen-plasma](Specimen-example-zw-specimen-plasma.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-specimen.csv), [Excel](StructureDefinition-zw-specimen.xlsx), [Schematron](StructureDefinition-zw-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-specimen",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen",
  "version" : "0.1.0",
  "name" : "ZWSpecimen",
  "title" : "ZW Lab Specimen",
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
  "description" : "A laboratory specimen collected in the Zimbabwe lab workflow (ZW.LAB.A1 DE52–DE72).",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
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
      "id" : "Specimen.identifier:clientSampleId",
      "path" : "Specimen.identifier",
      "sliceName" : "clientSampleId",
      "short" : "Client sample identifier (ZW.LAB.A.DE52)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:clientSampleId.system",
      "path" : "Specimen.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/identifier/client-sample-id"
    },
    {
      "id" : "Specimen.identifier:clientSampleId.value",
      "path" : "Specimen.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "short" : "Sample type (ZW.LAB.A.DE53)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-sample-types"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "short" : "Date/time collected (ZW.LAB.A.DE72)",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "short" : "Specimen rejection reason(s) (ZW.LAB.A.DE88)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-rejection-reasons"
      }
    },
    {
      "id" : "Specimen.note",
      "path" : "Specimen.note",
      "short" : "Additional notes on specimen condition or rejection",
      "mustSupport" : true
    }]
  }
}

```
