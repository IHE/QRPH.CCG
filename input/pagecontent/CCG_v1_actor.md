## Actors, Transactions, and Content Modules

The digital health ecosystem of CCG actors and transactions is designed
to satisfy four use cases:

1.  **UC-1 (Green)**: A person who is a guideline *author* uses a digital health
    tool (which plays the role of a **CCG Publisher** actor) to retrieve
    and edit an existing CCG or to create a brand-new CCG
    (L3)[<sup>1</sup>](CCG_v1_over.html#fn:1) artefact.
    Maybe she digitally signs the artefact (at the top level, or every
    recommendation). She then **publishes the CCG (L3) artefact** to
    a **CCG Repository** actor.

2.  **UC-2 (Yellow)**: A person who uses a digital health solution (e.g. a local
    EMR, playing the role of a **CCG Engine** actor) to execute
    CCGs **refreshes the local cache** of CCGs from a **CCG
    Repository** actor.

3.  **UC-3 (Red)**: A person who is a care provider leverages her digital
    health solution (e.g. an EMR) to **enroll a patient** in one or more
    CCG-supported, evidence-based care programmes.

4.  **UC-4 (Blue)**: A person who is a care provider has an ambulatory
    encounter with a patient who is enrolled in one or more
    CCG-supported care plans. During the encounter, she leverages her
    digital health solution (e.g. EMR, playing the role of a **Guideline
    Performer** actor) to invoke processing by a **Guideline
    Engine** actor to **concurrently execute the relevant CCGs.** She
    acts upon the recommendations to provide person-centric,
    guideline-adherent care.

The actors that participate in operationalizing the four colour-coded use cases are
pictorially illustrated by Figure 13.

<figure>
<img src="image13.png"
style="height: 100%; width: 100%; object-fit: contain" />
<figcaption><p>Figure 13 - Pictorial illustration of CCG
actors</p></figcaption>
</figure>

To operationalize use cases 1, 2 and 4, four *new* IHE actors are
defined in this Profile:

- **Guideline Publisher:** an actor that may find and retrieve an
  existing CCG from a Guideline Repository and can publish a CCG to a
  Guideline Repository.

- **Guideline Repository:** an actor that can receive and catalogue a
  submitted CCG and can respond to searches / requests for CCGs and
  return relevant lists / artefacts to a requester.

- **Guideline Performer:** an actor that can directly or indirectly
  interact with a human user, construct appropriate encounter-specific
  artefacts (e.g. a bundle containing relevant contextual and
  person-centric content), and manage the iterative invocation of
  \$apply operations that will concurrently process one or more relevant
  CCGs.

- **Guideline Engine:** an actor that can ingest a submitted bundle of
  relevant contextual and person-centric content and execute the
  processing logic needed to return the appropriate response(s)
  indicating what care actions are recommended.

Use case 3 is operationalized by two *existing* IHE actors defined in
the IHE Dynamic Care Planning (DCP) Profile[^1] published by IHE’s
Patient Care Coordination (PCC) technical committee:

- **Care Plan Contributor**: an actor that can search for and retrieve
  an existing Care Plan and can submit an updated Care Plan to a Care
  Plan Service.

- **Care Plan Service**: an actor that acts as a repository of Care
  Plans and which can respond to requests from Care Plan Contributors.

The conformance-testable behaviours of the Care Plan Contributor and
Care Plan Service actors are described in the IHE PCC Dynamic Care
Planning Profile and a description of these behaviours is not
replicated, here. 

The *new* CCG actors and their transactions are listed in Table 1 and further described in the following subsections.

| **Actor** | **Transaction** | **Optionality** |
|----|----|----|
| Guideline Publisher | QRPH-61: Search for Guidelines \[as originator\] | O |
|  | QRPH-62: Retrieve Guideline \[as originator\] | O |
|  | QRPH-63: Publish Guideline \[as originator\] | R Note-1 |
| Guideline Repository | QRPH-61: Search for Guidelines \[as responder\] | R |
|  | QRPH-62: Retrieve Guideline \[as responder\] | R |
| Guideline Performer | QRPH-64: Apply Guideline \[as originator\] | R Note-2 |
| Guideline Engine | QRPH-61: Search for Guidelines \[as originator\] | R |
|  | QRPH-62: Retrieve Guideline \[as originator\] | R Note-3 |
|  | QRPH-64: Apply Guideline \[as responder\] | R Note-2 |
{:.grid}

Table 1 - CCG Actors and Transactions

Note-1: there are options for digitally signed CCGs (see below).

Note-2: a Guideline Performer that is **grouped** with its own internal
Guideline Engine need not support transaction QRPH-64 as an originator nor as
a responder; it will be conformance tested as a single grouped entity
(see below). Otherwise QRPH-64 support **<u>is</u>** required by both actors.

Note-3: a Guideline Engine that supports the Trusted CCG option will
evaluate CCGs returned by transaction QRPH-62 to ensure the artefacts are
signed by trusted parties and that they have not been tampered with (see
below).

### Guideline Publisher

A Guideline Publisher actor is a digital health solution that may be
used to create or to edit CCG artefacts. Such solutions may be
human-usable authoring tools or batch-processing tools that convert
other artefacts (e.g. spreadsheets, DMN models, BPMN models, etc.) into
CCG-conformant artefacts. The internal processes by which this is done
are out of scope for this IHE Profile.

Normatively, a Guideline Publisher actor:

1.  **MAY** be able to submit a query to a Guideline Repository actor
    using QRPH-61: Search for Guideline \[as originator\]; and

2.  **MAY** be able to submit a query to a Guideline Repository actor
    using QRPH-62: Retrieve Guideline \[as originator\]; and

3.  **SHALL** be able to submit a well-formed CCG payload to a Guideline
    Repository actor using QRPH-63: Publish Guideline \[as originator\];

    1.  The well-formed CCG payload submitted using transaction QRPH-63
        **MAY** adhere to the stipulations of the Digitally Signed
        Folder option.

    2.  The well-formed CCG payload submitted using transaction QRPH-63
        **MAY** adhere to the stipulations of the Digitally Signed CARD
        option.

The content specifications in Volume-3 of the IHE CCG Profile define the
normative requirements for a well-formed CCG artefact.

### Guideline Repository

A Guideline Repository actor is a digital health solution that
catalogues submitted CCG artefacts and responds to queries for these
artefacts. Such repositories typically operate as online services in
front of a database management system (DBMS). Except for the normative
behaviours noted below, the internal processes of the repository are out
of scope for this IHE Profile.

Normatively, a Guideline Repository actor:

1.  **SHALL** be able to appropriately respond to a well-formed
    transaction QRPH-61: Search for Guideline \[as responder\]; and

2.  **SHALL** be able to appropriately respond to a well-formed
    transaction QRPH-62: Retrieve Guideline \[as responder\]; and

3.  **SHALL** be able to appropriately respond to the submission of a
    well-formed CCG payload by a Guideline Publisher actor using QRPH-63:
    Publish Guideline \[as responder\]; and

    1.  If the well-formed CCG payload adheres to the stipulations of
        the Digitally Signed Folder option – the Guideline Repository
        actor **SHALL** appropriately evaluate the payload and process
        it accordingly; and

    2.  If the well-formed CCG payload adheres to the stipulations of
        the Digitally Signed CARD option – the Guideline Repository
        actor **SHALL** appropriately evaluate the payload and process
        it accordingly.

The content specifications in Volume-3 of the IHE CCG Profile define the
normative requirements for a well-formed CCG artefact.

### Guideline Performer

A Guideline Performer actor is a digital health solution that helps
operationalize a guideline-based (CCG-supported) care workflow. Examples
of such a solution include electronic medical records (EMR) products,
consumer-facing or provider-facing digital health apps, or even
SMS-based chat services leveraging digital public infrastructure
platforms such as UNICEF’s RapidPro[^2]. Typically (but not always),
these solutions are able to connect to health information exchange (HIE)
infrastructure. Often, the Guideline Performer can leverage the HIE to
obtain up-to-date health information about the subject of care and to
update the HIE with the results of the care encounter, once it is
completed.

As a practical matter, it is anticipated that a Guideline Performer
actor will *often* be grouped with a Care Plan Contributor actor, and
potentially also with a Care Plan Service actor. Such an actor grouping
will enable a digital health solution to associate one or more CCGs with
a subject of care as well as to leverage the relevant CCGs in supporting
guideline-based care workflows.

Some Guideline Performer actors will be grouped with a Guideline Engine
as part of a single holistic solution. In other configurations, the
Guideline Performer will call the “engine” as an external service.
Except for the normative behaviours noted below, the internal processes
of the Guideline Performer are out of scope for this IHE Profile.

During a care encounter, the Guideline Performer:

1.  **SHALL** establish the relevant care context, including the
    uniquely identified care subject, the care provider and care
    location (if applicable), and the initial version of the care
    subject’s person-centric health data;

2.  **SHALL** iteratively loop until there are zero CCG-informed
    recommendations that remain to be actioned. In this loop, it is
    expected the following processes will be executed:

    1.  User inputs will be captured to operationalize each relevant CCG
        CARD recommendation or to log the reason code for not
        operationalizing the recommendation;

    2.  The relevant care context data will be updated to reflect the
        user inputs from step (a);

    3.  The relevant care context data will be leveraged by a Guideline
        Engine, either internally or via an external call using
        transaction QRPH-64: Apply Guideline \[as originator\], to generate
        and return a set of CCG CARD-based recommendations.

3.  **SHALL** persist the updated care context data, reflective of the
    activities carried out during the processing of the iterative loop
    (2), along with appropriate audit log records.

The content specifications related to care context and related to
person-centric health data are defined in Volume-3 of the IHE CCG
Profile, as are the calling conventions and data inputs for the QRPH-64:
Apply Guideline transaction. An implementing jurisdiction (via its
relevant IHE Deployment Committee) may contextualize these
specifications and, where applicable, such contextualizations are
documented in Volume-4 of this IHE Profile.

### Guideline Engine

A Guideline Engine actor is a digital health solution that, based on a
supplied input data bundle, evaluates a set of one or more relevant CCGs
and returns the care recommendations that are applicable, given the
inputs. Guideline Engine actors must be able to query for, retrieve, and
ingest CCGs that have been published to a Guideline Repository. To
protect against CCGs being used as an attack surface, a Guideline Engine
may support an option to only ingest and operationalize CCGs that have
been digitally signed by trusted sources.

For the purposes of this FHIR-based CCG Profile, a Guideline Engine is
an actor that correctly executes the HL7™ FHIR® **CPG PlanDefinition
Apply** operation[^3] as defined by the CPG-on-FHIR Implementation
Guide. Guideline Engine solutions may be implemented as an add-on to a
FHIR® server or the server may natively operationalize support for this
operation. There are many deployment options. For example, an engine
might be operationalized by a software developer kit (SDK) or it might
be a hosted online service operated by a Ministry of Health. As noted
above, some Guideline Performer actors may be grouped with a Guideline
Engine as part of a single software solution. Except for the normative
behaviours noted below, the internal software processes of the Guideline
Engine are out of scope for this IHE Profile.

Normatively, a Guideline Engine actor:

1.  **SHALL** be able to submit a query to a Guideline Repository actor
    using QRPH-61: Search for Guideline \[as originator\]; and

2.  **SHALL** be able to submit a query to a Guideline Repository actor
    using QRPH-62: Retrieve Guideline \[as originator\] and ingest the
    resulting CCG packages, if applicable; and

3.  **MAY**, if the Trusted CCG option is supported, ensure for
    digitally signed artefacts returned via transaction QRPH-62:

    1.  The signing authorities are trusted; and

    2.  The digital signatures match the relevant hashes on signed
        content.

4.  **SHALL** support execution of the CPG PlanDefinition Apply
    operation with the input (“IN”) parameters defined for transaction
    Transaction QRPH-64: Apply Guideline.

5.  **MAY** support execution of the CPG PlanDefinition Apply operation
    with any other input (“IN”) parameters defined in the operation’s
    specification.

The content specifications related to care context and related to
person-centric health data are defined in Volume-3 of the IHE CCG
Profile, as are the calling conventions and data inputs for the QRPH-64:
Apply Guideline transaction. An implementing jurisdiction (via its
relevant IHE Deployment Committee) may contextualize these
specifications and, where applicable, such contextualizations are
documented in Volume-4 of this IHE Profile.

## Options

The Publish Guideline transaction includes two options for digitally
signed CCGs:

1.  Digitally Signed Folder

2.  Digitally Signed CARD

The Apply Guideline transaction includes a Trusted CCG option.

### Digitally Signed Folder

Guideline Publisher actors supporting this option will include a single
digital signature that applies to the entire CCG. This signature would
be applied to the whole “Folder” (note the folders-and-CARDS metaphor
described in section Folder-and-CARDs Metaphor).

A Guideline Repository shall support both levels of digital signature on
the Publish Guidelines transaction: at the Folder level and at the CARD
level. If a digital signature has been included at the Folder level, and
if the signature does not match the content hash, an exception will be
returned to the submitter and the content will not be persisted to the
repository.

### Digitally Signed CARD

Guideline Publisher actors supporting this option shall also support the
Digitally Signed Folder option. In addition to including a digital
signature on the Folder, a digital signature will also be included for
each CARD (note the folders-and-CARDS metaphor described in section
Folder-and-CARDs Metaphor).

A Guideline Repository shall support both levels of digital signature on
the Publish Guidelines transaction: at the Folder level and at the CARD
level. If a digital signature has been included at the Folder level, and
if the signature does not match the content hash, an exception will be
returned to the submitter and the content will not be persisted to the
repository. If a digital signature has been submitted at the CARD level,
and if the CARD signature does not match its hash on any CARD included
in the CCG submission, an exception will be returned to the submitter
and the content will not be persisted to the repository.

### Trusted CCG

A Guideline Engine actor supporting the Trusted CCG option will verify
that each CCG CARD is signed by a trusted entity and that the digital
signature on every CARD matches the CARD’s hash. If the CARD’s digital
signature is not in the trust list, or if the CARD’s hash doesn’t match
the digital signature, then an exception will be raised and any CCG
Folder containing the relevant CARD will be made inactive until the
issue is resolved.

For clarity: a Guideline Engine actor supporting the Trusted CCG option
will flag an *unsigned* CARD as an exception.

## Actor groupings

### Groupings related to Security and Auditing

To support the trusted execution of transactions within a regulated
healthcare domain, all actors in this specification are implicitly
grouped with IHE’s Secure Application[^4] and Time Client[^5] actors and
the Authorization Client[^6] actor.

### Optional Groupings related to Care Context and Person-Centric Data

The Guideline Performer actor **SHALL** be able to:

- Unambiguously identify the care provider and the care site, and access
  the attributes associated with these that may be leveraged in the
  conditional logic of a CCG recommendation;

- Unambiguously identify the care subject, and access related
  demographic attributes;

- Retrieve and/or construct a FHIR-based health summary document for the
  care subject, based on the IHE International Patient Summary (IPS)
  content specification and the “FHIR Complete” option defined in that
  spec. \[NOTE: this requirement is subject to jurisdictional
  contextualizations that may be defined in Volume-4 of the IHE CCG
  Profile.\]

To support these requirements, the Guideline Performer actor **MAY** be
grouped with IHE’s Care Services Selective Consumer[^7], Patient
Demographics Consumer[^8], and Content Creator (IPS)[^9] actors, and
support IPS-related transaction processing behaviours described in the
ITI Sharing IPS (sIPS) Profile[^10].

### Implications of Digital Health Solutions composed of Multiple Grouped Actors

As noted in the *Actors, Transactions, and Content Modules* section, a
*single* digital health solution may choose to incorporate the
functionality of *multiple* actors. Where this is the case, the solution
will not be conformance-tested against transactions *internal* to its
operation, but rather only against those transactions that it executes
with *external* actors.

A short set of particularly likely actor groupings is discussed in the
following sections.

#### Guideline Performer \| Care Plan Contributor \| Care Plan Service

An electronic medical records (EMR) solution is likely to be capable of
creating or updating a person-centric care plan for a subject. A digital
health solution that is claiming conformance as a Guideline Performer
actor will be able to claim conformance as a **grouped** Care Plan
Contributor actor and Care Plan Service actor if it can demonstrate that
it is able to achieve State-C and State-D as defined in the Use Cases
section of this Profile (Figures 7 and 8).

#### Guideline Performer \| Guideline Engine

Some digital health solutions may leverage software development kit
(SDK) or add-on products to operationalize CCG-processing capabilities
as part of their native functionality. A digital health solution that is
claiming conformance as a Guideline Performer actor will be able to
claim conformance as a **grouped** Guideline Engine actor if it can
demonstrate that it is able to correctly achieve State-E from a known
starting point of State-D and State-B (as illustrated by Figure 8 in the
Use Cases section of this Profile).

## Security considerations

All person-centric health information is a potential target for hackers.
In recent years, the security of multiple hospital information systems,
across many countries, has been compromised[^11]. CCGs, however,
represent a particularly nefarious potential attack surface:

- Because their purpose is to inform the course of patient care, bad
  actors who can alter the recommendations in a CCG can potentially
  impact the care pathways of entire populations, or of targeted
  subpopulations.

- Where CCG adherence is a component of provider payment schemes,
  “spoofing” the CCG’s reportable indicators and/or its audit trails
  could be a potential instrument of financial fraud.

Important mitigations against CCG tampering are the Digitally Signed
Folder, Digitally Signed CARD and Trusted CCG options (see detailed
descriptions in the Options section). These mitigations rely on the
ability to establish a digital certificate chain of trust.[^12] Public
Key Infrastructure (PKI) is an effective tool for operationalizing such
a chain of trust, but establishing and maintaining a PKI is nontrivial.
The granularity of signing at the CARD level (each recommendation) vs at
the Folder level (entire CCG) can support initiatives that encourage
organizations to be evolving recommendations as new evidence emerges.
The US CDC’s “living guidelines”[^13] initiative, for example, would be
well served by digital signatures at the CARD level.

Implementation architectures may also be employed to afford a credible
degree of protection. Some jurisdictions have deployed clinical decision
support engines as hosted services. With such an approach, the security
practices of the host would defend the integrity of both the CCGs and
their processor.

Another important security aspect relates to CCG Engines’ audit records.
It should be expected that such records could be of medico-legal
importance. In a malpractice case, for example, such audit records are a
potential source of evidence. To be trusted, these records should be
demonstrably *faithful* and *tamper-proof*. Of note – detailed audit
logs are also a useful instrument of conformance-testing. Since passing
conformance tests may be a requirement of market entry – this also
augers for the importance of credible audit logging.

**Footnotes**

[^1]: <https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_DCP.pdf>

[^2]: <https://www.unicef.org/innovation/rapidpro>

[^3]: <https://hl7.org/fhir/uv/cpg/2024Jan/OperationDefinition-cpg-plandefinition-apply.html>

[^4]: <https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html>

[^5]: <https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html>

[^6]: <https://profiles.ihe.net/ITI/IUA/#341-iua-actors-transactions-and-content-modules>

[^7]: <https://profiles.ihe.net/ITI/mCSD/volume-1.html#1461-mcsd-actors-transactions-and-content-modules>

[^8]: <https://profiles.ihe.net/ITI/PMIR/volume-1.html#1491-pmir-actors-transactions-and-content-modules>

[^9]: <https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_IPS.pdf>

[^10]: <https://profiles.ihe.net/ITI/sIPS/volume-1.html#actors-and-transactions>

[^11]: <https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(24)01074-2/fulltext>

[^12]: <https://en.wikipedia.org/wiki/Certificate_authority>

[^13]: <https://www.hcinnovationgroup.com/interoperability-hie/fast-healthcare-interoperability-resources-fhir/news/53071423/cdc-leads-initiative-to-develop-computable-clinical-practice-guidelines>
