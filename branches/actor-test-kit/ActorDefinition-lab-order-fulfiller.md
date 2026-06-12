# Lab Order Fulfiller - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Order Fulfiller**

## ActorDefinition: Lab Order Fulfiller 

| | |
| :--- | :--- |
| *Official URL*:http://mohcc.gov.zw/fhir/lab/ActorDefinition/lab-order-fulfiller | *Version*:0.1.0 |
| Draft as of 2026-06-12 | *Computable Name*:LabOrderFulfiller |

 
Laboratory system that polls the Lab Order Repository for orders directed to it (FHIR search on Task by recipient and status — transaction ② — order pull), claims them by updating Task status, and performs the requested testing. In the Zimbabwe national architecture this role is played by the Senaite LIMS. 

