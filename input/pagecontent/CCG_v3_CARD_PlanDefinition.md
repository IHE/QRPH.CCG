
Each evidence-based recommendation is expressed using one or more CCG
CARDs. All CCG CARDs are composed of a **PlanDefinition** plus an
**ActivityDefinition**. The PlanDefinition references the evidence that
supports the recommendation and defines the **C**ondition statement(s)
that must be true in order for the CARD to be *applicable*. The
ActivityDefinition describes the CARD’s recommended **A**ction as well
as the **R**esulting **D**ata that will be generated from dispositioning
the recommendation.

A CCG CARD’s PlanDefinition **SHALL** be based on the
CPGComputablePlanDefinition[^1] profile with the following constraints:

- id = same as url

- url = same as id

- text = human-friendly short description of the CARD, required

- name = computer-friendly name, required

- title = human-friendly short title, required

- type = eca-rule

- date = CARD’s last update timestamp, required

- publisher = name of the CARD publisher, required

- relatedArtifact… (at least one, required) reference to underlying
  evidence or supporting materials for this recommendation

- action.trigger **SHALL be omitted**

- action.condition… (at least one, required; if *multiple*
  action.condition statements exist, they are AND’d during CARD
  evaluation. NOTE: it **SHALL** be possible to evaluate condition
  statements based solely on runtime parameters and the content defined
  in the Contextual Content bundle)

  - kind = applicability

- action.definition.ActivityDefinition.definitionCanonical = Canonical of the CARD’s
  ActivityDefinition

If changes are made to a *published* CARD’s PlanDefinition, before the
CCG is re-published it **SHALL** be assigned a new PlanDefinition.id and
PlanDefinition.url and the relevant reference in the CCG Folder
PlanDefinition **SHALL** be updated with the CARD’s new
Plandefinition.url.

A CARD’s PlanDefinition **MAY** reference a **library**. Where this is
so, the library will be based on the CQLLibrary[^2] profile with the
following constraints:

- id = same as url

- url = same as id

- text = human-friendly short description of the CARD, required

- name = computer-friendly name, required

- title = human-friendly short title, required

- date = the library’s last update timestamp, required

- publisher = name of the library publisher, required

If changes are made to a *published* CARD’s library, before the CCG is
re-published, the library **SHALL** be assigned a new library.id and
library.url and the CARD’s PlanDefinition **SHALL** be updated with the
new library.url.

For Guideline Publisher actors that support the Digitally Signed CARDs option, Provenance[^3] resources **SHALL** be created as described in the **CCG CARD Digital Signature** section.

**Footnotes:**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-computableplandefinition.html>

[^2]: <https://build.fhir.org/ig/HL7/cql-ig/StructureDefinition-cql-library.html>

[^3]: <https://hl7.org/fhir/r4/provenance.html>
