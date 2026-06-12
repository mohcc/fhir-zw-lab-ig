# ZW Laboratory Tests - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Laboratory Tests**

## ValueSet: ZW Laboratory Tests 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ValueSet/zw-lab-tests | *Version*:0.1.0 |
| Active as of 2026-06-12 | *Computable Name*:VSZWLabTests |

 
Value set of laboratory tests requestable in Zimbabwe (ZW.LAB.A.DE17). 

 **References** 

* [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md)
* [ZW Lab Order (ZW.LAB.A1)](StructureDefinition-zw-lab-order.md)
* [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md)
* [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zw-lab-tests",
  "url" : "http://mohcc.gov.zw/fhir/lab/ValueSet/zw-lab-tests",
  "version" : "0.1.0",
  "name" : "VSZWLabTests",
  "title" : "ZW Laboratory Tests",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T09:30:06+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "Value set of laboratory tests requestable in Zimbabwe (ZW.LAB.A.DE17).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-lab-tests"
    }]
  }
}

```
