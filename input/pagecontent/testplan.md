<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time. For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

The IHE CCG Profile is participating in an experiment being undertaken by IHE regarding the use of **Gherkin** scripts to normatively define conformance tests. In support of this experiment, scenarios have been defined related to Actor behaviors (including in support of declared options), processing patterns for each of the CCG Profile's transactions, and content definitions (based on the specifications included in Volume 3 of this Profile). These scenarios follow Gherkin's *Given-When-Then* format.

A common content model is explicitly defined in Volume 3 of the IHE CCG Profile. Among other content specs, this *default* model leverages the HL7 FHIR-based International Patient Summary (IPS) and the person-centric data model it specifies. The test scripts defined in this section reflect the default choice. 

It is expected that an implementing jurisdiction may define a *different* common content model and, furthermore, that all CCG actors in the jurisdictional care ecosystem would adopt this model. Where this is the case, the test scripts defined below would need to be appropriately udpated and included in the jurisdiction's subsection in Volume 4.

## Actor Capability Tests 

### All Actors - Common Content Model and Options 

---

**Scenario: CCG Actor Declares Common Content Model Support**\
**Given** any Guideline Publisher, Guideline Repository, Guideline Performer or Guideline Engine actor is being implemented or configured\
**When** its capabilities are defined\
**Then** the CCG actor **SHALL** declare the common content model it supports\
**And** it **SHALL** be possible to view this declaration.

**Scenario: All Actors in Ecosystem Support Same Content Model**\
**Given** a set of interconnected CCG actors forming an ecosystem\
**When** these actors interact and exchange CCG artifacts\
**Then** all the actors in the CCG ecosystem **SHALL** support the same common content model option.

**Scenario: CCG Actor Supports At Least One Common Content Option**\
**Given** a CCG actor is operational\
**When** it processes or exchanges CCG content\
**Then** the CCG actor **SHALL** support at least one of the common content options listed in the IHE CCG specification.

### Guideline Publisher 

---

**Scenario: Guideline Publisher Submits CCG Payload**\
**Given** a Guideline Publisher has a well-formed CCG payload\
**When** the Guideline Publisher intends to publish this payload to a Guideline Repository\
**Then** the Guideline Publisher **SHALL** submit the payload using the Publish Guideline [QRPH-63] transaction as an originator.

**Scenario: Guideline Publisher Supports Digitally Signed Folder Option**\
**Given** a Guideline Publisher supports the Digitally Signed Folder Option\
**When** it publishes a CCG artifact\
**Then** the Guideline Publisher **SHALL** include as part of a [QRPH-63] payload a single digital signature that applies to the entire CCG artifact.

**Scenario: Guideline Publisher Supports Digitally Signed CARD Option**\
**Given** a Guideline Publisher supports the Digitally Signed CARD Option\
**When** it publishes a CCG\
**Then** the Guideline Publisher **SHALL** also support the Digitally Signed Folder Option\
**And** a digital signature **SHALL** be included in a [QRPH-63] payload for each individual knowledge artifact in the CCG.

### Guideline Repository 

---

**Scenario: Guideline Repository Responds to Search for Guideline**\
**Given** a Guideline Repository is operational and accessible\
**When** it receives a well-formed Search for Guideline [QRPH-61] transaction\
**Then** the Guideline Repository **SHALL** appropriately respond as a responder.

**Scenario: Guideline Repository Responds to Retrieve Guideline**\
**Given** a Guideline Repository is operational and accessible\
**When** it receives a well-formed Retrieve Guideline [QRPH-62] transaction\
**Then** the Guideline Repository **SHALL** appropriately respond as a responder.

**Scenario: Guideline Repository Responds to Publish Guideline**\
**Given** a Guideline Repository is operational and accessible and configured for a declared content model\
**When** it receives the submission of a CCG payload from a Guideline Publisher using Publish Guideline [QRPH-63]\
**Then** the Guideline Repository **SHALL** evaluate the submitted payload for well-formedness and appropriately respond to the submission.

**Scenario: Guideline Repository Processes Digitally Signed Folder Payload**\
**Given** a Guideline Repository receives a well-formed CCG payload\
**And** this payload adheres to the stipulations of the Digitally Signed Folder Option\
**When** the Guideline Repository processes this payload\
**Then** the Guideline Repository **SHALL** appropriately evaluate the payload regarding its digital signature\
**And** the Guideline Repository **SHALL** process it and respond accordingly.

**Scenario: Guideline Repository Processes Digitally Signed CARD Payload**\
**Given** a Guideline Repository receives a well-formed CCG payload\
**And** this payload adheres to the stipulations of the Digitally Signed CARD Option\
**When** the Guideline Repository processes this payload\
**Then** the Guideline Repository **SHALL** appropriately evaluate every resource in the payload regarding its digital signature\
**And** the Guideline Repository **SHALL** process it and respond accordingly.

