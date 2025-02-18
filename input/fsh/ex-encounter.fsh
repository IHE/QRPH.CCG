

Instance: Encounter-1234567
InstanceOf: Encounter
Usage: #example
Title: "Example Encounter"
* identifier.system = "http://example.org/ids"
* identifier.value = "Encounter-1234567"
* status = #in-progress
* type.coding = $sct#31881000087103 "Outpatient Clinical Visit"
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
* identifier.system = "http://example.org/ids"
* identifier.value = "Practitioner-123"
* name.text = "Doctor Doctor"

Instance: PractitionerRole-124
InstanceOf: PractitionerRole
Usage: #example
Title: "Example PractitionerRole"
* identifier.system = "http://example.org/ids"
* identifier.value = "PractitionerRole-124"
* practitioner = Reference(Practitioner/Practitioner-123)
* organization = Reference(Organization/Organization-14)
* specialty.coding = $sct#419772000 "Family Practice"

Instance: Location-12
InstanceOf: Location
Usage: #example
Title: "Example Location"
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
* identifier.system = "http://example.org/ids"
* identifier.value = "Organization-14"
* active = true
* name = "Example Organization"
