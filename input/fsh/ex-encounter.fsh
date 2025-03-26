Instance: activity-example-stopservice-ad
InstanceOf: ccg-card-stopsrv-ad
Title: "AD Stop Task (Service Order)"
Description: "Example ActivityDefinition for Stop Service Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-stopactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-stopservice-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.99"
* version = "2.0.0"
* name = "ActivityExampleStopServiceAD"
* title = "Activity Example Stop Service AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Stop Service Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#stopsrv
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#stop-activity "Stop (discontinue) an activity in progress"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Service Request"
* dynamicValue[=].expression.reference = "http://example.org/fhir/uv/cpg/Library/stopservice-library"

Instance: activity-example-stopmedication-ad
InstanceOf: ccg-card-stoprx-ad
Title: "AD Stop Task (Medication Order)"
Description: "Example ActivityDefinition for Stop Medication Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-stopactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-stopmedication-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.19"
* version = "2.0.0"
* name = "ActivityExampleStopMedicationAD"
* title = "Activity Example Stop Medication AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Stop Medication Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#stoprx
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#stop-activity "Stop (discontinue) an activity in progress"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Medication Order"
* dynamicValue[=].expression.reference = "http://example.org/fhir/uv/cpg/Library/stopmedication-library"

Instance: activity-example-orderservice-ref-ad
InstanceOf: ccg-card-reqrefserv-ad
Title: "AD Service Request (Referral Order)"
Description: "Example ActivityDefinition for Recommend Referral Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-ref-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.93"
* version = "2.0.0"
* name = "ActivityExampleOrderServiceRefAD"
* title = "Activity Example Order Service (Referral) AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Referral Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqref
* jurisdiction = $m49.htm#001 "World"
* kind = #ServiceRequest
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft referral order'"

Instance: activity-example-orderservice-rad-ad
InstanceOf: ccg-card-reqradserv-ad
Title: "AD Service Request (Radiology Order)"
Description: "Example ActivityDefinition for Recommend Radiology Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-rad-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.92"
* version = "2.0.0"
* name = "ActivityExampleOrderServiceRadAD"
* title = "Activity Example Order Service (Radiology) AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Radiology Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqrad
* jurisdiction = $m49.htm#001 "World"
* kind = #ServiceRequest
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft radiology order'"

Instance: activity-example-orderservice-proc-ad
InstanceOf: ccg-card-reqprocserv-ad
Title: "AD Service Request (Procedure Order)"
Description: "Example ActivityDefinition for Recommend Procedure Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-proc-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.91"
* version = "2.0.0"
* name = "ActivityExampleOrderServiceProcAD"
* title = "Activity Example Order Service (Procedure) AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Procedure Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqproc
* jurisdiction = $m49.htm#001 "World"
* kind = #ServiceRequest
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft procedure order'"

Instance: activity-example-orderservice-lab-ad
InstanceOf: ccg-card-reqlabs-ad
Title: "AD Service Request (Lab Order)"
Description: "Example ActivityDefinition for Recommend Lab Order CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequestactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-lab-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.11"
* version = "2.0.0"
* name = "ActivityExampleOrderServiceLabAD"
* title = "Activity Example Order Service (Lab) AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Lab Order ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqlab
* jurisdiction = $m49.htm#001 "World"
* kind = #ServiceRequest
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft lab order'"

Instance: activity-example-recommendimmunization-ad
InstanceOf: ccg-card-reqvx-ad
Title: "AD Recommend Immunization"
Description: "Example ActivityDefinition for Recommend Immunization CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/activity-example-recommendimmunization-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.13"
* version = "2.0.0"
* name = "ActivityExampleRecommendImmunizationAD"
* title = "Activity Example Recommend Immunization AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Recommend Immunization ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqvx
* jurisdiction = $m49.htm#001 "World"
* kind = #MedicationRequest
* code = $cpg-activity-type-cs#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"

Instance: activity-example-sendmessage-ad
InstanceOf: ccg-card-provide-ad
Title: "AD Provide Information"
Description: "Example ActivityDefinition for Provide Information CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-sendmessage-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.18"
* version = "2.0.0"
* name = "ActivityExampleSendMessageAD"
* title = "Activity Example Send Message AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for provide information ActivityDefinition (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#provide
* jurisdiction = $m49.htm#001 "World"
* kind = #CommunicationRequest
* code = $cpg-activity-type-cs#send-message "Send a message"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "status"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "'draft'"
* dynamicValue[+].path = "payload.content"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "'Hello!'"

Instance: activity-example-proposediagnosis-ad
InstanceOf: ccg-card-proposedx-ad
Title: "AD Propose Diagnosis"
Description: "Example ActivityDefinition for Propose Diagnosis CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosisactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-proposediagnosis-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.12"
* version = "2.0.0"
* name = "ActivityExampleProposeDiagnosisAD"
* title = "Activity Example Propose Diagnosis AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for propose diagnosis ActivityDefinition Task (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#propdx
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql-expression
* dynamicValue[=].expression.expression = "Condition { clinicalStatus: \"Active Condition\", verificationStatus: \"Provisional Condition\", category: \"Problem-list Item\", code: \"Ischemic Stroke\", subject: Patient, onset: Today() }"

