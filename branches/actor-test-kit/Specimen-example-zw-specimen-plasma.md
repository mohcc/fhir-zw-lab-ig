# Example — Blood Plasma Specimen - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — Blood Plasma Specimen**

## Example Specimen: Example — Blood Plasma Specimen

Profile: [ZW Lab Specimen](StructureDefinition-zw-specimen.md)

**identifier**: `http://mohcc.gov.zw/fhir/lab/identifier/client-sample-id`/ZW-SPEC-2024-00456

**status**: Available

**type**: Blood Plasma

**subject**: [Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123)](Patient-example-zw-lab-patient.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-03-15 08:30:00+0200 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "example-zw-specimen-plasma",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-specimen"]
  },
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/fhir/lab/identifier/client-sample-id",
    "value" : "ZW-SPEC-2024-00456"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-sample-types",
      "code" : "LST006",
      "display" : "Blood Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-zw-lab-patient"
  },
  "collection" : {
    "collectedDateTime" : "2024-03-15T08:30:00+02:00"
  }
}

```
