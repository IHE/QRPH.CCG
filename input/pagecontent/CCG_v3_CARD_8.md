The role of this type of CCG CARD is to create a **prescription** /
medication order **for** the patient.

All CARDs are composed of a **PlanDefinition** plus an
**ActivityDefinition**. The PlanDefinition references the evidence
supporting this recommendation and defines the **C**onditions that must
be true in order for it to be applicable. The ActivityDefinition
describes the CARD’s recommended **A**ction as well as the **R**esulting
**D**ata that will be generated from dispositioning the recommendation.

All CARDs share this common format. Information about defining the
CARD’s **PlanDefinition** is found in the CCG CARD PlanDefinition
section, which is common to all CARDs. For Guideline Publisher actors
that support the **Digitally Signed CARD** option, information about
signing CCG CARDs is found in the CCG CARD Digital Signature section.

The Order Medication CARD’s **ActivityDefinition** **SHALL** be based on
the CPGMedicationRequestActivity[^1] profile with the following
constraints:

- id = same as url, required

- url = same as id, required

- text = human-friendly short description of the recommended action,
  required

- name = computer-friendly name, required

- title = human-friendly short title, required

- date = last update timestamp, required

- publisher = name of the CARD publisher, required

The recommended **Action** from this CARD **SHALL** be a
MedicationRequest resource based on the CPGMedicationRequest[^2]
profile. If the CARD is applicable, this resource **SHALL** be returned
from the Guideline Engine to the Guideline Performer in the Apply
Guidelines transaction response bundle. The MedicationRequest resource
**SHALL** reference the present Encounter.

After processing the Apply Guidelines transaction response, the
**Resulting Data** from this CARD **SHALL** be a MedicationRequest
resource based on the CPGMedicationRequest profile. The
MedicationRequest resource **SHALL** reference the present Encounter.

NOTE: active MedicationRequest resources **SHALL** be included as a
CarePlan.activity.reference for any ***new*** IPS document generated for
the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but MedicationRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

**Footnotes:**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-medicationrequestactivity.html>

[^2]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-medicationrequest.html>
