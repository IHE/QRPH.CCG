Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $sct = http://snomed.info/sct
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

Instance: NZ-IPS-20241229230313
InstanceOf: Bundle
Usage: #example
Title: "Example Patient IPS"
Description: "Example IPS including CCG references in the Care Plan section"
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "ca7cac26-f0ee-42b9-bd98-b102b0365b40"
* type = #document
* timestamp = "2024-12-29T23:03:13.2266891+00:00"
* entry[0].id = "896da41d-578c-4223-90e0-37e167d073f3"
* entry[=].fullUrl = "https://example.com/fhir/Composition/896da41d-578c-4223-90e0-37e167d073f3"
* entry[=].resource = 896da41d-578c-4223-90e0-37e167d073f3
* entry[+].id = "ZKT9319"
* entry[=].fullUrl = "https://example.com/fhir/Patient/ZKT9319"
* entry[=].resource = ZKT9319
* entry[+].id = "d4b84a1f-862a-4d8e-884d-a46ac2a3c171"
* entry[=].fullUrl = "https://example.com/fhir/Organization/d4b84a1f-862a-4d8e-884d-a46ac2a3c171"
* entry[=].resource = d4b84a1f-862a-4d8e-884d-a46ac2a3c171
* entry[+].id = "66ac78e5-4172-46d6-acf4-11148401c6d6"
* entry[=].fullUrl = "https://example.com/fhir/PractitionerRole/66ac78e5-4172-46d6-acf4-11148401c6d6"
* entry[=].resource = 66ac78e5-4172-46d6-acf4-11148401c6d6
* entry[+].id = "35ed8aa3-eff2-4431-9baa-a15c7a9afef6"
* entry[=].fullUrl = "https://example.com/fhir/Practitioner/35ed8aa3-eff2-4431-9baa-a15c7a9afef6"
* entry[=].resource = 35ed8aa3-eff2-4431-9baa-a15c7a9afef6
* entry[+].id = "3fa60707-7c9b-4956-adab-64f792b05d40"
* entry[=].fullUrl = "https://example.com/fhir/Organization/3fa60707-7c9b-4956-adab-64f792b05d40"
* entry[=].resource = 3fa60707-7c9b-4956-adab-64f792b05d40
* entry[+].id = "0574537d-c8ff-4b2e-a483-2200c6aa4ba2"
* entry[=].fullUrl = "https://example.com/fhir/AllergyIntolerance/0574537d-c8ff-4b2e-a483-2200c6aa4ba2"
* entry[=].resource = 0574537d-c8ff-4b2e-a483-2200c6aa4ba2
* entry[+].id = "1c57164d-b33e-41da-bfe9-c91e92133125"
* entry[=].fullUrl = "https://example.com/fhir/AllergyIntolerance/1c57164d-b33e-41da-bfe9-c91e92133125"
* entry[=].resource = 1c57164d-b33e-41da-bfe9-c91e92133125
* entry[+].id = "e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c"
* entry[=].fullUrl = "https://example.com/fhir/Condition/e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c"
* entry[=].resource = e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c
* entry[+].id = "a94c2561-fa1e-433b-9618-973a2f0c411b"
* entry[=].fullUrl = "https://example.com/fhir/Condition/a94c2561-fa1e-433b-9618-973a2f0c411b"
* entry[=].resource = a94c2561-fa1e-433b-9618-973a2f0c411b
* entry[+].id = "63e9afa5-1247-4aac-ac27-95d078cc5473"
* entry[=].fullUrl = "https://example.com/fhir/Condition/63e9afa5-1247-4aac-ac27-95d078cc5473"
* entry[=].resource = 63e9afa5-1247-4aac-ac27-95d078cc5473
* entry[+].id = "530be33d-9591-4fc8-8ffa-a85a52fa6e15"
* entry[=].fullUrl = "https://example.com/fhir/Condition/530be33d-9591-4fc8-8ffa-a85a52fa6e15"
* entry[=].resource = 530be33d-9591-4fc8-8ffa-a85a52fa6e15
* entry[+].id = "4b876f36-2d84-4dcf-9913-38cf674d1cc8"
* entry[=].fullUrl = "https://example.com/fhir/Condition/4b876f36-2d84-4dcf-9913-38cf674d1cc8"
* entry[=].resource = 4b876f36-2d84-4dcf-9913-38cf674d1cc8
* entry[+].id = "8d8e4a37-991a-4e65-8122-43395cb06c0c"
* entry[=].fullUrl = "https://example.com/fhir/Condition/8d8e4a37-991a-4e65-8122-43395cb06c0c"
* entry[=].resource = 8d8e4a37-991a-4e65-8122-43395cb06c0c
* entry[+].id = "b0bce00f-992e-4512-87c4-ab3a6f8c8671"
* entry[=].fullUrl = "https://example.com/fhir/Condition/b0bce00f-992e-4512-87c4-ab3a6f8c8671"
* entry[=].resource = b0bce00f-992e-4512-87c4-ab3a6f8c8671
* entry[+].id = "c5f4fa66-f2c4-4529-89c5-f38d24459d45"
* entry[=].fullUrl = "https://example.com/fhir/Condition/c5f4fa66-f2c4-4529-89c5-f38d24459d45"
* entry[=].resource = c5f4fa66-f2c4-4529-89c5-f38d24459d45
* entry[+].id = "88a5b69e-50b3-44b2-ba92-58f3aa61225b"
* entry[=].fullUrl = "https://example.com/fhir/Condition/88a5b69e-50b3-44b2-ba92-58f3aa61225b"
* entry[=].resource = 88a5b69e-50b3-44b2-ba92-58f3aa61225b
* entry[+].id = "4a78b5bc-90c3-4a0b-a355-55e40a8e5e60"
* entry[=].fullUrl = "https://example.com/fhir/Condition/4a78b5bc-90c3-4a0b-a355-55e40a8e5e60"
* entry[=].resource = 4a78b5bc-90c3-4a0b-a355-55e40a8e5e60
* entry[+].id = "85711e39-97c3-452e-a0ac-2a954bc444b7"
* entry[=].fullUrl = "https://example.com/fhir/Condition/85711e39-97c3-452e-a0ac-2a954bc444b7"
* entry[=].resource = 85711e39-97c3-452e-a0ac-2a954bc444b7
* entry[+].id = "fd93f544-6ab1-4ba8-a846-92d08d00552c"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/fd93f544-6ab1-4ba8-a846-92d08d00552c"
* entry[=].resource = fd93f544-6ab1-4ba8-a846-92d08d00552c
* entry[+].id = "e7814674-f5d7-4210-8646-32cafd2d8d72"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/e7814674-f5d7-4210-8646-32cafd2d8d72"
* entry[=].resource = e7814674-f5d7-4210-8646-32cafd2d8d72
* entry[+].id = "71d4e6ec-b3ab-4b39-bacf-9736196a02a4"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/71d4e6ec-b3ab-4b39-bacf-9736196a02a4"
* entry[=].resource = 71d4e6ec-b3ab-4b39-bacf-9736196a02a4
* entry[+].id = "5b914b8e-a393-465a-b943-5354100af1fb"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/5b914b8e-a393-465a-b943-5354100af1fb"
* entry[=].resource = 5b914b8e-a393-465a-b943-5354100af1fb
* entry[+].id = "92e2374c-8ac5-4f8a-a62a-1f1ffe11e256"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/92e2374c-8ac5-4f8a-a62a-1f1ffe11e256"
* entry[=].resource = 92e2374c-8ac5-4f8a-a62a-1f1ffe11e256
* entry[+].id = "8fb84c51-3bbe-412c-bc72-7e49307411d2"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/8fb84c51-3bbe-412c-bc72-7e49307411d2"
* entry[=].resource = 8fb84c51-3bbe-412c-bc72-7e49307411d2
* entry[+].id = "cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15"
* entry[=].fullUrl = "https://example.com/fhir/MedicationStatement/cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15"
* entry[=].resource = cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15
* entry[+].id = "51a4e1f5-d216-4cf2-9a94-0720957914d2"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/51a4e1f5-d216-4cf2-9a94-0720957914d2"
* entry[=].resource = 51a4e1f5-d216-4cf2-9a94-0720957914d2
* entry[+].id = "1c1869b6-3194-420d-817d-e91281114889"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/1c1869b6-3194-420d-817d-e91281114889"
* entry[=].resource = 1c1869b6-3194-420d-817d-e91281114889
* entry[+].id = "a75a3467-7c68-404b-9aad-9dd9fc943e44"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/a75a3467-7c68-404b-9aad-9dd9fc943e44"
* entry[=].resource = a75a3467-7c68-404b-9aad-9dd9fc943e44
* entry[+].id = "3d181758-ed82-4dc9-bda1-2705b6b9b9c6"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/3d181758-ed82-4dc9-bda1-2705b6b9b9c6"
* entry[=].resource = 3d181758-ed82-4dc9-bda1-2705b6b9b9c6
* entry[+].id = "1d7a3cf9-9766-4f0f-abd3-0c23a63310f0"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/1d7a3cf9-9766-4f0f-abd3-0c23a63310f0"
* entry[=].resource = 1d7a3cf9-9766-4f0f-abd3-0c23a63310f0
* entry[+].id = "70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7"
* entry[=].resource = 70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7
* entry[+].id = "26a93107-ae34-45e8-814a-4538a94fa327"
* entry[=].fullUrl = "https://example.com/fhir/Immunization/26a93107-ae34-45e8-814a-4538a94fa327"
* entry[=].resource = 26a93107-ae34-45e8-814a-4538a94fa327
* entry[+].id = "995e7adf-1ed2-44bc-a193-852b3f133801"
* entry[=].fullUrl = "https://example.com/fhir/Procedure/995e7adf-1ed2-44bc-a193-852b3f133801"
* entry[=].resource = 995e7adf-1ed2-44bc-a193-852b3f133801
* entry[+].id = "55d96c37-a3f3-4330-a0ff-d28a9f48080e"
* entry[=].fullUrl = "https://example.com/fhir/DiagnosticReport/55d96c37-a3f3-4330-a0ff-d28a9f48080e"
* entry[=].resource = 55d96c37-a3f3-4330-a0ff-d28a9f48080e
* entry[+].id = "bbb18a40-dd7d-4cdc-9a7b-37bf537807ff"
* entry[=].fullUrl = "https://example.com/fhir/DiagnosticReport/bbb18a40-dd7d-4cdc-9a7b-37bf537807ff"
* entry[=].resource = bbb18a40-dd7d-4cdc-9a7b-37bf537807ff
* entry[+].id = "1cc10edc-b745-43b3-915e-311bbc00a42a"
* entry[=].fullUrl = "https://example.com/fhir/Observation/1cc10edc-b745-43b3-915e-311bbc00a42a"
* entry[=].resource = 1cc10edc-b745-43b3-915e-311bbc00a42a
* entry[+].id = "d158ad3a-0f4c-4b31-ab61-9a09fe453eb8"
* entry[=].fullUrl = "https://example.com/fhir/Observation/d158ad3a-0f4c-4b31-ab61-9a09fe453eb8"
* entry[=].resource = d158ad3a-0f4c-4b31-ab61-9a09fe453eb8
* entry[+].id = "221b5965-a5cd-47dc-98cb-69f44e3c761a"
* entry[=].fullUrl = "https://example.com/fhir/Observation/221b5965-a5cd-47dc-98cb-69f44e3c761a"
* entry[=].resource = 221b5965-a5cd-47dc-98cb-69f44e3c761a
* entry[+].id = "89774657-5307-43e9-8b85-1a835d93204e"
* entry[=].fullUrl = "https://example.com/fhir/Observation/89774657-5307-43e9-8b85-1a835d93204e"
* entry[=].resource = 89774657-5307-43e9-8b85-1a835d93204e
* entry[+].id = "69df69fa-c716-4aba-8e2f-2ecf855fd243"
* entry[=].fullUrl = "https://example.com/fhir/Observation/69df69fa-c716-4aba-8e2f-2ecf855fd243"
* entry[=].resource = 69df69fa-c716-4aba-8e2f-2ecf855fd243
* entry[+].id = "c9f9c9ee-a37c-4571-a064-20518089529a"
* entry[=].fullUrl = "https://example.com/fhir/Observation/c9f9c9ee-a37c-4571-a064-20518089529a"
* entry[=].resource = c9f9c9ee-a37c-4571-a064-20518089529a
* entry[+].id = "62ea6186-c0ad-443d-8e2a-806aaa1b4634"
* entry[=].fullUrl = "https://example.com/fhir/Observation/62ea6186-c0ad-443d-8e2a-806aaa1b4634"
* entry[=].resource = 62ea6186-c0ad-443d-8e2a-806aaa1b4634
* entry[+].id = "acb586b0-6f45-42d5-a6de-07fccbe50f02"
* entry[=].fullUrl = "https://example.com/fhir/Observation/acb586b0-6f45-42d5-a6de-07fccbe50f02"
* entry[=].resource = acb586b0-6f45-42d5-a6de-07fccbe50f02
* entry[+].id = "2784e4c8-9ecb-4210-af41-2006938ec879"
* entry[=].fullUrl = "https://example.com/fhir/Observation/2784e4c8-9ecb-4210-af41-2006938ec879"
* entry[=].resource = 2784e4c8-9ecb-4210-af41-2006938ec879
* entry[+].id = "10ae0e08-1a80-465c-9d4a-5c90894a4840"
* entry[=].fullUrl = "https://example.com/fhir/Observation/10ae0e08-1a80-465c-9d4a-5c90894a4840"
* entry[=].resource = 10ae0e08-1a80-465c-9d4a-5c90894a4840
* entry[+].id = "52fc3870-15ff-4e3a-b4de-553ee3663410"
* entry[=].fullUrl = "https://example.com/fhir/Observation/52fc3870-15ff-4e3a-b4de-553ee3663410"
* entry[=].resource = 52fc3870-15ff-4e3a-b4de-553ee3663410
* entry[+].id = "616d4a49-7a2f-490a-82d0-c6b6847ce32d"
* entry[=].fullUrl = "https://example.com/fhir/Observation/616d4a49-7a2f-490a-82d0-c6b6847ce32d"
* entry[=].resource = 616d4a49-7a2f-490a-82d0-c6b6847ce32d
* entry[+].id = "cae3151d-96b4-44ba-b0b2-ce783490a184"
* entry[=].fullUrl = "https://example.com/fhir/Observation/cae3151d-96b4-44ba-b0b2-ce783490a184"
* entry[=].resource = cae3151d-96b4-44ba-b0b2-ce783490a184
* entry[+].id = "70ce6641-b78b-4565-8805-4b48476c2be0"
* entry[=].fullUrl = "https://example.com/fhir/Observation/70ce6641-b78b-4565-8805-4b48476c2be0"
* entry[=].resource = 70ce6641-b78b-4565-8805-4b48476c2be0
* entry[+].id = "4289ec37-fe31-42fe-9cec-928b7dd3785a"
* entry[=].fullUrl = "https://example.com/fhir/Observation/4289ec37-fe31-42fe-9cec-928b7dd3785a"
* entry[=].resource = 4289ec37-fe31-42fe-9cec-928b7dd3785a
* entry[+].id = "30dfd1fc-04be-4326-96ce-eb244eb0e9fe"
* entry[=].fullUrl = "https://example.com/fhir/Observation/30dfd1fc-04be-4326-96ce-eb244eb0e9fe"
* entry[=].resource = 30dfd1fc-04be-4326-96ce-eb244eb0e9fe
* entry[+].id = "52b7075b-9070-47f6-9e15-4a3129e0ae10"
* entry[=].fullUrl = "https://example.com/fhir/PractitionerRole/52b7075b-9070-47f6-9e15-4a3129e0ae10"
* entry[=].resource = 52b7075b-9070-47f6-9e15-4a3129e0ae10
* entry[+].id = "93ec885b-8cdf-4182-b62b-0088c28062ba"
* entry[=].fullUrl = "https://example.com/fhir/Flag/93ec885b-8cdf-4182-b62b-0088c28062ba"
* entry[=].resource = 93ec885b-8cdf-4182-b62b-0088c28062ba
* entry[+].id = "CCG-careplan-example"
* entry[=].fullUrl = "https://example.com/fhir/CarePlan/CCG-careplan-example"
* entry[=].resource = CCG-careplan-example
* entry[+].id = "CCG-patient-plans-example"
* entry[=].fullUrl = "https://example.com/fhir/PlanDefinition/CCG-patient-plans-example"
* entry[=].resource = CCG-patient-plans-example

