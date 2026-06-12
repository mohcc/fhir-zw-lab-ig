# Example — ZW Lab Patient - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — ZW Lab Patient**

## Example Patient: Example — ZW Lab Patient

Profile: [ZW Lab Patient](StructureDefinition-zw-lab-patient.md)

Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123)

-------

| | |
| :--- | :--- |
| Marital Status: | Married |
| Other Id: | `http://mohcc.gov.zw/fhir/lab/identifier/art-number`/HRE/2019/005678 |
| [Date of Birth Estimated](StructureDefinition-date-of-birth-estimated.md) | false |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example-zw-lab-patient",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient"]
  },
  "extension" : [{
    "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/date-of-birth-estimated",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "system" : "http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id",
    "value" : "EHR-ZW-00123"
  },
  {
    "system" : "http://mohcc.gov.zw/fhir/lab/identifier/art-number",
    "value" : "HRE/2019/005678"
  }],
  "name" : [{
    "family" : "Moyo",
    "given" : ["Rutendo"]
  }],
  "gender" : "female",
  "birthDate" : "1988-04-15",
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  }
}

```
