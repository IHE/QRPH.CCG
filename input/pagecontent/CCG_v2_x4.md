### Scope

Transaction QRPH-64 Apply Guideline is used by a Guideline Performer to
submit a contextual content bundle to a Guideline Engine and to invoke
the \$CPGPlanDefinitionApply operation, which will be evaluated based on
the submitted content. The transaction response returns a bundle of
Request resources representing the proposed activities based on applying
the relevant CCGs.

### Actor roles

| **Actor** | **Role** |
|----|----|
| Guideline Performer | Submits a well-formed contextual content bundle to the Guideline Engine and invokes the CPGPlanDefinitionApply operation. |
| Guideline Engine | Executes the CPGPlanDefinitionApply operation on the submitted content bundle and returns a bundle of Request resources, one for each of the relevant CCG CARDs that has fired true. |
{:.grid}

### Referenced standard(s)

Transaction QRPH-64 Apply Guideline is based on the following standards:

- HL7 FHIR standard Release 4 <http://hl7.org/fhir/R4/index.html>

- CPG STU2 specification: <https://hl7.org/fhir/uv/cpg/STU2/index.html>

- FHIR IPS specification[^1]: <https://hl7.org/fhir/uv/ips/2024Sep/>

- IHE mCSD Profile: <https://profiles.ihe.net/ITI/mCSD/index.html>

### Interactions

<figure>
{% include image17.svg %}
<!--
<img src="image17.png" style="height: 100%; width: 100%; object-fit: contain"
 />
 -->
<figcaption><p>Figure 17 – QRPH-64 Apply Guideline Interaction
Diagram</p></figcaption>
</figure>

#### Trigger Events - Initiator

There **SHOULD** be a **human** in the loop. With human input, a
Guideline Performer actor triggers the initiation of an Apply Guideline
transaction loop during a person-centric care encounter to
operationalize the application of relevant CCGs and provide
recommendations to a **human** actor that will inform the course of the
patient’s care.[^2]

#### Message Semantics - Initiator

The command to apply the relevant CCG(s) for a patient during a care
encounter **SHALL** be submitted by the Guideline Performer to the
Guideline Engine using the **CPGPlanDefinitionApply** operation[^3] as
defined by the HL7 CPG-on-FHIR specification.

URL: \[base\]/PlanDefinition/\[id\]/\$apply

The following parameters are relevant to this transaction:

- The **id** of the relevant PlanDefinition **SHALL** be supplied at the
  instance level. This PlanDefinition **MAY** be included in the
  contextual content bundle.

- The **subject** **SHALL** be supplied as a parameter. The subject
  SHALL be a patient.id reference and the identified patient resource
  SHALL be included in the contextual content bundle.

- The **encounter** **SHALL** be supplied as a parameter. The encounter
  **SHALL** be an encounter.id reference and the identified encounter
  resource **SHALL** be included in the contextual content bundle.

- Relevant **parameters** **MAY** be supplied, where needed as inputs to
  CCG libraries.

- The contextual content bundle **SHALL** be included as the **data**
  parameter in the Apply Guideline transaction. This content bundle is
  specified in the Vol-3 section: Contextual Content Bundle.

#### Expected Actions - Initiator

Prior to submitting the transaction, the transaction initiator:

