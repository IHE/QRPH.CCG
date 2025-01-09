The deployment model is that each unique CCG Folder and its contents
will be contained in a **FHIR package** based on the
CPGComputableGuideline[^1] profile on which the following constraints
**SHALL** be abided:

- id = un-prefixed UUID per RFC 3986

- url = same UUID as id

- version = business version expressed using semver[^2], required

- title = human-friendly short title, required

- date = CCG publication date, required

- publisher = name of the CCG publisher, required to match the CCG
  Folder publisher

Guideline Publisher actors that support either the Digitally Signed
Folder or the Digitally Signed CARD option **SHALL** sign the CCG
Deployment Package using an ECDSA signature as described in the relevant
npm documentation.[^3]

**Footnotes**

[^1]: <https://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-computableguideline.html>

[^2]: <https://semver.org/>

[^3]: <https://docs.npmjs.com/about-registry-signatures>