Instance: 896da41d-578c-4223-90e0-37e167d073f3
InstanceOf: Composition
Usage: #inline
* meta.versionId = "1"
* language = #en-US
* identifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* identifier.value = "ca7cac26-f0ee-42b9-bd98-b102b0365b40"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(ZKT9319)
* date = "2024-12-01"
* author = Reference(d4b84a1f-862a-4d8e-884d-a46ac2a3c171)
* title = "International Patient Summary"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2024-12-01"
* attester.party = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* custodian = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* relatesTo.code = #transforms
* relatesTo.targetIdentifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* relatesTo.targetIdentifier.value = "ca7cac26-f0ee-42b9-bd98-b102b0365b40"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2024-12-01"
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Code</th>\r\n        <th>Type</th>\r\n        <th>Recorded On</th>\r\n        <th>Asserted By</th>\r\n        <th>Clinical Status</th>\r\n        <th>Verification Status</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"0574537d-c8ff-4b2e-a483-2200c6aa4ba2\">\r\n        <td>Flucloxacillin-containing product</td>\r\n        <td>Allergy</td>\r\n        <td />\r\n        <td>Patient/ZKT9319</td>\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"1c57164d-b33e-41da-bfe9-c91e92133125\">\r\n        <td>Diazepam-containing product</td>\r\n        <td>Allergy</td>\r\n        <td />\r\n        <td>Patient/ZKT9319</td>\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(0574537d-c8ff-4b2e-a483-2200c6aa4ba2)
* section[=].entry[+] = Reference(1c57164d-b33e-41da-bfe9-c91e92133125)
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list - Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Condition</th>\r\n        <th>Category</th>\r\n        <th>Recorded On</th>\r\n        <th>Clinical Status</th>\r\n        <th>Verification Status</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c\">\r\n        <td>Postconcussion syndrome</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"a94c2561-fa1e-433b-9618-973a2f0c411b\">\r\n        <td>Diabetes type 2 on insulin</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"63e9afa5-1247-4aac-ac27-95d078cc5473\">\r\n        <td>Gout</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"530be33d-9591-4fc8-8ffa-a85a52fa6e15\">\r\n        <td>Benign essential hypertension</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>active</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"4b876f36-2d84-4dcf-9913-38cf674d1cc8\">\r\n        <td>Anxiety disorder due to a general medical condition</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>inactive</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n      <tr idref=\"8d8e4a37-991a-4e65-8122-43395cb06c0c\">\r\n        <td>Fracture of neck of femur</td>\r\n        <td>Problem List Item</td>\r\n        <td />\r\n        <td>inactive</td>\r\n        <td>confirmed</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c)
* section[=].entry[+] = Reference(a94c2561-fa1e-433b-9618-973a2f0c411b)
* section[=].entry[+] = Reference(63e9afa5-1247-4aac-ac27-95d078cc5473)
* section[=].entry[+] = Reference(530be33d-9591-4fc8-8ffa-a85a52fa6e15)
* section[=].entry[+] = Reference(4b876f36-2d84-4dcf-9913-38cf674d1cc8)
* section[=].entry[+] = Reference(8d8e4a37-991a-4e65-8122-43395cb06c0c)
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Drug</th>\r\n        <th>Status</th>\r\n        <th>Effective</th>\r\n        <th>Instructions</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"fd93f544-6ab1-4ba8-a846-92d08d00552c\">\r\n        <td>insulin glargine 100 international units/mL injection, 10 mL vial</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Inject 20 units per day into your upper arms, abdomen or thights.You should vary the site where you inject each dose of Lantus. This helps reduce your risk of certain side effects, such as pits or lumps in your skin.</td>\r\n      </tr>\r\n      <tr idref=\"e7814674-f5d7-4210-8646-32cafd2d8d72\">\r\n        <td>dulaglutide 1.5 mg/0.5 mL injection, prefilled injection device</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Inject once a week, on the same day each week, into the skin of your stomach, thigh or upper arm. You can use the same area of your body each time, but choose a different place within that area. You can inject it any time of the day, with or without meals.</td>\r\n      </tr>\r\n      <tr idref=\"71d4e6ec-b3ab-4b39-bacf-9736196a02a4\">\r\n        <td>metformin hydrochloride 1000 mg tablet</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Take ONE tablet, two times a day, with meals.</td>\r\n      </tr>\r\n      <tr idref=\"5b914b8e-a393-465a-b943-5354100af1fb\">\r\n        <td>amlodipine 5 mg tablet</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Take ONE tablet at any time of day, but try to make sure it's around the same time every day.</td>\r\n      </tr>\r\n      <tr idref=\"92e2374c-8ac5-4f8a-a62a-1f1ffe11e256\">\r\n        <td>losartan potassium 50 mg tablet</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Take ONE tablet daily</td>\r\n      </tr>\r\n      <tr idref=\"8fb84c51-3bbe-412c-bc72-7e49307411d2\">\r\n        <td>aspirin 75 mg tablet: enteric-coated</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Take ONE tablet daily</td>\r\n      </tr>\r\n      <tr idref=\"cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15\">\r\n        <td>allopurinol 300 mg tablet</td>\r\n        <td>Active</td>\r\n        <td>2024-03-01</td>\r\n        <td>Take ONE tablet daily, after meals</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(fd93f544-6ab1-4ba8-a846-92d08d00552c)
* section[=].entry[+] = Reference(e7814674-f5d7-4210-8646-32cafd2d8d72)
* section[=].entry[+] = Reference(71d4e6ec-b3ab-4b39-bacf-9736196a02a4)
* section[=].entry[+] = Reference(5b914b8e-a393-465a-b943-5354100af1fb)
* section[=].entry[+] = Reference(92e2374c-8ac5-4f8a-a62a-1f1ffe11e256)
* section[=].entry[+] = Reference(8fb84c51-3bbe-412c-bc72-7e49307411d2)
* section[=].entry[+] = Reference(cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15)
* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of Immunization Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Vaccine</th>\r\n        <th>Status</th>\r\n        <th>Occurance</th>\r\n        <th>Route</th>\r\n        <th>Dose #</th>\r\n        <th>Series</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"51a4e1f5-d216-4cf2-9a94-0720957914d2\">\r\n        <td>Influenza vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2024-05-20</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>1 (Over 65 years (Influenza))</td>\r\n      </tr>\r\n      <tr idref=\"1c1869b6-3194-420d-817d-e91281114889\">\r\n        <td>SARS-CoV-2 mRNA vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2022-02-01</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>2</td>\r\n        <td>12 (At risk, no previous history)</td>\r\n      </tr>\r\n      <tr idref=\"a75a3467-7c68-404b-9aad-9dd9fc943e44\">\r\n        <td>SARS-CoV-2 mRNA vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2021-08-05</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>12 (At risk, no previous history)</td>\r\n      </tr>\r\n      <tr idref=\"3d181758-ed82-4dc9-bda1-2705b6b9b9c6\">\r\n        <td>Influenza vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2019-05-01</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>1 (Over 65 years (Influenza))</td>\r\n      </tr>\r\n      <tr idref=\"1d7a3cf9-9766-4f0f-abd3-0c23a63310f0\">\r\n        <td>Diphtheria and acellular pertussis and tetanus vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2019-04-24</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>6 (Booster)</td>\r\n      </tr>\r\n      <tr idref=\"70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7\">\r\n        <td>tetanus and diphtheria toxoids, not adsorbed, for adult use</td>\r\n        <td>Completed</td>\r\n        <td>2018-04-05</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>6 (Booster)</td>\r\n      </tr>\r\n      <tr idref=\"26a93107-ae34-45e8-814a-4538a94fa327\">\r\n        <td>Pneumococcal polysaccharide conjugate vaccine</td>\r\n        <td>Completed</td>\r\n        <td>2015-09-25</td>\r\n        <td>Injection, intramuscular</td>\r\n        <td>1</td>\r\n        <td>21 (PCV catch up)</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(51a4e1f5-d216-4cf2-9a94-0720957914d2)
* section[=].entry[+] = Reference(1c1869b6-3194-420d-817d-e91281114889)
* section[=].entry[+] = Reference(a75a3467-7c68-404b-9aad-9dd9fc943e44)
* section[=].entry[+] = Reference(3d181758-ed82-4dc9-bda1-2705b6b9b9c6)
* section[=].entry[+] = Reference(1d7a3cf9-9766-4f0f-abd3-0c23a63310f0)
* section[=].entry[+] = Reference(70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7)
* section[=].entry[+] = Reference(26a93107-ae34-45e8-814a-4538a94fa327)
* section[+].title = "Procedures"
* section[=].code = $loinc#47519-4 "History of Procedures Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>There is no information available about the subject's past history of procedures.</div>"
* section[=].entry = Reference(995e7adf-1ed2-44bc-a193-852b3f133801)
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Type</th>\r\n        <th>Result</th>\r\n        <th>Date</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"1cc10edc-b745-43b3-915e-311bbc00a42a\">\r\n        <td> [Total cholesterol:HDL ratio]</td>\r\n        <td>5.1 mmol/L</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"d158ad3a-0f4c-4b31-ab61-9a09fe453eb8\">\r\n        <td> [HDL Cholesterol]</td>\r\n        <td>1.5 mmol/L</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"221b5965-a5cd-47dc-98cb-69f44e3c761a\">\r\n        <td> [LDL Cholesterol]</td>\r\n        <td>3.4 mmol/L</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"89774657-5307-43e9-8b85-1a835d93204e\">\r\n        <td> [HbA1c]</td>\r\n        <td>60 mmol/mol</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(1cc10edc-b745-43b3-915e-311bbc00a42a)
* section[=].entry[+] = Reference(d158ad3a-0f4c-4b31-ab61-9a09fe453eb8)
* section[=].entry[+] = Reference(221b5965-a5cd-47dc-98cb-69f44e3c761a)
* section[=].entry[+] = Reference(55d96c37-a3f3-4330-a0ff-d28a9f48080e)
* section[=].entry[+] = Reference(89774657-5307-43e9-8b85-1a835d93204e)
* section[=].entry[+] = Reference(bbb18a40-dd7d-4cdc-9a7b-37bf537807ff)
* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Type</th>\r\n        <th>Result</th>\r\n        <th>Date</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"69df69fa-c716-4aba-8e2f-2ecf855fd243\">\r\n        <td>Body temperature</td>\r\n        <td>37.5 Cel</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"c9f9c9ee-a37c-4571-a064-20518089529a\">\r\n        <td>Heart rate</td>\r\n        <td>84 /min</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"62ea6186-c0ad-443d-8e2a-806aaa1b4634\">\r\n        <td>Respiratory rate</td>\r\n        <td>18 /min</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"acb586b0-6f45-42d5-a6de-07fccbe50f02\">\r\n        <td>Systolic blood pressure</td>\r\n        <td>136 mmHg</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"acb586b0-6f45-42d5-a6de-07fccbe50f02\">\r\n        <td>Diastolic blood pressure</td>\r\n        <td>88 mmHg</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"2784e4c8-9ecb-4210-af41-2006938ec879\">\r\n        <td>Body height</td>\r\n        <td>1.84 cm</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"10ae0e08-1a80-465c-9d4a-5c90894a4840\">\r\n        <td>Body weight</td>\r\n        <td>104 kg</td>\r\n        <td>2024-09-29T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"52fc3870-15ff-4e3a-b4de-553ee3663410\">\r\n        <td>Body temperature</td>\r\n        <td>37.2 Cel</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"616d4a49-7a2f-490a-82d0-c6b6847ce32d\">\r\n        <td>Heart rate</td>\r\n        <td>86 /min</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"cae3151d-96b4-44ba-b0b2-ce783490a184\">\r\n        <td>Respiratory rate</td>\r\n        <td>14 /min</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"70ce6641-b78b-4565-8805-4b48476c2be0\">\r\n        <td>Systolic blood pressure</td>\r\n        <td>130 mmHg</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"70ce6641-b78b-4565-8805-4b48476c2be0\">\r\n        <td>Diastolic blood pressure</td>\r\n        <td>82 mmHg</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n      <tr idref=\"4289ec37-fe31-42fe-9cec-928b7dd3785a\">\r\n        <td>Body weight</td>\r\n        <td>103 kg</td>\r\n        <td>2024-03-05T00:00:00+00:00</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry[0] = Reference(69df69fa-c716-4aba-8e2f-2ecf855fd243)
* section[=].entry[+] = Reference(c9f9c9ee-a37c-4571-a064-20518089529a)
* section[=].entry[+] = Reference(62ea6186-c0ad-443d-8e2a-806aaa1b4634)
* section[=].entry[+] = Reference(acb586b0-6f45-42d5-a6de-07fccbe50f02)
* section[=].entry[+] = Reference(2784e4c8-9ecb-4210-af41-2006938ec879)
* section[=].entry[+] = Reference(10ae0e08-1a80-465c-9d4a-5c90894a4840)
* section[=].entry[+] = Reference(52fc3870-15ff-4e3a-b4de-553ee3663410)
* section[=].entry[+] = Reference(616d4a49-7a2f-490a-82d0-c6b6847ce32d)
* section[=].entry[+] = Reference(cae3151d-96b4-44ba-b0b2-ce783490a184)
* section[=].entry[+] = Reference(70ce6641-b78b-4565-8805-4b48476c2be0)
* section[=].entry[+] = Reference(4289ec37-fe31-42fe-9cec-928b7dd3785a)
* section[+].title = "Social History"
* section[=].code = $loinc#29762-2 "Social history Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n  <table>\r\n    <thead>\r\n      <tr>\r\n        <th>Type</th>\r\n        <th>Result</th>\r\n        <th>Date</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr idref=\"30dfd1fc-04be-4326-96ce-eb244eb0e9fe\">\r\n        <td>Tobacco smoking status</td>\r\n        <td>Former smoker</td>\r\n        <td>2005-06-30</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n</div>"
* section[=].entry = Reference(30dfd1fc-04be-4326-96ce-eb244eb0e9fe)
* section[+].title = "Functional Status"
* section[=].code = $loinc#47420-5 "Functional status assessment note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' xml:lang='en-NZ'><table xmlns=\"http://www.w3.org/1999/xhtml\">        <thead>          <tr>            <th>Functional Condition</th>            <th>Effective Dates</th>            <th>Condition Status</th>          </tr>        </thead>        <tbody>          <tr>            <td>Often confused, struggles to communicate in English</td>                        <td>Active</td>          </tr>          <tr>            <td>Depends on a walking frame or electric scooter to get around.</td>                        <td>Active</td>          </tr>          <tr>            <td>Doesn�t leave the house much.</td>                        <td>Active</td>          </tr>          <tr>            <td>Relies on caregiver Cindy for assistance with many activities of daily living.</td>                        <td>Active</td>          </tr>          <tr>            <td>Family has made the decision to transfer Iosefa to residential care soon, arrangements currently being finalised.</td>                        <td>Active</td>          </tr>        </tbody>      </table>    </div>"
* section[=].entry[0] = Reference(b0bce00f-992e-4512-87c4-ab3a6f8c8671)
* section[=].entry[+] = Reference(c5f4fa66-f2c4-4529-89c5-f38d24459d45)
* section[=].entry[+] = Reference(88a5b69e-50b3-44b2-ba92-58f3aa61225b)
* section[=].entry[+] = Reference(4a78b5bc-90c3-4a0b-a355-55e40a8e5e60)
* section[=].entry[+] = Reference(85711e39-97c3-452e-a0ac-2a954bc444b7)
* section[+].title = "Alerts"
* section[=].code = $loinc#104605-1 "Alert"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>Shellfish free diet to prevent excess uric acid levels triggering gout attacks.</div>"
* section[=].entry = Reference(93ec885b-8cdf-4182-b62b-0088c28062ba)
* section[+].title = "Plan of Care"
* section[=].code = $loinc#18776-5 "Plan of Care"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>Patient under guideline-based care for Diabetes and Hypertension.</div>"
* section[=].entry = Reference(CCG-careplan-example)
* section[+].title = "Patient Story"
* section[=].code = $loinc#81338-6 "Patient Goals, preferences, and priorities for care experience"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>Patient undergoing lifestyle changes to lower blood pressure.</div>"

