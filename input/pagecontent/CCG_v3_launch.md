The content specifications in the IHE CCG Profile can be broadly
categorized as being related to either the **definition** of CCGs or as
being related to the transactional data needed to **invoke** and
**process** CCGs.

## Definitional Content

<figure>
<img src="image18.png" style="max-width: 60%; object-fit: contain" />
<figcaption><p>Figure 18 – Illustration of the Definitional Content for
CCGs</p></figcaption>
</figure>

The transactions
[QRPH-62](CCG_v2_x2.html) and
[QRPH-63](CCG_v2_x3.html)
*convey* **CCG Package** content - it is the payload of the response of the former and of the input in the latter. Each CCG Package is a FHIR
ImplementationGuide. To simplify discoverability of CCGs on a Guideline
Registry (using transaction
[QRPH-61](CCG_v2_x1.html)), the
CCG_Deployment_Package specification normatively constraints the HL7
CPGComputableGuideline[^1] specification on which it is based.

Each CCG Package contains a single **CCG Folder**. The CCG Folder is a
PlanDefinition of type clinical-protocol that adheres to the
CCG_CARD_Folder specification. This specification normatively constrains
the CPGComputablePlanDefinition[^2] specification on which it is based.

As per the [Folders & CARDs
Metaphor](CCG_v1_over.html#folder-and-cards-metaphor),
the CCG Folder references one or more **CCG CARDs**. Each CARD is used
to describe a recommended evidence-based activity. The thirteen types of
evidence-based activities are defined by the [CCG_Card_Type value
set](ValueSet-ccg-card-type.html#expansion).
Every CARD is comprised of one **PlanDefinition** (of type eca-rule)
that refers to one of thirteen types of **ActivityDefinition**
resources. Using the CARD acronym, the **C**ondition statement(s) are
defined using the PlanDefinition and the **A**ction and **R**esulting
**D**ata are defined by the ActivityDefintion.

A **CQL Library** may be used to define complicated Condition
statements; if this the case, the Library must adhere to the
CCG_CARD_Library specification. Also, if supported as an
[Option](CCG_v1_actor.html#options)
by the relevant actors, Folder and/or CARDs and/or libraries may be
**digitally signed**. Where this is the case, digital signing is
effected using a Provenance resource that adheres to the CCG_Signature
specification.

Originally launched in 2019, the IHE CCG Profile is the result of a
joint **HL7-IHE Gemini Project**[^3]. Including as noted above, relevant
underlying specifications of the HL7 CPG-on-FHIR IG[^4] are constrained
and profiled by this IHE CCG Profile.

### List of Key Definitional Content Specifications

The collection of key specifications related to CCG Definitional content
is listed below. These, along with supporting underlying specs, are
listed in full on the
[Artefacts](artifacts.html) page.

| CCG Package | [CCG_Deployment_Package](StructureDefinition-ccg-deployment.html) |  |
|----|----|----|
| CCG Folder | [CCG_CARD_Folder](StructureDefinition-ccg-card-folder.html) |  |
| Library | [CCG_CARD_Library](StructureDefinition-ccg-card-library.html) |  |
| Digital Signature | [CCG_Signature](StructureDefinition-ccg-signature.html) |  |
| ***CARD types:*** |  |  |
| Provide Information | [CCG_Provide_Information](StructureDefinition-ccg-card-provide.html) | [CCG_Provide_Info_Activity](StructureDefinition-ccg-card-provide-ad.html) |
| Collect Information | [CCG_Collect_Information](StructureDefinition-ccg-card-collect.html) | [CCG_Collect_Info_Activity](StructureDefinition-ccg-card-collect-ad.html) |
| Lab Order | [CCG_Request_Service_Lab_Order](StructureDefinition-ccg-card-reqserv-labs.html) | [CCG_Request_Service_Labs_Activity](StructureDefinition-ccg-card-reqlabs-ad.html) |
| Radiology Order | [CCG_Request_Service_Radiology](StructureDefinition-ccg-card-reqradserv.html) | [CCG_Request_Service_Rad_Activity](StructureDefinition-ccg-card-reqradserv-ad.html) |
| Procedure Order | [CCG_Request_Service_Procedure](StructureDefinition-ccg-card-reqprocserv.html) | [CCG_Request_Service_Procedure_Activity](StructureDefinition-ccg-card-reqprocserv-ad.html) |
| Referral | [CCG_Request_Service_Referral](StructureDefinition-ccg-card-reqrefserv.html) | [CCG_Request_Service_Referral_Activity](StructureDefinition-ccg-card-reqrefserv-ad.html) |
| Propose Diagnosis | [CCG_Propose_Diagnosis](StructureDefinition-ccg-card-proposedx.html) | [CCG_Propose_Diagnosis_Activity](StructureDefinition-ccg-card-proposedx-ad.html) |
| Order Medication | [CCG_Order_Medication](StructureDefinition-ccg-card-orderrx.html) | [CCG_Order_Medication_Activity](StructureDefinition-ccg-card-orderrx-ad.html) |
| Dispense Medication | [CCG_Dispense_Medication](StructureDefinition-ccg-card-disprx.html) | [CCG_Dispense_Medication_Activity](StructureDefinition-ccg-card-disprx-ad.html) |
| Administer Medication | [CCG_Administer_Medication](StructureDefinition-ccg-card-adminrx.html) | [CCG_Administer_Medication_Activity](StructureDefinition-ccg-card-adminrx-ad.html) |
| Request Immunization | [CCG_Request_Immunization](StructureDefinition-ccg-card-reqvx.html) | [CCG_Request_Immunization_Activity](StructureDefinition-ccg-card-reqvx-ad.html) |
| Stop Medication Order | [CCG_Stop_Activity_Medication_Order](StructureDefinition-ccg-card-stoprx.html) | [CCG_Stop_Activity_Medication_Order_Activity](StructureDefinition-ccg-card-stoprx-ad.html) |
| Stop Service Order | [CCG_Stop_Activity_Service_Order](StructureDefinition-ccg-card-stopsrv.html) | [CCG_Stop_Activity_Service_Order_Activity](StructureDefinition-ccg-card-stopsrv-ad.html) |
{:.grid}

## Transactional Content

<figure>
<img src="image19.png"
style="max-width: 100%; object-fit: contain" />
<figcaption><p>Figure 19 - Illustration of Transactional Data Flow During
a CCG-informed Care Encounter</p></figcaption>
</figure>

During a CCG-informed care encounter, the Guideline Performer and
Guideline Engine actors will engage in an iterative data exchange
operationalized by repeatedly invoking transaction
[QRPH-64](CCG_v2_x4.html) and
dispositioning the transaction results. This process, and the content
that drives it, is illustrated in the figure above.

1.  The Guideline Performer prepares the initial contextual content
    bundle.

2.  The initial contextual content bundle is submitted to the Guideline
    Engine as one of the inputs to the QRPH-64 transaction.

3.  A RequestGroup is returned by the Guideline Engine; this
    RequestGroup contains the evidence-based Actions that are
    recommended for the patient, based on the contextual content.

4.  The Guideline Performer processes the set of recommended Actions;
    this processing generates a normative Resulting Data output for each
    Action. The details of this processing are out of scope.

5.  The set of Resulting Data are ***included*** in the contextual
    content bundle submitted as an input to the next iterative
    invocation of the QRPH-64 transaction.

6.  Based on this ***updated*** Data-in bundle, a RequestGroup is
    returned by the Guideline Engine containing zero or more recommended
    Actions.

7.  As in step-4, the Guideline Performer dispositions the recommended
    Actions to normatively generate Resulting Data. If the RequestGroup
    returned by the QRPH-64 transaction is empty, the processing loop
    ends and the set of Resulting Data is persisted as part of the
    patient’s updated health record. NOTE: if an empty RequestGroup is
    returned by transaction QRPH-64 at step-4, the processing loop ends
    at this step.

### Contextual Content (Data-in) Bundle

This content model defines the **data** input (“data-in”) bundle[^5]
that is passed as part of the Apply Guideline transaction submission.
This bundle represents the content that will be used by the Guideline
Engine to evaluate all relevant CCG CARD’s condition statements during
the \$apply operation.

The data-in bundle **SHALL** contain:

- the relevant
  [**Encounter**](StructureDefinition-ccg-di-encounter.html)
  resource for the current patient encounter,

- the relevant
  [**Practitioner**](StructureDefinition-ccg-di-practitioner.html)
  resource, if applicable,

- the relevant
  [**PractitionerRole**](StructureDefinition-ccg-di-practitionerrole.html)
  resource, if applicable,

- the relevant
  [**Location**](StructureDefinition-ccg-di-location.html)
  resource, if applicable,

- the relevant
  [**Organization**](StructureDefinition-ccg-di-organization.html)
  resource, if applicable,

- the patient’s [**IPS
  document**](StructureDefinition-ccg-di-ips-bundle.html),
  which **SHALL** include *all* content defined in the [**CCG IPS
  composition**](StructureDefinition-ccg-di-ips-composition.html)
  model and available to the Guideline Performer, and which **SHALL**
  reference the <span class="mark">top-level Folder</span> that lists
  the patient’s applicable CCG(s) in the [**CCG IPS
  CarePlan**](StructureDefinition-ccg-data-in-ips-careplan.html)
  resource,

- the set of normative **Resulting Data** generated by the Guideline
  Performer after processing prior invocations of the QRPH-64
  transaction. At the first invocation of QRPH-64, this content will be
  zero.

Note:
[UC-3](CCG_v1_over.html#the-4-use-cases-in-the-ccg-ecosystem)
describes how one or more CCGs may be associated with the patient and
referenced in the patient’s top-level Folder using transactions defined
by the IHE Dynamic Care Planning (DCP)[^6] Profile.

## Normative Action and Resulting Data Formats

The details of ***how*** the Guideline Performer processes each
recommended Action are not specified by this IHE CCG Profile. The Action
and Resulting Data for each CARD is, however, normatively defined.

### Provide Information CARD

The role of this type of CCG CARD is to provide information,
counselling, or instructions **to** the patient.

The recommended **Action** from this CARD **SHALL** be a
CommunicationRequest resource based on the CPGCommunicationRequest[^7]
profile.

After processing the Apply Guidelines transaction response, the
**Resulting Data** from this CARD **SHALL** be a Communication resource based on the CPGCommunication[^8] profile with either status=completed or
status=not-done (with statusReason).
The Communication resource
**SHALL** reference the Encounter.

### Collect Information CARD

The role of this type of CCG CARD is to collect information **about**
the patient. There **SHALL** be *one* Collect Information CARD for each
data element needed to drive the evidence-based care workflow. The
CARD’s condition statement(s) will evaluate true if this information is
missing from the Contextual Content bundle and the processing of the
CARD **SHALL** “fill in” this missing information using Structured Data
Capture based on the **Definition-based extraction** method.[^9]

The recommended **Action** from this CARD **SHALL** be a Task resource
based on the CPGQuestionnaireTask[^10] profile.

The following constraints **SHALL** apply to the Questionnaire resource
referenced in the Task:

- the scope of the Questionnaire will be limited to a **single** data
  element and the target FHIR resource type will be identified
  Questionnaire.item.defintion

- the content type (e.g. LOINC code for observation) and relevant units
  of measure **SHALL** be defined by the Questionnaire such that the
  content is persisted in a format consistent with the evidence-based
  workflow logic defined for this CCG. To be clear: other CARD’s
  Condition statements may rely on this content for their evaluation.

It is the responsibility of the Guideline Performer to operationalize
data collection as defined by the Questionnaire. After processing is
completed, the **Resulting Data** from this CARD **SHALL** be a FHIR
resource based on the semantic definition expressed in the
Questionnaire. The resulting resource **SHALL** reference the Encounter.
NOTE: in this first version of the CCG Profile, Observation resources
based on the CPGObservation[^11] profile **SHALL** be exclusively
supported with either status=final or
status=cancelled (with dataAbsentReason).

### Request a Service (Lab Order) CARD

The role of this type of CCG CARD is to create a laboratory / pathology
ServiceRequest for the patient.

The **Action** recommendation from this CARD **SHALL** be a
ServiceRequest resource based on the CPGServiceRequest[^12] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a Lab Order
ServiceRequest resource based on the CPGServiceRequest profile with either status=draft or
status=revoked (indicating not done). The
ServiceRequest resource **SHALL** reference the Encounter.

NOTE: active Lab Order ServiceRequest resources **SHALL** be included as
a CarePlan.activity.reference for any ***new*** IPS document generated
for the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but ServiceRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Request a Service (Radiology Order) CARD

The role of this type of CCG CARD is to create a radiology
ServiceRequest for the patient.

The **Action** recommendation from this CARD **SHALL** be a
ServiceRequest resource based on the CPGServiceRequest[^13] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a Radiology Order
ServiceRequest resource based on the CPGServiceRequest profile with either status=draft or
status=revoked (indicating not done). The
ServiceRequest resource **SHALL** reference the Encounter.

NOTE: active Radiology Order ServiceRequest resources **SHALL** be
included as a CarePlan.activity.reference for any ***new*** IPS document
generated for the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but ServiceRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Request a Service (Procedure Order) CARD

The role of this type of CCG CARD is to create a procedure
ServiceRequest for the patient.

The **Action** recommendation from this CARD **SHALL** be a
ServiceRequest resource based on the CPGServiceRequest[^14] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a Procedure Order
ServiceRequest resource based on the CPGServiceRequest profile with either status=draft or
status=revoked (indicating not done). The
ServiceRequest resource **SHALL** reference the Encounter.

NOTE: active Procedure Order ServiceRequest resources **SHALL** be
included as a CarePlan.activity.reference for any ***new*** IPS document
generated for the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but ServiceRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Request a Service (Referral) CARD

The role of this type of CCG CARD is to create a referral
ServiceRequest for the patient.

The **Action** recommendation from this CARD **SHALL** be a
ServiceRequest resource based on the CPGServiceRequest[^15] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a Referral Order
ServiceRequest resource based on the CPGServiceRequest profile with either status=draft or
status=revoked (indicating not done). The
ServiceRequest resource **SHALL** reference the Encounter.

NOTE: active Referral Order ServiceRequest resources **SHALL** be
included as a CarePlan.activity.reference for any ***new*** IPS document
generated for the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but ServiceRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Propose a Diagnosis CARD

The role of this type of CCG CARD is to **propose a diagnosis** of
health conditions; it is content **about** the patient.

The **Action** recommendation from this CARD **SHALL** be a Task
resource based on the CPGProposeDiagnosisTask[^16] profile.

It is the responsibility of the Guideline Performer to operationalize
the processing of the Task resource to capture a patient diagnosis.
After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a FHIR resource based
on the CPGCondition[^17] profile with either a verificationStatus absent altogether or
*not* entered-in-error or verificationStatus=entered-in-error
(indicating not done).

### Order Medication CARD

The role of this type of CCG CARD is to create a **prescription** /
medication order **for** the patient.

The **Action** recommendation from this CARD **SHALL** be a
MedicationRequest resource based on the CPGMedicationRequest[^18]
profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a MedicationRequest
resource based on the CPGMedicationRequest profile with either status=draft,
status=active or status=cancelled (with statusReason). The
MedicationRequest resource **SHALL** reference the present Encounter.

NOTE: active MedicationRequest resources **SHALL** be included as a
CarePlan.activity.reference for any ***new*** IPS document generated for
the patient.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but MedicationRequest resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Dispense Medication CARD

The role of this type of CCG CARD is to record a medication
dispensation.

The **Action** recommendation from this CARD **SHALL** be a Task
resource based on the CPGDispenseMedicationTask[^19] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a MedicationDispense
resource based on the CPGMedicationDispense[^20] profile with either status=completed or
status=cancelled (with statusReason). The
MedicationDispense resource **SHALL** reference the present Encounter in
the MedicationDispense.context.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but MedicationDispense resources
created during the present Encounter **SHALL** be included in the
Contextual Content bundle.

### Administer Medication CARD

The role of this type of CCG CARD is to record a medication
administration.

The **Action** recommendation from this CARD **SHALL** be a Task
resource based on the CPGAdministerMedicationTask[^21] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be a
MedicationAdministration resource based on the
CPGMedicationAdministration[^22] profile with either status=completed
or status=not-done (with statusReason). The MedicationAdministration
resource **SHALL** reference the present Encounter in the
MedicationAdministration.context.

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but MedicationAdministration
resources created during the present Encounter **SHALL** be included in
the Contextual Content bundle.

### Request Immunization CARD

The role of this type of CCG CARD is to recommend and record an
immunization event **for** the patient. Importantly, this CARD **does
not** create an order for a future planned immunization.

The recommended **Action** from this CARD **SHALL** be a
MedicationRequest resource based on the CPGImmunizationRequest[^23]
profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be an Immunization
resource based on the CPGImmunization[^24] profile with either status=completed or
status=not-done (with statusReason).

A new IPS document **SHALL NOT** be regenerated before each invocation
of the Apply Guidelines transaction, but Immunization resources created
during the present Encounter **SHALL** be included in the Contextual
Content bundle.

### Stop Activity (Medication Order) CARD

The role of this type of CCG CARD is to create a Task that, upon being
processed, will “stop” a patient’s presently active MedicationRequest
(i.e. set status to stopped).

The recommended **Action** from this CARD **SHALL** be a Task resource
based on the CPGStopTask[^25] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be an **updated**
MedicationRequest resource that **SHALL** have a status =
stopped, **SHALL** reference the present Encounter, and **SHALL** set
authoredOn = current timestamp. A Provenance resource **SHOULD** be
created to log details of the STOP order; specifics of this are out of
scope for this Profile.

The IPS document in the Data-in Bundle **SHALL** be updated to reflect
the updated MedicationRequest resource.

### Stop Activity (Service Order) CARD

The role of this type of CCG CARD is to create a Task that, upon being
processed, will “stop” a patient’s presently active ServiceRequest (i.e.
set status to revoked).

The recommended **Action** from this CARD **SHALL** be a Task resource
based on the CPGStopTask[^26] profile.

After processing the Apply Guidelines transaction response,
the **Resulting Data** from this CARD **SHALL** be an updated
ServiceRequest resource that **SHALL** have a status =
revoked, **SHALL** reference the present Encounter, and **SHALL** set
authoredOn = current timestamp. A Provenance resource **SHOULD** be
created to log details of the STOP order; specifics of this are out of
scope for this Profile.

The IPS document in the Data-in Bundle **SHALL** be updated to reflect
the updated ServiceRequest resource.

**References:**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-computableguideline.html>

[^2]: <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-computableplandefinition.html>

[^3]: <https://vimeo.com/347427025>

[^4]: <https://build.fhir.org/ig/HL7/cqf-recommendations/profiles.html>

[^5]: <https://stackoverflow.com/questions/37579152/nested-fhir-bundles>

[^6]: <https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_DCP.pdf>

[^7]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-communicationrequest.html>

[^8]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-communication.html>

[^9]: <https://hl7.org/fhir/uv/sdc/extraction.html#definition-extract>

[^10]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-questionnairetask.html>

[^11]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-observation.html>

[^12]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>

[^13]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>

[^14]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>

[^15]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-servicerequest.html>

[^16]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-proposediagnosistask.html>

[^17]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-condition.html>

[^18]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-medicationrequest.html>

[^19]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-dispensemedicationtask.html>

[^20]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-medicationdispense.html>

[^21]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-administermedicationtask.html>

[^22]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-medicationadministration.html>

[^23]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-immunizationrequest.html>

[^24]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-immunization.html>

[^25]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-stoptask.html>

[^26]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-stoptask.html>
