# ZW Lab Patient - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Lab Patient**

## Resource Profile: ZW Lab Patient 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:ZWLabPatient |

 
Patient demographics exchanged in the Zimbabwe lab ordering workflow (ZW.LAB.A1 DE1–DE9). 

**Usages:**

* Refer to this Profile: [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md), [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md), [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md), [ZW Lab Order Task](StructureDefinition-zw-lab-task.md) and [ZW Lab Specimen](StructureDefinition-zw-specimen.md)
* Examples for this Profile: [Patient/example-zw-lab-patient](Patient-example-zw-lab-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-zw-lab-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-zw-lab-patient.csv), [Excel](StructureDefinition-zw-lab-patient.xlsx), [Schematron](StructureDefinition-zw-lab-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zw-lab-patient",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/zw-lab-patient",
  "version" : "0.1.0",
  "name" : "ZWLabPatient",
  "title" : "ZW Lab Patient",
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
  "description" : "Patient demographics exchanged in the Zimbabwe lab ordering workflow (ZW.LAB.A1 DE1–DE9).",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://mohcc.gov.zw/fhir/core/StructureDefinition/zw-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension:dateOfBirthEstimated",
      "path" : "Patient.extension",
      "sliceName" : "dateOfBirthEstimated",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://mohcc.gov.zw/fhir/lab/StructureDefinition/date-of-birth-estimated"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice patient identifiers by system URI.",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:ehrPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "ehrPatientId",
      "short" : "EHR Patient ID (ZW.LAB.A.DE1)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:ehrPatientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/identifier/ehr-patient-id"
    },
    {
      "id" : "Patient.identifier:ehrPatientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:clientId",
      "path" : "Patient.identifier",
      "sliceName" : "clientId",
      "short" : "Client/National Identifier (ZW.LAB.A.DE2)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:clientId.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/identifier/client-id"
    },
    {
      "id" : "Patient.identifier:clientId.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:artNumber",
      "path" : "Patient.identifier",
      "sliceName" : "artNumber",
      "short" : "ART Number (ZW.LAB.A.DE9)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:artNumber.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "patternUri" : "http://mohcc.gov.zw/fhir/lab/identifier/art-number"
    },
    {
      "id" : "Patient.identifier:artNumber.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Client name (ZW.LAB.A.DE3–DE4)"
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sex (ZW.LAB.A.DE6)"
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Date of birth (ZW.LAB.A.DE5)"
    }]
  }
}

```
