## CCG Folder

The deployment model is that each unique CCG will be expressed as a
PlanDefinition (a CCG Folder) that lists the CCG’s defined CARDs. The
CCG Folder is based on the CPGComputablePlanDefinition[^1] profile on
which the following constraints **SHALL** be abided:

- id = un-prefixed UUID per RFC 3986

- url = same UUID as id

- text = human-friendly short description of the CCG, required

- name = computer-friendly name, required

- title = human-friendly short title, required

- type = clinical-protocol

- date = CCG publication date, required

- publisher = name of the CCG publisher, required

- actions… (one for each CARD), at least one is required

  - action.definition.PlanDefinition.url = UUID of the CCG CARD

For Guideline Publisher actors that support the **Digitally Signed
CARD** option, the CCG Folder’s signature **SHALL** be carried by a
Provenance[^2] resource that will accompany the CCG Folder in the
deployment package (the Implementation Guide). The Provenance resource
**SHALL** reference:

- target = CCG Folder’s UUID

- recorded = timestamp of signature

- agent.who = identifier of publisher

- signature.type = 1.462.46840.4610065.461.4612.461.461

- signature.when = same timestamp as recorded

- signature.who = same identifier as agent.who

**Footnotes**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-computableplandefinition.html>

[^2]: <https://hl7.org/fhir/r4/provenance.html>
