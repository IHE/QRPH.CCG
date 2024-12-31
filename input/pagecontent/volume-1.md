
# Volume-1: Business Description

## Introduction

In one or two succinct sentences, introduce the use case workflow(s).

The IHE Computable Care Guidelines (CCG) specification describes the
following key things:

1.  A description of the actors that would participate in an end-to-end
    CCG ecosystem. This includes the actors (and transactions) involved
    in publishing CCGs; refreshing a CCG "engine" with updated / new CCG
    artefacts; associating one or more CCGs with a care subject; and
    leveraging a care subject's relevant CCGs to inform the activities
    of a guideline-adherent care encounter.

2.  A normative FHIR-based grammar for expressing guideline-based care
    recommendations in such a way that they can be ingested by and
    operationalized by a digital health software solution (a CCG
    "engine").

3.  A normative pattern for processing CCG recommendations that will
    ensure multiple CCGs can be concurrently executed and that all
    relevant recommendations will be proposed to the end-user in support
    of their care decision-making.

4.  A family of conformance-test assertions (expressed using the Gherkin
    language) that may be employed to confirm: (a) that a CCG artefact
    is well-formed; and (b) that the digital health solutions playing
    actor roles process CCG-related artefacts in accordance with this
    specification.

The CCG specification is designed to satisfy four use cases:

1.  **UC-1**: A person who is a CCG Author retrieves and edits an
    existing CCG or creates a brand-new CCG (L3)[^1] artefact. Maybe she
    digitally signs the artefact (at the top level, or every
    recommendation). She then **publishes her CCG (L3) artefact** to a
    CCG repository.

2.  **UC-2**: A person who uses a digital health solution (e.g. her
    local EMR) to execute CCGs **refreshes the local cache** of CCGs
    from a CCG repository.

3.  **UC-3**: A person who is a care provider leverages her digital
    health solution (e.g. EMR) to **enroll a patient** in one or more
    CCG-supported, evidence-based care programmes.

4.  **UC-4**: A person who is a care provider sees her multi-condition
    patient. During the **ambulatory encounter**, she leverages her EMR
    to **concurrently execute multiple CCGs** and act upon the
    recommendations to provide person-centric, guideline-adherent care.

The colour-coding of the use cases refers to the pictorial
representation shown in Figure 2.

## Actors, Transactions, and Content Modules

Diagrammatically indicate the normative actors who will participate in
interoperable content exchange and the transactions that will
operationalize this exchange. In a table, list these actor-transaction
pairs and their optionality (required vs optional).

The actors that participate in operationalizing the four use cases are
pictorially illustrated by Figure 2.

![](media/image4.emf){width="6.5in" height="2.922222222222222in"}

\- Pictorial illustration of CCG actors

If possible -- map the business definitions of actors to *existing* IHE
actors. Where this is not possible, identify the attributes of the actor
with enough precision that it can inform future work by an IHE technical
committee to formally define a new actor.

To operationalize use cases 1, 2 and 4, four *new* IHE actors are
defined:

-   **Guideline Publisher:** an actor that may find and retrieve an
    existing CCG from a Guideline Repository and can publish a CCG to a
    Guideline Repository.

-   **Guideline Repository:** an actor that can receive and catalogue a
    submitted CCG and can respond to searches / requests for CCGs and
    return relevant lists / artefacts to a requester.

-   **Guideline Performer:** an actor that can directly or indirectly
    interact with a human user, construct appropriate encounter-specific
    artefacts (e.g. a bundle containing relevant contextual and
    person-centric content), and manage the iterative invocation of
    \$apply operations that will concurrently process one or more
    relevant CCGs.

-   **Guideline** **Engine:** an actor that can ingest a submitted
    bundle of relevant contextual and person-centric content, and
    execute the processing logic needed to return the appropriate
    response(s) indicating what care actions are recommended.

Use case 3 is operationalized by two existing IHE actors defined in the
IHE Dynamic Care Planning (DCP) Profile[^2] published by IHE's Patient
Care Coordination (PCC) technical committee:

-   **Care Plan Contributor**: an actor that can search for and retrieve
    an existing Care Plan and can submit an updated Care Plan to a Care
    Plan Service.

-   **Care Plan Service**: an actor that acts as a repository of Care
    Plans and which can respond to requests from Care Plan Contributors.

The conformance-testable behaviours of the Care Plan Contributor and
Care Plan Service actors are described in the IHE PCC Dynamic Care
Planning Profile and a description of these behaviours is not
replicated, here. The *new* CCG actors are further described in the
following subsections.

### Guideline Publisher

A Guideline Publisher actor is a digital health solution that may be
used to create or to edit CCG artefacts. Such solutions may be
human-usable authoring tools or batch-processing tools that convert
other artefacts (e.g. spreadsheets, DMN models, BPMN models, etc.) into
CCG-conformant artefacts. The internal processes by which this is done
are out of scope for this IHE Profile.

Normatively, a Guideline Publisher actor:

1.  **MAY** be able to submit a query to a Guideline Repository actor
    using X1: Search for Guideline \[as originator\]; and

2.  **MAY** be able to submit a query to a Guideline Repository actor
    using X2: Retrieve Guideline \[as originator\]; and

3.  **SHALL** be able to submit a well-formed CCG payload to a Guideline
    Repository actor using X3: Publish Guideline \[as originator\];

    a.  The well-formed CCG payload submitted using transaction X3
        **MAY** adhere to the stipulations of the Digitally Signed
        Folder option.

    b.  The well-formed CCG payload submitted using transaction X3
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
    transaction X1: Search for Guideline \[as responder\]; and

2.  **SHALL** be able to appropriately respond to a well-formed
    transaction X2: Retrieve Guideline \[as responder\]; and