### Guideline Performer 

---

**Scenario: Guideline Performer Establishes Care Context**\
**Given** a Guideline Performer initiates a care encounter\
**When** the encounter begins\
**Then** the Guideline Performer **SHALL** establish the relevant care context, including the uniquely identified care subject, the care provider and care location (if applicable), and the initial version of the care subject’s person-centric health data.

**Scenario: Guideline Performer Iteratively Processes Recommendations**\
**Given** a Guideline Performer is engaged in a care encounter supported by CCG-informed recommendations\
**And** the Guideline Performer is not grouped with a Guideline Engine\
**And** care recommendations are returned by iterative invocations of the [QRPH-64] transaction\
**When** processing these recommendations\
**Then** the Guideline Performer **SHALL** continue to iteratively invoke [QRPH-64] until there are zero CCG-informed recommendations returned in the transaction response.

**Scenario: Guideline Performer Persists Updated Care Context Data**\
**Given** a Guideline Performer has completed processing of all recommendations returned from [QRPH-64] during a care encounter\
**When** the activities carried out during the care encounter are finalized\
**Then** the Guideline Performer **SHALL** persist the updated care context data, reflective of these activities, along with appropriate audit log records\
**And** it **SHALL** be possible to view these persisted records.

### Guideline Engine 

---

**Scenario: Guideline Engine Submits Search for Guideline Query**\
**Given** a Guideline Engine needs to find relevant CCGs\
**When** it queries a Guideline Repository\
**Then** the Guideline Engine **SHALL** be able to submit a query using Search for Guideline [QRPH-61] as an originator.

**Scenario: Guideline Engine Submits Retrieve Guideline Query**\
**Given** a Guideline Engine needs to retrieve specific CCG packages\
**When** it queries a Guideline Repository\
**Then** the Guideline Engine **SHALL** be able to submit a query using Retrieve Guideline [QRPH-62] as an originator\
**And** the Guideline Engine **SHALL** ingest the resulting CCG packages, if applicable.

**Scenario: Guideline Engine Supports CPG PlanDefinition Apply Operation**\
**Given** a Guideline Engine receives an input data bundle for evaluation\
**When** an Apply Guideline [QRPH-64] operation is invoked\
**Then** the Guideline Engine **SHALL** support execution of the CPG PlanDefinition Apply operation with the input (“IN”) parameters defined for transaction [QRPH-64].

## [QRPH-61] Search for Guidelines - Behaviour Tests 

### Transaction Initiator (Guideline Publisher or Guideline Engine) 

---

**Scenario: Initiator Configures npm for Guideline Repository**\
**Given** a transaction initiator (Guideline Publisher or Guideline Engine) will submit a query\
**When** the transaction initiator (Guideline Publisher or Guideline Engine) is being configured\
**Then** the transaction initiator **SHALL** correctly configure npm to point to the Guideline Repository's URL.

### Guideline Publisher 

---

**Scenario: Guideline Publisher Triggers Search for Guidelines**\
**Given** a Guideline Publisher needs to search for existing CCGs\
**And** the Guideline Publisher supports the [QRPH-61] transaction\
**When** it performs its query process \
**Then** the Guideline Publisher **SHALL** trigger a Search for Guidelines [QRPH-61] transaction to query for CCGs.

### Guideline Engine 

---

**Scenario: Guideline Engine Triggers Search for Guidelines**\
**Given** a Guideline Engine needs to update its local cache with new or updated CCGs\
**When** it performs its update process (e.g., automated, periodic)\
**Then** the Guideline Engine **SHALL** trigger a Search for Guidelines [QRPH-61] transaction to query for new or updated CCGs to be downloaded and ingested.

### Guideline Repository 

---

**Scenario: Guideline Repository Develops Search Results Response**\
**Given** a Guideline Repository receives a submitted query\
**When** it processes the query\
**Then** the Guideline Repository **SHALL** develop a search results response in accordance with its application logic.

**Scenario: Guideline Repository Returns Search Results Response**\
**Given** a Guideline Repository has developed a search results response\
**When** the response is ready\
**Then** the Guideline Repository **SHALL** return the search results response to the transaction initiator.

## [QRPH-62] Retrieve Guideline - Behaviour Tests 

### Guideline Publisher 

---

