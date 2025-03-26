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
