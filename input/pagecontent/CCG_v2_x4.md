### Scope

Transaction X4 Apply Guideline is used by a Guideline Performer to
submit a contextual content bundle to a Guideline Engine and to invoke
the \$apply operation, which will be evaluated based on the submitted
content. The transaction response returns a bundle of Request resources
representing the proposed activities based on applying the relevant
CCGs.

### Actor roles

| **Actor** | **Role** |
|----|----|
| Guideline Performer | Submits a well-formed contextual content bundle to the Guideline Engine and invokes the \$apply operation. |
| Guideline Engine | Executes the \$apply operation on the submitted content bundle and returns a bundle of Request resources, one for each of the relevant CCG CARDs that has fired true. |

### Referenced standard(s)

Transaction X4 Apply Guideline is based on the following standards:

- HL7 FHIR standard Release 4 <http://hl7.org/fhir/R4/index.html>

- CPG STU2 specification: <https://hl7.org/fhir/uv/cpg/STU2/index.html>

- FHIR IPS specification[^1]: <https://hl7.org/fhir/uv/ips/2024Sep/>

- IHE mCSD Profile: <https://profiles.ihe.net/ITI/mCSD/index.html>

- HL7 FHIR PlanDefinition R5[^2]:
  <https://hl7.org/fhir/R5/plandefinition.html>

### Interactions

<figure>
<img src="image17.png" style="height: 100%; width: 100%; object-fit: contain"
 />
<figcaption><p>Figure 17 – X4 Apply Guideline Interaction
Diagram</p></figcaption>
</figure>

#### Trigger Events - Initiator

<span class="mark">There **SHOULD** be a **human** in the loop.</span>
With human input, a Guideline Performer actor triggers the initiation of
an Apply Guideline transaction loop during a person-centric care
encounter to operationalize the application of relevant CCGs and provide
recommendations to a **human** actor that will inform the course of the
patient’s care.[^3]

#### Message Semantics - Initiator

The command to apply the relevant CCG(s) for a patient during a care
encounter **SHALL** be submitted by the Guideline Performer to the
Guideline Engine using the **CPGPlanDefinitionApply** operation[^4] as
defined by the HL7 CPG-on-FHIR specification.

URL: \[base\]/PlanDefinition/\[id\]/\$apply

The following parameters are relevant to this transaction:

- The **id** of the relevant PlanDefinition **SHALL** be supplied at the
  instance level. This PlanDefinition MAY be included in the contextual
  content bundle.

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
  the specification in the Vol-3 section: Contextual Content Bundle.

Based on receipt of the transaction response, the transaction initiator:

- **SHALL** process a **Provide Information** CARD to create a
  CPGCommuniction[^5] resource with either status=completed or
  status=not-done (with statusReason) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Collect Information** CARD to capture input from
  the human user and create the indicated resource using the stipulated
  codes and units of measure (where applicable) and create a
  CPGObservation[^6] resource with either status=final or
  status=cancelled (with dataAbsentReason) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Request a Service (Lab Order)** CARD to create a
  CPGServiceRequest[^7] resource with either status=draft or
  status=revoked (indicating not done) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Request a Service (Radiology Order)** CARD to
  create a CPGServiceRequest resource with either status=draft or
  status=revoked (indicating not done) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Request a Service (Procedure Order)** CARD to
  create a CPGServiceRequest resource with either status=draft or
  status=revoked (indicating not done) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Request a Service (Referral)** CARD to create a
  CPGServiceRequest resource with either status=draft or status=revoked
  (indicating not done) and **SHALL** include this resource in the
  contextual content bundle of all subsequent Apply Guideline
  transactions during the present encounter.

- **SHALL** process a **Propose a Diagnosis** CARD to create a
  CPGCondition[^8] resource with either a verificationStatus absent or
  *not* entered-in-error or verificationStatus=entered-in-error
  (indicating not done) and **SHALL** include this resource in the
  contextual content bundle of all subsequent Apply Guideline
  transactions during the present encounter.

