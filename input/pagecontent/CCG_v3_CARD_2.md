
The role of this type of CCG CARD is to collect information **about**
the patient. There **SHALL** be *one* Collect Information CARD for each
data element needed to drive the evidence-based care workflow. The
CARD’s condition statement(s) will evaluate true if this information is
missing from the Contextual Content bundle and the processing of the
CARD **SHALL** “fill in” this missing information using Structured Data
Capture based on the **Definition-based extraction** method.[^1]

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
NOTE: if applicable, Questionnaire resources defined in support of this
CARD **SHALL** be digitally signed.

The Collect Information CARD’s **ActivityDefinition** **SHALL** be based
on the CPGCollectInformation[^2] profile with the following constraints:

- id = same as url, required

- url = same as id, required

- text = human-friendly short description of the recommended action,
  required

- name = computer-friendly name, required

- title = human-friendly short title, required

- date = last update timestamp, required

- publisher = name of the CARD publisher, required

The **Action** recommendation from this CARD **SHALL** be a Task resource
based on the CPGQuestionnaireTask[^3] profile. If the CARD is
applicable, this resource **SHALL** be returned from the Guideline
Engine to the Guideline Performer in the Apply Guidelines transaction
response bundle. The Task resource **SHALL:**

- reference as its input a Questionnaire resource based on the
  SDCQuestionnaireExtractDefinition[^4] profile

- reference as its output a QuestionnaireResponse based on the
  CPGQuestionnaireResponse[^5] profile

- reference the Encounter.

The following constraints **SHALL** apply to the Questionnaire resource
referenced in the Task:

- the scope of the Questionnaire will be limited to a **single** data
  element and the target FHIR resource type will be identified
  Questionnaire.item.defintion

- the content type (e.g. LOINC code for observation) and relevant units
  of measure will be defined by the Questionnaire such that the content
  is captured in the format necessary to drive the evidence-based
  workflow logic defined for this CCG.

It is the responsibility of the Guideline Performer to operationalize
data collection as defined by the Questionnaire. After processing the
Apply Guidelines transaction response, the **Resulting Data** from this
CARD **SHALL** be a FHIR resource based on the semantic definition
expressed in the Questionnaire. The resulting resource **SHALL**
reference the Encounter. NOTE: in this first version of the CCG Profile,
Observation resources based on the CPGObservation[^6] profile **SHALL**
be exclusively supported.

**Footnotes:**

[^1]: <https://hl7.org/fhir/uv/sdc/extraction.html#definition-extract>

[^2]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-collectinformationactivity.html>

[^3]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-questionnairetask.html>

[^4]: <https://hl7.org/fhir/uv/sdc/StructureDefinition-sdc-questionnaire-extr-defn.html>

[^5]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-questionnaireresponse.html>

[^6]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-observation.html>
