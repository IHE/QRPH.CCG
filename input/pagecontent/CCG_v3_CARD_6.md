
The role of this type of CCG CARD is to create a referral
ServiceRequest **for** the patient.

All CARDs are composed of a **PlanDefinition** plus an
**ActivityDefinition**. The PlanDefinition references the evidence
supporting this recommendation and defines the **C**onditions that must
be true in order for it to be applicable. The ActivityDefinition
describes the CARD�s recommended **A**ction as well as the **R**esulting
**D**ata that will be generated from dispositioning the recommendation.

All CARDs share this common format. Information about defining the
CARD�s **PlanDefinition** is found in the CCG CARD PlanDefinition
section, which is common to all CARDs. For Guideline Publisher actors
that support the **Digitally Signed CARD** option, information about
signing CCG CARDs is found in the CCG CARD Digital Signature section.

The Referral CARD�s **ActivityDefinition** **SHALL** be based
on the CPGServiceRequestActivity[^1] profile with the following
constraints:

- id = same as url, required

- url = same as id, required

- text = human-friendly short description of the recommended action,
  required

- name = computer-friendly name, required

- title = human-friendly short title, required

- date = last update timestamp, required

- publisher = name of the CARD publisher, required

The **Action** recommendation from this CARD **SHALL** be a ServiceRequest
resource based on the CPGServiceRequest[^2] profile. If the CARD is
applicable, this resource **SHALL** be returned from the Guideline
Engine to the Guideline Performer in the Apply Guidelines transaction
response bundle. The ServiceRequest resource **SHALL** reference the
Encounter.

After processing the Apply Guidelines transaction response, the
**Resulting Data** from this CARD **SHALL** be a Referral
ServiceRequest resource based on the CPGServiceRequest[^3] profile. The
ServiceRequest resource **SHALL** reference the Encounter.

NOTE: active Referral ServiceRequest resources **SHALL** be included as
a CarePlan.activity.reference for any ***new*** IPS document generated
for the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but ServiceRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

**Footnotes:**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequestactivity.html>

[^2]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>

[^3]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>
