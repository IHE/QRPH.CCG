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
* url = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-administermedication-ad"
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
* profile = "https://profiles.ihe.net/QRPH/CCG/StructureDefinition/ccg-card-adminrx-ad"
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

Instance: Encounter-1234567
InstanceOf: Encounter
Usage: #example
Title: "Example Encounter"
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
InstanceOf: Practitioner
Usage: #example
Title: "Example Practitioner"
Description: "Example practitioner (Family Doctor)"
* identifier.system = "http://example.org/ids"
* identifier.value = "Practitioner-123"
* name.text = "Doctor Doctor"

Instance: PractitionerRole-124
InstanceOf: PractitionerRole
Usage: #example
Title: "Example PractitionerRole"
Description: "Example practitionerRole (Family Doctor in a Family Practice setting)"
* identifier.system = "http://example.org/ids"
* identifier.value = "PractitionerRole-124"
* practitioner = Reference(Practitioner/Practitioner-123)
* organization = Reference(Organization/Organization-14)
* specialty.coding = $sct#419772000 "Family practice (qualifier value)"

Instance: Location-12
InstanceOf: Location
Usage: #example
Title: "Example Location"
Description: "Example Location (Standalone Primary Care Clinic)"
* identifier.system = "http://example.org/ids"
* identifier.value = "Location-12"
* status = #active
* name = "Example Location"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PC "Primary Care Clinic"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"

Instance: Organization-14
InstanceOf: Organization
Usage: #example
Title: "Example Organization"
Description: "Example organization providing family care services"
* identifier.system = "http://example.org/ids"
* identifier.value = "Organization-14"
* active = true
* name = "Example Organization"
