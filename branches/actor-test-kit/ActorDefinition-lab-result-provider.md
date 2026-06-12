# Lab Result Provider - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Result Provider**

## ActorDefinition: Lab Result Provider 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ActorDefinition/lab-result-provider | *Version*:0.1.0 |
| Draft as of 2026-06-12 | *Computable Name*:LabResultProvider |

 
System that assembles the signed-off laboratory result as a ZWLabReportBundle document (ZWLabReportComposition, ZWLabDiagnosticReport, ZWLabResultObservation) and pushes it to the Lab Result Repository (FHIR `POST /Bundle` — result push). In the Zimbabwe national architecture this role is played by the Senaite LIMS. 