**Scenario: Guideline Publisher Triggers Retrieve Guideline Transaction for Identified CCGs**\
**Given** a Guideline Publisher has identified one or more CCGs (potentially based on results from a prior Search for Guidelines transaction)\
**And** the Guideline Publisher supports the [QRPH-62] transaction\
**When** it proceeds to download and ingest these identified CCGs\
**Then** the Guideline Publisher **SHALL** trigger a Retrieve Guideline [QRPH-62] transaction for each CCG\
**And** the Guideline Publisher **SHALL** process and ingest each CCG it receives.

### Guideline Engine 

---

**Scenario: Guideline Engine Triggers Retrieve Guideline Transaction for Identified CCGs**\
**Given** a Guideline Engine has identified new or updated CCGs (potentially based on results from a prior Search for Guidelines transaction)\
**When** it proceeds to download and ingest these identified CCGs\
**Then** the Guideline Engine **SHALL** trigger a Retrieve Guideline [QRPH-62] transaction for each new or updated CCG\
**And** the Guideline Engine **SHALL** process, ingest, and operationalize each new or updated CCG it receives.

### Guideline Repository 

---

**Scenario: Guideline Repository Develops Retrieve Guideline Response**\
**Given** a Guideline Repository receives a submitted `npm install` command\
**When** it processes the command\
**Then** the Guideline Repository **SHALL** develop a Retrieve Guideline response in accordance with its application logic.\

**Scenario: Guideline Repository Returns Retrieve Guideline Response**\
**Given** a Guideline Repository has developed a Retrieve Guideline response\
**When** the response is ready\
**Then** the Guideline Repository **SHALL** return the Retrieve Guideline response to the transaction initiator.

## [QRPH-63] Publish Guideline - Behaviour Tests 

### Guideline Publisher (Transaction Initiator) 

---

**Scenario: Guideline Publisher Executes npm Publish Command**\
**Given** a Guideline Publisher has a well-formed CCG payload packaged as an npm package\
**And** the Guideline Publisher has correctly configured npm to point to the Guideline Repository registry URL\
**When** it submits this package to a Guideline Repository\
**Then** the Guideline Publisher **SHALL** execute the `npm publish` command as profiled by [QRPH-63].

### Guideline Repository 

---

**Scenario: Guideline Repository Processes Submitted npm Publish Command**\
**Given** a Guideline Repository receives a submitted `npm publish` command as profiled by [QRPH-63]\
**When** it processes the command\
**Then** the Guideline Repository **SHALL** appropriately evaluate the submitted CCG payload.

**Scenario: Guideline Repository Persists well-formed CCG Payload**\
**Given** a Guideline Repository has appropriately evaluated a submitted CCG payload\
**When** the submitted content is well-formed\
**And** applicable digital signatures have a correctly matching hash\
**And** the applicable signing certificate is trusted by the Guideline Repository\
**Then** the Guideline Repository **SHALL** persist the CCG payload to its internal data store\
**And** the Guideline Repository **SHALL** return HTTP status 200 "OK" in the response

**Scenario: Guideline Repository Rejects CCG Payload for non-matching digital signatures**\
**Given** a Guideline Repository has appropriately evaluated a submitted CCG payload\
**When** any applicable digital signature does not match its respective hash or the applicable signing certificate is not trusted by the Guideline Repository\
**Then** the Guideline Repository **SHALL NOT** persist the CCG payload to its internal data store\
**And** the Guideline Repository **SHALL** return HTTP status 417 "EXPECTATION_FAILED" in the response, along with other relevant details that may assist in debugging the issue

**Scenario: Guideline Repository Rejects CCG Payload for reasons other than non-matching digital signatures**\
**Given** a Guideline Repository has evaluated a submitted CCG payload\
**When** the relelvant digital signatures do match\
**And** the payload is not well-formed or there is some other issue with the submission\
**Then** the Guideline Repository **SHALL NOT** persist the CCG payload to its internal data store\
**And** the Guideline Repository **SHALL** return HTTP status 500 "INTERNAL_SERVER_ERROR" in the response, along with other relevant details that may assist in debugging the issue

## [QRPH-64] Apply Guideline - Behaviour Tests 

### Guideline Performer (Initiator) 

---

**Scenario: Guideline Performer is not grouped with a Guideline Engine and so invokes the Apply Guidelines Operation**\
**Given** a Guideline Performer is engaged in a care encounter\
**And** relevant CCG(s) need to be applied for a patient\
**And** the Guideline Performer is not grouped with a Guideline Engine\
**When** the Guideline Performer submits a command to apply the CCG(s)\
**Then** the Guideline Performer **SHALL** execute a [QRPH-64] transaction with a Guideline Engine using the `CPGPlanDefinitionApply` operation as defined by the HL7 CPG-on-FHIR specification.