3.  **SHALL** be able to appropriately respond to the submission of a
    well-formed CCG payload by a Guideline Publisher actor using X3:
    Publish Guideline \[as responder\]; and

    a.  If the well-formed CCG payload adheres to the stipulations of
        the Digitally Signed Folder option -- the Guideline Repository
        actor **SHALL** appropriately evaluate the payload and process
        it accordingly; and

    b.  If the well-formed CCG payload adheres to the stipulations of
        the Digitally Signed CARD option -- the Guideline Repository
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
platforms such as UNICEF's RapidPro[^3]. Typically (but not always),
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
Guideline Performer will call the "engine" as an external service.
Except for the normative behaviours noted below, the internal processes
of the Guideline Performer are out of scope for this IHE Profile.

During a care encounter, the Guideline Performer:

1.  **SHALL** establish the relevant care context, including the
    uniquely identified care subject, the care provider and care
    location (if applicable), and the initial version of the care
    subject's person-centric health data;

2.  **SHALL** iteratively loop until there are zero CCG-informed
    recommendations that remain to be actioned. In this loop, it is
    expected the following processes will be executed:

    a.  User inputs will be captured to operationalize each relevant CCG
        CARD recommendation or to log the reason code for not
        operationalizing the recommendation;

    b.  The relevant care context data will be updated to reflect the
        user inputs from step (a);

    c.  The relevant care context data will be leveraged by a Guideline
        Engine, either internally or via an external call using
        transaction X4: Apply Guideline \[as originator\], to generate
        and return a set of CCG CARD-based recommendations.

3.  **SHALL** persist the updated care context data, reflective of the
    activities carried out during the processing of the iterative loop
    (2), along with appropriate audit log records.

The content specifications related to care context and related to
person-centric health data are defined in Volume-3 of the IHE CCG
Profile, as are the calling conventions and data inputs for the X4:
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
an actor that correctly executes the HL7â„¢ FHIRÂ® **CPG PlanDefinition
Apply** operation[^4] as defined by the CPG-on-FHIR Implementation
Guide. Guideline Engine solutions may be implemented as an add-on to a
FHIRÂ® server or the server may natively operationalize support for this
operation. There are many deployment options. For example, an engine
might be operationalized by a software developer kit (SDK) or it might
be a hosted online service operated by a Ministry of Health. As noted
above, some Guideline Performer actors may be grouped with a Guideline
Engine as part of a single software solution. Except for the normative
behaviours noted below, the internal software processes of the Guideline
Engine are out of scope for this IHE Profile.

Normatively, a Guideline Engine actor:

1.  **SHALL** be able to submit a query to a Guideline Repository actor
    using X1: Search for Guideline \[as originator\]; and

2.  **SHALL** be able to submit a query to a Guideline Repository actor
    using X2: Retrieve Guideline \[as originator\] and ingest the
    resulting CCG packages, if applicable; and

3.  **MAY**, if the Trusted CCG option is supported, ensure for
    digitally signed artefacts returned via transaction X2:

    a.  The signing authorities are trusted; and

    b.  The digital signatures match the relevant hashes on signed
        content.

4.  **SHALL** support execution of the CPG PlanDefinition Apply
    operation with the input ("IN") parameters defined for transaction
    Transaction X4: Apply Guideline.

5.  **MAY** support execution of the CPG PlanDefinition Apply operation
    with any other input ("IN") parameters defined in the operation's
    specification.

The content specifications related to care context and related to
person-centric health data are defined in Volume-3 of the IHE CCG
Profile, as are the calling conventions and data inputs for the X4:
Apply Guideline transaction. An implementing jurisdiction (via its
relevant IHE Deployment Committee) may contextualize these
specifications and, where applicable, such contextualizations are
documented in Volume-4 of this IHE Profile.

If possible -- map the business definitions of content exchanges to
*existing* IHE transactions. Where this is not possible, identify the
attributes of the transaction with enough precision that it can inform
future work by an IHE technical committee to formally define a new
transaction.

The CCG actors and their transactions are listed in Table 1.

  -------------------------------------------------------------------------------
  **Actor**               **Transaction**                       **Optionality**
  ----------------------- ------------------------------------- -----------------
  Guideline Publisher     X1: Search for Guidelines \[as        O
                          originator\]                          

                          X2: Retrieve Guideline \[as           O
                          originator\]                          

                          X3: Publish Guideline \[as            R Note-1
                          originator\]                          

  Guideline Repository    X1: Search for Guidelines \[as        R
                          responder\]                           

                          X2: Retrieve Guideline \[as           R
                          responder\]                           

  Guideline Performer     X4: Apply Guideline \[as originator\] R Note-2

  Guideline Engine        X1: Search for Guidelines \[as        R
                          originator\]                          

                          X2: Retrieve Guideline \[as           R Note-3
                          originator\]                          

                          X4: Apply Guideline \[as responder\]  R Note-2
  -------------------------------------------------------------------------------

  : - CCG Actors and Transactions

Note-1: there are options for digitally signed CCGs (see below).

Note-2: a Guideline Performer that is **grouped** with its own internal
Guideline Engine need not support transaction X4 as an originator nor as
a responder; it will be conformance tested as a single grouped entity
(see below). Otherwise X4 support **[is]{.underline}** required by both
actors.

Note-3: a Guideline Engine that supports the Trusted CCG option will
evaluate CCGs returned by transaction X2 to ensure the artefacts are
signed by trusted parties and that they have not been tampered with (see
below).

## Options

In narrative (business) terms, generically describe the options that
shall be or may be supported by actors. Options can have a big impact on
implementability and on interoperability. For example -- perhaps two
distinct transaction content options are possible (e.g. CDA or FHIR).
Where it is *mandatory* to support one format (e.g. CDA), but FHIR *may*
be supported -- then only **one** option (FHIR) need be defined.
However, if there are two possibilities, and at least one **must** be
supported, then **both** options must be defined, and it is mandatory
that an actor must support **at least one** of them.

The Publish Guideline transaction includes two options for digitally
signed CCGs:

1.  Digitally Signed Folder

