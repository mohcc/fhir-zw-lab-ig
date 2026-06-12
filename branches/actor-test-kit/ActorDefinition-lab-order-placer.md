# Lab Order Placer - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Order Placer**

## ActorDefinition: Lab Order Placer 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ActorDefinition/lab-order-placer | *Version*:0.1.0 |
| Draft as of 2026-06-12 | *Computable Name*:LabOrderPlacer |

 
System that captures a laboratory test order for a patient and pushes it to the Lab Order Repository as a ZWLabOrderBundle transaction (FHIR `POST` of a transaction Bundle carrying ZWLabTask, ZWLabServiceRequest, ZWLabPatient and ZWSpecimen). In the Zimbabwe national architecture this role is played by the Impilo EHR (transaction ① — order push). 

