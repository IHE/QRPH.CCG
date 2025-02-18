Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $sct = http://snomed.info/sct/
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $v3-RouteOfAdministration = http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $flag-category = http://terminology.hl7.org/CodeSystem/flag-category

Instance: ZKT9319
InstanceOf: Patient
Title: "Example Patient"
Description: "The patient from which all the example relate"
Usage: #example
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
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