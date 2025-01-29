### Scope

Transaction QRPH-62 Retrieve Guideline is used to download and ingest a CCG
that has been published to a Guideline Repository. The query parameters
denote the specific CCG. The transaction response is the CCG package
(FHIR IG) that meets the search criteria.

### Actor roles

| **Actor** | **Role** |
|----|----|
| Guideline Publisher | Optionally, queries for a CCG to be downloaded and ingested |
| Guideline Engine | Queries for a CCG to be downloaded and ingested |
| Guideline Repository | Responds with the CCG package that meets the query criteria |
{:.grid}

### Referenced standard(s)

Transaction QRPH-62 Retrieve Guideline is based on the following standards:

- HL7 FHIR standard Release 4 <http://hl7.org/fhir/R4/index.html>

- Draft HL7 CRMI[^1] specification
  <https://build.fhir.org/ig/HL7/crmi-ig/distribution.html#distribution-fhir-package>

- Node Package Manager version 10.9.1
  <https://docs.npmjs.com/cli/v10/commands/npm-install>

- CPG Computable Guideline STU2 specification:
  <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-computableguideline.html>

### Interactions

<figure>
{% include image15.svg %}
<!--
<img src="image15.png" style="height: 100%; width: 100%; object-fit: contain"
 />
 -->
<figcaption><p>Figure 15- QRPH-62 Retrieve Guideline Interaction
Diagram</p></figcaption>
</figure>

#### Trigger Events - Initiator

A Guideline Publisher may trigger a Retrieve Guideline transaction to
download and ingest a specific CCG for subsequent editing. The specific
CCG to be retrieved may be based on the results from a prior Search for
Guidelines transaction.

A Guideline Engine shall trigger a Retrieve Guideline transaction for
each new or updated CCGs to be downloaded and ingested. This may be an
automated process that operates on a periodic basis. The CCG to be
retrieved may be based on the results from a prior Search for Guidelines
transaction.

#### Message Semantics - Initiator

The command to retrieve a CCG is submitted by the Guideline Publisher or
Guideline Engine to the Guideline Repository using the **npm install**
command and grammar.

npm install \[\<package-spec\> ...\]

#### Expected Actions - Initiator

Prior to submitting the transaction, the transaction initiator:

- SHALL correctly configure npm to point to the Guideline Repository
  registry URL;

- MAY authenticate to the Guideline Repository.

Based on receipt of the transaction response, the transaction initiator:

- MAY execute an *npm audit signatures* command;

- MAY create an audit record;

- Processes the response in accordance with its application and user
  interface logic.

#### Trigger Events - Responder

The Guideline Repository responds to inbound Retrieve Guideline
transactions as they are received.

#### Message Semantics - Responder

The transaction result is a FHIR package (tarball) containing an
Implementation Guide adherent to the CPG Computable Guideline STU2
specification:
<https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-computableguideline.html>.

#### Expected Actions - Responder

Upon receiving a submitted transaction, the transaction responder:

- **MAY** confirm the transaction initiator’s authentication to the
  Guideline Repository and their authority to execute the submitted
  transaction;

- **SHALL** return a well-formed FHIR IG package (or exception response)
  to the transaction initiator.

Based on the returned transaction response, the transaction responder:

- **MAY** create an audit record;

- Executes other processes in accordance with its application logic.

### Security and audit considerations

This transaction does **not** convey personal health information (PHI).

FHIR-related security considerations SHOULD be adopted as described in
IHE Appendix Z[^2].

**Footnotes**

[^1]: The CRMI specification draft is referenced, but the reference will
    be updated to the STU2 version upon completion and balloting of this
    work item within the HL7 working group

[^2]: <https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations>
