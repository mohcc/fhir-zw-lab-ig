# ZW Specimen Types - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZW Specimen Types**

## CodeSystem: ZW Specimen Types 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-sample-types | *Version*:0.1.0 |
| Active as of 2026-06-11 | *Computable Name*:CSZWSampleTypes |

 
National code list for specimen/sample types collected in Zimbabwe (ZW.LAB.A.DE53). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSZWSampleTypes](ValueSet-zw-sample-types.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zw-sample-types",
  "url" : "http://mohcc.gov.zw/fhir/lab/CodeSystem/zw-sample-types",
  "version" : "0.1.0",
  "name" : "CSZWSampleTypes",
  "title" : "ZW Specimen Types",
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
  "description" : "National code list for specimen/sample types collected in Zimbabwe (ZW.LAB.A.DE53).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "716",
      "display" : "Zimbabwe (ZWE)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "LST001",
    "display" : "Fluid",
    "definition" : "Body fluid (unspecified)."
  },
  {
    "code" : "LST002",
    "display" : "Aspirate",
    "definition" : "Aspirated specimen."
  },
  {
    "code" : "LST003",
    "display" : "Oropharyngeal Swab",
    "definition" : "Swab from the oropharynx."
  },
  {
    "code" : "LST004",
    "display" : "Buffy Coat",
    "definition" : "Buffy coat fraction of blood."
  },
  {
    "code" : "LST005",
    "display" : "Buccal Swab",
    "definition" : "Swab from the buccal mucosa."
  },
  {
    "code" : "LST006",
    "display" : "Blood Plasma",
    "definition" : "Plasma fraction of blood."
  },
  {
    "code" : "LST007",
    "display" : "Dried Blood Spot",
    "definition" : "Dried blood spot (DBS) card."
  },
  {
    "code" : "LST008",
    "display" : "Semen",
    "definition" : "Seminal fluid."
  },
  {
    "code" : "LST009",
    "display" : "Throat Swab",
    "definition" : "Swab from the throat."
  },
  {
    "code" : "LST0010",
    "display" : "Saliva",
    "definition" : "Saliva specimen."
  },
  {
    "code" : "LST0011",
    "display" : "Nasopharyngeal Swab",
    "definition" : "Nasopharyngeal swab."
  },
  {
    "code" : "LST0012",
    "display" : "Biopsy",
    "definition" : "Tissue biopsy specimen."
  },
  {
    "code" : "LST0013",
    "display" : "Nasopharyngeal/Oropharyngeal Swab",
    "definition" : "Combined NP/OP swab."
  },
  {
    "code" : "LST0014",
    "display" : "Blood Serum",
    "definition" : "Serum fraction of blood."
  },
  {
    "code" : "LST0015",
    "display" : "Urine",
    "definition" : "Urine specimen."
  },
  {
    "code" : "LST0016",
    "display" : "Whole Blood",
    "definition" : "Whole blood specimen."
  },
  {
    "code" : "LST0017",
    "display" : "Sputum",
    "definition" : "Expectorated sputum."
  },
  {
    "code" : "LST0018",
    "display" : "Red Blood Cells",
    "definition" : "Packed red blood cells."
  }]
}

```
