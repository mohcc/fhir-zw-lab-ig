# ZW Lab Report Composition - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Report Composition**

## Resource Profile: ZW Lab Report Composition 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-report-composition | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:ZWLabReportComposition |

 
Composition for a Zimbabwe laboratory result report document. The legal attester records the sign-off of the report by the responsible laboratory authority (ZW.LAB.A.DE80/DE82). 

**Usages:**

* Use this Profile: [ZW Lab Report Document Bundle](StructureDefinition-zw-lab-report-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-report-composition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-report-composition.csv), [Excel](StructureDefinition-zw-lab-report-composition.xlsx), [Schematron](StructureDefinition-zw-lab-report-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-report-composition",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-report-composition",
  "version" : "0.1.0",
  "name" : "ZWLabReportComposition",
  "title" : "ZW Lab Report Composition",
  "status" : "active",
  "date" : "2026-06-12T09:30:06+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Composition for a Zimbabwe laboratory result report document. The legal attester records the sign-off of the report by the responsible laboratory authority (ZW.LAB.A.DE80/DE82).",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition.status",
      "path" : "Composition.status",
      "short" : "Composition status — 'final' for a signed-off report",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Kind of composition: Laboratory report (LOINC 11502-2)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11502-2",
          "display" : "Laboratory report"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "short" : "Report edit/composition date",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Who authored the report (laboratory or practitioner)",
      "mustSupport" : true
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester",
      "path" : "Composition.attester",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "mode"
        }],
        "rules" : "open"
      },
      "short" : "Report sign-off",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:legalAttester",
      "path" : "Composition.attester",
      "sliceName" : "legalAttester",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:legalAttester.mode",
      "path" : "Composition.attester.mode",
      "patternCode" : "legal"
    },
    {
      "id" : "Composition.attester:legalAttester.time",
      "path" : "Composition.attester.time",
      "short" : "When the report was signed off (ZW.LAB.A.DE82)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:legalAttester.party",
      "path" : "Composition.attester.party",
      "short" : "Who signed off the report (ZW.LAB.A.DE80)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "Laboratory maintaining the report",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:labResults",
      "path" : "Composition.section",
      "sliceName" : "labResults",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:labResults.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:labResults.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "30954-2",
          "display" : "Relevant diagnostic tests/laboratory data note"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:labResults.entry",
      "path" : "Composition.section.entry",
      "short" : "The laboratory report(s) and result(s) in this document",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-diagnostic-report",
        "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-observation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