Instance: ZKT9319
InstanceOf: Patient
Usage: #inline
* identifier.system = "https://example.org/nhi-id"
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

Instance: d4b84a1f-862a-4d8e-884d-a46ac2a3c171
InstanceOf: Organization
Usage: #inline
* identifier.system = "https://example.org/hpi-facility-id"
* identifier.value = "F0U044-C"
* name = "Fairfield Medical Centre"

Instance: 66ac78e5-4172-46d6-acf4-11148401c6d6
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(35ed8aa3-eff2-4431-9baa-a15c7a9afef6)
* code = $sct#158965000 "Doctor"

Instance: 35ed8aa3-eff2-4431-9baa-a15c7a9afef6
InstanceOf: Practitioner
Usage: #inline
* name.use = #usual
* name.family = "Test-Smith"
* name.given[0] = "Dr"
* name.given[+] = "James"
* name.given[+] = "Test-Smith"

Instance: 3fa60707-7c9b-4956-adab-64f792b05d40
InstanceOf: Organization
Usage: #inline
* identifier.system = "https://example.org/hpi-facility-id"
* identifier.value = "F0U044-C"
* name = "Fairfield Medical Centre"

Instance: 0574537d-c8ff-4b2e-a483-2200c6aa4ba2
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* code = $sct#96067005 "Flucloxacillin-containing product"
* patient = Reference(ZKT9319)
* asserter = Reference(ZKT9319)
* reaction.manifestation = $sct#292954005 "Penicillin adverse reaction"

