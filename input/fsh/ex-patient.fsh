
Instance: ZKT9319
InstanceOf: Patient
Title: "Example Patient"
Description: "The patient from which all the example relate"
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
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(patient/ZKT9319)
* activity[0].detail.instantiatesCanonical = "https://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* activity[=].detail.status = #in-progress

Instance: CCG-patient-plans-example
InstanceOf: ccg-patient-plans
Usage: #inline
* status = #active
* url = "http://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* type = http://hl7.org/fhir/ValueSet/plan-definition-type#clinical-protocol 
* action[0].definitionCanonical = "https://example.org/fhir/PlanDefinition/CCG-CARD-Folder-Diabetes"
* action[+].definitionCanonical = "https://example.org/fhir/PlanDefinition/CCG-CARD-Folder-Hypertension"