## CCG Contextual Content Bundle

This content model defines the **data** input (“data-in”) bundle that is
passed as part of the Apply Guideline transaction submission. This
bundle represents the content that will be used by the Guideline Engine
to evaluate all relevant CCG CARD’s condition statements during the
\$apply operation.

The data-in bundle **SHALL** be composed of:

- the relevant **Encounter** resource, which **SHALL** include, at the
  least:

  - status = in-progress

  - subject = patient.id identical to the patient-id passed to the
    \$apply operation

  - period = encounter start timestamp; end timestamp omitted

  - participant.individual.practitioner = practitioner.id, if class !=
    “HH”

  - participant.individual.practitionerRole = PractitionerRole.id if
    class != “HH”

  - location.location = location.id, if class != “HH”

  - serviceProvider = organization.id if class != “HH”

- the relevant **Practitioner** resource, if applicable, which **SHALL**
  include, at the least:

  - id

  - identifier, if known

  - name

  - address

- the relevant **PractitionerRole** resource, if applicable, which
  **SHALL** include, at the least:

  - id

  - practitioner = practitioner.id

  - organization = organization.id

  - specialty = one or more CodeableConcept values from
    <https://hl7.org/fhir/R4/valueset-c80-practice-codes.html>

- the relevant **Location** resource, if applicable, which **SHALL**
  include, at the least:

  - id

  - identifier, if known

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

- the patient’s **IPS document**, which **SHALL** include all content
  defined in the FHIR IPS content model and available to the Guideline
  Performer.