Instance: 1c57164d-b33e-41da-bfe9-c91e92133125
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* code = $sct#48546005 "Diazepam-containing product"
* patient = Reference(ZKT9319)
* asserter = Reference(ZKT9319)
* reaction.manifestation = $sct#292360004 "Diazepam adverse reaction"

Instance: e8b8e7c9-aad8-4d00-94c7-0947ccd4da2c
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#40425004 "Postconcussion syndrome"
* subject = Reference(ZKT9319)

Instance: a94c2561-fa1e-433b-9618-973a2f0c411b
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#237599002 "Diabetes type 2 on insulin"
* subject = Reference(ZKT9319)

Instance: 63e9afa5-1247-4aac-ac27-95d078cc5473
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#90560007 "Gout"
* subject = Reference(ZKT9319)

Instance: 530be33d-9591-4fc8-8ffa-a85a52fa6e15
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#1201005 "Benign essential hypertension"
* subject = Reference(ZKT9319)

Instance: 4b876f36-2d84-4dcf-9913-38cf674d1cc8
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#52910006 "Anxiety disorder due to a general medical condition"
* subject = Reference(ZKT9319)

Instance: 8d8e4a37-991a-4e65-8122-43395cb06c0c
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#5913000 "Fracture of neck of femur"
* subject = Reference(ZKT9319)