Instance: activity-example-ordermedication-ad
InstanceOf: ccg-card-orderrx-ad
Title: "AD Order Meds"
Description: "Example ActivityDefinition for Order Medications CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequestactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-ordermedication-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.10"
* version = "2.0.0"
* name = "ActivityExampleOrderMedicationAD"
* title = "Activity Example Order Medication AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for medication order ActivityDefinition Task (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#orderrx
* jurisdiction = $m49.htm#001 "World"
* kind = #MedicationRequest
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#376988009 "Levothyroxine sodium 75 microgram oral tablet"
* dosage.sequence = 1
* dosage.text = "75mcg daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral Route (qualifier value)"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 75 'ug' "mcg"

Instance: activity-example-administermedication-ad
InstanceOf: ccg-card-adminrx-ad
Title: "AD Administer Meds"
Description: "Example ActivityDefinition for Administer Medications CARD"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-administermedication-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.1"
* version = "2.0.0"
* name = "ActivityExampleAdministerMedicationAD"
* title = "Activity Example Administer Medication AD"
* status = #active
* experimental = true
* date = "2024-12-29T23:03:13.2266891+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for medication administration ActivityDefinition Task (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#adminrx 
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Medication Proposal"
* dynamicValue[=].expression.reference = "http://hl7.org/fhir/uv/cpg/Library/administermedication-library"

Instance: activity-example-collectinformation-ad
InstanceOf: ccg-card-collect-ad
Title: "AD Collect info"
Description: "Example ActivityDefinition for Collect Info CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith"
* extension[=].valueCanonical = "http://example.org/Questionnaire/activity-example-collectinformation-questionnaire"
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-collectinformation-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.2"
* version = "2.0.0"
* name = "ActivityExampleCollectInformationAD"
* title = "Activity Example Collect Information AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG Example Activity Definition for a recommendation to collect information (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#collect 
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#collect-information "Collect information"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"

Instance: activity-example-dispensemedication-ad
InstanceOf: ccg-card-disprx-ad
Title: "AD Dispense Meds"
Description: "Example ActivityDefinition for Dispense Medications CARD"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-dispensemedication-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.3"
* version = "2.0.0"
* name = "ActivityExampleDispenseMedicationAD"
* title = "Activity Example Dispense Medication AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG Example Activity Definition for a recommendation to dispense medications (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#disprx 
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Medication Proposal"
* dynamicValue[=].expression.reference = "http://hl7.org/fhir/uv/cpg/Library/dispensemedication-library"

Instance: Encounter-1234567
InstanceOf: ccg-di-encounter
Usage: #example
Title: "Encounter"
Description: "Example in-progress outpatient encounter of normal priority"
* identifier.system = "http://example.org/ids"
* identifier.value = "Encounter-1234567"
* status = #in-progress
* type.coding = $sct#371883000 "Outpatient procedure (procedure)"
* priority.coding = $sct#394848005 "Normal Priority"
* subject = Reference(Patient/ZKT9319)
* participant[0].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[=].individual = Reference(Practitioner/Practitioner-123)
* location[0].location = Reference(Location/Location-12)
* period.start = 2024-02-18
* serviceProvider = Reference(Organization/Organization-14)
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH

Instance: Practitioner-123
InstanceOf: ccg-di-practitioner
Usage: #example
Title: "Practitioner"
Description: "Example practitioner (Family Doctor)"
* identifier.system = "http://example.org/ids"
* identifier.value = "Practitioner-123"
* name.text = "Doctor Doctor"
* address.text = "123 Anystreet, Yourtown, Ontario, Canada M0P4H1"

Instance: PractitionerRole-124
InstanceOf: ccg-di-practitionerrole
Usage: #example
Title: "PractitionerRole"
Description: "Example practitionerRole (Family Doctor in a Family Practice setting)"
* identifier.system = "http://example.org/ids"
* identifier.value = "PractitionerRole-124"
* practitioner = Reference(Practitioner/Practitioner-123)
* organization = Reference(Organization/Organization-14)
* specialty.coding = $sct#419772000 "Family practice (qualifier value)"

Instance: Location-12
InstanceOf: ccg-di-location
Usage: #example
Title: "Location"
Description: "Example Location (Standalone Primary Care Clinic)"
* identifier.system = "http://example.org/ids"
* identifier.value = "Location-12"
* status = #active
* name = "Example Location"
* mode = #instance
* address.text = "123 Anystreet, Yourtown, Ontario, Canada M0P4H1"
* position.latitude = -80.0
* position.longitude = 45.0 
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PC "Primary Care Clinic"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"

Instance: Organization-14
InstanceOf: ccg-di-organization
Usage: #example
Title: "Organization"
Description: "Example organization providing family care services"
* identifier.system = "http://example.org/ids"
* identifier.value = "Organization-14"
* active = true
* name = "Example Organization"
* contact.address.text = "123 Anystreet, Yourtown, Ontario, Canada M0P4H1"
* contact.telecom.system = #email
* contact.telecom.value = "contact@example.org"
