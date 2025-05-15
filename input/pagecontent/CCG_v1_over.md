
## Introduction

The IHE Computable Care Guidelines (CCG) specification describes the
following key things:

1.  It describes the digital health **system actors** that would
    participate in an end-to-end CCG ecosystem capable of supporting the
    defined CCG use cases (listed below).

2.  It defines a normative **grammar** for expressing
    guideline-based care recommendations that can be consistently and reliably
    processed and operationalized by conformant digital health software
    solutions across the whole of the care delivery network.

3.  It defines a normative pattern for **processing** CCG
    recommendations that will ensure multiple CCGs (e.g., for multiple health conditions) can be concurrently
    executed and that all relevant care recommendations will be proposed to
    the end-user in support of their care decision-making.

4.  It documents a base **health data content model** that provides all ecosystem actors with a common underlying framework for defining, sharing, and executing CCG artifacts. It is anticipated that implementing jurisdictions may replace this base model with their national or regional continuity of care content specifications.

The digital health ecosystem of CCG actors and transactions is designed
to satisfy four use cases:

1.  **UC-1**: A person who is a guideline *author* uses a digital health
    tool (which plays the role of a **Guideline Publisher**) to retrieve
    and edit an existing CCG or to create a brand-new CCG (L3)[^1]
    artifact. Maybe she digitally signs the artifact (at the top level,
    or every recommendation). She then **publishes the CCG (L3)
    artifact** to a **Guideline Repository**.

2.  **UC-2**: A digital health solution that executes CCGs (e.g., a **Guideline Engine**) 
    **refreshes its local cache** of CCGs from a **Guideline Repository**.

3.  **UC-3**: A person who is a care provider leverages her digital
    health solution (e.g., an EMR) to **associate a patient** with one or more
    CCG-supported, evidence-based care programs.

4.  **UC-4**: A person who is a care provider has an ambulatory
    encounter with a patient who is enrolled in one or more
    CCG-supported care plans. During the encounter, she leverages her
    digital health solution (e.g., EMR, playing the role of a **Guideline
    Performer**) to invoke processing by a **Guideline Engine** to **concurrently execute the relevant CCGs.** She acts upon
    the recommendations to provide person-centric, guideline-adherent
    care.

## Overview 

### Background

Countries are increasingly utilizing digital technology that leverages
person-centric health data to facilitate scale-up of public health
interventions; to improve client-level care; and to ensure
accountability at all levels of the health system. However, the
transformative value of these digital systems has not yet been fully
realized.

<figure>
<img src="image1.png"
style="max-width: 75%; object-fit: contain" />
<figcaption><strong>Figure 1 - Care Delivery in the "Green" Zone</strong></figcaption>
</figure>
<br clear="all">

We are better and better able to collect information about **what
happened** on a client’s health journey. This can be illustrated,
graphically, by the yellow circle in Figure 1. However, we do not yet
(today) have a way to broadly share a machine-processable description of
**what *should* happen** (the blue circle in Figure 1) and to leverage
digital health investments to **systemically close the “know-do gap”**
between what *was* done and what *should have been* done (illustrated by
the “**green zone**” in the figure). A machine-processable description
of what <u>should</u> happen could be called a ***computable*** care
guideline, or **CCG**.

Closing the know-do gap will enable us to reap the significant health
outcome improvements that accrue from stronger guideline adherence. As
may be noted in Figure 1, evidence shows that errors of omission greatly
outnumber errors of commission. These are difficult errors to catch and
to address. But by describing what *should* happen, CCGs afford us way
to treat the absence of a signal as a signal.

**Broadly scaling CCGs**, however, faces a set of key challenges:

- To support patients with **co-morbidities**, multiple CCG artifacts
  must be **concurrently** executable.

- To ensure **interoperability** across entire care networks, CCGs must
  be based on a **common data model** and these data must be **readily
  available** at the point of service.

- In the interests of **patient safety**, CCG actors must ensure that **all**
  relevant care recommendations are presented to a practitioner during a care encounter;
  nothing can be **inadvertently missed** during concurrent execution of
  multiple CCGs.

- To meet **adherence** to relevant software-as-a-medical-device
  (**SaMD**) regulations, CCG artifacts and transaction processing workflows must
  be **conformance-testable**.

