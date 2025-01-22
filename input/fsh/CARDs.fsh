Profile: CCG_CARD_PlanDefinition
Parent: CPGComputablePlanDefinition
Id: ccg-card-pd-base
Title: "Base CARD PlanDefinition"
Description: "Profile to serve as the basis for all CARD PlanDefinitions based on the CPG Computable PlanDefinition"
* ^abstract = true
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* type = #eca-rule (exactly)
* date 1..1
* publisher 1..1
* relatedArtifact 1..
* action
  * trigger 0..0
  * condition 1..
    * kind = #applicability (exactly)
     
RuleSet: CCG_CARD_ActivityDefinition(adtopic)
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1
* topic from ccg-card-type
* topic = ccg-card-type-cs#{adtopic} (exactly)

Profile: CCG_CARD_Library
Parent: cql-library
Id: ccg-card-library
Title: "CCG Library for CARDs"
Description: "Profile to serve as the basis for all CARD definitions referencing Library resources based on the CPG CQL Library"
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1

Profile: CCG_CARD_Folder
Parent: CPGComputablePlanDefinition
Id: ccg-card-folder
Title: "CCG CARD Folder PlanDefinition"
Description: "Each unique CCG will be expressed as a PlanDefinition (a CCG Folder) that lists the CCG's defined CARDs"
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1
* type = #clinical-protocol (exactly)
* action 1..
* action.definitionCanonical only Canonical(CCG_CARD_PlanDefinition)

Profile: CCG_Signature
Parent: Provenance
Id: ccg-signature
Title: "CCG CARD Digital Signature"
Description: "This is a profile on the FHIR Provenance resource to align with CCG requirements for signature"
* recorded ^short = "timestamp of the signature"
* agent.who only Reference(Organization)
* agent.who ^short = "identifier of the CARD&apos;s publisher"
* signature.type.system = "http://hl7.org/fhir/ValueSet/signature-type"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.type.display = "Author&apos;s Signature"
* signature.when ^short = "timestamp of the signature"
* signature.who ^short = "identifier of the CARD&apos;s publisher"
* signature.targetFormat from ccg-signature-target
* signature.sigFormat from ccg-signature-sigformat

// Each CARD is a PD and an AD profiled as above with ActivityDefinition.topic identifying the specific activity
Profile: CCG_Provide_Information
Parent: ccg-card-pd-base
Id: ccg-card-provide
Title: "CCG CARD type - Provide Information"
Description: "The role of this type of CCG CARD is to provide information, counselling, or instructions to the patient."
* action 1..
* action.definitionCanonical only Canonical(ccg-card-provide-ad)

Profile: CCB_Provide_Info_Activity
Parent: cpg-communicationactivity
Id: ccg-card-provide-ad
Title: "Activity Definition for the Provide Information CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(provide)


Profile: CCG_Collect_Information
Parent: ccg-card-pd-base
Id: ccg-card-collect
Title: "CCG CARD type - Collect Information"
Description: "The role of this type of CCG CARD is to collect information about the patient."
* action 1..
* action.definitionCanonical only Canonical(ccg-card-collect-ad)

Profile: CCB_Collect_Info_Activity
Parent: cpg-collectinformationactivity
Id: ccg-card-collect-ad
Title: "Activity Definition for the Collect Information CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(collect)

Profile: CCG_Request_Service_Lab_Order
Parent: ccg-card-pd-base
Id: ccg-card-reqserv-labs
Title: "CCG CARD type - Request a Service (Lab Order)"
Description: "The role of this type of CCG CARD is to create a laboratory / pathology ServiceRequest for the patient."
* action 1..
* action.definitionCanonical only Canonical(cpg-servicerequestactivity)

Profile: CCB_REquest_Service_Labs_Activity
Parent: cpg-servicerequestactivity
Id: ccg-card-reqlabs-ad
Title: "Activity Definition for the Request a Service (Lab Order) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqlab)

Profile: CCG_Request_Service_Radiology
Parent: ccg-card-pd-base
Id: ccg-card-reqradserv
Title: "CCG CARD type - Request a Service (Radiology Order)"
Description: "The role of this type of CCG CARD is to create a laboratory / pathology ServiceRequest for the patient."
* action 1..
* action.definitionCanonical only Canonical(ccg-card-reqradserv-ad)

Profile: CCG_Request_Service_Labs_Activity
Parent: cpg-servicerequestactivity
Id: ccg-card-reqradserv-ad
Title: "Activity Definition for the Request a Service (Lab Order) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqrad)

Profile: CCG_Request_Service_Procedure
Parent: ccg-card-pd-base
Id: ccg-card-reqprocserv
Title: "CCG CARD type - Request a Service (Procedure Order)"
Description: "The role of this type of CCG CARD is to create a procedure ServiceRequest for the patient."
* action.definitionCanonical only Canonical(ccg-card-reqprocserv-ad)

