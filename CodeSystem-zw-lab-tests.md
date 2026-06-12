# ZW Laboratory Tests - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Laboratory Tests**

## CodeSystem: ZW Laboratory Tests 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-lab-tests | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWLabTests |

 
National code list for laboratory tests ordered in Zimbabwe (ZW.LAB.A.DE17). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWLabTests](ValueSet-zw-lab-tests.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-lab-tests",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-lab-tests",
  "version" : "0.1.0",
  "name" : "CSZWLabTests",
  "title" : "ZW Laboratory Tests",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-11T12:19:15+00:00",
  "publisher" : "MOH Zimbabwe",
  "contact" : [{
    "name" : "MOH Zimbabwe",
    "telecom" : [{
      "system" : "url",
      "value" : "http://mohcc.org.zw"
    }]
  }],
  "description" : "National code list for laboratory tests ordered in Zimbabwe (ZW.LAB.A.DE17).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "LTT001",
    "display" : "Bacteriology - Smear",
    "definition" : "Bacteriological smear microscopy."
  },
  {
    "code" : "LTT002",
    "display" : "Microscopy",
    "definition" : "General microscopy examination."
  },
  {
    "code" : "LTT003",
    "display" : "Biochemical Tests",
    "definition" : "Biochemistry / chemistry panel."
  },
  {
    "code" : "LTT004",
    "display" : "COVID-19",
    "definition" : "SARS-CoV-2 detection test."
  },
  {
    "code" : "LTT005",
    "display" : "Culture (Bacteriology)",
    "definition" : "Bacterial culture and sensitivity."
  },
  {
    "code" : "LTT006",
    "display" : "GeneXpert",
    "definition" : "Xpert MTB/RIF or similar cartridge-based assay."
  },
  {
    "code" : "LTT007",
    "display" : "LPA",
    "definition" : "Line Probe Assay for drug-resistance testing."
  },
  {
    "code" : "LTT008",
    "display" : "Routine Histological Examination",
    "definition" : "Routine histopathology."
  },
  {
    "code" : "LTT009",
    "display" : "TB Culture",
    "definition" : "Mycobacterial culture."
  },
  {
    "code" : "LTT0012",
    "display" : "Viral Load DBS",
    "definition" : "HIV viral load from dried blood spot sample."
  },
  {
    "code" : "LTT0013",
    "display" : "Viral Load Plasma",
    "definition" : "HIV viral load from plasma sample."
  }]
}

```
