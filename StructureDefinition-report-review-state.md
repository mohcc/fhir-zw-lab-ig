# Report Review State - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Report Review State**

## Extension: Report Review State 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/report-review-state | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ReportReviewState |

The LIMS workflow/publication state of a laboratory report (ZW.LAB.A.DE73). This mutable status is separate from the FHIR `DiagnosticReport.status` lifecycle status, which tracks the clinical finality of the report.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md)
* Examples for this Extension: [DiagnosticReport/example-zw-vl-diagnostic-report](DiagnosticReport-example-zw-vl-diagnostic-report.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-report-review-state.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-report-review-state.csv), [Excel](StructureDefinition-report-review-state.xlsx), [Schematron](StructureDefinition-report-review-state.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "report-review-state",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/report-review-state",
  "version" : "0.1.0",
  "name" : "ReportReviewState",
  "title" : "Report Review State",
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
  "description" : "The LIMS workflow/publication state of a laboratory report (ZW.LAB.A.DE73). This mutable status is separate from the FHIR `DiagnosticReport.status` lifecycle status, which tracks the clinical finality of the report.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DiagnosticReport"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Report Review State",
      "definition" : "The LIMS workflow/publication state of a laboratory report (ZW.LAB.A.DE73). This mutable status is separate from the FHIR `DiagnosticReport.status` lifecycle status, which tracks the clinical finality of the report."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/report-review-state"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-report-review-state"
      }
    }]
  }
}

```
