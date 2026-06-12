// Minimal Observation profiles for pregnancy and breastfeeding status carried with a lab order.
// Intentionally lightly constrained: their purpose is to give the order Bundle a Zim profile to
// reference for these observations, not to fully specify pregnancy/breastfeeding recording.

Profile: ZWPregnancyStatus
Parent: Observation
Id: zw-pregnancy-status
Title: "ZW Pregnancy Status"
Description: "Whether the client is pregnant at the time of the laboratory order (ZW.LAB.A.DE13)."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(ZWLabPatient)
* value[x] MS

Profile: ZWBreastfeedingStatus
Parent: Observation
Id: zw-breastfeeding-status
Title: "ZW Breastfeeding Status"
Description: "Whether the client is breastfeeding at the time of the laboratory order (ZW.LAB.A.DE14)."
* status MS
* code MS
* subject 1..1 MS
* subject only Reference(ZWLabPatient)
* value[x] MS