- **SHALL** prepare an up-to-date contextual content bundle adherent to
  the specification in the Vol-3 section: [**Contextual Content Bundle**](CCG_v3_launch.html#contextual-content-data-in-bundle).

- **SHALL** create an audit record of the transaction submission (see
  [Security section](CCG_v2_x4.html#security-and-audit-considerations)).

Based on receipt of the transaction response, the transaction initiator:

- **SHALL** create an audit record of the transaction response (see
  [Security section](CCG_v2_x4.html#security-and-audit-considerations)).

- **SHALL** process each of the Action resources in the RequestGroup and generate Resulting Data based on the [CARD type](CCG_v3_launch.html#normative-action-and-resulting-data-formats).

#### Trigger Events - Responder

The Guideline Engine responds to inbound Apply Guideline transactions as
they are received.

#### Message Semantics - Responder

The transaction result returned by the Guideline Engine **SHALL**
conform to the content defined for the CPGPlanDefinitionApply[^12]
operation.

Each Request resource returned in the transaction response bundle
**SHALL** reference the relevant “CARD’s” PlanDefinition resource in the
\[resource\].instantiatesCanonical or the
\[resource\].extension:instantiatesCanonical element, as applicable.

#### Expected Actions - Responder

Upon receiving a submitted transaction, the transaction responder:

- **MAY** confirm the transaction initiator’s authentication to the
  Guideline Engine and their authority to execute the submitted
  transaction;

- **SHALL**, when processing CARDs with multiple condition statements, logically AND the condition statements together;

- **SHALL** return a response in accordance with the Message Semantics –
  Responder, defined above;

- **SHALL** create an audit record of the transaction submission (see
  Security section).

Based on the returned transaction response, the transaction responder:

- **SHALL** create an audit record of the transaction response (see
  Security section);

- Executes other processes in accordance with its application logic.

### Security and Audit considerations

This transaction **does** convey personal health information (**PHI**);
it is present in the data content conveyed by the Guideline Performer to
the Guideline Engine during the Apply Guideline transaction and in the
transaction response.

FHIR-related security considerations related to the secure processing of
PHI **SHALL** be adopted as described in IHE Appendix Z[^13].

The Guideline Performer **SHALL** be grouped with Audit Creator actor
and **SHALL** adhere to the Basic Audit Log Patterns (BALP)[^14]
specifications.

The Guideline Engine **SHALL** be grouped with Audit Creator actor and
**SHALL** adhere to the Basic Audit Log Patterns (BALP) specifications.

Upon every *submission* of an Apply Guideline transaction, the Guideline
Performer and the Guideline Engine **SHALL** both act as an Audit
Creator to persist a Basic AuditEvent for Privacy Disclosure at
Source.[^15] Specifically, the following AuditEvent content **SHALL** be
included:

- AuditEvent.outcome = 0 (regardless of the eventual transaction
  response)

- AuditEvent.outcomeDesc = submission statement content from the Apply
  Guideline transaction, concatenated with “\|” delimiters:

  - “CPGPlanDefinitionApply submission” (constant, string, without
    quotes)

  - PlanDefinition id

  - Encounter id

  - Parameters (formatted as they appeared in the transaction submission
    statement)

- AuditEvent.purposeOfEvent = “TREAT”

- AuditEvent.agent.source.who = software name and version \# of
  Guideline Performer; where applicable, SHALL match the software name
  and version \# named in the conformance statement resulting from
  participation at Connectathon test events.

- AuditEvent.agent.recipient.who = software name and version \# of
  Guideline Engine; where applicable, SHALL match the software name and
  version \# named in the conformance statement resulting from
  participation at Connectathon test events.

- AuditEvent.agent.custodian.who = practitioner.identifier (for
  provider-care context) or patient.identifier (for self-care context)

- AuditEvent.agent.authorizer.who = patient.identifier

Upon every *response* to an Apply Guideline transaction submission, the
Guideline Engine and the Guideline Performer **SHALL** both act as an
Audit Creator to persist a Basic AuditEvent for Privacy Disclosure at
Source. Specifically, the following AuditEvent content **SHALL** be
included:

- AuditEvent.outcome = 0 or operation outcome code from Guideline Engine
  server

- AuditEvent.outcomeDesc = the list of Request resource “CARD” ids
  returned in the Apply Guideline transaction, concatenated with “\|”
  delimiters. NOTE: these values are returned in the resource’s
  instantiatesCanonical elements.

- AuditEvent.purposeOfEvent = “TREAT”

- AuditEvent.agent.source.who = software name and version \# of
  Guideline Performer; where applicable, SHALL match the software name
  and version \# named in the conformance statement resulting from
  participation at Connectathon test events.

- AuditEvent.agent.recipient.who = software name and version \# of
  Guideline Engine; where applicable, SHALL match the software name and
  version \# named in the conformance statement resulting from
  participation at Connectathon test events.

- AuditEvent.agent.custodian.who = practitioner.identifier (for
  provider-care context) or patient.identifier (for self-care context)

- AuditEvent.agent.authorizer.who = patient.identifier

For all PHI persisted by the Guideline Performer during its
post-processing of the Apply Guideline response, it **SHALL** act as an
Audit Creator to persist a Basic AuditEvent for a **successful**
**Create with known Patient Subject**.[^16]

A Guideline Engine **MAY**, per its CCG transaction processing design,
enduringly persist content submitted in the Apply Guideline transaction.
Where this is so, the Guideline Engine **SHALL** act as an Audit Creator
to persist a Basic AuditEvent for a **successful** **Create with known
Patient Subject**.

**Footnotes**

[^1]: The use of the IPS specification in this context is based on the
    IHE IPS Profile and the **COMPLETE option** defined therein.

[^2]: NOTE: it is anticipated that there is a **human** in the loop to
    action the care recommendations. In some jurisdictions, a digital
    health solution playing the role of a Guideline Performer actor
    and/or a Guideline Engine actor may meet the definition of Software
    as a Medical Device (SaMD).

[^3]: <https://hl7.org/fhir/uv/cpg/STU2/OperationDefinition-cpg-plandefinition-apply.html>

[^4]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-communication.html>

[^5]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-observation.html>

[^6]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-servicerequest.html>

[^7]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-condition.html>

[^8]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationrequest.html>

[^9]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationdispense.html>

[^10]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationadministration.html>

[^11]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-immunization.html>

[^12]: <https://build.fhir.org/ig/HL7/cqf-recommendations/OperationDefinition-cpg-plandefinition-apply.html>

[^13]: <https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations>

[^14]: <https://profiles.ihe.net/ITI/BALP/index.html>

[^15]: <https://profiles.ihe.net/ITI/BALP/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html>

[^16]: <https://profiles.ihe.net/ITI/BALP/StructureDefinition-IHE.BasicAudit.PatientCreate.html>
