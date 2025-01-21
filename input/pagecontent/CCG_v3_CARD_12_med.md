The role of this type of CCG CARD is to create a Task that, upon being
processed, will “stop” a patient’s presently active MedicationRequest
(i.e. set status to stopped).

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

The Stop Medication Order CARD’s **ActivityDefinition** **SHALL** be
based on the CPGStopActivity[^1] profile with the following constraints:

- id = same as url, required

- url = same as id, required

- text = human-friendly short description of the recommended action,
  required

- name = computer-friendly name, required

- title = human-friendly short title, required

- date = last update timestamp, required

- publisher = name of the CARD publisher, required

The recommended **Action** from this CARD **SHALL** be a Task resource
based on the CPGStopTask[^2] profile. If the CARD is applicable, this
resource **SHALL** be returned from the Guideline Engine to the
Guideline Performer in the Apply Guidelines transaction response bundle.

After processing the Apply Guidelines transaction response, the
**Resulting Data** from this CARD **SHALL** be an updated
MedicationRequest resource that **SHALL** have a status = stopped,
**SHALL** reference the present Encounter, and **SHALL** set authoredOn
= current timestamp. A Provenance resource **SHOULD** be created to log
details of the STOP order; specifics of this are out of scope for this
Profile.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but a copy of the updated
MedicationRequest resource **SHALL** be included in the Contextual
Content bundle.

**Footnotes:**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-stopactivity.html>

[^2]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-stoptask.html>
