Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $cpg-activity-type-cs = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs

Instance: activity-example-administermedication-ad
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-administermedicationactivity"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableactivity"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #computable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/activity-example-administermedication-ad"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.48.11.1"
* version = "2.0.0"
* name = "ActivityExampleAdministerMedicationAD"
* title = "Activity Example Administer Medication AD"
* status = #active
* experimental = true
* date = "2024-11-26T16:34:39+00:00"
* publisher = "HL7 International / Clinical Decision Support"
* contact.name = "HL7 International / Clinical Decision Support"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/dss"
* description = "IHE CCG example for medication administration ActivityDefinition Task (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#adminrx 
* jurisdiction = $m49.htm#001 "World"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-administermedicationtask"
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