Instance: b0bce00f-992e-4512-87c4-ab3a6f8c8671
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code.text = "Often confused, struggles to communicate in English"
* subject = Reference(ZKT9319)

Instance: c5f4fa66-f2c4-4529-89c5-f38d24459d45
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code.text = "Depends on a walking frame or electric scooter to get around."
* subject = Reference(ZKT9319)

Instance: 88a5b69e-50b3-44b2-ba92-58f3aa61225b
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code.text = "Doesn�t leave the house much."
* subject = Reference(ZKT9319)

Instance: 4a78b5bc-90c3-4a0b-a355-55e40a8e5e60
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code.text = "Relies on caregiver Cindy for assistance with many activities of daily living."
* subject = Reference(ZKT9319)

Instance: 85711e39-97c3-452e-a0ac-2a954bc444b7
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code.text = "Family has made the decision to transfer Iosefa to residential care soon, arrangements currently being finalised."
* subject = Reference(ZKT9319)

Instance: fd93f544-6ab1-4ba8-a846-92d08d00552c
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#126212009 "Product containing insulin glargine (medicinal product)"
* medicationCodeableConcept.text = "insulin glargine 100 international units/mL injection, 10 mL vial"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Inject 20 units per day into your upper arms, abdomen or thights.You should vary the site where you inject each dose of Lantus. This helps reduce your risk of certain side effects, such as pits or lumps in your skin."
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#34206005 "subcutaneous route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#767525000 "unit"

