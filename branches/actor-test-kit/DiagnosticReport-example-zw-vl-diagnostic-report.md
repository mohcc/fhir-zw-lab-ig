# Example — Viral Load Diagnostic Report - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — Viral Load Diagnostic Report**

## Example DiagnosticReport: Example — Viral Load Diagnostic Report

Profile: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md)

## Viral Load Plasma (Microbiology) 

| | |
| :--- | :--- |
| Subject | Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123) |
| When For | 2024-03-18 14:00:00+0200 |
| Reported | 2024-03-18 16:30:00+0200 |
| Performer | [Organization National Virology Laboratory](Organization-example-national-virology-lab.md) |

**Report Details**

* **Code**: [Viral Load Plasma](Observation-example-zw-vl-observation.md)
  * **Value**: 48 copies/mL (Details: UCUM code/mL = '/mL')
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "example-zw-vl-diagnostic-report",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-diagnostic-report"]
  },
  "extension" : [{
    "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/report-review-state",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-report-review-state",
        "code" : "verified",
        "display" : "Verified"
      }]
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/example-zw-service-request-vl"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB",
      "display" : "Microbiology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-lab-tests",
      "code" : "LTT0013",
      "display" : "Viral Load Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-zw-lab-patient"
  },
  "effectiveDateTime" : "2024-03-18T14:00:00+02:00",
  "issued" : "2024-03-18T16:30:00+02:00",
  "performer" : [{
    "reference" : "Organization/example-national-virology-lab"
  }],
  "resultsInterpreter" : [{
    "reference" : "Organization/example-national-virology-lab"
  }],
  "specimen" : [{
    "reference" : "Specimen/example-zw-specimen-plasma"
  }],
  "result" : [{
    "reference" : "Observation/example-zw-vl-observation"
  }]
}

```
