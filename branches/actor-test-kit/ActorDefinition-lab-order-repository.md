# Lab Order Repository - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Order Repository**

## ActorDefinition: Lab Order Repository 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ActorDefinition/lab-order-repository | *Version*:0.1.0 |
| Draft as of 2026-06-12 | *Computable Name*:LabOrderRepository |

 
System that accepts ZWLabOrderBundle transactions from Lab Order Placers, validates and stores the contained order resources, and exposes them to Lab Order Fulfillers via FHIR search (Task, ServiceRequest). In the Zimbabwe national architecture this role is played by the Shared Health Record (HAPI FHIR), fronted by OpenHIM. 

