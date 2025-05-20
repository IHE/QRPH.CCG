
## Significant Changes

### Significant Changes from Revision x.x

- not applicable

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/QRPH.CCG/issues) from the GitHub community. 
For those without GitHub access, issues may be submitted to the [QRPH Public Comment form](https://www.ihe.net/QRPH_Public_Comments/).

As issues are submitted they will be managed on the [CCG GitHub Issues](https://github.com/IHE/QRPH.CCG/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. 
It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

The QRPH Technical Committee is seeking inputs from potential jurisdictional implementers regarding the person-centric health data model *they* may favour for a CCG deployment. IHE's "base" model (defined in Volume-3) leverages the International Patient Summary (IPS) as its care continuity health data specification. It is expected, however, that national or regional care continuity specifications (e.g. PS:CA in Canada, EPS in Europe, NZPS in New Zealand, etc.) will be leveraged instead, where these exist. 

In addition to other feedback they may offer, reviewers are explicitly invited by the QRPH technical committee to comment on the following:

- What is the national (or regional) care continuity data model that you anticipate would be used in a CCG deployment in **your** jurisdiction?

- Are you confident that this national or regional health data model could be leveraged to support the definition of relevant CCG artefacts intended to be broadly scaled across the entire care delivery network? Specifically: is your care continuity data model a **capable basis** for clinical decision support? What might be its limitations?

- Although a single CCG may be explicitly invoked, this IHE specification also supports concurrently executing **multiple** CCGs. This means, however, it is possible for two incompatible care recommendations to be surfaced that will require adjudication by the clinician and the patient. For example, based on a patient's condition an "FDA Class-D drug" could be recommended by a CCG but because the subject is a *pregnant woman* such a drug is contra-indicated. IHE's position is that it must be decided by the clinician and patient if the health benefits to the mum outweigh the potential risks to the fetus - but that the *CCG recommendations that fire "TRUE"* should **always** be surfaced. What are the implications in ***your*** jurisdiction of such concurrent-CCG processing behaviour? 

- The IHE CCG Profile contains both normative transaction processing specifications and normative content ("CCG grammar") specifications. It is the belief of the authoring team that implementability, conformance-testability and consistent, repeatable CCG execution behaviour are well-served by the transaction processing and grammar being intertwined. **Both** aspects are needed for the CCG specification to "work". Published CCG *artefacts*, such as for Diabetes or HIV or Immunization or Antenatal Care (as examples), would need to all adhere to the same CCG grammar specification in order to be interoperable at runtime. In ***your*** view, should the IHE CCG Profile be broken into a separate transaction processing specification and "CCG grammar" specification?

During the authoring process, numerous commenters voiced dissenting views regarding the approach documented in this IHE CCG Profile. These are transparently available on the IHE CCG Zulip [thread](https://chat.fhir.org/#narrow/channel/179223-ihe/topic/IHE.20CCG.20Profile.20work.20stream/near/412254666) and may also be found as logged GitHub [Issues](https://github.com/IHE/QRPH.CCG/issues). This version of the IHE CCG Profile represents the views of the authoring team, which regularly met over the course of 2024. Dissenting voices (including from external parties not involved in the authoring) were *heard* - and in many cases influenced changes to the CCG specification - but not all arguments were found to be *persuasive*. 

### Closed Issues

- Not applicable
