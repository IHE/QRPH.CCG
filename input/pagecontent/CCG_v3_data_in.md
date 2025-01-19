
This content model defines the **data** input (“data-in”) bundle that is
passed as part of the Apply Guideline transaction submission. This
bundle represents the content that will be used by the Guideline Engine
to evaluate all relevant CCG CARD’s condition statements during the
\$apply operation.

The data-in bundle **SHALL** be composed of:

- the relevant **Encounter** resource, based on the CPGEncounter[^1]
  profile which **SHALL** be further constrained as follows:

  - id (required)

  - status = in-progress

  - period = encounter start timestamp required; end timestamp must be
    omitted

  - serviceProvider = organization.id, required if known

- the relevant **Practitioner** resource, based on the
  CPGPractitioner[^2] profile which **SHALL** be further constrained as
  follows:

  - id (required)

  - address (required if known)

- the relevant **PractitionerRole** resource, based on the
  CPGPractitionerRole[^3] profile, which **SHALL** be further
  constrained as follows:

  - id (required)

  - organization = organization.id, required if known

  - specialty = required if known

- the relevant **Location** resource, based on the CPGLocation[^4]
  profile, which **SHALL** be further constrained as follows:

  - id (required)

  - identifier, required if known

  - address, required if known

  - position, required if known

  - physicalType = if known, one or more CodeableConcept values from
    <https://hl7.org/fhir/R4/valueset-location-physical-type.html>
    (preferred)

- the relevant **Organization** resource, based on the CPGOrganization
  profile, which **SHALL** be further constrained as follows:

  - id (required)

  - address, required if known

  - telecom, required if known

- the patient’s **IPS document**, which **SHALL** include all content
  defined in the FHIR IPS content model[^5] and *available* to the
  Guideline Performer. For clarity, this means the FHIR IPS profile
  **SHALL** be further constrained[^6] as follows:

  - all sections are MUST SUPPORT (required, or required if known)

  - Composition.section:sectionPlanOfCare, **required**
   - at least **one** CarePlan.instantiatesCanonical.PlanDefintion reference must exist and this referenced PlanDefinition **SHALL** be further constrained as follows:
     - id (required)
     - identifier (required, same as patient identifier)
     - type = order-set
     - status = active
     - zero or more action.definitionCanonical.planDefinition entries will be used to reference applicable CCG Folders

- **All** resources which reference the present Encounter (e.g. which
  may have been created by the Guideline Performer as the result of
  processing CARDs returned by the Guideline Engine as part of an Apply
  Guidelines transaction response).

**Footnotes**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-encounter.html>

[^2]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-practitioner.html>

[^3]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-practitionerrole.html>

[^4]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-location.html>

[^5]: <https://hl7.org/fhir/uv/ips/StructureDefinition-Composition-uv-ips.html>

[^6]: These constraints support the FHIR **Complete** option, as defined
    by the IHE IPS Profile.