2.  Digitally Signed CARD

The Apply Guideline transaction includes a Trusted CCG option.

### Digitally Signed Folder

Guideline Publisher actors supporting this option will include a single
digital signature that applies to the entire CCG. This signature would
be applied to the whole "Folder" (note the folders-and-CARDS metaphor
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
signature on every CARD matches the CARD's hash. If the CARD's digital
signature is not in the trust list, or if the CARD's hash doesn't match
the digital signature, then an exception will be raised and any CCG
Folder containing the relevant CARD will be made inactive until the
issue is resolved.

For clarity: a Guideline Engine actor supporting the Trusted CCG option
will flag an *unsigned* CARD as an exception.

## Actor groupings

In narrative (business) terms, generically describe necessary attributes
(e.g. such as the ability for an actor to authenticate itself) that will
be provided by *other* actors via mandatory "groupings".

### Groupings related to Security and Auditing

To support the trusted execution of transactions within a regulated
healthcare domain, all actors in this specification are implicitly
grouped with IHE's Secure Application[^5] and Time Client[^6] actors and
the Authorization Client[^7] actor.

### Optional Groupings related to Care Context and Person-Centric Data

The Guideline Performer actor **SHALL** be able to:

-   Unambiguously identify the care provider and the care site, and
    access the attributes associated with these that may be leveraged in
    the conditional logic of a CCG recommendation;

-   Unambiguously identify the care subject, and access related
    demographic attributes;

-   Retrieve and/or construct a FHIR-based health summary document for
    the care subject, based on the IHE International Patient Summary
    (IPS) content specification and the "FHIR Complete" option defined
    in that spec. \[NOTE: this requirement is subject to jurisdictional
    contextualizations that may be defined in Volume-4 of the IHE CCG
    Profile.\]

To support these requirements, the Guideline Performer actor **MAY** be
grouped with IHE's Care Services Selective Consumer[^8], Patient
Demographics Consumer[^9], and Content Creator (IPS)[^10] actors, and
support IPS-related transaction processing behaviours described in the
ITI Sharing IPS (sIPS) Profile[^11].

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
it is able to achieve State-C (Figure 9) and State-D (Figure 10).

#### Guideline Performer \| Guideline Engine

Some digital health solutions may leverage software development kit
(SDK) or add-on products to operationalize CCG-processing capabilities
as part of their native functionality. A digital health solution that is
claiming conformance as a Guideline Performer actor will be able to
claim conformance as a **grouped** Guideline Engine actor if it can
demonstrate that it is able to correctly achieve State-E from a known
starting point of State-D and State-B (Figure 10).

## Overview 

### Background

In the interests of supporting better understanding by a non-technical
reader, it may be necessary to provide background context for the use
case. This can include an overview of relevant standards or of the
motivations for the use case ("what problem is being solved, here?").
Where such narrative content is needed, it is included in this section.

Countries are increasingly utilizing digital technology that leverages
person-centric health data to facilitate scale-up of public health
interventions; to improve client-level care; and to ensure
accountability at all levels of the health system. However, the
transformative value of these digital systems has not yet been fully
realized.

<figure>
<img src="media/image5.emf" style="width:4.39505in;height:2.43371in" />
<figcaption><p>- Care Delivery in the "Green" Zone</p></figcaption>
</figure>

We are better and better able to collect information about **what
happened** on a client's health journey. This can be illustrated,
graphically, by the yellow circle in Figure 3. However, we do not yet
(today) have a way to broadly share a machine-processable description of
**what *should* happen** (the blue circle in Figure 3) and to leverage
digital health investments to **systemically close the "know-do gap"**
between what *was* done and what *should have been* done (illustrated by
the "**green zone**" in the figure). A machine-processable description
of what [should]{.underline} happen could be called a ***computable***
care guideline, or **CCG**.

Closing the know-do gap will enable us to reap the significant health
outcome improvements that accrue from stronger guideline adherence. As
may be noted in Figure 3, evidence shows that errors of omission greatly
outnumber errors of commission. These are difficult errors to catch and
to address. But by describing what *should* happen, CCGs afford us way
to treat the absence of a signal as a signal.

**Broadly scaling CCGs**, however, faces a set of key challenges:

-   To support patients with **co-morbidities**, multiple CCG artefacts
    must be **concurrently** executable.

-   To ensure **interoperability** across entire care networks, CCGs
    must be based on a **common data model** and these data must be
    **readily available** at the point of service.

-   To ensure **patient safety**, CCG actors must ensure that **all**
    relevant care recommendations are actioned during a care encounter;
    nothing can be **inadvertently missed** during concurrent execution
    of multiple CCGs.

-   To meet **adherence** to relevant software-as-a-medical-device
    (**SaMD**) regulations, CCG artefacts and CCG processing engines
    must be **conformance-testable**.

Progress **has** been made over the last five years as HL7 and IHE have
collaborated on the CCG Gemini Project. In this timeframe, the **HL7
CPG-on-FHIR IG**[^12] (Implementation Guide) has been developed and is
completing its second ballot. This IG describes how a CCG may be defined
using the FHIR standard. The role of the proposed IHE CCG Profile is to
leverage this specification and to **constrain it to address the
challenges**, as noted above, associated with broadly scaling
conformance-testable, concurrently executable CCGs in both OECD[^13] and
LMIC[^14] contexts.

Improving the care continuity and care quality, especially for co-morbid
patients with multiple chronic conditions, addresses a **big and
expensive problem**. In Canada, for example, 73% of persons over 65
years of age suffer from at least one chronic condition[^15], and 30% of
Canadians over 35 years of age suffer two or more conditions (note
Figure 4). It is estimated the burden of chronic disease represents a
cost to the Canadian economy of more than **\$190 billion (CAD)**
annually[^16] and that the direct costs of chronic disease management
account for **58% of Canada's total healthcare spend**.[^17]

<figure>
<img src="media/image6.png" style="width:3.88537in;height:3.15686in"
alt="A graph of a number of people with numbers and a number of people with numbers Description automatically generated with medium confidence" />
<figcaption><p>- Co-morbidities in Canadians over 35 years of
age</p></figcaption>
</figure>

"Health care in all global settings today suffers from **high levels of
defects in quality** across many domains, and this poor-quality care
causes ongoing damage to human health. Hospitalizations in low- and
middle-income countries (LMICs) lead to **134 million adverse events
each year**, and these adverse events contribute to more than **2.5
million deaths annually**. More than **830 million people** with a
diagnosed noncommunicable disease (NCD) are **not** being treated, and
more than **4 million avoidable quality-related deaths** each year are
attributable to ineffective care for NCDs. In total, between 5.7 and 8.4
million deaths occur annually from poor quality of care in LMICs for the
selected set of conditions the committee analyzed... which represents
between 10 and 15 percent of the total deaths in LMICs reported by the
World Health Organization (WHO) in 2015. For some conditions, deaths due
to **poor quality contribute to more than half of overall
deaths**."[^18]

A 2018 care quality report was jointly published by the OECD, WHO, and
World Bank[^19]. Among the report's findings:

-   **One in ten** patients is **harmed** during medical treatment in
    high income countries.

-   Health care workers in seven low- and middle-income African
    countries were only able to make **accurate diagnoses one third to
    three quarters of the time**, and clinical guidelines for common
    conditions were followed **less than 45 percent of the time** on
    average.

-   Research in eight high-mortality countries in the Caribbean and
    Africa found that effective, quality maternal and child health
    services are far less prevalent than suggested by just looking at
    access to services. For example, just **28 percent** of antenatal
    care, **26 percent** of family planning services and **21 percent**
    of sick-child care across these countries qualified as
    '**effective**.'

-   Around **15 percent** of hospital expenditure in high-income
    countries is due to **mistakes** in care or patients being infected
    while in hospitals.

As a standards **profiling** organization, IHE is uniquely positioned to
develop an implementable, conformance-testable specification that
addresses these challenges. The successful work of the underlying HL7
CPG-on-FHIR IG can be **constrained** (and simplified) to **address the
key challenges** around concurrent execution, broad implementability,
and conformance-testability.

To frame how this constraining might be accomplished, the approach of
this IHE CCG Profile is influenced by the **US ASTP/ONC's guidance Â§
170.315Â (b)(11)**[^20] regarding the methods for conformance-testing
digital health solutions that provide Evidence-based Decision Support
Interventions \[NOTE: this guidance was current as of October 2024\].
Sections (iii)(A) and (iv)(A) of this ONC guidance are shown in Figure
5. From the figure it may be noted that evidence-based CCGs shall
leverage a **constrained common data set** defined in the US Core Data
for Interoperability[^21] specification. It can also be noted that,
under this ONC regulation, a software solution provider must provide an
attestation related to the source content leveraged to construct the
CCG, including bibliographic citations of the clinical research of
narrative (L1) care guidelines that inform the CCG's recommendations.

<figure>
<img src="media/image7.png" style="width:4.70822in;height:2.98502in"
alt="A screenshot of a computer Description automatically generated" />
<figcaption><p>- US ONC regulations related to Evidence-based
DSI</p></figcaption>
</figure>

In an analogous way, the IHE CCG Profile **constrains** the content that
may be employed to define CCG logic. In the present specification, a
slightly more flexible approach is favoured than that used by ASTP/ONC:

-   CCG logic based on **person-centric content** is defined in terms of
    the IHE International Patient Summary (**IPS**) Profile (*Complete*
    Option). The Complete Option stipulates that *optional* sections of
    an IPS document be instead treated as "required if known". In this
    way, properly-coded content that is collected as part of a
    CCG-supported care encounter will *always* be available to drive
    care logic during any *subsequent* encounter. This creates a
    **virtuous cycle** of ever-improving person-centric health data.

-   To support evidence-based decision-making that may be driven by the
    **care context** (facility's geography, available services,
    provider, provider scope of practice, etc.), the FHIR **Encounter**
    resource and the content specified by the IHE mobile Care Services
    Discovery (**mCSD)** Profile may *also* be employed to drive CCG
    care logic.

The IHE CCG Profile includes a **grammar** specification regarding how a
CCG is to be constructed and what references and citations must be
included. This CCG grammar has also informed by the ONC regulations.
Importantly, a CCG artefact that is to be made available as a **global
public good** shall be defined in terms of the Profile's normative
**global** content specifications. It is to be expected that CCG
artefacts intended for deployment in **domestic** contexts will leverage
a grammar that defines care logic based on a domestic patient summary
specification (e.g. for the USA: UCSDI, for Canada: PS:CA, for Europe:
the European Patient Summary, etc.) rather than on IPS.
Contextualizations of the IHE CCG Profile grammar shall be defined in a
relevant **Volume-4** section of the IHE CCG Profile.

As a practical matter -- it is anticipated that CCG processing workflows
would be best served by on-demand generation of IPS documents. Such a
capability is well supported by many currently available FHIR server
products. It is also noteworthy that many countries (Canada, Sri Lanka,
Botswana, New Zealand, etc.) and many multilateral organizations (Asia
eHealth Information Network[^22], OpenHIE Community[^23], etc.) have
adopted or advocated for the adoption of IPS as the basis for a national
person-centric health data sharing infrastructure.

### Folder-and-CARDs Metaphor 

To support the concurrent execution of multiple CCGs, a Folder-and-CARDs
metaphor is adopted by this IHE CCG Profile. Notionally, one can think
of a CCG as a set of care recommendations where each recommendation is
described by a **CARD**. This metaphor is illustrated in Figure 6.

<figure>
<img src="media/image8.emf" style="width:5.05512in;height:2.07087in" />
<figcaption><p>- Folder-and-CARDs Metaphor</p></figcaption>
</figure>

Here, CARD is an acronym. The recommendation is ***applicable*** when a
set of defined **[C]{.underline}**onditions are met. The recommendation
describes an **[A]{.underline}**ction that should be taken. The list of
possible actions is defined as a subset of the ActivityDefinition
"verbs"[^24] described in the CPG-on-FHIR specification. When the action
is ***taken***, there is **[R]{.underline}**esulting
**[D]{.underline}**ata. All the recommendations for a particular care
guideline are stored in that guideline's **Folder**. For example, the
set of CARDs related to evidence-based Diabetes care would be contained
a Diabetes Folder.

In practical terms, this approach supports simplifying both the
authoring of CCGs and their execution. These simplifications of the
more-flexible CPG-on-FHIR specification may be summarized as follows:

-   A uniquely identified CARD will be independently defined for each
    guideline-based recommendation; this definition will be expressed
    using a FHIR PlanDefinition resource containing a **single**
    ActivityDefintion resource (from the constrained list of CARD
    "types").

-   The CARD's PlanDefinition resource will reference the Condition
    statement(s) that must evaluate to TRUE for the CARD to be
    **applicable**. The condition statements' **logic** must be
    expressed in terms of the person-centric and care context data model
    defined by this IHE CCG Profile. NOTE: to ensure patient-safe
    execution, *Trigger definitions are ignored during CCG processing*.

-   CARDs' condition statements must be formulated in such a way that
    each CARD is **idempotent** and such that the CARD will evaluate to
    TRUE only when it is **uniquely applicable**. A range of equivalent
    but exclusive choices, for example, should be expressed using a
    *single* Collect Information (Questionnaire) CARD that captures the
    selected option.

-   The CARD's **resulting data** must *also* be expressed in terms of
    the person-centric and care context data model defined by this IHE
    CCG Profile.

-   The minimum data set (MDS) for each CCG will be defined by a set of
    Collect Information (Questionnaire) CARDs with **one** CARD for each
    data element.

-   A CCG **Folder** is defined using a FHIR PlanDefinition resource.
    This PlanDefinition will act as a container and reference the full
    set of relevant CARDs.

The set of **12 CARD *types*** defined by the IHE CCG Profile is listed
below:

1.  **Provide Information** -- provide information, counselling, or
    instructions **to** the patient (CommunicationRequest)

2.  **Collect Information** -- capture information **about** the patient
    (using Questionnaire-QuestionnaireResponse pairs)

3.  **Request a Service (Lab Order)** -- create a laboratory / pathology
    ServiceRequest

4.  **Request a Service (Radiology Order)** -- create a radiology
    ServiceRequest

5.  **Request a Service (Procedure Order)** -- create a procedure
    ServiceRequest

6.  **Request a Service (Referral)** -- create a ServiceRequest to refer
    a patient to another care provider (e.g. perhaps to escalate to a
    higher level of care)

7.  **Propose a Diagnosis** -- record the patient's diagnosis as a
    Condition resource

8.  **Order Medication** -- create a medication order
    (MedicationRequest)

9.  **Dispense Medication** -- dispense medications based on an active
    order (MedicationDispense)

10. **Administer Medication** -- administer a dispensed medication
    (MedicationAdministration)

11. **Request Immunization** -- create a vaccination order
    (ImmunizationRequest)

12. **Stop Activity** -- create a task to stop a present care activity.

### Stack-of-CARDs Processing Metaphor

The Folder-and-CARDs approach may be contrasted with a "flowchart"
approach, as illustrated by Figure 7 and Figure 8. Figure 7 illustrates
a flowchart centric approach for describing a CCG.

<figure>
<img src="media/image9.emf" style="width:6.5in;height:3.61458in" />
<figcaption><p>- Flowchart-centric CCG expressions</p></figcaption>
</figure>

In this approach, **trigger** events are associated with workflow
states. For a CARD to evaluate to true, its trigger event must be true
**and** its condition statement must also be true. The trigger events
may be leveraged by a digital health solution to inform when it should
invoke a CCG evaluation operation (\$apply). Such an approach requires
each individual CCG workflow process to be followed so that each state
in the workflow occurs; otherwise, the trigger events will not fire
true.

<figure>
<img src="media/image10.emf" style="width:5.39067in;height:3.28509in" />
<figcaption><p>- Flattened Folder-and-CARDs CCG
expression</p></figcaption>
</figure>

Figure 8 illustrates the "flattened stack" of CARDs resulting from the
Folder-and-CARDs CCG expression. For each CARD, the trigger event is
omitted and only the condition statements are defined. Such an approach
de-couples the CCG recommendations from the workflow. This greatly
simplifies the concurrent processing of multiple CCGs (e.g. Folders F1
and F2, as illustrated in Figure 7 and Figure 8).

Notionally, we can think of associating a set of relevant Folders with a
care subject. During a care encounter, the CARDs from all relevant
Folders are metaphorically shaken out, de-duplicated, and assembled into
a ***single stack***.

The stack-of-CARDs metaphor is a key simplification to support
***concurrently processing multiple CCGs***. For example, there will be
a CARD for each patient vital sign that should be measured at every care
encounter (weight, temperature, heartrate, blood pressure, spirometry,
etc.). Other CARDs will describe lab tests that should be ordered on a
regular basis (every six months, for example) or procedures that should
be done every year (eye exam, foot exam, etc.). Still others will
describe what medications should be ordered if a patient's vital signs
indicate a health concern needs to be dealt with (such as, for instance,
elevated blood pressure).

Following is a narrative description related to how concurrent CARD
processing may be operationalized; this is not normative, but rather
illustrative. To ensure CARDs are not missed, it is imagined that the
***entire CARD stack*** is iteratively processed over the course of the
encounter. In the first pass, all the CARDs that have "do it during an
encounter" as their logic condition will fire TRUE. Depending on how
long it has been since the last lab test or foot exam, some "do it every
six months" CARDs or "do it every year" CARDs could also fire TRUE. For
every CARD whose condition statement(s) evaluate to TRUE, either the
recommended action is taken, or a reason code is recorded to indicate
why the action is *not* to be taken.

For each CARD whose action is taken, there is new ***resulting data***.
This new data is taken into account as the entire stack-of-CARDs is
again processed. This is illustrated by the successive invocations of
\$apply in Figure 8. Based on the blood pressure reading, for example,
an "order medications" CARD may fire TRUE. As before, either the
recommended action is taken, or a reason code is recorded to indicate
why the action is *not* to be taken. This iterative process continues
until ***zero*** new CARDs fire TRUE.

Of course, the ***capabilities*** are different within different care
**contexts**. These realities can be reflected in more sophisticated
CARD condition logic statements. If a community health worker at a
remote health outpost has recorded an elevated blood pressure, for
example, it could cause a "care escalation" CARD to fire TRUE. At a
subsequent encounter, with a provider who has drug prescribing in their
scope of practice, the "order medications" CARD may fire TRUE. It is for
this reason that select Encounter content is included in the CCG "input"
data bundle and may be referenced when defining CARD condition
statements.

## Use Cases

One or more uses cases are defined in this section. Each of these use
cases should, in narrative (business) terms, define the "setup" (back
story) to the interoperable data exchange, who is involved, what happens
at the time of the exchange, and what is the result after the exchange
has occurred. This is storytelling -- so it is important to name places
and people and to have a story arc. Where there are several sub-stories
that, together, create the overall narrative, each of these can be
separately defined and connected to each other using a simple timeline.
Copy/paste the following section for each use case.

### The 4 Use Cases in the CCG Ecosystem

The CCG specification is designed to satisfy four use cases:

1.  **UC-1**: A person who is a CCG Author retrieves and edits an
    existing CCG or creates a brand-new CCG (L3)[^25] artefact. Maybe
    she digitally signs the artefact (at the top level, or every
    recommendation). She then **publishes her CCG (L3) artefact** to a
    CCG repository.

2.  **UC-2**: A person who uses a digital health solution (e.g. her
    local EMR) to execute CCGs **refreshes the local cache** of CCGs
    from a CCG repository.

3.  **UC-3**: A person who is a care provider leverages her digital
    health solution (e.g. EMR) to **enroll a patient** in one or more
    CCG-supported, evidence-based care programmes.

4.  **UC-4**: A person who is a care provider sees her multi-condition
    patient. During the **ambulatory encounter**, she leverages her EMR
    to **concurrently execute multiple CCGs** and act upon the
    recommendations to provide person-centric, guideline-adherent care.

To execute these use cases, it is expected that the human participants
leverage system actors, as defined in the *Actors, Transactions, and
Content Modules* section. It is anticipated that these actors, together,
operationalize an ***ecosystem*** that can support the requirements and
pre-conditions needed to ensure the patient-safe execution of
CCG-supported care encounters, at scale.

![](media/image11.emf){width="6.5in" height="3.95625in"}

\- Graphical Depiction of Use Cases 1, 2 & 3

The operation of this ecosystem is pictorially depicted in Figure 9 and
Figure 10. From Figure 9 we can note the following:

-   In use case 1 (UC-1), a Guideline Publisher actor executes the
    transaction processing needed to author or update a well-formed CCG.
    At the successful conclusion of the workflow, the well-formed CCGs
    are submitted to and ingested and cataloged by a Guideline
    Repository (State-A).

-   In UC-2, a Guideline Engine actor executes the transaction
    processing needed to refresh its local cache of well-formed CCGs
    from the content managed by the Guideline Repository actor. At the
    successful conclusion of the workflow, the up-to-date CCGs are
    ingested by the Guideline Engine (State-B) and may be leveraged to
    support evidence-based care encounters.

-   In UC-3, a digital health solution (playing the role of a Care Plan
    Contributor actor) creates or updates a subject's Care Plan
    (persisted and managed by the Care Plan Service actor). As may be
    noted from Figure 2, the Care Plan Contributor obtains a list of
    available CCGs through an out-of-band process not defined by the IHE
    CCG Profile. At the successful conclusion of UC-3's workflow, one or
    more CCGs have been associated with the care subject and are
    referenced in the subject's Care Plan (State-C).

<figure>
<img src="media/image12.emf" style="width:6.5in;height:3.47431in" />
<figcaption><p>- Graphical Depiction of a CCG-supported Care
Encounter</p></figcaption>
</figure>

The activities relevant to the CCG-supported care encounter are
illustrated by Figure 10. From this figure, we can note the following:

-   The execution of CCG-informed care cannot happen until UC-1, UC-2
    and UC-3 have successfully occurred. Even though it can be expected,
    in some situations, that UC-3 may be undertaken as an initial step
    during the care encounter, itself -- State-A, State-B and State-C
    are pre-conditions to the commencement of UC-4.

-   The Guideline Performer actor must be able to establish the data set
    reflect of the care context. This will include the up-to-date
    person-centric health data pertaining to the subject of care plus
    pertinent information related to the encounter context such as,
    where relevant, information about the provider, the care location,
    etc. This initial contextual data must be expressed according to the
    common data model defined by this IHE CCG Profile (State-D).

-   During the care encounter, content will be exchanged between the
    Guideline Performer and Guideline Engine and the engine's CCG
    transaction processing will evaluate this content and return
    appropriate care recommendations. The Guideline Performer will
    facilitate the actioning of these recommendations and the iterative
    evaluation of new content.

-   At the conclusion of the engine's processing, and actioning of
    CCG-informed recommendations, the results of the care encounter are
    persisted by the Guideline Performer in adherence with the data
    models defined by this IHE CCG Profile (State-E).

-   It should be noted that a single digital health solution may group
    together and incorporate both the Guideline Performer and Guideline
    Engine actors. Where this is the case, the transaction processing
    behaviours of this solution represent a black box. Although
    transaction processing is not testable in this circumstance, correct
    behaviours may be established by giving a starting State-D and
    confirming that ending State-E is achieved.

### Example Scenario: Value Based Health Services

In the fictitious country of **Amalgaland**, the Ministry of Health
(MOH) has established a CCG Centre of Excellence. The Amalgaland Centre
of Excellence (**ACE**) operates as a partnership between the national
Digital Health Agency and the clinical Colleges that, today, publish
clinical practice guidelines. The ACE's role is to leverage these
narrative practice guidelines and publish a national set of CCGs. The
focus will be on those conditions in Amalgaland's **"top 10" burden of
disease** (as identified by IHME[^26]) that can be significantly
impacted by digital health interventions[^27].

As a first task, the ACE defines the "style guide" for domestic CCGs; a
description of Amalgaland's national norms and standards for digital
health and how this impacts their CCG authoring. Like a growing number
of countries, Amalgaland has adopted the FHIR-based International
Patient Summary (**IPS**) as the basis of its national person-centric
health data model. The IPS specification has been profiled to reflect
Amalgaland's national code systems. Through its **IHE Amalgaland
Deployment Committee**, the ACE publishes a section in **Volume-4** of
the IHE IPS Profile, the IHE mCSD Profile, and the IHE CCG Profile that
documents its national core data model. This **domestic health data
model** is the basis for CCGs that will be published by the ACE.

<figure>
<img src="media/image13.emf" style="width:6.5in;height:3.62083in" />
<figcaption><p>- MOH-supported CCG Ecosystem</p></figcaption>
</figure>

Amalgaland's MOH wishes to leverage its CCG initiative, alongside its
**national HIE**, as part of a larger value-based health services[^28]
(**VBHS**) agenda. Strategically, a set of five health conditions will
be focused on (from the top 10). The ACE will publish CCGs for these
conditions, and adherence to these CCGs will be leveraged as part of a
revised healthcare provider claims adjudication and **payment** scheme.

To help ensure its CCGs can be leveraged in this way, the ACE will:

-   Adopt an internal **conformance-testing** regime that ensures its
    CCGs are well-formed and are adherent to the national core data
    model; and

-   **Digitally sign** all its published artefacts.

To be eligible for the VBHS payments scheme, care providers will need to
demonstrate:

1.  They are employing a digital health solution that has been
    **conformance-tested** by an independent test body as being
    "**CCG-capable**"; and

2.  They are leveraging the **digitally signed CCGs** published by the
    ACE for each of the five target health conditions; and

3.  For these target conditions, they can use digital health transaction
    traffic to **demonstrate substantial adherence** to the
    evidence-based recommendations across their patient cohorts.

To operationalize its plans, the ACE decides to adopt an open-source CCG
authoring tool (a **Guideline Publisher**, as referenced in Figure 9 and
Figure 10). They leverage technical resources within the Digital Health
Agency to become source code contributors on the project. They augment
the tool with features important to their intended use cases and they
develop a national language version of the product.

A set of **training materials** are developed for the non-technical ACE
teammates. This training leverages the **GIN McMaster checklist**[^29]
and its extension for Computable Guidelines[^30]. It focuses on the
adoption, early in the CCG development process, of best practices and
precise methods that enable evidence-based recommendations to be
expressed in a way that digital health solutions can ingest and
operationalize. To bring these best practices to life, the ACE
establishes itself as the governance authority of a **Guideline
Repository** operated by the national Digital Health Agency.

To help round out necessary elements of the ecosystem, the Digital
Health Agency leverages its internal software team to fork and made
available a "conformance-assured" open-source **Guideline Engine**. This
Engine is "pre-configured" to be able to connect to and regularly
refresh its CCGs from the Repository. The Engine's processing logic
follows the MOH's stipulations regarding digital signatures and the
audit trails required to provide evidence of signed-CCG execution. The
Engine's open-source code base is both a teaching tool and a "running
start". It can be used by digital health solution providers in the
Amalgaland market to **de-risk product development** efforts and to
**accelerate** the delivery timeframes for new product releases. As a
further ecosystem accelerator, an instance of the Engine is operated by
the Digital Health Agency as a **shared service** that can be securely
called by an authenticated digital health solution.

Leveraging its **MOH-led approach**, Amalgaland ensures that it can
establish the key foundational elements needed to support its VBHS
agenda. Referencing Figure 9, the MOH has made strategic investments to
support getting to:

-   **State-A**: Well-formed CCGs are available in a Guideline
    Repository; and

-   **State-B**: the updated CCGs exist on a Guideline Engine.

By making investments in **shared national infrastructure**, Amalgaland
has put necessary puzzle pieces in place for the phasing in of its
VBHS-centric payments scheme and to leverage digital health to
systemically improve the quality of health services across its national
care delivery network.

### Example Scenario: Learning Health System

The fictitious organization, Integrated Health (IH), is a large
healthcare network serving over a million patients. It has 65 thousand
healthcare employees and operates over 30 hospitals and almost 400
clinics. IH is a well-regarded not-for-profit organization that has
received national accolades for consistently providing high-quality care
in a cost-effective way. To support continuous quality improvement, IH
plans to leverage CCGs as a foundational element in its Learning Health
System[^31] (LHS) strategy.

<figure>
<img src="media/image14.emf" style="width:4.98242in;height:2.43478in" />
<figcaption><p>- Learning Health System</p></figcaption>
</figure>

As an integrated provider, IH will operationalize and govern **all
four** of the key use cases IHE CCG Profile:

-   Digital health teams at its academic health centres have formed a
    collaborative group that will develop and publish IH's existing care
    protocols as FHIR-based CCGs.

    -   To support the LHS strategy, at each encounter, IH's CCGs will
        explicitly and deliberately capture patient function using WHO's
        International Classification of Functioning, Disability and
        Health[^32] (ICF) codes.

    -   To ensure it remains eligible for federal quality payment
        programmes, the IH team will continuously augment its existing
        CCGs and develop new CCGs as additional federal incentive
        programmes emerge.

    -   All IH's CCGs (and all its health databases) are based on the
        national core FHIR data model.

-   As a long-time leader in digital health, IH is leveraging its deep
    health informatics expertise to customize a CCG Engine to capture
    copious runtime information that can be leveraged to support
    research-based analytics. This CCG Engine will support the entire IH
    care network and be regularly refreshed with IH's most up-to-date
    CCGs.

-   IH's strong analytics capacity will be leveraged to help identify
    patients that should be, but are not now, enrolled in CCG-supported
    care pathways. The results of these analyses will be made available
    to both providers and patients during the appointment scheduling
    workflow.

-   All IH care sites leverage an EMR platform that connects to the
    network's shared health record through a dedicated HIE. This EMR
    platform will be enhanced to operationalize CCG-supported workflows,
    including a simplified UI for capturing ICF codes.

<figure>
<img src="media/image15.emf" style="width:4.84586in;height:2.10505in" />
<figcaption><p>- Analyses of Data Outside the "Green
Zone"</p></figcaption>
</figure>

IH's CCG-supported approach will leverage the naturally occurring
variation across its large care network. At the same time the broad
adoption of CCGs will be ensuring consistent high-quality care delivery,
the deliberate systemic capturing of ICF codes will help IH to identify
"positive outliers". In cases where CCGs' recommendations are **not**
being followed -- but where the outcomes are systemically better -- IH's
analyses will enable it to continuously improve the CCGs themselves.

### Example Scenario: Addressing Cognitive Overload

Fictitious rural physician, Dr. Black, has plans to purchase a new EMR
for her family medicine practice. A key reason for Dr. Black wanting to
switch out her existing EMR is the significant amount of time and effort
she finds herself expending on "busy work" and seemingly endless data
entry. This is time she would rather spend with her patients, or with
her young family. The relentlessness of the problem is putting her in
danger of physician burnout. Dr. Black has learned about CCGs and
believes in their potential to reduce her cognitive load while
simultaneously reducing her data entry burden.

The Provincial MOH has published a set of CCGs targeted at particularly
prevalent health concerns. An incentive payment programme has been put
in place to encourage adoption of these new CCGs with additional bonuses
for multi-chronic-condition patients. Dr. Black has many such patients
in her practice and she has determined that the first year of incentives
will fund her plans to implement a new EMR.

![](media/image16.emf){width="5.073233814523185in"
height="3.0428576115485564in"}

\- Reducing Cognitive Load

Dr. Black appreciates there will be two complementary aspects to
employing CCGs in her practice:

1.  For her patients, including Mr. Blue (for example), she will need to
    leverage her EMR to lookup the available CCGs that may be
    applicable. Where she and Mr. Blue agree, she will associate
    relevant CCGs with his health record and these CCG associations will
    become part of Mr. Blue's patient summary.

2.  Thereafter, at each care encounter with Mr. Blue, his patient
    summary (and the associated CCGs) will be retrieved and leveraged.
    Over the course of the care encounter, Dr. Black's EMR will
    iteratively propose CCG-informed recommendations. If they are
    non-controversial, these recommendations can be automatically
    accepted and actioned using the EMR's "DO IT" button. (If she and
    Mr. Blue choose to *not* follow a recommendation, she just indicates
    the reason and *then* pushes the button). At the conclusion of the
    encounter, all the CCG-informed content will automatically be
    included in Mr. Blue's *updated* patient summary.