**Scenario: Guideline Performer Supplies PlanDefinition ID Parameter**\
**Given** a Guideline Performer is invoking the `CPGPlanDefinitionApply` operation\
**When** constructing the operation parameters\
**Then** the `id` of the relevant PlanDefinition **SHALL** be supplied at the instance level.

**Scenario: Guideline Performer Supplies Subject Parameter**\
**Given** a Guideline Performer is invoking the `CPGPlanDefinitionApply` operation\
**When** constructing the operation parameters\
**Then** the `subject` **SHALL** be supplied as a parameter\
**And** the `subject` **SHALL** be a patient.id reference\
**And** the identified patient resource **SHALL** be included in the contextual content bundle.

**Scenario: Guideline Performer Supplies Encounter Parameter**\
**Given** a Guideline Performer is invoking the `CPGPlanDefinitionApply` operation\
**When** constructing the operation parameters\
**Then** the `encounter` **SHALL** be supplied as a parameter\
**And** the `encounter` **SHALL** be an encounter.id reference\
**And** the identified encounter resource **SHALL** be included in the contextual content bundle.

**Scenario: Guideline Performer Includes Contextual Content Bundle**\
**Given** a Guideline Performer is invoking the `CPGPlanDefinitionApply` operation\
**When** constructing the transaction\
**Then** the contextual content bundle **SHALL** be included as the `data` parameter in the Apply Guideline transaction\
**And** this content bundle **SHALL** adhere to the actor’s claimed contextual content option.

**Scenario: Guideline Performer Prepares Up-to-Date Contextual Content Bundle**\
**Given** a Guideline Performer is preparing to submit an Apply Guideline transaction\
**When** preparing the transaction\
**Then** the transaction initiator **SHALL** prepare an up-to-date contextual content bundle adherent to the actor’s claimed contextual content option\
**And** this contextual content bundle **SHALL** include all Resulting Data from recommendations processed during the present encounter

**Scenario: Guideline Performer Creates Audit Record for Transaction Submission**\
**Given** a Guideline Performer is preparing to submit an Apply Guideline transaction\
**When** the transaction is submitted\
**Then** the transaction initiator **SHALL** create an audit record of the transaction submission.

**Scenario: Guideline Performer Creates Audit Record for Transaction Response**\
**Given** a Guideline Performer has submitted an Apply Guideline transaction\
**When** it receives the transaction response\
**Then** the transaction initiator **SHALL** create an audit record of the transaction response.

**Scenario: Guideline Performer Processes Action Resources and Generates Resulting Data**\
**Given** a Guideline Performer has received a transaction response\
**When** processing the response\
**Then** the Guideline Performer **SHALL** process each of the Action resources in the RequestGroup\
**And** the Guideline Performer **SHALL** generate Resulting Data based on the relevant specifications (Volume 3 or Volume 4).

**Scenario: Guideline Performer Adopts FHIR-Related Security Considerations for PHI**\
**Given** the Apply Guideline transaction conveys personal health information (PHI)\
**When** processing this transaction\
**Then** normative FHIR-related security considerations related to the secure processing of PHI **SHALL** be adopted as described in IHE Appendix Z.

**Scenario: Guideline Performer is Grouped with Audit Creator and Adheres to BALP**\
**Given** a Guideline Performer is operational\
**When** performing its duties\
**Then** the Guideline Performer **SHALL** be grouped with Audit Creator actor\
**And** the grouped Audit Creator **SHALL** adhere to the Basic Audit Log Patterns (BALP) specifications.

**Scenario: Guideline Performer Persists Basic AuditEvent for Privacy Disclosure at Source (Submission)**\
**Given** an Apply Guideline transaction is submitted\
**When** the submission occurs\
**Then** the Guideline Performer **SHALL** act as an Audit Creator to persist a Basic AuditEvent for Privacy Disclosure at Source.\
**And** the `AuditEvent.outcome` **SHALL** be 0.\
**And** the `AuditEvent.outcomeDesc` **SHALL** include a pipe-delimited string containing "CPGPlanDefinitionApply submission | %plandefinition.id% | %encounter.id% | %parameters%" where the variables are formatted as they appeared in the transaction submission.\
**And** the `AuditEvent.purposeOfEvent` **SHALL** be "TREAT".\
**And** `AuditEvent.agent.source.who` **SHALL** match the software name and version # of Guideline Performer.\
**And** `AuditEvent.agent.recipient.who` **SHALL** match the software name and version # of Guideline Engine.\
**And** `AuditEvent.agent.custodian.who` **SHALL** be the practitioner.identifier or patient.identifier.\
**And** `AuditEvent.agent.authorizer.who` **SHALL** be the patient.identifier.

