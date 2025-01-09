
Each evidence-based recommendation is expressed using one or more CCG
CARDs. All CCG CARDs are composed of a **PlanDefinition** plus an
**ActivityDefinition** resource. A CARD’s PlanDefinition may also
reference a **CQL** **library** and possibly other required resources.

For Guideline Publisher actors that support the **Digitally Signed
CARD** option, a digital signature for each of the CARD’s resources
**SHALL** be carried by a Provenance[^1] resource that **SHALL** be
included in the CCG’s deployment package (the Implementation Guide).

The following guidance **SHALL** apply to the Provenance resource:

- target = the resource’s id (PlanDefinition, ActivityDefinition,
  library, etc., respectively)

- recorded = timestamp of the signature

- agent.who = identifier of the CARD’s publisher

- signature.type.system = “http://hl7.org/fhir/ValueSet/signature-type”

- signature.type.code = “1.2.840.10065.1.12.1.1”

- signature.type.display = “Author’s Signature”

- signature.when = same timestamp as recorded

- signature.who = same identifier as agent.who

- signature.targetformat = “application/fhir+xml” or
  “application/fhir+json”

- signature.sigformat = “application/signature+xml” or
  “application/signature+json”

- data = either XML Signature[^2] or JSON Signature[^3], as per rules
  defined in the FHIR specification

**Footnotes:**

[^1]: <https://hl7.org/fhir/r4/provenance.html>

[^2]: <https://hl7.org/fhir/r4/datatypes.html#XML>

[^3]: <https://hl7.org/fhir/r4/datatypes.html#JSON>