Instance: e7814674-f5d7-4210-8646-32cafd2d8d72
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#714081009 "Product containing dulaglutide (medicinal product)"
* medicationCodeableConcept.text = "dulaglutide 1.5 mg/0.5 mL injection, prefilled injection device"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Inject once a week, on the same day each week, into the skin of your stomach, thigh or upper arm. You can use the same area of your body each time, but choose a different place within that area. You can inject it any time of the day, with or without meals."
* dosage.route = $sct#34206005 "subcutaneous route"

Instance: 71d4e6ec-b3ab-4b39-bacf-9736196a02a4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#109081006 "Product containing metformin (medicinal product)"
* medicationCodeableConcept.text = "metformin hydrochloride 1000 mg tablet"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Take ONE tablet, two times a day, with meals."
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#428673006 "Tablet - unit of product usage"

Instance: 5b914b8e-a393-465a-b943-5354100af1fb
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#108537001 "Product containing amlodipine (medicinal product)"
* medicationCodeableConcept.text = "amlodipine 5 mg tablet"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Take ONE tablet at any time of day, but try to make sure it's around the same time every day."
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#428673006 "Tablet - unit of product usage"

Instance: 92e2374c-8ac5-4f8a-a62a-1f1ffe11e256
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#96309000 "Product containing losartan (medicinal product)"
* medicationCodeableConcept.text = "losartan potassium 50 mg tablet"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Take ONE tablet daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#428673006 "Tablet - unit of product usage"

