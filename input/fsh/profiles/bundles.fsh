// Bundle profiles for exchanging a lab order and a lab result.
//
// The point of these profiles is to give implementers something concrete to validate against,
// and to force the Zimbabwe profiles (not the base FHIR resources) for the resources they carry.
// Entry slicing is kept open, so additional resources are allowed and nothing is over-constrained;
// the named slices simply pin each resource type to its Zim profile.

// ─────────────────────────────────────────────────────────────────────────────
// Order Bundle (collection)
// ─────────────────────────────────────────────────────────────────────────────

Profile: ZWLabOrderBundle
Parent: Bundle
Id: zw-lab-order-bundle
Title: "ZW Lab Order Bundle"
Description: "A collection Bundle conveying a laboratory order: the service request, fulfilment task, patient, specimen, and pregnancy/breastfeeding observations. Each entry is pinned to its Zimbabwe profile."
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Entries pinned to Zimbabwe lab profiles."
* entry contains
    serviceRequest 1..* and
    task 0..* and
    patient 1..1 and
    specimen 0..* and
    pregnancy 0..* and
    breastfeeding 0..*
* entry[serviceRequest].resource only ZWLabServiceRequest
* entry[task].resource only ZWLabTask
* entry[patient].resource only ZWLabPatient
* entry[specimen].resource only ZWSpecimen
* entry[pregnancy].resource only ZWPregnancyStatus
* entry[breastfeeding].resource only ZWBreastfeedingStatus

// ─────────────────────────────────────────────────────────────────────────────
// Result document (Composition + Bundle)
// ─────────────────────────────────────────────────────────────────────────────

Profile: ZWLabResultComposition
Parent: Composition
Id: zw-lab-result-composition
Title: "ZW Lab Result Composition"
Description: "The Composition that opens a ZW lab result document, binding the report to a Zimbabwe patient."
* status MS
* type MS
* subject 1..1 MS
* subject only Reference(ZWLabPatient)
* author MS

Profile: ZWLabResultBundle
Parent: Bundle
Id: zw-lab-result-bundle
Title: "ZW Lab Result Bundle"
Description: "A document Bundle conveying a laboratory result: a Composition followed by the diagnostic report, result observations, specimen, and task. Each entry is pinned to its Zimbabwe profile."
* type = #document
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Entries pinned to Zimbabwe lab profiles."
* entry contains
    composition 1..1 and
    diagnosticReport 1..* and
    observation 0..* and
    specimen 0..* and
    task 0..*
* entry[composition].resource only ZWLabResultComposition
* entry[diagnosticReport].resource only ZWLabDiagnosticReport
* entry[observation].resource only ZWLabResultObservation
* entry[specimen].resource only ZWSpecimen
* entry[task].resource only ZWLabTask
