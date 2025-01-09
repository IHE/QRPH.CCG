
This content model defines the **data** input (“data-in”) bundle that is
passed as part of the Apply Guideline transaction submission. This
bundle represents the content that will be used by the Guideline Engine
to evaluate all relevant CCG CARD’s condition statements during the
\$apply operation. NOTE: *this* version of the IHE CCG Profile is focused on ambulatory care encounters; subsequent versions of the specification will expand the focus to acute, home and self care scenarios.

The data-in bundle **SHALL** be composed of:

- the relevant **Encounter** resource, which **SHALL** include, at the
  least:

  - status = in-progress

  - subject = patient.id identical to the patient-id passed to the
    \$apply operation

  - period = encounter start timestamp; end timestamp omitted

  - participant.individual.practitioner = practitioner.id

  - participant.individual.practitionerRole = PractitionerRole.id 

  - location.location = location.id

  - serviceProvider = organization.id 

- the relevant **Practitioner** resource, which **SHALL**
  include, at the least:

  - id

  - identifier

  - name

- the relevant **PractitionerRole** resource, which
  **SHALL** include, at the least:

  - id

  - practitioner = practitioner.id

  - organization = organization.id

  - specialty = if known, one or more CodeableConcept values from
    <https://hl7.org/fhir/R4/valueset-c80-practice-codes.html>

- the relevant **Location** resource, which **SHALL**
  include, at the least:

  - id

  - identifier

  - name

  - address, if known

  - position, if known

  - managingOrganization = organization.id

  - type = if known, one or more CodeableConcept values from
    <https://hl7.org/fhir/R4/v3/ServiceDeliveryLocationRoleType/vs.html>

  - physicalType = if known, one or more CodeableConcept values from
    <https://hl7.org/fhir/R4/valueset-location-physical-type.html>

- the relevant **Organization** resource, if applicable, which **SHALL**
  include, at the least:

  - id

  - identifier, if known

  - name

  - address, if known

  - telecom, if known

- the patient’s **IPS document**, which **SHALL** include all the content
  defined in the FHIR IPS content model which is available to the Guideline
  Performer.

- **all** resources which reference the present Encounter.