Profile: CCB_REquest_Service_Procedure_Activity
Parent: cpg-servicerequestactivity
Id: ccg-card-reqprocserv-ad
Title: "Activity Definition for the Request a Service (Procedure Order) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqproc)

Profile: CCG_Request_Service_Referral
Parent: ccg-card-pd-base
Id: ccg-card-reqrefserv
Title: "CCG CARD type - Request a Service (Referral)"
Description: "The role of this type of CCG CARD is to create a procedure ServiceRequest for the patient."
* action.definitionCanonical only Canonical(ccg-card-reqrefserv-ad)

Profile: CCB_REquest_Service_Referral_Activity
Parent: cpg-servicerequestactivity
Id: ccg-card-reqrefserv-ad
Title: "Activity Definition for the Request a Service (Referral) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqref)

Profile: CCG_Propose_Diagnosis
Parent: ccg-card-pd-base
Id: ccg-card-proposedx
Title: "CCG CARD type - Propose a Diagnosis"
Description: "The role of this type of CCG CARD is to propose a diagnosis of health conditions; it content about the patient."
* action.definitionCanonical only Canonical(ccg-card-proposedx-ad)

Profile: CCG_Propose_Diagnosis_Activity
Parent: cpg-proposediagnosisactivity
Id: ccg-card-proposedx-ad
Title: "Activity Definition for the Propose a Diagnosis CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqproc)

Profile: CCG_Order_Medication
Parent: ccg-card-pd-base
Id: ccg-card-orderrx
Title: "CCG CARD type - Order Medication"
Description: "The role of this type of CCG CARD is to create a prescription / medication order for the patient."
* action.definitionCanonical only Canonical(ccg-card-orderrx-ad)

Profile: CCG_Order_Medication_Activity
Parent: cpg-medicationrequestactivity
Id: ccg-card-orderrx-ad
Title: "Activity Definition for the Order Medication CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(orderrx)

Profile: CCG_Dispense_Medication
Parent: ccg-card-pd-base
Id: ccg-card-disprx
Title: "CCG CARD type - Dispense Medication"
Description: "The role of this type of CCG CARD is to create a medication dispensation for the patient."
* action.definitionCanonical only Canonical(ccg-card-disprx-ad)

Profile: CCG_Dispense_Medication_Activity
Parent: cpg-dispensemedicationactivity
Id: ccg-card-disprx-ad
Title: "Activity Definition for the Dispense Medication CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(disprx)

Profile: CCG_Administer_Medication
Parent: ccg-card-pd-base
Id: ccg-card-adminrx
Title: "CCG CARD type - Administer Medication"
Description: "The role of this type of CCG CARD is to record a medication administration for the patient."
* action.definitionCanonical only Canonical(ccg-card-adminrx-ad)

Profile: CCG_Administer_Medication_Activity
Parent: cpg-dispensemedicationactivity
Id: ccg-card-adminrx-ad
Title: "Activity Definition for the Administer Medication CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(adminrx)

Profile: CCG_Request_Immunization
Parent: ccg-card-pd-base
Id: ccg-card-reqvx
Title: "CCG CARD type - Request Immunization"
Description: "The role of this type of CCG CARD is to recommend and record an immunization event for the patient. Importantly, this CARD does not create an order for a future planned immunization."
* action.definitionCanonical only Canonical(ccg-card-reqvx-ad)

Profile: CCG_Request_Immunization_Activity
Parent: cpg-immunizationactivity
Id: ccg-card-reqvx-ad
Title: "Activity Definition for the Request Immunization CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(reqvx)

Profile: CCG_Stop_Activity_Medication_Order
Parent: ccg-card-pd-base
Id: ccg-card-stoprx
Title: "CCG CARD type - Stop Activity (Medication Order)"
Description: "The role of this type of CCG CARD is to create a Task that, upon being processed, will “stop” a patient’s presently active MedicationRequest (i.e. set status to stopped)."
* action.definitionCanonical only Canonical(ccg-card-stoprx-ad)

Profile: CCG_Stop_Activity_Medication_Order_Activity
Parent: cpg-stopactivity
Id: ccg-card-stoprx-ad
Title: "Activity Definition for the Stop Activity (Medication Order) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(stoprx)

Profile: CCG_Stop_Activity_Service_Order
Parent: ccg-card-pd-base
Id: ccg-card-stopsrv
Title: "CCG CARD type - Stop Activity (Service Order)"
Description: "The role of this type of CCG CARD is to create a Task that, upon being processed, will “stop” a patient&apos;s presently active ServiceRequest (i.e. set status to revoked)."
* action.definitionCanonical only Canonical(ccg-card-stopsrv-ad)

Profile: CCG_Stop_Activity_Service_Order_Activity
Parent: cpg-stopactivity
Id: ccg-card-stopsrv-ad
Title: "Activity Definition for the Stop Activity (Service Order) CARD"
Description: "Simple profile to inherit the base and set topic to the appropriate CARD"
* insert CCG_CARD_ActivityDefinition(stopsrv)