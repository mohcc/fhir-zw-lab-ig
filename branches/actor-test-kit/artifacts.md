# Artifacts Summary - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [Lab Order Fulfiller](ActorDefinition-lab-order-fulfiller.md) | Laboratory system that retrieves orders from the Lab Order Repository and performs the requested testing. |
| [Lab Order Placer](ActorDefinition-lab-order-placer.md) | System that creates laboratory orders and submits them to the Lab Order Repository. |
| [Lab Order Repository](ActorDefinition-lab-order-repository.md) | System that stores submitted laboratory orders and makes them available for retrieval. |
| [Lab Result Consumer](ActorDefinition-lab-result-consumer.md) | System that retrieves laboratory results from the Lab Result Repository for display and clinical use. |
| [Lab Result Provider](ActorDefinition-lab-result-provider.md) | System that produces laboratory results and pushes them to the Lab Result Repository. |
| [Lab Result Repository](ActorDefinition-lab-result-repository.md) | System that stores laboratory result reports and makes them available for retrieval. |

### Requirements: Formal Requirements 

The following artifacts describe the specific requirements to be met by systems compliant with the implementation guide.

| | |
| :--- | :--- |
| [Order Pull Requirements](Requirements-zw-lab-order-pull.md) | Requirements for retrieval of laboratory orders by the Lab Order Fulfiller from the Lab Order Repository (transaction ②, pull). |
| [Order Push Requirements](Requirements-zw-lab-order-push.md) | Requirements for submitting a laboratory order from the Lab Order Placer to the Lab Order Repository (transaction ①, push). |
| [Result Pull Requirements](Requirements-zw-lab-result-pull.md) | Requirements for retrieval of laboratory results by the Lab Result Consumer from the Lab Result Repository (result pull). |
| [Result Push Requirements](Requirements-zw-lab-result-push.md) | Requirements for submitting a signed-off laboratory result report from the Lab Result Provider to the Lab Result Repository (result push). |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ZW Lab Order (ZW.LAB.A1)](StructureDefinition-zw-lab-order.md) | Logical model for ordering a laboratory test in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A1 of the Zimbabwe Lab DAK data dictionary. |
| [ZW Lab Result Report (ZW.LAB.A2)](StructureDefinition-zw-lab-result-report.md) | Logical model for reporting a laboratory result in Zimbabwe. Covers all data elements defined in activity ZW.LAB.A2 of the Zimbabwe Lab DAK data dictionary. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ZW Breastfeeding Status](StructureDefinition-zw-breastfeeding-status.md) | Whether the client is breastfeeding at the time of the laboratory order (ZW.LAB.A.DE14). |
| [ZW Health Facility (Location)](StructureDefinition-zw-facility.md) | A health facility placing a laboratory order in Zimbabwe (ZW.LAB.A.DE11). |
| [ZW Lab Diagnostic Report](StructureDefinition-zw-lab-diagnostic-report.md) | A laboratory result report produced by a Zimbabwe LIMS and pushed to the Shared Health Record (ZW.LAB.A2 DE73–DE99). |
| [ZW Lab Order Task](StructureDefinition-zw-lab-task.md) | Task that wraps a laboratory test order sent from Impilo (EHR) to a LIMS via OpenHIM. Carries the ServiceRequest plus contextual clinical information (ZW.LAB.A1). |
| [ZW Lab Order Transaction Bundle](StructureDefinition-zw-lab-order-bundle.md) | Transaction Bundle used to submit a laboratory order to the Shared Health Record: a ZWLabTask wrapping a ZWLabServiceRequest, together with the ZWLabPatient and any ZWSpecimen resources. Submitted by the Lab Order Placer as a FHIR transaction (step 1 of the HIE transaction flow). Entries may be created with POST or submitted as idempotent client-id updates with PUT. |
| [ZW Lab Patient](StructureDefinition-zw-lab-patient.md) | Patient demographics exchanged in the Zimbabwe lab ordering workflow (ZW.LAB.A1 DE1–DE9). |
| [ZW Lab Report Composition](StructureDefinition-zw-lab-report-composition.md) | Composition for a Zimbabwe laboratory result report document. The legal attester records the sign-off of the report by the responsible laboratory authority (ZW.LAB.A.DE80/DE82). |
| [ZW Lab Report Document Bundle](StructureDefinition-zw-lab-report-bundle.md) | Document Bundle carrying a signed-off snapshot of a Zimbabwe laboratory result report: a ZWLabReportComposition followed by the DiagnosticReport, Observations, Patient, Specimen and supporting resources. |
| [ZW Lab Result Observation](StructureDefinition-zw-lab-result-observation.md) | A single laboratory test result measured by a Zimbabwe LIMS (ZW.LAB.A2 DE83–DE87). |
| [ZW Lab Service Request](StructureDefinition-zw-lab-service-request.md) | A laboratory test request from a Zimbabwe health facility to a laboratory (ZW.LAB.A1 DE17–DE72). |
| [ZW Lab Specimen](StructureDefinition-zw-specimen.md) | A laboratory specimen collected in the Zimbabwe lab workflow (ZW.LAB.A1 DE52–DE72). |
| [ZW Laboratory (Organization)](StructureDefinition-zw-laboratory.md) | A laboratory in the national Zimbabwe laboratory network. Used as the receiving laboratory for an order (ZW.LAB.A.DE10) and as the reporting organisation for a DiagnosticReport. |
| [ZW Pregnancy Status](StructureDefinition-zw-pregnancy-status.md) | Whether the client is pregnant at the time of the laboratory order (ZW.LAB.A.DE13). |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Date of Birth Estimated](StructureDefinition-date-of-birth-estimated.md) | Indicates that the client's date of birth is an estimate rather than the precise birth date. Corresponds to the Impilo→Senaite contract field `dateOfBirthEstimated`. |
| [Patient Citizenship](StructureDefinition-citizenship.md) | The patient's legal status as citizen of a country. |
| [Report Review State](StructureDefinition-report-review-state.md) | The LIMS workflow/publication state of a laboratory report (ZW.LAB.A.DE73). This mutable status is separate from the FHIR `DiagnosticReport.status` lifecycle status, which tracks the clinical finality of the report. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ZW Laboratory Tests](ValueSet-zw-lab-tests.md) | Value set of laboratory tests requestable in Zimbabwe (ZW.LAB.A.DE17). |
| [ZW National Laboratory List](ValueSet-zw-laboratories.md) | Value set of national laboratory identifiers in Zimbabwe. |
| [ZW Reason for Test](ValueSet-zw-reason-for-test.md) | Value set of reasons for laboratory test requests in Zimbabwe (ZW.LAB.A.DE30). |
| [ZW Report Review State](ValueSet-zw-report-review-state.md) | Value set of LIMS workflow states for a laboratory report (ZW.LAB.A.DE73). |
| [ZW Specimen Rejection Reasons](ValueSet-zw-rejection-reasons.md) | Value set of specimen rejection reasons (ZW.LAB.A.DE88). |
| [ZW Specimen Types](ValueSet-zw-sample-types.md) | Value set of specimen/sample types used in Zimbabwe (ZW.LAB.A.DE53). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ZW Lab Task Input Type](CodeSystem-zw-task-input-type.md) | Type codes for Task.input slices on the ZWLabTask order profile. |
| [ZW Lab Task Output Type](CodeSystem-zw-task-output-type.md) | Type codes for Task.output slices on the ZWLabTask order profile. |
| [ZW Laboratory Tests](CodeSystem-zw-lab-tests.md) | National code list for laboratory tests ordered in Zimbabwe (ZW.LAB.A.DE17). |
| [ZW National Laboratory List](CodeSystem-zw-laboratories.md) | National identifiers for public-health laboratories in Zimbabwe. |
| [ZW Reason for Test](CodeSystem-zw-reason-for-test.md) | Coded reasons for laboratory test requests in Zimbabwe (ZW.LAB.A.DE30). |
| [ZW Report Review State](CodeSystem-zw-report-review-state.md) | LIMS workflow/review state for a laboratory report (ZW.LAB.A.DE73). |
| [ZW Specimen Rejection Reasons](CodeSystem-zw-rejection-reasons.md) | Reasons a specimen was rejected by the laboratory (ZW.LAB.A.DE88). |
| [ZW Specimen Types](CodeSystem-zw-sample-types.md) | National code list for specimen/sample types collected in Zimbabwe (ZW.LAB.A.DE53). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example — Blood Plasma Specimen](Specimen-example-zw-specimen-plasma.md) | Example blood plasma specimen for the Viral Load Plasma order. |
| [Example — Lab Order Task](Task-example-zw-lab-task-order.md) | Task sent by Impilo EHR to the LIMS via OpenHIM representing the lab order (step 1 of the HIE transaction flow). |
| [Example — National Virology Laboratory](Organization-example-national-virology-lab.md) | Example Organization instance for the National Virology Laboratory (ZWLPAR001). |
| [Example — Ordering Health Facility](Location-example-order-facility.md) | Example Location instance for a primary health facility placing the order. |
| [Example — Viral Load Diagnostic Report](DiagnosticReport-example-zw-vl-diagnostic-report.md) | DiagnosticReport for the Viral Load Plasma result, pushed by the LIMS to the Shared Health Record (step 5 of the HIE transaction flow). |
| [Example — Viral Load Order Transaction Bundle](Bundle-example-zw-lab-order-bundle.md) | Transaction Bundle submitted by the Lab Order Placer (Impilo EHR) to the Lab Order Repository (SHR): order Task, ServiceRequest, Patient and Specimen (step 1 of the HIE transaction flow). |
| [Example — Viral Load Plasma Service Request](ServiceRequest-example-zw-service-request-vl.md) | Example ServiceRequest for a Viral Load Plasma test (baseline monitoring). |
| [Example — Viral Load Report Document Bundle](Bundle-example-zw-vl-report-bundle.md) | Signed-off snapshot document of the Viral Load Plasma result, assembled by the LIMS for exchange via OpenHIM/SHR. |
| [Example — Viral Load Result Observation](Observation-example-zw-vl-observation.md) | Example HIV Viral Load Plasma result (copies/mL) returned by the LIMS. |
| [Example — ZW Lab Patient](Patient-example-zw-lab-patient.md) | Example Patient for the Viral Load end-to-end scenario. |