**Scenario: Guideline Performer Persists Basic AuditEvent for Privacy Disclosure at Source (Response)**\
**Given** a response to an Apply Guideline transaction submission is received\
**When** the response is processed\
**Then** the Guideline Performer **SHALL** act as an Audit Creator to persist a Basic AuditEvent for Privacy Disclosure at Source.\
**And** the `AuditEvent.outcome` **SHALL** be 0 or the operation outcome code from Guideline Engine server.\
**And** the `AuditEvent.outcomeDesc` **SHALL** be a pipe-delimited string listing the “CARD” IDs (plandefintion.id) returned in the transaction resonse.\
**And** the `AuditEvent.purposeOfEvent` **SHALL** be "TREAT".\
**And** `AuditEvent.agent.source.who` **SHALL** match the software name and version # of Guideline Performer.\
**And** `AuditEvent.agent.recipient.who` **SHALL** match the software name and version # of Guideline Engine.\
**And** `AuditEvent.agent.custodian.who` **SHALL** be the practitioner.identifier or patient.identifier.\
**And** `AuditEvent.agent.authorizer.who` **SHALL** be the patient.identifier.

**Scenario: Guideline Performer Persists Basic AuditEvent for Successful Create with Known Patient Subject**\
**Given** the Guideline Performer persists PHI during its post-processing of the Apply Guideline response\
**When** this persistence occurs\
**Then** the Guideline Performer **SHALL** act as an Audit Creator to persist a Basic AuditEvent for a **successful** Create with known Patient Subject\
**And** the format of the AuditEvent **SHALL** relate to the Resulting Data that is persisted.

### Guideline Engine (Responder) 

---

**Scenario: Guideline Engine Response Conforms to CPGPlanDefinitionApply Operation Content**\
**Given** a Guideline Engine has processed an Apply Guideline transaction\
**When** it returns the transaction result\
**Then** the transaction result **SHALL** conform to the content format defined for the `CPGPlanDefinitionApply` operation as defined by the version of the CPG-on-FHIR IG identified in this IHE CCG Profile.

**Scenario: Guideline Engine Request Resource References PlanDefinition**\
**Given** a Guideline Engine returns a Request resource in the transaction response bundle\
**When** examining the Request resource\
**Then** each Request resource **SHALL** reference the relevant “CARD’s” PlanDefinition resource in the `[resource].instantiatesCanonical` or the `[resource].extension:instantiatesCanonical` element, as applicable.

**Scenario: Guideline Engine Logically ANDs Multiple Condition Statements**\
**Given** a Guideline Engine is processing CARDs with multiple condition statements\
**When** evaluating these conditions\
**Then** the Guideline Engine **SHALL** logically AND the condition statements together.

**Scenario: Guideline Engine Creates Audit Record for Transaction Submission**\
**Given** a Guideline Engine receives a submitted transaction\
**When** the transaction is received\
**Then** the Guideline Engine **SHALL** create an audit record of the transaction submission.

**Scenario: Guideline Engine Creates Audit Record for Transaction Response**\
**Given** a Guideline Engine has returned a transaction response\
**When** the response is sent\
**Then** the Guideline Engine **SHALL** create an audit record of the transaction response.

**Scenario: Guideline Engine is Grouped with Audit Creator and Adheres to BALP**\
**Given** a Guideline Engine is operational\
**When** performing its duties\
**Then** the Guideline Engine **SHALL** be grouped with Audit Creator actor\
**And** the grouped Audit Creator **SHALL** adhere to the Basic Audit Log Patterns (BALP) specifications.

**Scenario: Guideline Engine Persists Basic AuditEvent for Privacy Disclosure at Source (Submission)**\
**Given** an Apply Guideline transaction is submitted\
**When** the submission occurs\
**Then** the Guideline Engine **SHALL** act as an Audit Creator to persist a Basic AuditEvent for Privacy Disclosure at Source.\
**And** the `AuditEvent.outcome` **SHALL** be 0.\
**And** the `AuditEvent.outcomeDesc` **SHALL** include a pipe-delimited string containing "CPGPlanDefinitionApply submission | %plandefinition.id% | %encounter.id% | %parameters%" where the variables are formatted as they appeared in the transaction submission.\
**And** the `AuditEvent.purposeOfEvent` **SHALL** be "TREAT".\
**And** `AuditEvent.agent.source.who` **SHALL** match the software name and version # of Guideline Performer.\
**And** `AuditEvent.agent.recipient.who` **SHALL** match the software name and version # of Guideline Engine.\
**And** `AuditEvent.agent.custodian.who` **SHALL** be the practitioner.identifier or patient.identifier.\
**And** `AuditEvent.agent.authorizer.who` **SHALL** be the patient.identifier.

