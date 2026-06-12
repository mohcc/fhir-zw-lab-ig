# ZW Lab Order Task - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Order Task**

## Resource Profile: ZW Lab Order Task 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-task | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWLabTask |

 
Task that wraps a laboratory test order sent from Impilo (EHR) to a LIMS via OpenHIM. Carries the ServiceRequest plus contextual clinical information (ZW.LAB.A1). 

**Usages:**

* Examples for this Profile: [Task/example-zw-lab-task-order](Task-example-zw-lab-task-order.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-task.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-task.csv), [Excel](StructureDefinition-zw-lab-task.xlsx), [Schematron](StructureDefinition-zw-lab-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-task",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-task",
  "version" : "0.1.0",
  "name" : "ZWLabTask",
  "title" : "ZW Lab Order Task",
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
  "description" : "Task that wraps a laboratory test order sent from Impilo (EHR) to a LIMS via OpenHIM. Carries the ServiceRequest plus contextual clinical information (ZW.LAB.A1).",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.basedOn",
      "path" : "Task.basedOn",
      "short" : "The ServiceRequest this Task fulfils",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "mustSupport" : true
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "short" : "Patient subject of the order",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "short" : "Ordering provider (Practitioner or Organization)",
      "mustSupport" : true
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "short" : "Ordering facility",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-facility"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.recipient",
      "path" : "Task.restriction.recipient",
      "short" : "Receiving laboratory (ZW.LAB.A.DE10)",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "description" : "Clinical context inputs carried on the order Task.",
        "rules" : "open"
      }
    },
    {
      "id" : "Task.input:pregnant",
      "path" : "Task.input",
      "sliceName" : "pregnant",
      "short" : "Pregnant at time of ordering (ZW.LAB.A.DE13)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:pregnant.type.coding.system",
      "path" : "Task.input.type.coding.system",
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type"
    },
    {
      "id" : "Task.input:pregnant.type.coding.code",
      "path" : "Task.input.type.coding.code",
      "min" : 1,
      "patternCode" : "pregnant"
    },
    {
      "id" : "Task.input:pregnant.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Task.input:breastfeeding",
      "path" : "Task.input",
      "sliceName" : "breastfeeding",
      "short" : "Breastfeeding at time of ordering (ZW.LAB.A.DE14)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:breastfeeding.type.coding.system",
      "path" : "Task.input.type.coding.system",
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type"
    },
    {
      "id" : "Task.input:breastfeeding.type.coding.code",
      "path" : "Task.input.type.coding.code",
      "min" : 1,
      "patternCode" : "breastfeeding"
    },
    {
      "id" : "Task.input:breastfeeding.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Task.input:artStartDate",
      "path" : "Task.input",
      "sliceName" : "artStartDate",
      "short" : "ART start date (ZW.LAB.A.DE15)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:artStartDate.type.coding.system",
      "path" : "Task.input.type.coding.system",
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type"
    },
    {
      "id" : "Task.input:artStartDate.type.coding.code",
      "path" : "Task.input.type.coding.code",
      "min" : 1,
      "patternCode" : "art-start-date"
    },
    {
      "id" : "Task.input:artStartDate.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Task.input:regimen",
      "path" : "Task.input",
      "sliceName" : "regimen",
      "short" : "Current ART regimen (ZW.LAB.A.DE16)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:regimen.type.coding.system",
      "path" : "Task.input.type.coding.system",
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type"
    },
    {
      "id" : "Task.input:regimen.type.coding.code",
      "path" : "Task.input.type.coding.code",
      "min" : 1,
      "patternCode" : "regimen"
    },
    {
      "id" : "Task.input:regimen.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Task.output:diagnosticReport",
      "path" : "Task.output",
      "sliceName" : "diagnosticReport",
      "short" : "DiagnosticReport produced by the LIMS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:diagnosticReport.type.coding.system",
      "path" : "Task.output.type.coding.system",
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-output-type"
    },
    {
      "id" : "Task.output:diagnosticReport.type.coding.code",
      "path" : "Task.output.type.coding.code",
      "min" : 1,
      "patternCode" : "diagnostic-report"
    },
    {
      "id" : "Task.output:diagnosticReport.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-diagnostic-report"]
      }]
    }]
  }
}

```