- **SHALL** process an **Order Medication** CARD to create a
  CPGMedicationRequest[^9] resource with either status=draft,
  status=active or status=cancelled (with statusReason) and **SHALL**
  include this resource in the contextual content bundle of all
  subsequent Apply Guideline transactions during the present encounter.

- **SHALL** process a **Dispense Medication** CARD to create a
  CPGMedicationDispense[^10] resource with either status=completed or
  status=cancelled (with statusReason) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process an **Administer Medication** CARD to create a
  CPGMedicationAdministration[^11] resource with either status=completed
  or status=not-done (with statusReason) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Request Immunization** CARD to create a
  CPGImmunization[^12] resource with either status=completed or
  status=not-done (with statusReason) and **SHALL** include this
  resource in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

- **SHALL** process a **Stop Activity** CARD to appropriately update the
  status of the relevant resource, which **SHALL** be included with this
  new status in the contextual content bundle of all subsequent Apply
  Guideline transactions during the present encounter.

  - A MedicationRequest resource **SHALL** be updated to
    status=cancelled

  - A ServiceRequest resource **SHALL** be updated to status=revoked.

#### Trigger Events - Responder

The Guideline Engine responds to inbound Apply Guideline transactions as
they are received.

#### Message Semantics - Responder

The transaction result returned by the Guideline Engine **SHALL**
conform to the content defined for the CPGPlanDefinitionApply[^13]
operation.

#### Expected Actions - Responder

Upon receiving a submitted transaction, the transaction responder:

- **MAY** confirm the transaction initiator’s authentication to the
  Guideline Engine and their authority to execute the submitted
  transaction;

- **SHALL** return a response in accordance with the Message Semantics –
  Responder, defined above.

Based on the returned transaction response, the transaction responder:

- **MAY** create an audit record;

- Executes other processes in accordance with its application logic.

### Security and audit considerations

This transaction **does** convey personal health information (**PHI**).

FHIR-related security considerations related to the secure processing of
PHI SHALL be adopted as described in IHE Appendix Z[^14].

The Guideline Performer **SHALL** be grouped with Audit Creator actor
and **SHALL** adhere to the Basic Audit Log Patterns (BALP)[^15]
specifications related to Basic AuditEvent for a successful Create with
known Patient Subject.[^16]

<span class="mark">An AuditEvent **SHALL** be persisted to an Audit
Record Repository for every resource create transactions.</span>

- <span class="mark">type: originate for all except Stop Activity CARD
  processing, where type: amend</span>

- <span class="mark">outcome: 0 for all successful events</span>

- <span class="mark">agent.type</span>

\*\*to be completed…\*\*

**Footnotes**

[^1]: The use of the IPS specification in this context is based on the
    IHE IPS Profile and the **COMPLETE option** defined therein.

[^2]: NOTE: important breaking changes have been made to the behaviours
    of the \$apply operation between FHIR R4 and R5. These changes to R4
    are pre-adopted by this IHE CCG Profile.

[^3]: NOTE: it is anticipated that there is a **human** in the loop to
    action the care recommendations. In some jurisdictions, a digital
    health solution playing the role of a Guideline Performer actor
    and/or a Guideline Engine actor may meet the definition of Software
    as a Medical Device (SaMD).

[^4]: <https://hl7.org/fhir/uv/cpg/STU2/OperationDefinition-cpg-plandefinition-apply.html>

[^5]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-communication.html>

[^6]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-observation.html>

[^7]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-servicerequest.html>

[^8]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-condition.html>

[^9]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationrequest.html>

[^10]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationdispense.html>

[^11]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-medicationadministration.html>

[^12]: <https://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-immunization.html>

[^13]: <https://build.fhir.org/ig/HL7/cqf-recommendations/OperationDefinition-cpg-plandefinition-apply.html>

[^14]: <https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations>

[^15]: <https://profiles.ihe.net/ITI/BALP/index.html>

[^16]: <https://profiles.ihe.net/ITI/BALP/StructureDefinition-IHE.BasicAudit.PatientCreate.html>
