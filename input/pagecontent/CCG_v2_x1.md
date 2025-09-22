### 2:3.61.1 Scope
Transaction Search for Guidelines \[QRPH-61\] is used to query for CCGs that have
been published to a Guideline Repository. The query parameters can be
employed, for example, to search for CCGs published (or updated) since a
given timestamp. The transaction response will be a list of CCGs that
meet the search criteria. The transaction content and behavior related to this content will depend upon the [Common Content Model](CCG_v1_actor.html#common-content-model) option to which the Guideline Publisher, Guideline Engine and Guideline Repository actors claim conformance.

### 2:3.61.2 Actor Roles

**Table 2:3.61.2-1: Actor Roles**

| **Actor** | **Role** |
|----|----|
| Guideline Publisher | Optionally, queries for a CCG to be updated and re-published |
| Guideline Engine | Queries for new or updated CCGs |
| Guideline Repository | Responds with a list of CCGs that meet the query criteria |
{:.grid}

### 2:3.61.3 Referenced Standard(s)

Transaction  Search for Guidelines \[QRPH-61\] is based on the following
standards:

- HL7 FHIR standard Release 4 <http://hl7.org/fhir/R4/index.html>

- Node Package Manager version 10.9.0
  <https://docs.npmjs.com/cli/v10/commands/npm-search>

### 2:3.61.4 Messages

<figure>
{% include image14.svg %}
<!--
<img src="image14.png" style="height: 100%; width: 100%; object-fit: contain"
 />
 -->
<figcaption><strong>Figure 2:3.61.4-1 - Search for Guidelines [QRPH-61] Interaction
Diagram</strong></figcaption>
</figure>
<br clear="all">

#### 2:3.61.4.1 Trigger Events - Initiator

A Guideline Publisher may trigger a Search for Guidelines transaction to
query for a CCG for subsequent editing.

A Guideline Engine shall trigger a Search for Guidelines transaction to
query for new or updated CCGs to be downloaded and ingested. This may be
an automated process that operates on a periodic basis.

#### 2:3.61.4.2 Message Semantics - Initiator

The Search for a CCG is submitted by the Guideline Publisher or
Guideline Engine to the Guideline Repository using the **npm search**
command and grammar.

npm search \<search term\> \[\<search term\> ...\]

#### 2:3.61.4.3 Expected Actions - Initiator

Prior to submitting the query, the transaction initiator:

- SHALL correctly configure npm to point to the Guideline Repository
  registry URL;

- MAY authenticate to the Guideline Repository.

Based on receipt of the transaction response, the transaction initiator:

- MAY create an audit record;

- Processes the response in accordance with its application and user
  interface logic.

#### 2:3.61.4.4 Trigger Events - Responder

The Guideline Repository responds to inbound Search for Guidelines
transactions as they are received.

#### 2:3.61.4.5 Message Semantics - Responder

The search results are a JSON array of objects with the following
fields:

- name (i.e., the package name)

- description

- FHIRVersion

- lastUpdated

The search result set is sorted by lastUpdated, from most recent to
least recent.

#### 2:3.61.4.6 Expected Actions - Responder

Upon receiving a submitted query, the transaction responder:

- MAY confirm the transaction initiator’s authentication to the
  Guideline Repository and their authority to execute the submitted
  transaction;

- SHALL develop a search results response in accordance with its
  application logic;

- SHALL return the search results response to the transaction initiator.

Based on the returned transaction response, the transaction responder:

- MAY create an audit record;

- Executes other processes in accordance with its application logic.

### 2:3.61.5 Security and Audit Considerations

This transaction does **not** convey personal health information (PHI).

FHIR-related security considerations SHOULD be adopted as described in
[IHE ITI Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations).