Instance: 8fb84c51-3bbe-412c-bc72-7e49307411d2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#7947003 "Product containing aspirin (medicinal product)"
* medicationCodeableConcept.text = "aspirin 75 mg tablet: enteric-coated"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Take ONE tablet daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#428673006 "Tablet - unit of product usage"

Instance: cb0d4a70-6c1a-4ccb-ae50-0e4a319d6a15
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationCodeableConcept = $sct#25246002 "Product containing allopurinol (medicinal product)"
* medicationCodeableConcept.text = "allopurinol 300 mg tablet"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-01"
* informationSource = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* dosage.text = "Take ONE tablet daily, after meals"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 1 http://snomed.info/sct#428673006 "Tablet - unit of product usage"

Instance: 51a4e1f5-d216-4cf2-9a94-0720957914d2
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1181000221105 "Influenza vaccine"
* vaccineCode.text = "Influenza, seasonal, injectable"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2024-05-20"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "1 (Over 65 years (Influenza))"
* protocolApplied.targetDisease = $sct#6142004 "Influenza"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 1c1869b6-3194-420d-817d-e91281114889
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1119349007 "SARS-CoV-2 mRNA vaccine"
* vaccineCode.text = "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2022-02-01"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "12 (At risk, no previous history)"
* protocolApplied.targetDisease = $sct#840539006 "COVID-19"
* protocolApplied.doseNumberPositiveInt = 2

Instance: a75a3467-7c68-404b-9aad-9dd9fc943e44
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1119349007 "SARS-CoV-2 mRNA vaccine"
* vaccineCode.text = "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2021-08-05"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "12 (At risk, no previous history)"
* protocolApplied.targetDisease = $sct#840539006 "COVID-19"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 3d181758-ed82-4dc9-bda1-2705b6b9b9c6
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1181000221105 "Influenza vaccine"
* vaccineCode.text = "Influenza, seasonal, injectable"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2019-05-01"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "1 (Over 65 years (Influenza))"
* protocolApplied.targetDisease = $sct#6142004 "Influenza"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 1d7a3cf9-9766-4f0f-abd3-0c23a63310f0
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#871876003 "Diphtheria and acellular pertussis and tetanus vaccine"
* vaccineCode.text = "diphtheria, tetanus toxoids and acellular pertussis vaccine"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2019-04-24"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "6 (Booster)"
* protocolApplied.targetDisease[0] = $sct#397430003 "Diphtheria"
* protocolApplied.targetDisease[+] = $sct#76902006 "Tetanus"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 70a8bce5-fbe5-46d7-8b36-ddd9f74f45d7
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $cvx#138 "tetanus and diphtheria toxoids, not adsorbed, for adult use"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2018-04-05"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "6 (Booster)"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 26a93107-ae34-45e8-814a-4538a94fa327
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1801000221105 "Pneumococcal polysaccharide conjugate vaccine"
* vaccineCode.text = "pneumococcal conjugate vaccine, 13 valent"
* patient = Reference(ZKT9319)
* occurrenceDateTime = "2015-09-25"
* site = $sct#16217701000119102 "Structure of left deltoid muscle"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.actor = Reference(3fa60707-7c9b-4956-adab-64f792b05d40)
* protocolApplied.series = "21 (PCV catch up)"
* protocolApplied.targetDisease = $sct#23511006 "Meningococcal infectious disease"
* protocolApplied.doseNumberPositiveInt = 1

