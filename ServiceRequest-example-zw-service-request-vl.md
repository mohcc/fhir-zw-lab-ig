# Example — Viral Load Plasma Service Request - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example — Viral Load Plasma Service Request**

## Example ServiceRequest: Example — Viral Load Plasma Service Request

Profile: [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md)

**status**: Active

**intent**: Order

**code**: Viral Load Plasma

**subject**: [Rutendo Moyo Female, DoB: 1988-04-15 ( http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id#EHR-ZW-00123)](Patient-example-zw-lab-patient.md)

**authoredOn**: 2024-03-15 08:00:00+0200

**locationReference**: [Location Harare City Health Clinic](Location-example-order-facility.md)

**reasonCode**: Routine

**specimen**: [Specimen: identifier = http://mohcc.gov.zw/fhir/lab/identifier/client-sample-id#ZW-SPEC-2024-00456; status = available; type = Blood Plasma](Specimen-example-zw-specimen-plasma.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-zw-service-request-vl",
  "meta" : {
    "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-service-request"]
  },
  "status" : "active",
  "intent" : "order",
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
  "authoredOn" : "2024-03-15T08:00:00+02:00",
  "locationReference" : [{
    "reference" : "Location/example-order-facility"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-reason-for-test",
      "code" : "routine",
      "display" : "Routine"
    }]
  }],
  "specimen" : [{
    "reference" : "Specimen/example-zw-specimen-plasma"
  }]
}

```
