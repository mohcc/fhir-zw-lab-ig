# Date of Birth Estimated - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Date of Birth Estimated**

## Extension: Date of Birth Estimated 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/StructureDefinition/date-of-birth-estimated | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:DateOfBirthEstimated |

Indicates that the client's date of birth is an estimate rather than the precise birth date. Corresponds to the Impilo→Senaite contract field `dateOfBirthEstimated`.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZW Lab Patient](StructureDefinition-zw-lab-patient.md)
* Examples for this Extension: [Patient/example-zw-lab-patient](Patient-example-zw-lab-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zw.fhir.ig.lab|current/StructureDefinition/StructureDefinition-date-of-birth-estimated.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-date-of-birth-estimated.csv), [Excel](StructureDefinition-date-of-birth-estimated.xlsx), [Schematron](StructureDefinition-date-of-birth-estimated.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "date-of-birth-estimated",
  "url" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/date-of-birth-estimated",
  "version" : "0.1.0",
  "name" : "DateOfBirthEstimated",
  "title" : "Date of Birth Estimated",
  "status" : "active",
  "date" : "2026-06-11T12:17:30+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Indicates that the client's date of birth is an estimate rather than the precise birth date. Corresponds to the Impilo→Senaite contract field `dateOfBirthEstimated`.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Date of Birth Estimated",
      "definition" : "Indicates that the client's date of birth is an estimate rather than the precise birth date. Corresponds to the Impilo→Senaite contract field `dateOfBirthEstimated`."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://mohcc.gov.zw/fhir/lab/StructureDefinition/date-of-birth-estimated"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
