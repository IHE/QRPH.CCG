
The IHE Computable Care Guidelines (CCG) Profile specifies a normative grammar and a normative transaction processing model that allows evidence-based care recommendations to be expressed in a way that a digital health solution can ingest and operationalize. This is an implementable and conformance-testable specification. It is targeted to regulated healthcare markets where the support for multiple conditions is an important requirement. The CCG Profile supports jurisdictions that want to leverage digital health to systemically improve the adoption of guideline-adherent best practices across an entire care delivery network. 

<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide

This guide is organized into the following sections:

1. Volume 1:
   1. [Business Description](CCG_v1_over.html)
   1. [Actors](CCG_v1_actor.html)
2. Volume 2: Transaction Detail
   1. [QRPH-61 - Search for Guidelines](CCG_v2_x1.html)
   1. [QRPH-62 - Retrieve Guideline](CCG_v2_x2.html)
   1. [QRPH-63 - Publish Guidelines](CCG_v2_x3.html)
   1. [QRPH-64 - Apply Guidelines](CCG_v2_x4.html)
3. Volume 3: Metadata and Content
   1. [CCG Content Specs](CCG_v3_launch.html)
4. Volume 4: National Extensions
   1. [Jurisdictional Contextualizations](CCG_v4.html)
5. Other
   1. [Test Plan](testplan.html)
   1. [Changes to Other IHE Specifications](other.html)
   1. [Download and Analysis](download.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors should handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
