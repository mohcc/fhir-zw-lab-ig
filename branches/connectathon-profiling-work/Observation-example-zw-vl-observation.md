# Example — Viral Load Result Observation - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — Viral Load Result Observation**

## Example Observation: Example — Viral Load Result Observation

Profile: [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md)

**basedOn**: [ServiceRequest Viral Load Plasma](ServiceRequest-example-zw-service-request-vl.md)

**status**: Final

**category**: Laboratory

**code**: Viral Load Plasma

**subject**: [Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123)](Patient-example-zw-lab-patient.md)

**effective**: 2024-03-18 14:00:00+0200

**value**: 48 copies/mL (Details: UCUM code/mL = '/mL')

**method**: RT-PCR

**specimen**: [Specimen: identifier = http://mohcc.gov.zw/fhir/lab/identifier/client-sample-id#ZW-SPEC-2024-00456; status = available; type = Blood Plasma](Specimen-example-zw-specimen-plasma.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-zw-vl-observation",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-result-observation"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/example-zw-service-request-vl"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-lab-tests",
      "code" : "LTT0013",
      "display" : "Viral Load Plasma"
    },
    {
      "system" : "http://loinc.org",
      "code" : "20447-9",
      "display" : "HIV 1 RNA [#/volume] (viral load) in Serum or Plasma by NAA with probe detection"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-zw-lab-patient"
  },
  "effectiveDateTime" : "2024-03-18T14:00:00+02:00",
  "valueQuantity" : {
    "value" : 48,
    "unit" : "copies/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "/mL"
  },
  "method" : {
    "text" : "RT-PCR"
  },
  "specimen" : {
    "reference" : "Specimen/example-zw-specimen-plasma"
  }
}

```
