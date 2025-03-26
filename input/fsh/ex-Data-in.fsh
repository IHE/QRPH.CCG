
Instance: ZKT9319
InstanceOf: Patient
Title: "Data-in Patient"
Description: "Example patient to which all the Data-in example content relates"
Usage: #example
* identifier.system = "https://example.org/ids"
* identifier.value = "ZKT9319"
* name.use = #usual
* name.family = "Test-Fuimaono"
* name.given = "Iosefa"
* gender = #male
* birthDate = "1950-07-04"
* address.use = #home
* address.type = #physical
* address.line[0] = "Flat 1"
* address.line[+] = "1 Brooklyn Road"
* address.line[+] = "Claudelands"
* address.city = "Hamilton"
* address.postalCode = "3214"
* address.country = "NZ"
* maritalStatus = $v3-MaritalStatus#W "Widowed"
* contact[0].relationship = $v2-0131#N "Next-of-Kin"
* contact[=].name.use = #usual
* contact[=].name.family = "Test-Fuimaono"
* contact[=].name.given[0] = "Cindy"
* contact[=].name.given[+] = "Test-Fuimaono"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "021 111111"
* contact[=].telecom.use = #mobile
* contact[=].address.use = #home
* contact[=].address.type = #physical
* contact[=].address.line[0] = "Flat 1"
* contact[=].address.line[+] = "1 Brooklyn Road"
* contact[=].address.line[+] = "Claudelands"
* contact[=].address.city = "Hamilton"
* contact[=].address.postalCode = "3214"
* contact[=].address.country = "NZ"
* contact[+].relationship = $v2-0131#C "Emergency Contact"
* contact[=].name.use = #usual
* contact[=].name.family = "Test-Fuimaono"
* contact[=].name.given[0] = "Cindy"
* contact[=].name.given[+] = "Test-Fuimaono"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "021 111111"
* contact[=].telecom.use = #mobile
* contact[=].address.use = #home
* contact[=].address.type = #physical
* contact[=].address.line[0] = "Flat 1"
* contact[=].address.line[+] = "1 Brooklyn Road"
* contact[=].address.line[+] = "Claudelands"
* contact[=].address.city = "Hamilton"
* contact[=].address.postalCode = "3214"
* contact[=].address.country = "NZ"
* communication.language.text = "en-NZ"


Instance: CCG-careplan-example
InstanceOf: ccg-data-in-ips-careplan
Title: "Data-in Care Plan"
Description: "Example CarePlan resource including a patient-speicific PlanDefinition (to reference applicable CCG Folders)."
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(ZKT9319)
* activity[0].detail.instantiatesCanonical = "https://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* activity[=].detail.status = #in-progress

Instance: CCG-patient-plans-example
InstanceOf: ccg-patient-plans
Title: "Data-in PlanDefinition for Patient CCGs"
Description: "An example person-centric PlanDefinition resource referencing applicable CCG Folders."
Usage: #example
* status = #active
* url = "http://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol 
* action[0].definitionCanonical = "https://example.org/fhir/PlanDefinition/ccg-folder-Diabetes"
* action[+].definitionCanonical = "https://example.org/fhir/PlanDefinition/ccg-folder-Hypertension"


Instance: Encounter-1234567
InstanceOf: ccg-di-encounter
Usage: #example
Title: "Data-in Encounter"
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
Title: "Data-in Practitioner"
Description: "Example practitioner (Family Doctor)"
* identifier.system = "http://example.org/ids"
* identifier.value = "Practitioner-123"
* name.text = "Doctor Doctor"
* address.text = "123 Anystreet, Yourtown, Ontario, Canada M0P4H1"

Instance: PractitionerRole-124
InstanceOf: ccg-di-practitionerrole
Usage: #example
Title: "Data-in PractitionerRole"
Description: "Example practitionerRole (Family Doctor in a Family Practice setting)"
* identifier.system = "http://example.org/ids"
* identifier.value = "PractitionerRole-124"
* practitioner = Reference(Practitioner/Practitioner-123)
* organization = Reference(Organization/Organization-14)
* specialty.coding = $sct#419772000 "Family practice (qualifier value)"

Instance: Location-12
InstanceOf: ccg-di-location
Usage: #example
Title: "Data-in Location"
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
Title: "Data-in Organization"
Description: "Example organization providing family care services"
* identifier.system = "http://example.org/ids"
* identifier.value = "Organization-14"
* active = true
* name = "Example Organization"
* contact.address.text = "123 Anystreet, Yourtown, Ontario, Canada M0P4H1"
* contact.telecom.system = #email
* contact.telecom.value = "contact@example.org"
