# ZW Lab Report Document Bundle - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Report Document Bundle**

## Resource Profile: ZW Lab Report Document Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-report-bundle | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:ZWLabReportBundle |

 
Document Bundle carrying a signed-off snapshot of a Zimbabwe laboratory result report: a ZWLabReportComposition followed by the DiagnosticReport, Observations, Patient, Specimen and supporting resources. 

**Usages:**

* Examples for this Profile: [Bundle/example-zw-vl-report-bundle](Bundle-example-zw-vl-report-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-report-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-report-bundle.csv), [Excel](StructureDefinition-zw-lab-report-bundle.xlsx), [Schematron](StructureDefinition-zw-lab-report-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-report-bundle",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-report-bundle",
  "version" : "0.1.0",
  "name" : "ZWLabReportBundle",
  "title" : "ZW Lab Report Document Bundle",
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
  "description" : "Document Bundle carrying a signed-off snapshot of a Zimbabwe laboratory result report: a ZWLabReportComposition followed by the DiagnosticReport, Observations, Patient, Specimen and supporting resources.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Persistent identifier of this document instance",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "document",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "When the document was assembled",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "description" : "Slice bundle entries by resource profile",
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "short" : "The report Composition (first entry)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-report-composition"]
      }]
    },
    {
      "id" : "Bundle.entry:diagnosticReport",
      "path" : "Bundle.entry",
      "sliceName" : "diagnosticReport",
      "short" : "Laboratory report(s)",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:diagnosticReport.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:diagnosticReport.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DiagnosticReport",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-diagnostic-report"]
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "Subject of the report",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:observation",
      "path" : "Bundle.entry",
      "sliceName" : "observation",
      "short" : "Individual laboratory result(s)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observation.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:observation.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:specimen",
      "path" : "Bundle.entry",
      "sliceName" : "specimen",
      "short" : "Specimen(s) analysed",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:specimen.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:specimen.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Specimen",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen"]
      }]
    },
    {
      "id" : "Bundle.entry:serviceRequest",
      "path" : "Bundle.entry",
      "sliceName" : "serviceRequest",
      "short" : "Originating test request(s)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:serviceRequest.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:serviceRequest.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
      }]
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "short" : "Laboratory and other organisations",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-laboratory"]
      }]
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "short" : "Practitioners (submitter, verifier)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner"
      }]
    },
    {
      "id" : "Bundle.entry:location",
      "path" : "Bundle.entry",
      "sliceName" : "location",
      "short" : "Facilities referenced by the report",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:location.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:location.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Location",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-facility"]
      }]
    },
    {
      "id" : "Bundle.signature",
      "path" : "Bundle.signature",
      "short" : "Optional digital signature over the document",
      "mustSupport" : true
    }]
  }
}

```
