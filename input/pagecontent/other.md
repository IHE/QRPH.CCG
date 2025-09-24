<div markdown="1" class="stu-note">
This section modifies other IHE profiles or the General Introduction Appendices and is not a part of the CCG Profile. The content here will be incorporated into the target narrative at a future time, usually when the CCG Profile goes normative.
</div>

## IHE Technical Frameworks General Introduction Appendix A: Actors

|------------------------------------------------|
| Editor, add the following new or modified actors to the [IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |
{:.grid .bg-info}

| Actor                         | Definition                                                                                |
| ----------------------------- | ------------------------------------------------------------------------------------------|
| Guideline Engine | ingests a submitted bundle of relevant contextual and person-centric content and executes the processing logic needed to return the appropriate response(s) indicating what care actions are recommended |
| Guideline Performer | directly or indirectly interacts with a human user, constructs appropriate encounter-specific artifacts (e.g., a bundle containing relevant contextual and person-centric content), manages the iterative invocation of \$apply operations that will concurrently process one or more relevant CCGs, and appropriately processes the transaction responses |
| Guideline Publisher | may find and retrieve an existing CCG from a Guideline Repository and publishes a CCG to a Guideline Repository |
| Guideline Repository | receives and catalogs a submitted CCG and responds to searches / requests for CCGs and returns relevant lists / artifacts to a requester |
{:.grid .table-striped}



## IHE Technical Frameworks General Introduction Appendix B: Transactions

|------------------------------------------------|
| Editor, add the following new or modified transactions to the [IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |
{:.grid .bg-info}


| Transaction Name and Number        | Definition                                                                                            |
| ---------------------------------- | ----------------------------------------------------------------------------------------------------- |
| Search for Guidelines \[QRPH-61\]  | Used to query for CCGs that have been published to a Guideline Repository                             |
| Retrieve Guideline \[QRPH-62\]     | Used to download and ingest a CCG that has been published to a Guideline Repository                   |
| Publish Guideline \[QRPH-63\]      | Used to submit an NPM package containing a well-formed CCG to a Guideline Repository                  |
| Apply Guideline \[QRPH-64\]        | Used to submit information to a Guideline Engine and invoke evaluation based on the submitted content |
{:.grid .table-striped}

## IHE Technical Frameworks General Introduction Appendix D: Glossary

|------------------------------------------------|
| Editor, add the following new or modified terms to the [IHE Technical Frameworks General Introduction Appendix D](https://profiles.ihe.net/GeneralIntro/ch-D.html): |
{:.grid .bg-info}

| **Term** | **Definition** |
|----|----|
| ASTP | The Assistant Secretary for Technology Policy (ASTP) / Office of the National Coordinator is a US government administrative body responsible for digital health |
| BPMN | Business Process Model & Notation -- a published specification of the Object Management Group (OMG) |
| CARD (metaphor) | A CCG CARD is metaphorically used to describe an evidence-based care recommendation. CARD is an acronym for Condition, Action, and Resulting Data. There is one CARD per recommendation -- and when the Condition is true, the Action is recommended and when the Action is taken, there is Resulting Data. Multiple CARDs related to a care guideline are contained in a CCG Folder (see Folder (metaphor)). |
| Care Plan Contributor (actor) | An actor that may be able to search for and retrieve a patient's Care Plan from a Care Plan Service and can save a new or updated Care Plan to a Care Plan Service. |
| Care Plan Service (actor) | An actor that maintains patient Care Plans and which can respond to transactional requests from a Care Plan Contributor actor. |
| CCG | Computable Care Guideline - a set of evidence-based care recommendations expressed in a format that may be ingested by and operationalized by a digital health solution. |
| CPG-on-FHIR | An Implementation Guide (IG) developed by the HL7 Clinical Decision Support working group (IG found here: <https://hl7.org/fhir/uv/cpg/2024Jan/index.html>) |
| DMN | Decision Model & Notation -- a published specification of the Object Management Group (OMG). |
| EMR | Electronic Medical Records digital health solution |
| Folder (metaphor) | A CCG Folder is a container metaphor. There will be a Folder to contain all of the care recommendations related to a particular care guideline (e.g. Diabetes, Childhood Immunization, HIV, etc.). See also CARD (metaphor). |
| Guideline Engine (actor) | An actor that can ingest a submitted bundle of relevant contextual and person-centric content and execute the processing logic needed to return the appropriate response(s) indicating what care actions are recommended. |
| Guideline Performer (actor) | An actor that can directly or indirectly interact with a human user, construct appropriate encounter-specific artefacts (e.g. a bundle containing relevant contextual and person-centric content), and manage the iterative invocation of \$apply operations that will concurrently process one or more relevant CCGs. |
| Guideline Publisher (actor) | An actor that may find and retrieve an existing CCG from a Guideline Repository and can publish a CCG to a Guideline Repository. |
| Guideline Repository (actor) | An actor that can receive and catalogue a submitted CCG and can respond to searches / requests for CCGs and return relevant lists / artefacts to a requester |
| HL7 | Health Level Seven -- a global standards development organization focused on digital health |
| IHE Deployment Committee | IHE's deployment committees are established to foster adoption of IHE specifications within a country or region (e.g. Canada, France, Europe, etc.). The contextualization of an IHE Profile for use within a jurisdiction (e.g. Canada, or Europe) would be governed by the relevant jurisdictional deployment committee (e.g. IHE Canada, or IHE Europe). |
| IHE Domain Committee | IHE's technical committees are established to develop implementable, conformance-testable digital health specifications related to specific domains of healthcare such as Patient Care Coordination (PCC); Quality, Research & Public Health (QRPH); Radiology (RAD), etc. Specifications leveraged across the other domains are typically developed by IHE's IT Infrastructure (ITI) technical committee. |
| IPS | International Patient Summary - a globally balloted specification that describes information about a care subject that is important to supporting their care continuity. |
| LHS | Learning Health System - the application of a continuous quality improvement cycle on the operations of an entire care delivery network |
| LMIC | Low- and middle-income Countries as defined by the World Bank categorization (<https://datahelpdesk.worldbank.org/knowledgebase/articles/906519-world-bank-country-and-lending-groups>) |
| mCSD | mobile Care Services Discovery -- an IHE Profile focused on digital health content related to care locations, providers, organizations and services and the relationships between these |
| NCD | Non-communicable diseases - sometimes also referred to as "chronic diseases" |
| npm | Node Package Manager - a standard grammar for defining computable software packages |
| OECD | Organization for Economic Co-operation and Development |
| ONC | The Assistant Secretary for Technology Policy / Office of the National Coordinator (ONC) is a US government administrative body responsible for digital health |
| SMS | Short Message Service -- messages sent/received via mobile phones; commonly known as "text messages" |
| SNOMED | Systematized Nomenclature of Medicine - SNOMED International is a global standards development organization focused on terminologies for healthcare; their key publication is SNOMED CT (clinical terminology) |
| USCDI | US Core Data for Interoperability - a core data set defined by ASTP/ONC to support digital health data exchange in the US |
| VBHS | Value-based Health Services - also sometimes called value-based care (VBC) |
| WHO | World Health Organization |
{:.grid .table-striped}



