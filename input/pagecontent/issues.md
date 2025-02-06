
## Significant Changes

### Significant Changes from Revision x.x

- change 1
- change 2
- etc.

## Issues

### Submit an Issue

### Open Issues

- Are we limiting this profile to high bandwidth countries only?: In Vol 3, there is are [requirements](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v3_launch.html#transactional-content) to repeatedly send an IPS bundle back and forth between the Guideline Performer and the Guideline Engine.  The bandwidth requirements of such repeated transactions should be evaluated to determine if they are feasible in low bandwidth settings.

- Is this an interoperability profile?:  The majority of the requirements in this profile are in Vol 3 which are describing application behaviour.  The interoperability problem that is being addressed by this profile should be clearly stated.  Looking at 2.1.12 of the [governance document](https://www.ihe.net/wp-content/uploads/IHE-Intl-Governance-Amended_2024-10-10.pdf) we have thhe IHE's Interoperability-orientation where "Developed specifications focus on details essential to
interoperability rather than application design details."

- Should a content profile define expected behaviors on actors?: in volume 3, there are a number of expect behaviors for the actors being defined. usually these things are defined in Vol 2.
  
- Can Vol 2 require something from Vol 3?:  Currently the CCG profile has a Vol 3 content profile that is [required](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator)  by Vol 2.   This does not seem in line with typical IHE use of Content Profiles.

- Should the IPS be required?:  Currently the IPS is a required document for the CCG profile.  This is because in Vol 2, there is a [reference](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator) to requiring a Guideline Repository actor "SHALL prepare an up-to-date contextual content bundle adherent to the specification in the Vol-3 section: Contextual Content Bundle."  Looking in Vol 3, the [Contextual Content Bundle](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v3_launch.html#contextual-content-data-in-bundle)_ is required to be an IPS.   Moreover, it was decided earlier by the QRPH committee that references to the IPS as a requirement would be left to Vol 4.

- What is the best location of Folder and Card Metapahor content?:  Currently the F&CM content exists in Vol 1 and Vol 3 of the CCG profile.  As the F&CM only appears to impact content in Vol 3, and not Vol 2, it was raised that the F&CM content in Vol 1 should be moved to Vol 3.  In particular, with [one exception](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator) there does not appear to be any references or requirements in Vol 2 to the F&CM.   Howecer, it is unclear why this transcation (or any of the other transactions) would require the F&CM.  

- What is the business justificaiton For The Folder and Card Metapahor: On the [official Zulip thread](https://chat.fhir.org/#narrow/channel/179223-ihe/topic/IHE.20CCG.20Profile.20work.20stream/near/412254666) for "those who may want to contribute (or just track its progress), IHE's Quality, Research and Public Health (QRPH) technical committee has restarted the Computable Care Guidelines (CCG) Profile" there is an open question on the underlying requirement behind the "Folder and Card Metaphor."  There is a signifigant outstanding debate as to why the Folder and Card Metaphor is a requirement for the CCG profile.   There has been an assertion that, without the assumption of the F&CM, the use cases behind the CCG profile would be "too complex" to implement.  However, the discussion on the Zulip thread on this topic has not left any clear resolution.   There is reason to believe that, as discussed in this thread, the F&CM would actually increase complexity for the Guideline author and the Guideline repository.   Without a clear business requirement underlying the F&CM metaphor requirement, one option that was proposed was to remove the F&CM from the CCG profile.   
  
- Why is there a reference to IPS in Vol 2?:  In the [Apply Guideline](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html) transaction there are two references to IPS.  It is unclear what these references are for, as the IPS specific content was decided to be relgated to Vol 4.

- What are the results of the $apply operation?: The $apply operation for PlanDefinition in the base FHIR resource and the CPG profile resuts in a number of Request resources (e.g. CommunicationRequest, ServiceRequest).  However, in the Vol 3 of CCG, it seems to suggest that the result of $apply to a PlanDefinition would result in the fufillment of these request resources. For example a $apply of "Communication Card" results in a Commnuincation resource and not a CommunicationRequest.  In other cases only a request resource is a result.  In the FHIR base specification, PlanDefinition reosurces are comprised of ActivityDefinition resources, and the $apply on a PlanDefintion is the applicaiton of the $apply for the contained ActivityDefintions.  The result of [$apply](https://build.fhir.org/activitydefinition.html#12.22.2) is a Request resource (e.g. CommunicationRequest) and *not* an event resource (e.g. Communication).  Specifically, "An instance of an ActivityDefinition does not indicate that any action has been performed (as an event resource does), nor does it indicate the actual intent to carry out any particular action (as a request resource does). Instead, an activity definition provides a reusable template that can be used to construct specific request resources such as ServiceRequest and MedicationRequest."   Perhaps something different was intended by the authors with regards to the 'resulting data' but this is not defined anywhere.  Is the resulting the application of the $apply to a specific card/activitiy defintion (this is not the case for the Communication card as indicated above) or is it something else (e.g. does each CARD have its own resultant data type that is sometimes a request resource and sometimes an event resource)?  .  There does seem to be some attempt in Vol 3 to define the resulting data for each card type, however there are statements such as this for the referall card "After processing the Apply Guidelines transaction response, the Resulting Data from this CARD SHALL be a Referral Order ServiceRequest resource based on the CPGServiceRequest profile with either status=draft or status=revoked (indicating not done)" however the notion of a "Referral Order ServiceRequest" is not defined.  In any case, the CCG $apply definition is therefore not compatible with the underlying base specifications as there seems to be additional expected behaviour defined in Vol 3, as as the result of the CCG $apply operation is not analogous to CPG or PlanDefinition $apply, then it should be renamed to something different to avoid confusion.   

- Should CPG or FHIR requirements be repeated?:  There are several places where existing requirements from the CPG Implementation Guide or the base FHIR resources are repeated.  This is not in general considered best practices as it can cause confusion for the reader (e.g. is this restated requirement to be undertood somehow different that the base standard? otherwise, why has it been restated? ) and burdens IHE with tracking and replicating any changes from the base specifications in the IHE.  For example in Vol 1, there is a requirement that $apply is an [idempotent operation](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v1_over.html#folder-and-cards-metaphor) which is already a requirement in the base FHIR PlanDefinition resource for that operation.  


### Closed Issues

- ToDo_002: this is closed issue 2
