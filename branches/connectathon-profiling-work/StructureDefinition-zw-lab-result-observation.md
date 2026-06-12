# ZW Lab Result Observation - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Result Observation**

## Resource Profile: ZW Lab Result Observation 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-observation | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWLabResultObservation |

 
A single laboratory test result measured by a Zimbabwe LIMS (ZW.LAB.A2 DE83–DE87). 

**Usages:**

* Refer to this Profile: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md)
* Examples for this Profile: [Observation/example-zw-vl-observation](Observation-example-zw-vl-observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-result-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-result-observation.csv), [Excel](StructureDefinition-zw-lab-result-observation.xlsx), [Schematron](StructureDefinition-zw-lab-result-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-result-observation",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-observation",
  "version" : "0.1.0",
  "name" : "ZWLabResultObservation",
  "title" : "ZW Lab Result Observation",
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
  "description" : "A single laboratory test result measured by a Zimbabwe LIMS (ZW.LAB.A2 DE83–DE87).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "short" : "ServiceRequest that triggered this observation",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Result status (ZW.LAB.A.DE85)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-status"
      }
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Laboratory category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Test code (ZW.LAB.A.DE17)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-lab-tests"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Performer(s) of the observation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Result value (ZW.LAB.A.DE83)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.unit",
      "path" : "Observation.value[x].unit",
      "short" : "Result unit — UCUM (ZW.LAB.A.DE84)"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Testing method (ZW.LAB.A.DE86)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
