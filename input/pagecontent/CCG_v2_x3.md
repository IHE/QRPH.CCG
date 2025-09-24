### 2:3.63.1 Scope

Transaction Publish Guideline \[QRPH-63\] is used to submit an NPM package
containing a well-formed CCG to a Guideline Repository. The transaction
response returns a confirmation or an exception message. The transaction content and behavior related to this content will depend upon the [Common Content Model](CCG_v1_actor.html#common-content-model) option to which the Guideline Publisher and Guideline Repository actors claim conformance.

### 2:3.63.2 Actor Roles

**Table 2:3.63.2-1: Actor Roles**

| **Actor** | **Role** |
|----|----|
| Guideline Publisher | Submits a well-formed CCG package to be persisted and cataloged by the Guideline Repository |
| Guideline Repository | Persists and catalogs the submitted CCG package or returns an exception message indicating the reason for rejecting the submission. |
{:.grid}

### 2:3.63.3 Referenced Standard(s)

Transaction Publish Guideline \[QRPH-63\] is based on the following standards:

- HL7 FHIR standard Release 4 <http://hl7.org/fhir/R4/index.html>

- Draft HL7 CRMI[^1] specification
  <https://build.fhir.org/ig/HL7/crmi-ig/publishing.html#transmit-to-repository>

- Node Package Manager version 10.9.1
  <https://docs.npmjs.com/cli/v10/commands/npm-publish>

- CPG Computable Guideline STU2 specification:
  <https://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-computableguideline.html>

### 2:3.63.4 Messages

<figure>
{% include image16.svg %}
<!--
<img src="image16.png" style="height: 100%; width: 100%; object-fit: contain"
 />
 -->
<figcaption><strong>Figure 2:3.63.4-1 – Publish Guideline [QRPH-63] Interaction 
Diagram</strong></figcaption>
</figure>
<br clear="all">

#### 2:3.63.4.1 Trigger Events - Initiator

A Guideline Publisher triggers a Publish Guideline transaction to upload
a well-formed CCG to the Guideline Repository.

#### 2:3.63.4.2 Message Semantics - Initiator

The command to publish a CCG **SHALL** be submitted by the Guideline
Publisher to the Guideline Repository using the **npm publish** command
and grammar.

npm publish \<package-spec\>

#### 2:3.63.4.2 Expected Actions - Initiator

Prior to submitting the transaction, the transaction initiator:

- **SHALL** correctly configure npm to point to the Guideline Repository
  registry URL;

- **MAY** authenticate to the Guideline Repository.

- **MAY** digitally sign each resource
  in the Implementation Guide leveraging the signing methods defined by the IHE DSG specification
  (<https://profiles.ihe.net/ITI/DSGj/Volume3/ch-5.10.html#5.10>) and abiding the use of Provenance resources as defined in Volume 3 of this Profile.

- **SHALL** execute npm-shrinkwrap.

- **MAY** digitally sign the CCG Deployment Package (IG) leveraging the relevant npm methods
  defined in Volume 3 of this profile.

Based on receipt of the transaction response, the transaction initiator:

- **MAY** create an audit record;

- Processes the response in accordance with its application and user
  interface logic.

#### 2:3.63.4.4 Trigger Events - Responder

The Guideline Repository responds to inbound Publish Guideline
transactions as they are received.

#### 2:3.63.4.5 Message Semantics - Responder

The transaction result returned by the Guideline Repository **SHALL**
correspond to the http-status-codes defined by NPM:
<https://www.npmjs.com/package/http-status-codes>.

| Result | Conditions |
|----|----|
| 200 | A successful submission will return 200 OK. |
| 417 | A CCG whose digital signatures do not match the signed content will return 417 EXPECTATION_FAILED |
| 500 | All other exception conditions will return 500 INTERNAL_SERVER_ERROR |
{:.grid}

#### 2:3.63.4.6 Expected Actions - Responder

Upon receiving a submitted transaction, the transaction responder:

- **MAY** confirm the transaction initiator’s authentication to the
  Guideline Repository and their authority to execute the submitted
  transaction;

- **SHALL**, for digitally signed content, verify the submitted content is from a *trusted* signer and that the submitted content's hash matches its signed hash.

- **SHALL** return a response code in accordance with the Message
  Semantics – Responder, defined above.

Based on the returned transaction response, the transaction responder:

- **MAY** create an audit record;

- Executes other processes in accordance with its application logic.

### 2:3.63.5 Security and Audit Considerations

This transaction does **not** convey personal health information (PHI).

FHIR-related security considerations **SHOULD** be adopted as described
in [IHE ITI Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations).

**Footnotes**

[^1]: The CRMI specification *draft* is referenced, but the reference
    will be updated to the STU2 version upon completion and balloting of
    this work item within the HL7 working group