Instance: 995e7adf-1ed2-44bc-a193-852b3f133801
InstanceOf: Procedure
Usage: #inline
* status = #unknown
* code = $sct#787480003 "No known procedures"
* subject = Reference(ZKT9319)
* performedString = "N/A"

Instance: 55d96c37-a3f3-4330-a0ff-d28a9f48080e
InstanceOf: DiagnosticReport
Usage: #inline
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code.text = "[Lipids]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* result[0] = Reference(1cc10edc-b745-43b3-915e-311bbc00a42a)
* result[+] = Reference(d158ad3a-0f4c-4b31-ab61-9a09fe453eb8)
* result[+] = Reference(221b5965-a5cd-47dc-98cb-69f44e3c761a)

Instance: bbb18a40-dd7d-4cdc-9a7b-37bf537807ff
InstanceOf: DiagnosticReport
Usage: #inline
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code.text = "[HbA1C]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* result = Reference(89774657-5307-43e9-8b85-1a835d93204e)

Instance: 1cc10edc-b745-43b3-915e-311bbc00a42a
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code.text = "[Total cholesterol:HDL ratio]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(52b7075b-9070-47f6-9e15-4a3129e0ae10)
* valueQuantity = 5.1 'mmol/L' "mmol/L"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.text = "<4 mmol/L (high risk)"

Instance: d158ad3a-0f4c-4b31-ab61-9a09fe453eb8
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code.text = "[HDL Cholesterol]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(52b7075b-9070-47f6-9e15-4a3129e0ae10)
* valueQuantity = 1.5 'mmol/L' "mmol/L"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.text = ">1 mmol/L"

Instance: 221b5965-a5cd-47dc-98cb-69f44e3c761a
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code.text = "[LDL Cholesterol]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(52b7075b-9070-47f6-9e15-4a3129e0ae10)
* valueQuantity = 3.4 'mmol/L' "mmol/L"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.text = "<1.8 mmol/L"

Instance: 89774657-5307-43e9-8b85-1a835d93204e
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code.text = "[HbA1c]"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(52b7075b-9070-47f6-9e15-4a3129e0ae10)
* valueQuantity = 60 'mmol/mol' "mmol/mol"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.text = "50 � 55 mmol/mol (diabetes)"

Instance: 69df69fa-c716-4aba-8e2f-2ecf855fd243
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 37.5 'Cel' "Cel"

Instance: c9f9c9ee-a37c-4571-a064-20518089529a
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 84 '/min' "/min"

Instance: 62ea6186-c0ad-443d-8e2a-806aaa1b4634
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 18 '/min' "/min"

Instance: acb586b0-6f45-42d5-a6de-07fccbe50f02
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 136 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 88 'mm[Hg]' "mmHg"

Instance: 2784e4c8-9ecb-4210-af41-2006938ec879
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8302-2 "Body height"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 1.84 'cm' "cm"

Instance: 10ae0e08-1a80-465c-9d4a-5c90894a4840
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#29463-7 "Body weight"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-09-29T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 104 'kg' "kg"

Instance: 52fc3870-15ff-4e3a-b4de-553ee3663410
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 37.2 'Cel' "Cel"

Instance: 616d4a49-7a2f-490a-82d0-c6b6847ce32d
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 86 '/min' "/min"

Instance: cae3151d-96b4-44ba-b0b2-ce783490a184
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 14 '/min' "/min"

Instance: 70ce6641-b78b-4565-8805-4b48476c2be0
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 130 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 82 'mm[Hg]' "mmHg"

Instance: 4289ec37-fe31-42fe-9cec-928b7dd3785a
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#29463-7 "Body weight"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2024-03-05T00:00:00+00:00"
* performer = Reference(66ac78e5-4172-46d6-acf4-11148401c6d6)
* valueQuantity = 103 'kg' "kg"

Instance: 30dfd1fc-04be-4326-96ce-eb244eb0e9fe
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#social-history
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(ZKT9319)
* effectiveDateTime = "2005-06-30"
* performer = Reference(ZKT9319)
* valueCodeableConcept = $loinc#LA15920-4 "Former smoker"
* note.text = "30 - pack - year smoking history, quit smoking ~2005."

Instance: 52b7075b-9070-47f6-9e15-4a3129e0ae10
InstanceOf: PractitionerRole
Usage: #inline
* code = $sct#81464008 "Clinical pathologist"

Instance: 93ec885b-8cdf-4182-b62b-0088c28062ba
InstanceOf: Flag
Usage: #inline
* status = #active
* category = $flag-category#diet "Diet"
* code = $sct#1255002008 "Shellfish free diet"
* subject = Reference(ZKT9319)

Instance: CCG-careplan-example
InstanceOf: CarePlan
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(ZKT9319)
* activity[0].detail.instantiatesCanonical = "https://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* activity[=].detail.status = #in-progress

Instance: CCG-patient-plans-example
InstanceOf: PlanDefinition
Usage: #inline
* status = #active
* url = "http://example.org/fhir/PlanDefinition/CCG-patient-plans-example"
* type = #clinical-protocol 
* action[0].definitionCanonical = "https://example.org/fhir/PlanDefinition/CCG-CARD-Folder-Diabetes"
* action[+].definitionCanonical = "https://example.org/fhir/PlanDefinition/CCG-CARD-Folder-Hypertension"