**Scenario: Guideline Engine Persists Basic AuditEvent for Privacy Disclosure at Source (Response)**\
**Given** a response to an Apply Guideline transaction submission is received\
**When** the response is processed\
**Then** the Guideline Engine **SHALL** act as an Audit Creator to persist a Basic AuditEvent for Privacy Disclosure at Source.\
**And** the `AuditEvent.outcome` **SHALL** be 0 or the operation outcome code from Guideline Engine server.\
**And** the `AuditEvent.outcomeDesc` **SHALL** be a pipe-delimited string listing the “CARD” IDs (plandefintion.id) returned in the transaction resonse.
**And** the `AuditEvent.purposeOfEvent` **SHALL** be "TREAT".\
**And** `AuditEvent.agent.source.who` **SHALL** match the software name and version # of Guideline Performer.\
**And** `AuditEvent.agent.recipient.who` **SHALL** match the software name and version # of Guideline Engine.\
**And** `AuditEvent.agent.custodian.who` **SHALL** be the practitioner.identifier or patient.identifier.\
**And** `AuditEvent.agent.authorizer.who` **SHALL** be the patient.identifier.

**Scenario: Guideline Engine Persists Basic AuditEvent for Successful Create with Known Patient Subject (if persisting content)**\
**Given** a Guideline Engine enduringly persists content submitted in the Apply Guideline transaction\
**When** this persistence occurs\
**Then** the Guideline Engine **SHALL** act as an Audit Creator to persist a Basic AuditEvent for a **successful** Create with known Patient Subject\
**And** the format of the AuditEvent **SHALL** relate to the Resulting Data that is persisted.

## Normative CCG Content Tests 

### Contextual Content (Data-in) Bundle 

---

**Scenario: Data-in Bundle Contains Relevant Encounter Resource**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the relevant Encounter resource for the current patient encounter.

**Scenario: Data-in Bundle Contains Relevant Practitioner Resource**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**And** an identified Practitioner is participating in this encounter\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the relevant Practitioner resource.

**Scenario: Data-in Bundle Contains Relevant PractitionerRole Resource**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**And** an identified Practitioner is participating in this encounter\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the relevant PractitionerRole resource.

**Scenario: Data-in Bundle Contains Relevant Location Resource**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
*And** the encounter is occurring at an identified Location\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the relevant Location resource.

**Scenario: Data-in Bundle Contains Relevant Organization Resource**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**And** the encounter is being carried out under the auspices of an identified Organization\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the relevant Organization resource.

**Scenario: Data-in Bundle Contains Patient's Health Summary Document**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the patient's health summary document\
**And** this health summary document **SHALL** include all content defined in the CCG IPS composition model and available to the Guideline Performer\
**And** this health summary document **SHALL** list the patient's applicable CCG(s) in a CCG Patient Plans (planDefinition) resource, if applicable\
**And** this CCG Patient Plans resource **SHALL** be referenced in the patient summary's CCG IPS CarePlan resource.

**Scenario: Data-in Bundle Contains Normative Resulting Data**\
**Given** a data-in bundle is being prepared for an Apply Guideline transaction submission\
**When** the bundle is constructed\
**Then** the data-in bundle **SHALL** contain the set of normative Resulting Data generated by the Guideline Performer after processing prior invocations of the [QRPH-64] transaction.

### Normative CARD Action and Resulting Data Formats 

---

**Scenario: Guideline Performer Generates Normative Resulting Data**\
**Given** a Guideline Performer processes the CARD Action-related resources returned in a [QRPH-64] transaction response\
**When** post-processing is completed\
**Then** the Guideline Performer **SHALL** ensure that the normative Resulting Data is generated and that it **SHALL** be included as part of the Data-In bundle in subsequent invocations of [QRPH-64].

### Provide Information CARD 

---

**Scenario: Provide Information CARD Action is CommunicationRequest**\
**Given** a Provide Information CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** a recommended Action is generated from this CARD\
**Then** the recommended Action from this CARD **SHALL** be a CommunicationRequest resource based on the CPGCommunicationRequest profile.

**Scenario: Provide Information CARD Resulting Data is Communication Resource**\
**Given** a Provide Information CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Communication resource based on the CPGCommunication profile with either `status=completed` or `status=not-done` (with statusReason).\
**And** the Communication resource **SHALL** reference the Encounter.

### Collect Information CARD 

---

**Scenario: Collect Information CARD Exists for Each Data Element**\
**Given** an evidence-based care workflow requires specific data elements\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** Collect Information CARDs are defined for this workflow\
**Then** there **SHALL** be one Collect Information CARD for each data element needed to drive the evidence-based care workflow.