Dr. Black anticipates that substantially reducing the data entry "busy
work" will leave more time for the doctor-patient engagement that
motivated her to enter medicine in the first place. Importantly, she
knows from the evidence that more consistently adhering to
guideline-based care will improve health outcomes for Mr. Blue and for
all her patients.

## Security considerations

Using business terms, security considerations should be defined in this
section. Simple statements such as "strangers should never be able to
access the data" can be leveraged to denote the requirements for
authentication and/or authorization.

All person-centric health information is a potential target for hackers.
In recent years, the security of multiple hospital information systems,
across many countries, has been compromised[^33]. CCGs, however,
represent a particularly nefarious potential attack surface:

-   Because their purpose is to inform the course of patient care, bad
    actors who can alter the recommendations in a CCG can potentially
    impact the care pathways of entire populations, or of targeted
    subpopulations.

-   Where CCG adherence is a component of provider payment schemes,
    "spoofing" the CCG's reportable indicators and/or its audit trails
    could be a potential instrument of financial fraud.

Important mitigations against CCG tampering are the Digitally Signed
Folder, Digitally Signed CARD and Trusted CCG options (see detailed
descriptions in the Options section). These mitigations rely on the
ability to establish a digital certificate chain of trust.[^34] Public
Key Infrastructure (PKI) is an effective tool for operationalizing such
a chain of trust, but establishing and maintaining a PKI is nontrivial.
The granularity of signing at the CARD level (each recommendation) vs at
the Folder level (entire CCG) can support initiatives that encourage
organizations to be evolving recommendations as new evidence emerges.
The US CDC's "living guidelines"[^35] initiative, for example, would be
well served by digital signatures at the CARD level.

Implementation architectures may also be employed to afford a credible
degree of protection. Some jurisdictions have deployed clinical decision
support engines as hosted services. With such an approach, the security
practices of the host would defend the integrity of both the CCGs and
their processor.

Another important security aspect relates to CCG Engines' audit records.
It should be expected that such records could be of medico-legal
importance. In a malpractice case, for example, such audit records are a
potential source of evidence. To be trusted, these records should be
demonstrably *faithful* and *tamper-proof*. Of note -- detailed audit
logs are also a useful instrument of conformance-testing. Since passing
conformance tests may be a requirement of market entry -- this also
augers for the importance of credible audit logging.
