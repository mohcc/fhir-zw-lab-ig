# Example — Lab Order Task - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — Lab Order Task**

## Example Task: Example — Lab Order Task

Profile: [ZW Lab Order Task](StructureDefinition-zw-lab-task.md)

**basedOn**: [ServiceRequest Viral Load Plasma](ServiceRequest-example-zw-service-request-vl.md)

**status**: Requested

**intent**: order

**for**: [Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123)](Patient-example-zw-lab-patient.md)

**authoredOn**: 2024-03-15 08:00:00+0200

**location**: [Location Harare City Health Clinic](Location-example-order-facility.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Recipient** |
| * | [Organization National Virology Laboratory](Organization-example-national-virology-lab.md) |

> **input****type**: Pregnant**value**: false

> **input****type**: Breastfeeding**value**: false

> **input****type**: ART Start Date**value**: 2019-07-01

> **input****type**: Regimen**value**: TDF/3TC/DTG



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "example-zw-lab-task-order",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-task"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/example-zw-service-request-vl"
  }],
  "status" : "requested",
  "intent" : "order",
  "for" : {
    "reference" : "Patient/example-zw-lab-patient"
  },
  "authoredOn" : "2024-03-15T08:00:00+02:00",
  "location" : {
    "reference" : "Location/example-order-facility"
  },
  "restriction" : {
    "recipient" : [{
      "reference" : "Organization/example-national-virology-lab"
    }]
  },
  "input" : [{
    "type" : {
      "coding" : [{
        "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type",
        "code" : "pregnant"
      }]
    },
    "valueBoolean" : false
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type",
        "code" : "breastfeeding"
      }]
    },
    "valueBoolean" : false
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type",
        "code" : "art-start-date"
      }]
    },
    "valueDate" : "2019-07-01"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-task-input-type",
        "code" : "regimen"
      }]
    },
    "valueString" : "TDF/3TC/DTG"
  }]
}

```