**Scenario: Collect Information CARD Action is Task Resource**\
**Given** a Collect Information CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** a recommended Action is generated from this CARD\
**Then** the recommended Action from this CARD **SHALL** be a Task resource based on the CPGQuestionnaireTask profile.

**Scenario: Questionnaire Resource Scope is Limited**\
**Given** a Questionnaire resource is referenced in a Task from a Collect Information CARD\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** constraints are applied to this Questionnaire\
**Then** the scope of the Questionnaire **SHALL** be limited to a single data element.

**Scenario: Questionnaire Defines Content Type and Units of Measure**\
**Given** a Questionnaire resource is referenced in a Task from a Collect Information CARD\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** defining the content of the Questionnaire\
**Then** the content type (e.g., LOINC code for observation) and relevant units of measure **SHALL** be defined by the Questionnaire\
**And** this definition **SHALL** ensure the content in an associated QuestionaireResponse is persisted in a format consistent with the evidence-based workflow logic defined for this CCG.

**Scenario: Collect Information CARD Resulting Data is FHIR Resource**\
**Given** a Collect Information CARD's processing is completed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a FHIR resource based on the semantic definition expressed in the Questionnaire\
**And** the resulting resource **SHALL** reference the Encounter.

*NOTE: for this first version of the CCG Profile, the following test will apply.*\
**Scenario: Collect Information CARD Exclusively Supports Observation Resources**\
**Given** a Collect Information CARD is defined in adherence to the first published release of the IHE CCG Profile\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** these Resulting Data resources are created \
**Then** the Resulting Data **SHALL** be Observation resources based on the CPGObservation profile with either `status=final` or `status=cancelled` (with `dataAbsentReason`).

### Request a Service (Lab Order) CARD 

---

**Scenario: Lab Order CARD Action is ServiceRequest Resource**\
**Given** a Request a Service (Lab Order) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a ServiceRequest resource based on the CPGServiceRequest profile

**Scenario: Lab Order CARD Resulting Data is Lab Order ServiceRequest Resource**\
**Given** a Request a Service (Lab Order) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Lab Order ServiceRequest resource based on the CPGServiceRequest profile with either `status=draft` or `status=revoked` (indicating not done)\
**And** the ServiceRequest resource **SHALL** reference the Encounter.

### Request a Service (Radiology Order) CARD 

---

**Scenario: Radiology Order CARD Action is ServiceRequest Resource**\
**Given** a Request a Service (Radiology Order) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a ServiceRequest resource based on the CPGServiceRequest profile.

**Scenario: Radiology Order CARD Resulting Data is Radiology Order ServiceRequest Resource**\
**Given** a Request a Service (Radiology Order) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Radiology Order ServiceRequest resource based on the CPGServiceRequest profile with either `status=draft` or `status=revoked` (indicating not done)\
**And** the ServiceRequest resource **SHALL** reference the Encounter.

### Request a Service (Procedure Order) CARD 

---

**Scenario: Procedure Order CARD Action is ServiceRequest Resource**\
**Given** a Request a Service (Procedure Order) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a ServiceRequest resource based on the CPGServiceRequest profile.

**Scenario: Procedure Order CARD Resulting Data is Procedure Order ServiceRequest Resource**\
**Given** a Request a Service (Procedure Order) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Procedure Order ServiceRequest resource based on the CPGServiceRequest profile with either `status=draft` or `status=revoked` (indicating not done).\
**And** the ServiceRequest resource **SHALL** reference the Encounter.

### Request a Service (Referral) CARD 

---

**Scenario: Referral CARD Action is ServiceRequest Resource**\
**Given** a Request a Service (Referral) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a ServiceRequest resource based on the CPGServiceRequest profile.

**Scenario: Referral CARD Resulting Data is Referral ServiceRequest Resource**\
**Given** a Request a Service (Referral) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Referral ServiceRequest resource based on the CPGServiceRequest profile with either `status=draft` or `status=revoked` (indicating not done).\
**And** the ServiceRequest resource **SHALL** reference the Encounter.

### Propose a Diagnosis CARD 

---

**Scenario: Propose Diagnosis CARD Action is Condition Resource**\
**Given** a Propose a Diagnosis CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a Condition resource based on the CPGCondition profile.

**Scenario: Propose Diagnosis CARD Resulting Data is Condition Resource**\
**Given** a Propose a Diagnosis CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a Condition resource based on the CPGCondition profile with either `status=active` or `status=inactive` (with statusReason).\
**And** the Condition resource **SHALL** reference the Encounter.

### Order Medication CARD 

---

**Scenario: Order Medication CARD Action is MedicationRequest Resource**\
**Given** an Order Medication CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a MedicationRequest resource based on the CPGMedicationRequest profile.