Significant progress has been made by HL7 and IHE as
collaborators on the CCG Gemini Project. The **HL7
CPG-on-FHIR IG**[^2] (Implementation Guide) has been developed and has
completed multiple ballots. This HL7 IG describes how a CCG may be defined
using the FHIR standard. In a complementary way, the role of the IHE CCG Profile is to
leverage this underlying HL7 specification and to **constrain** it to address the
challenges, as noted above, associated with broadly scaling
conformance-testable, concurrently executable CCGs in both OECD[^3] and
LMIC[^4] contexts.

Improving the care continuity and care quality, especially for co-morbid
patients with multiple chronic conditions, addresses a **big and
expensive problem**. In Canada, for example, 73% of persons over 65
years of age suffer from at least one chronic condition[^5], and 30% of
Canadians over 35 years of age suffer two or more conditions (note
Figure 2). It is estimated the burden of chronic disease represents a
cost to the Canadian economy of more than **\$190 billion (CAD)**
annually[^6] and that the direct costs of chronic disease management
account for **58% of Canada’s total healthcare spend**.[^7]

<figure>
<img src="image2.png" style="height: 100%; width: 100%; object-fit: contain"
 />
<figcaption><strong>Figure 2 - Co-morbidities in Canadians over 35 years of
age</strong></figcaption>
</figure>
<br clear="all">

“Health care in all global settings today suffers from **high levels of
defects in quality** across many domains, and this poor-quality care
causes ongoing damage to human health. Hospitalizations in low- and
middle-income countries (LMICs) lead to **134 million adverse events
each year**, and these adverse events contribute to more than **2.5
million deaths annually**. More than **830 million people** with a
diagnosed noncommunicable disease (NCD) are **not** being treated, and
more than **4 million avoidable quality-related deaths** each year are
attributable to ineffective care for NCDs. In total, between 5.7 and 8.4
million deaths occur annually from poor quality of care in LMICs for the
selected set of conditions the committee analyzed… which represents
between 10 and 15 percent of the total deaths in LMICs reported by the
World Health Organization (WHO) in 2015. For some conditions, deaths due
to **poor quality contribute to more than half of overall deaths**.”[^8]

A 2018 care quality report was jointly published by the OECD, WHO, and
World Bank[^9]. Among the report’s findings:

- **One in ten** patients is **harmed** during medical treatment in high
  income countries.

- Health care workers in seven low- and middle-income African countries
  were only able to make **accurate diagnoses one third to three
  quarters of the time**, and clinical guidelines for common conditions
  were followed **less than 45 percent of the time** on average.

- Research in eight high-mortality countries in the Caribbean and Africa
  found that effective, quality maternal and child health services are
  far less prevalent than suggested by just looking at access to
  services. For example, just **28 percent** of antenatal care, **26
  percent** of family planning services and **21 percent** of sick-child
  care across these countries qualified as ‘**effective**.’

- Around **15 percent** of hospital expenditure in high-income countries
  is due to **mistakes** in care or patients being infected while in
  hospitals.

The successful work of the underlying HL7
CPG-on-FHIR IG has been **constrained** to address key implementation issues in-scope for the IHE CCG Profile. A strategy of constraining optionality has been adopted by multiple jurisdictions in their clinical decision support *regulatory* frameworks. As an example, the US ASTP/ONC has published guidance regarding the methods for conformance-testing
digital health solutions that provide Evidence-based Decision Support
Interventions (DSI). It stipulates that evidence-based DSIs shall
leverage a constrained common data set defined in the US Core Data
for Interoperability[^11]. It can also be noted that,
under this ONC regulation, a software solution provider must provide an
attestation related to the source content, including bibliographic citations of the clinical research of narrative (L1) care guidelines, that inform the DSI's recommendations. Similarly, [NHS Scotland](https://www.dhi-scotland.com/projects/the-right-decision-support-service-(rds)) has adopted a single-hosted-service approach that constrains optionality and ensures consistency of data and logic execution. This hosted service is ISO-13485 certified to meet relevant Software as a Medical Device (SaMD) regulations. In Denmark, the adoption of a common shared health record has enabled four DSIs to be taken to national scale (see Figure 3). Research on the [Danish experience](https://bmcprimcare.biomedcentral.com/articles/10.1186/s12875-023-02234-y) has noted the importance of testability as a key element of success.

<figure>
<img src="image3.png"
style="width: 75%; object-fit: contain" />
<figcaption><strong>Figure 3 - Danish GP Decision Support Workflow</strong></figcaption>
</figure>
<br clear="all">

