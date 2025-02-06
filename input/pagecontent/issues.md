
## Significant Changes

### Significant Changes from Revision x.x

- change 1
- change 2
- etc.

## Issues

### Submit an Issue

### Open Issues

- Can Vol 2 require something from Vol 3:  Currently the CCG profile has a Vol 3 content profile that is [required](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator)  by Vol 2.   This does not seem in line with typical IHE use of Content Profiles.

- Should the IPS be required?:  Currently the IPS is a required document for the CCG profile.  This is because in Vol 2, there is a [reference](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator) to requiring a Guideline Repository actor "SHALL prepare an up-to-date contextual content bundle adherent to the specification in the Vol-3 section: Contextual Content Bundle."  Looking in Vol 3, the [Contextual Content Bundle](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v3_launch.html#contextual-content-data-in-bundle)_ is required to be an IPS.   Moreover, it was decided earlier by the QRPH committee that references to the IPS as a requirement would be left to Vol 4.

- What is the best location of Folder and Card Metapahor content?:  Currently the F&CM content exists in Vol 1 and Vol 3 of the CCG profile.  As the F&CM only appears to impact content in Vol 3, and not Vol 2, it was raised that the F&CM content in Vol 1 should be moved to Vol 3.  In particular, with [one exception](https://build.fhir.org/ig/IHE/QRPH.CCG/CCG_v2_x4.html#expected-actions---initiator) there does not appear to be any references or requirements in Vol 2 to the F&CM.   Howecer, it is unclear why this transcation (or any of the other transactions) would require the F&CM.  

- What is the business justificaiton For The Folder and Card Metapahor: On the [official Zulip thread](https://chat.fhir.org/#narrow/channel/179223-ihe/topic/IHE.20CCG.20Profile.20work.20stream/near/412254666) for "those who may want to contribute (or just track its progress), IHE's Quality, Research and Public Health (QRPH) technical committee has restarted the Computable Care Guidelines (CCG) Profile" there is an open question on the underlying requirement behind the "Folder and Card Metaphor."  There is a signifigant outstanding debate as to why the Folder and Card Metaphor is a requirement for the CCG profile.   There has been an assertion that, without the assumption of the F&CM, the use cases behind the CCG profile would be "too complex" to implement.  However, the discussion on the Zulip thread on this topic has not left any clear resolution.   There is reason to believe that, as discussed in this thread, that the F&CM would actually increase complexity for the Guideline author and the Guideline repository.   Without a clear business requirement underlying the F&CM metaphor requirement, one option that was proposed was to remove the F&CM from the CCG profile.   
  

### Closed Issues

- ToDo_002: this is closed issue 2