**Scenario: Order Medication CARD Resulting Data is MedicationRequest Resource**\
**Given** an Order Medication CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a MedicationRequest resource based on the CPGMedicationRequest profile with either `status=active` or `status=revoked` (indicating not done).\
**And** the MedicationRequest resource **SHALL** reference the Encounter.

### Dispense Medication CARD 

---

**Scenario: Dispense Medication CARD Action is Task Resource**\
**Given** a Dispense Medication CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a Task resource based on the CPGDispenseMedicationTask profile.

**Scenario: Dispense Medication CARD Resulting Data is MedicationDispense Resource**\
**Given** a Dispense Medication CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a MedicationDispense resource based on the CPGMedicationDispense profile with either `status=completed` or `status=not-done` (with statusReason).\
**And** the MedicationDispense resource **SHALL** reference the Encounter.

### Administer Medication CARD 

---

**Scenario: Administer Medication CARD Action is Task Resource**\
**Given** an Administer Medication CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** an Action recommendation is generated from this CARD\
**Then** the Action recommendation from this CARD **SHALL** be a Task resource based on the CPGAdministerMedicationTask profile.

**Scenario: Administer Medication CARD Resulting Data is MedicationAdministration Resource**\
**Given** an Administer Medication CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be a MedicationAdministration resource based on the CPGMedicationAdministration profile with either `status=completed` or `status=not-done` (with statusReason).\
**And** the MedicationAdministration resource **SHALL** reference the present Encounter in the `MedicationAdministration.context` element of the resource.

### Request Immunization CARD 

---

*Note: the Request Immunization CARD is not for scheduling a future immunization event, it is for administering a vaccine*

**Scenario: Request Immunization CARD Action is MedicationRequest Resource**\
**Given** a Request Immunization CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** a recommended Action is generated from this CARD\
**Then** the recommended Action from this CARD **SHALL** be a MedicationRequest resource based on the CPGImmunizationRequest profile.

**Scenario: Request Immunization CARD Resulting Data is Immunization Resource**\
**Given** a Request Immunization CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be an Immunization resource based on the CPGImmunization profile with either `status=completed` or `status=not-done` (with statusReason)\
**And** the resource **SHALL** reference the Encounter.

### Stop Activity (Medication Order) CARD 

---

**Scenario: Stop Medication Order CARD Action is Task Resource**\
**Given** a Stop Activity (Medication Order) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** a recommended Action is generated from this CARD\
**Then** the recommended Action from this CARD **SHALL** be a Task resource based on the CPGStopTask profile.

**Scenario: Stop Medication Order CARD Resulting Data is Updated MedicationRequest Resource**\
**Given** a Stop Activity (Medication Order) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be an updated MedicationRequest resource\
**And** this MedicationRequest resource **SHALL** have a `status = stopped`\
**And** this MedicationRequest resource **SHALL** reference the present Encounter\
**And** this MedicationRequest resource **SHALL** set `authoredOn = current timestamp`.

**Scenario: IPS Document Reflects Updated MedicationRequest Resource**\
**Given** a Stop Activity (Medication Order) CARD has generated an updated MedicationRequest resource\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the patient's IPS document is refreshed\
**Then** the IPS document in the Data-in Bundle **SHALL** be updated to reflect the updated MedicationRequest resource.

### Stop Activity (Service Order) CARD 

---

**Scenario: Stop Service Order CARD Action is Task Resource**\
**Given** a Stop Activity (Service Order) CARD is defined\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** a recommended Action is generated from this CARD\
**Then** the recommended Action from this CARD **SHALL** be a Task resource based on the CPGStopTask profile.

**Scenario: Stop Service Order CARD Resulting Data is Updated ServiceRequest Resource**\
**Given** a Stop Activity (Service Order) CARD's Apply Guidelines transaction response has been processed by the Guideline Performer\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the Resulting Data from this CARD is generated\
**Then** the Resulting Data from this CARD **SHALL** be an updated ServiceRequest resource.\
**And** this ServiceRequest resource **SHALL** have a `status = revoked`.\
**And** this ServiceRequest resource **SHALL** reference the present Encounter.\
**And** this ServiceRequest resource **SHALL** set `authoredOn = current timestamp`.

**Scenario: IPS Document Reflects Updated ServiceRequest Resource**\
**Given** a Stop Activity (Service Order) CARD has generated an updated ServiceRequest resource\
**And** the ecosystem's CCG actors declare conformance to the IHE CCG Profile Volume-3\
**When** the patient's IPS document is refreshed\
**Then** the IPS document in the Data-in Bundle **SHALL** be updated to reflect the updated ServiceRequest resource.