Informed by these examples and others, the IHE CCG Profile constrains the **content** that
may be employed to define CCG logic. The (optional) base CCG content specification is defined in Volume 3 of this profile. In this base content specification, an
approach is favored that allows care logic to take into account both patient health data *and* contextual attributes of the care encounter:

- In the base specification, **person-centric content** is defined in terms of
  the IHE International Patient Summary (**IPS**) Profile (*Complete*
  Option). The Complete Option stipulates that *optional* sections of an
  IPS document be instead treated as “required if known”. In this way,
  properly-coded content that is collected as part of a CCG-supported
  care encounter will *always* be available to drive care logic during
  any *subsequent* encounter. This creates a **virtuous cycle** of
  ever-improving person-centric health data.

- To support evidence-based decision-making that may be driven by the
  **care context** (facility’s geography, available services, provider,
  provider scope of practice, etc.), the **Encounter** resource and
  the content specified by the IHE mobile Care Services Discovery
  (**mCSD)** Profile may *also* be employed to drive CCG care logic.

It is anticipated that implementing jurisdictions will adopt the base common content model or may define an alternate common content model based on their domestic care continuity specifications (e.g., for the USA: UCSDI, for Canada: PS:CA, for Europe:
the European Patient Summary, etc.). An alterative common content model SHALL be defined in a relevant **Volume 4** section of the IHE CCG Profile. Each ecosystem actor SHALL declare its support for a content model option. As a practical constraint, **all** actors in a CCG-conformant **ecosystem** SHALL support the **same** common content model option.

