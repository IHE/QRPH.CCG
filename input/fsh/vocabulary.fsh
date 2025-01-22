
ValueSet: CCG_Sign_Target_VS
Id: ccg-signature-target
Title: "AllowedSignature targetFormat"
Description: "Constraining to fhir only"
* ^experimental = false
* urn:ietf:bcp:13#application/fhir+xml
* urn:ietf:bcp:13#application/fhir+json

ValueSet: CCG_Sign_sigformat_VS
Id: ccg-signature-sigformat
Title: "AllowedSignature signatureFormat"
Description: "Constraining to signature xml and json only"
* ^experimental = false
* urn:ietf:bcp:13#application/signature+xml
* urn:ietf:bcp:13#application/signature+json

CodeSystem: CCG_CARD_Type_CS
Id: ccg-card-type-cs
Title: "Code System for All CCG Card Types"
Description: "This CodeSystem defines all known CardTypes for use in CARD PlanDefinitions"
* ^experimental = false
* ^caseSensitive = false
* #provide "Provide Information" "Provide information, counselling, or instructions to the patient."
* #collect "Collect Information" "Capture information about the patient (using Questionnaire-QuestionnaireResponse pairs)."
* #reqlab  "Request a Service (Lab Order)" "Create a laboratory / pathology ServiceRequest."
* #reqrad "Request a Service (Radiology Order)" "Create a radiology ServiceRequest."
* #reqproc "Request a Service (Procedure Order)" "Create a procedure ServiceRequest."
* #reqref "Request a Service (Referral)" "Create a ServiceRequest to refer a patient to another care provider (e.g. perhaps to escalate to a higher level of care)."
* #propdx "Propose a Diagnosis" "Record the patient&apos;s diagnosis as a Condition resource."
* #orderrx "Order Medication" "Create a medication order (MedicationRequest)."
* #disprx "Dispense Medication" "Dispense medications based on an active order (MedicationDispense)."
* #adminrx "Administer Medication" "Administer a dispensed medication (MedicationAdministration)."
* #reqvx "Request Immunization" "Create a vaccination order (ImmunizationRequest)."
* #stoprx "Stop Activity (Medication Order)" "Create a Task that, upon being processed, will stop a patient&apos;s presently active MedicationRequest."
* #stopsrv "Stop Activity (Service Order)" "Create a Task that, upon being processed, will stop a patient&apos;s presently active ServiceRequest."

ValueSet: CCG_Card_Type
Id: ccg-card-type
Title: "ValueSet of all Current CCG Card Types"
Description: "This list includes all currently defined CCG CARD Types"
* ^experimental = false
* include codes from system ccg-card-type-cs