IHE's choice of IPS as the foundation of the base common content model is intended to be risk-mitigating. It is noteworthy that many countries (Canada, Sri Lanka,
Botswana, New Zealand, etc.) and many multilateral organizations (Asia
eHealth Information Network[^12], OpenHIE Community[^13], etc.) have
adopted or advocated for the adoption of the IPS as the basis for a national
health summary specification. The joint EU-USA **Trillium II** project reported on the significant value of leveraging IPS across multiple [CDS-supported use cases](https://ec.europa.eu/research/participants/documents/downloadPublic?documentIds=080166e5c54d85ba&appId=PPGMS). 

### Folder-and-CARDs Metaphor 

Included in the base common content model is a normative grammar related to how CCG artifacts are *defined*. Action research into CCG formats was conducted by a joint team from Canada Health Infoway, Cancer Care Ontario, and Hamilton Health Sciences. A working prototype was demonstrated at the 2020 IHE North American Connectathon. Informed by this research, and to support the concurrent execution of multiple CCGs, a **Folder-and-CARDs**
metaphor is documented in Volume 3. Leveraging this model, one can think
of a CCG as a set of care recommendations where each recommendation is
described by a **CARD**. This model is illustrated in Figure 4.

<figure>
<img src="image4.png"
style="width: 75%; object-fit: contain" />
<figcaption><strong>Figure 4 - Folder-and-CARDs Metaphor</strong></figcaption>
</figure>
<br clear="all">

Here, CARD is an acronym. The recommendation is ***applicable*** when a
set of defined **<u>C</u>**onditions are met. The recommendation
describes an **<u>A</u>**ction that should be taken. The list of
possible actions is defined as a subset of the ActivityDefinition
“verbs”[^14] described in the CPG-on-FHIR specification. When the action
is ***taken***, there is **<u>R</u>**esulting **<u>D</u>**ata. All the
recommendations for a particular care guideline are stored in that
guideline’s **Folder**. For example, the set of CARDs related to
evidence-based Diabetes care would be contained a Diabetes Folder.

In practical terms, this approach supports simplifying both the
authoring of CCGs and their subsequent execution. 

- A uniquely identified CARD is independently defined for each
  guideline-based recommendation; this definition is expressed
  using a FHIR PlanDefinition resource containing a **single**
  ActivityDefintion resource (from the constrained list of CARD
  “types”).

- The CARD’s PlanDefinition resource declaritively defines the Condition
  statement(s) that must evaluate to TRUE for the CARD to be
  **applicable**. The condition statements’ **logic** must be expressed
  in terms of the common content model (either the base defined in Volume 3 or an alternate model documented in Volume 4). 

- The CARD’s **resulting data** must *also* be expressed in terms of the
  common content model (in Volume 3 or Volume 4).

- A CCG **Folder** is defined using a FHIR PlanDefinition resource. This
  PlanDefinition will act as a container and reference the full set of
  relevant CARDs for a particular care plan (e.g., diabetes care, or antenatal care, etc.).

The set of **13 CARD *types*** defined by the base common content model in Volume 3 is listed
below:

1.  **Provide Information** – provide information, counseling, or
    instructions to the patient. 

2.  **Collect Information** – capture information about the patient.

3.  **Request a Service (Lab Order)** – create a laboratory / pathology
    Service Request.

4.  **Request a Service (Radiology Order)** – create a radiology
    Service Request.

5.  **Request a Service (Procedure Order)** – create a procedure
    Service Request.

6.  **Request a Service (Referral)** – create a Service Request to refer
    a patient to another care provider (e.g., perhaps to escalate to a
    higher level of care).

7.  **Propose a Diagnosis** – record the patient&apos;s diagnosis as a
    Condition resource.

8.  **Order Medication** – create a medication order.

9.  **Dispense Medication** – dispense medications based on an active
    order.

10. **Administer Medication** – administer a dispensed medication.

11. **Request Immunization** – create an order for and administer a vaccine.

12. **Stop Activity (Medication Order)** - create a Task that, upon being processed, will stop a patient&apos;s presently active Medication Order.

13. **Stop Activity (Service Order)**  - create a Task that, upon being processed, will stop a patient&apos;s presently active Service Request.

### Stack-of-CARDs Processing Metaphor

The Folder-and-CARDs "flattened stack" approach may be contrasted with a “flowchart”
approach, as illustrated by Figure 5 and Figure 6. Figure 5 illustrates
a flowchart centric approach for describing CCG-supported workflows.

<figure>
<img src="image5.png"
style="height: 100%; width: 100%; object-fit: contain" />
<figcaption><strong>Figure 5 - Flowchart-centric CCG expressions</strong></figcaption>
</figure>
<br clear="all">

In a flowchart or tree-diagram approach, **trigger** events are associated with workflow
states. This means that for a CARD to evaluate to true, its trigger event must be true
**and** its condition statement must also be true. The trigger events
may be leveraged by a digital health solution to inform when it should
invoke a CCG evaluation operation (\$apply). However, such an approach relies on
each individual workflow process being followed in its entirety so that each state
in the workflow is reached; otherwise, associated trigger events will not have a chance to fire
true and a CARD may be inadvertently missed.

<figure>
<img src="image6.png"
style="height: 100%; width: 100%; object-fit: contain" />
<figcaption><strong>Figure 6 - Flattened Folder-and-CARDs CCG
expression</strong</figcaption>
</figure>
<br clear="all">

Figure 6 illustrates the “flattened stack” of CARDs resulting from the
Folder-and-CARDs content model. For each CARD, the trigger event is
omitted and only the condition statements are declaratively defined. Such an approach
de-couples the CCG recommendations from the workflow. A CARD fires true when its condition statements are true. This greatly
simplifies the concurrent processing of multiple CCGs (e.g., Folders F1
and F2, as illustrated in Figure 5 and Figure 6).

Notionally, we can think of associating a set of relevant Folders with a
care subject. During a care encounter, the CARDs from *all* the relevant
Folders are metaphorically shaken out, de-duplicated, and assembled into
a ***single stack***. Following is a narrative description related to how concurrent CARD
processing may be operationalized; this is not normative, but rather
illustrative. 

To ensure CARDs are not missed, it is expected that the
***entire CARD stack*** is iteratively processed over the course of the
encounter. In the first pass, all the CARDs in the stack are processed and those that fire true are processed. As an example, there could be CARDs indicating that, at every encounter, the subject's blood pressure, weight, heart rate, and spirometry measures should be recorded. For each CARD that fired TRUE, there is new ***resulting data***; either the reading is recorded or a data-absent reason is recorded.

This new data is taken into account as the entire stack-of-CARDs is
*again* processed. This is illustrated by the successive invocations of
\$apply in Figure 6. Based on the blood pressure reading, for example,
an “order medications” CARD may fire TRUE during the second pass. As before, either the
recommended action is taken, or a reason code is recorded to indicate
why the action is *not* to be taken. This iterative process continues
until ***zero*** new CARDs fire TRUE, which indicates the processing is DONE.

Of course, the ***capabilities*** may be different within different care
**contexts**. Such realities can be reflected in more sophisticated
CARD condition logic statements. If a community health worker at a
remote health outpost has recorded an elevated blood pressure, for
example, it could cause a “care escalation” CARD to fire TRUE. At a
subsequent encounter, with a provider who has drug prescribing in their
scope of practice, the “order medications” CARD may fire TRUE. It is for
this reason that contextual Encounter information is included in the CCG “input”
data bundle. These contextual data  may be referenced when defining CARD condition
statements.

## Use Cases

### The Four Use Cases in the CCG Ecosystem

As noted in the introduction, the CCG specification is designed to
satisfy four use cases:

1.  **UC-1**: A person who is a guideline *author* uses a digital health
    tool (which plays the role of a **Guideline Publisher**) to retrieve
    and edit an existing CCG or to create a brand-new CCG (L3)[^1]
    artifact. Maybe she digitally signs the artifact (at the top level,
    or every recommendation). She then **publishes the CCG (L3)
    artifact** to a **Guideline Repository**.

2.  **UC-2**: A digital health solution that executes CCGs (a **Guideline Engine**) 
    **refreshes its local cache** of CCGs from a **Guideline Repository**.

3.  **UC-3**: A person who is a care provider leverages her digital
    health solution (e.g., an EMR) to **associate a patient** with one or more
    CCG-supported, evidence-based care programs.

4.  **UC-4**: A person who is a care provider has an ambulatory
    encounter with a patient who is enrolled in one or more
    CCG-supported care plans. During the encounter, she leverages her
    digital health solution (e.g., EMR, playing the role of a **Guideline
    Performer**) to invoke processing by a **Guideline Engine** to **concurrently execute the relevant CCGs.** She acts upon
    the recommendations to provide person-centric, guideline-adherent
    care.

To fulfill these use cases, it is expected that the human participants
leverage system actors and transactions as defined in the technical
sections of this specification. These participants, together,
operationalize an ***ecosystem*** that supports the patient-safe
execution of CCG-supported care encounters, at scale.

<figure>
{% include image7.svg %}
<!--
<img src="image7.png"
style="height: 100%; width: 100%; object-fit: contain" />
-->
<figcaption><strong>Figure 7 - Graphical Depiction of Use Cases 1, 2 & 3</strong></figcaption>
</figure>
<br clear="all">

The operation of this ecosystem is pictorially depicted in Figure 7 and
Figure 8. From Figure 7 we can note the following:

- In use case 1 (UC-1), a Guideline Publisher executes the
  transaction processing needed to author or update a well-formed CCG artifact.
  At the successful conclusion of the workflow, the well-formed CCGs are
  submitted to and ingested and cataloged by a Guideline Repository
  **(State-A)**.

- In UC-2, a Guideline Engine executes the transaction processing
  needed to refresh its local cache of well-formed CCGs from the content
  managed by the Guideline Repository. At the successful
  conclusion of the workflow, the up-to-date CCG artifacts are ingested by the
  Guideline Engine **(State-B)** and may be leveraged to support
  evidence-based care encounters.

- In UC-3, a digital health solution (playing the role of a Care Plan
  Contributor) creates or updates a subject’s Care Plan (persisted
  and managed by the Care Plan Service). At
  the successful conclusion of UC-3’s workflow, one or more CCG Folders have
  been associated with the care subject and are referenced in the
  subject’s Care Plan **(State-C)**.

<figure>
{% include image8.svg %}
<!--
<img src="image8.png"
style="height: 100%; width: 100%; object-fit: contain" />
-->
<figcaption><strong>Figure 8 - Graphical Depiction of a CCG-supported Care
Encounter</strong></figcaption>
</figure>
<br clear="all">

The activities relevant to the CCG-supported care encounter are
illustrated by Figure 8. From this figure, we can note the following:

- The execution of CCG-informed care cannot happen until UC-1, UC-2 and
  UC-3 have successfully occurred. In some situations, UC-3 may be
  undertaken as an initial step during the care encounter, itself.
  Regardless of the timing – State-A, State-B and State-C are
  **pre-conditions** to the commencement of UC-4.

- The Guideline Performer must be able to establish the data set
  that reflects the context of the care encounter. This includes
  up-to-date person-centric health data pertaining to the care subject
  *plus* pertinent information related to the encounter context such as
  relevant information about the care provider, the care location, etc.
  This **initial contextual data** must be expressed according to the
  **common data model** defined in either Volume 3 or Volume 4 of this IHE CCG Profile **(State-D)**.

- During the care encounter, content will be exchanged between the
  Guideline Performer and Guideline Engine and the engine’s CCG
  transaction processing will evaluate this content and return
  appropriate care recommendations. The Guideline Performer will
  facilitate the actioning of these recommendations (to generate the CARD's Resulting Data) and the iterative
  evaluation of *new* content by the Guideline Engine.

- At the conclusion, the **results** of the care encounter are
  **persisted** by the Guideline Performer in adherence with the data
  models defined by either Volume 3 or Volume 4 of this IHE CCG Profile **(State-E)**.

- It should be noted that a single digital health solution *may*
  **group** together and incorporate the functionality of both the
  Guideline Performer and Guideline Engine Actors. Where this is the
  case, the transaction processing behaviors of this solution represent
  a black box. In such a scenario, the software solution’s
  **conformance** may be established by giving a starting State-D and
  confirming that ending State-E is achieved.

### Example Scenario: Value Based Health Services

In the fictitious country of **Amalgaland**, the Ministry of Health
(MOH) has established a CCG Centre of Excellence. The Amalgaland Centre
of Excellence (**ACE**) operates as a partnership between the national
Digital Health Agency and the clinical Colleges that, today, publish
clinical practice guidelines. The ACE’s role is to leverage these
narrative practice guidelines and publish a national set of CCGs. The
focus will be on those conditions in Amalgaland’s **“top 10” burden of
disease** (as identified by IHME[^16]) that can be significantly
impacted by digital health interventions[^17].

As a first task, the ACE defines the “style guide” for domestic CCGs; a
description of Amalgaland’s national norms and standards for digital
health and how this impacts their CCG authoring. Like a growing number
of countries, Amalgaland has adopted the FHIR-based International
Patient Summary (**IPS**) as the basis of its national person-centric
health data model. The IPS specification has been profiled to reflect
Amalgaland’s national code systems. Through its **IHE Amalgaland
Deployment Committee**, the ACE publishes a section in **Volume 4** of
the IHE IPS Profile, the IHE mCSD Profile, and the IHE CCG Profile that
documents its national core data model. This **domestic health data
model** is the basis for CCGs that will be published by the ACE.

<figure>
<img src="image9.png"
style="height: 100%; width: 100%; object-fit: contain" />
<figcaption><strong>Figure 9 - MOH-supported CCG Ecosystem</strong></figcaption>
</figure>
<br clear="all">

Amalgaland’s MOH wishes to leverage its CCG initiative, alongside its
**national HIE**, as part of a larger value-based health services[^18]
(**VBHS**) agenda. Strategically, a set of five health conditions will
be focused on (from the top 10). The ACE will publish CCGs for these
conditions, and adherence to these CCGs will be leveraged as part of a
revised healthcare provider claims adjudication and **payment** scheme.

To help ensure its CCGs can be leveraged in this way, the ACE will:

- Adopt an internal **conformance-testing** regime that ensures its CCG artifacts
  are well-formed and are adherent to the national core data model; and

- **Digitally sign** all its published artifacts.

To be eligible for the VBHS payments scheme, care providers will need to
demonstrate:

1.  They are employing a digital health solution that has been
    **conformance-tested** by an independent test body as being
    “**CCG-capable**”; and

2.  They are leveraging the **digitally signed CCGs** published by the
    ACE for each of the five target health conditions; and

3.  For these target conditions, they can use digital health transaction
    traffic to **demonstrate substantial adherence** to the
    evidence-based recommendations across their patient cohorts.

To operationalize its plans, the ACE decides to adopt an open-source CCG
authoring tool (a **Guideline Publisher**, as referenced in Figure 7 and
Figure 8). They leverage technical resources within the Digital Health
Agency to become source code contributors on the project. They augment
the tool with features important to their intended use cases and they
develop a national language version of the software.

A set of **training materials** are developed for the non-technical ACE
teammates. This training leverages the **GIN McMaster checklist**[^19]
and its extension for Computable Guidelines[^20]. It focuses on the
adoption, early in the CCG development process, of best practices and
precise methods that enable evidence-based recommendations to be
expressed in a way that digital health solutions can ingest and
operationalize. To bring these best practices to life, the ACE
establishes itself as the governance authority of a **Guideline
Repository** operated by the national Digital Health Agency.

To help round out necessary elements of the ecosystem, the Digital
Health Agency leverages its internal software team to fork and made
available a “conformance-assured” open-source **Guideline Engine**. This
Engine is “pre-configured” to be able to connect to and regularly
refresh its CCGs from the Guideline Repository. The Engine’s processing logic
follows the MOH’s stipulations regarding digital signatures and the
audit trails required to provide evidence of signed-CCG execution. The
Engine’s open-source code base is both a teaching tool and a “running
start”. It can be used by digital health solution providers in the
Amalgaland market to **de-risk product development** efforts and to
**accelerate** the delivery timeframes for new product releases. As a
further ecosystem accelerator, an instance of the Engine is operated by
the Digital Health Agency as a **shared service** that can be securely
called by an authenticated digital health solution.

Leveraging its **MOH-led approach**, Amalgaland ensures that it can
establish the key foundational elements needed to support its VBHS
agenda. Referencing Figure 7, the MOH has made strategic investments to
support getting to:

- **State-A**: Well-formed CCGs are available in a Guideline Repository;
  and

- **State-B**: the updated CCGs exist on a Guideline Engine.

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
System[^21] (LHS) strategy.

<figure>
<img src="image10.png"
style="width: 70%; object-fit: contain" />
<figcaption><strong>Figure 10 - Learning Health System</strong></figcaption>
</figure>
<br clear="all">

As an integrated provider, IH will operationalize and govern **all
four** of the key use cases IHE CCG Profile:

- Digital health teams at its academic health centres have formed a
  collaborative group that will develop and publish IH’s existing care
  protocols as FHIR-based CCGs.

  - To support the LHS strategy, at each encounter, IH’s CCGs will
    explicitly and deliberately capture patient function using WHO’s
    International Classification of Functioning, Disability and
    Health[^22] (ICF) codes.

  - To ensure it remains eligible for federal quality payment
    programs, the IH team will continuously augment its existing CCGs
    and develop new CCGs as additional federal incentive programs
    emerge.

  - All IH’s CCGs (and all its health databases) are based on the
    national core FHIR data model.

- As a long-time leader in digital health, IH is leveraging its deep
  health informatics expertise to customize a CCG Engine to capture
  copious runtime information that can be leveraged to support
  research-based analytics. This CCG Engine will support the entire IH
  care network and be regularly refreshed with IH’s most up-to-date
  CCGs.

- IH’s strong analytics capacity will be leveraged to help identify
  patients that should be, but are not now, enrolled in CCG-supported
  care pathways. The results of these analyses will be made available to
  both providers and patients during the appointment scheduling
  workflow.

- All IH care sites leverage an EMR platform that connects to the
  network’s shared health record through a dedicated HIE. This EMR
  platform will be enhanced to operationalize CCG-supported workflows,
  including a simplified UI for capturing ICF codes.

<figure>
<img src="image11.png"
style="width: 80%; object-fit: contain" />
<figcaption><strong>Figure 11 - Analyses of Data Outside the "Green
Zone"</strong></figcaption>
</figure>
<br clear="all">

IH’s CCG-supported approach will leverage the naturally occurring
variation across its large care network. At the same time the broad
adoption of CCGs will be ensuring consistent high-quality care delivery,
the deliberate systemic capturing of ICF codes will help IH to identify
“positive outliers”. In cases where CCGs’ recommendations are **not**
being followed – but where the outcomes are systemically better – IH’s
analyses will enable it to continuously improve the CCGs themselves.

### Example Scenario: Addressing Cognitive Overload

Fictitious rural physician, Dr. Black, has plans to purchase a new EMR
for her family medicine practice. A key reason for Dr. Black wanting to
switch out her existing EMR is the significant amount of time and effort
she finds herself expending on “busy work” and seemingly endless data
entry. This is time she would rather spend with her patients, or with
her young family (she finds herself, now, doing a lot of catch-up data entry outside of clinic hours). The relentlessness of the problem is putting her in
danger of physician burnout. Dr. Black has learned about CCGs and
believes in their potential to reduce her cognitive load while
simultaneously reducing her data entry burden.

The Provincial MOH has published a set of CCGs targeted at particularly
prevalent health concerns. An incentive payment program has been put
in place to encourage adoption of these new CCGs with additional bonuses
for multi-chronic-condition patients. Dr. Black has many such patients
in her practice and she has determined that the first year of incentives
will fund her plans to implement a new EMR.

<figure>
<img src="image12.png"
style="width: 80%; object-fit: contain" />
<figcaption><strong>Figure 12 - Reducing Cognitive Load</strong></figcaption>
</figure>
<br clear="all">

Dr. Black appreciates there will be two complementary aspects to
employing CCGs in her practice:

1.  For her patients, including Mr. Blue (for example), she will need to
    leverage her EMR to lookup the available CCGs that may be
    applicable. Where she and Mr. Blue agree, she will associate
    relevant CCGs with his health record and these CCG associations will
    become part of Mr. Blue’s patient summary.

2.  Thereafter, at each care encounter with Mr. Blue, his patient
    summary (and the associated CCGs) will be retrieved and leveraged.
    Over the course of the care encounter, Dr. Black’s EMR will
    iteratively propose CCG-informed recommendations. If they are
    non-controversial, these recommendations can be automatically
    accepted and actioned using the EMR’s “DO IT” button. (If she and
    Mr. Blue choose to *not* follow a recommendation, she just indicates
    the reason and *then* pushes the button). At the conclusion of the
    encounter, all the CCG-informed content will automatically be
    included in Mr. Blue’s *updated* patient summary.

Dr. Black anticipates that substantially reducing the data entry “busy
work” will leave more time for the doctor-patient engagement that
motivated her to enter medicine in the first place. Importantly, she
knows from the evidence that more consistently adhering to
guideline-based care will improve health outcomes for Mr. Blue and for
all her patients.

**Footnotes**

[^1]: The four levels of knowledge representation are described in the
    CPG-on-FHIR IG:
    <https://hl7.org/fhir/uv/cpg/documentation-approach-02-04-knowledge-representation.html>.
    A CCG is a level-3 (L3) artifact.

[^2]: <https://build.fhir.org/ig/HL7/cqf-recommendations/index.html>

[^3]: Organization of Economic Development country members: <https://www.oecd.org/en/about/members-partners.html>

[^4]: Low- and Middle-income Countries as defined by World Bank income
    stratification: <https://datahelpdesk.worldbank.org/knowledgebase/articles/906519-world-bank-country-and-lending-groups>

[^5]: <https://www.canada.ca/en/services/health/publications/diseases-conditions/prevalence-chronic-disease-risk-factors-canadians-aged-65-years-older.html>

[^6]: The estimate, from 2017, is that an economic cost of \$122 billion
    (CAD) relates to *indirect* income and productivity losses, and \$68
    billion in *direct* health care costs.

[^7]: <https://www.ourcommons.ca/content/committee/421/fina/brief/br9073636/br-external/chronicdiseasepreventionallianceofcanada-e.pdf>

[^8]: National Academies of Sciences, Engineering, and Medicine. 2018.
    Crossing the global quality chasm: Improving health care worldwide.
    Washington, DC: The National Academies Press.
    (<https://www.nap.edu/catalog/25152/crossing-the-global-quality-chasm-improving-health-care-worldwide>)

[^9]: <https://www.who.int/news/item/05-07-2018-low-quality-healthcare-is-increasing-the-burden-of-illness-and-health-costs-globally>

[^10]: <https://www.healthit.gov/test-method/decision-support-interventions>

[^11]: <https://www.healthit.gov/test-method/decision-support-interventions#ccg>

[^12]: <https://www.asiaehealthinformationnetwork.org/>

[^13]: <https://ohie.org/>

[^14]: <https://build.fhir.org/ig/HL7/cqf-recommendations/artifacts.html#activitydefinition-index>

[^15]: The four levels of knowledge representation are described in the
    CPG-on-FHIR IG:
    <https://hl7.org/fhir/uv/cpg/documentation-approach-02-04-knowledge-representation.html>.
    A CCG is a level-3 (L3) artifact.

[^16]: The Institute for Health Metrics and Evaluation (IHME) is a
    trusted research body. Country profiles related to burden of disease
    are regularly published, along with the supporting data related to
    disability-adjusted life years (DALYs).
    <https://www.healthdata.org/research-analysis/health-by-location/profiles>

[^17]: <https://www.who.int/news/item/23-09-2024-boosting-digital-health-can-help-prevent-millions-of-deaths-from-noncommunicable-diseases>

[^18]: <https://iris.who.int/bitstream/handle/10665/340724/9789240020344-eng.pdf?sequence=1>

[^19]: <https://macgrade.mcmaster.ca/resources/gin-mcmaster-guideline-development-checklist/>

[^20]: <https://www.authorea.com/users/701108/articles/687733-gin-mcmaster-guideline-development-checklist-extension-for-computable-guidelines>

[^21]: <https://www.ahrq.gov/learning-health-systems/about.html>

[^22]: <https://www.who.int/standards/classifications/international-classification-of-functioning-disability-and-health>
