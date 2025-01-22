Profile: CCG_CARD_PlanDefinition
Parent: CPGComputablePlanDefinition
Id: ccg-card-pd-base
Title: "Base CARD PlanDefinition"
Description: "Profile to serve as the basis for all CARD PlanDefinitions based on the CPG Computable PlanDefinition"
* ^abstract = true
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* type = #eca-rule (exactly)
* date 1..1
* publisher 1..1
* relatedArtifact 1..
* action
  * trigger 0..0
  * condition 1..
    * kind = #applicability (exactly)
  * definitionCanonical only Canonical(ccg-card-ad-base)
     
Profile: CCG_CARD_ActivityDefinition
Parent: cpg-computableactivity
Id: ccg-card-ad-base
Title: "Base CARD ActivityDefinition"
Description: "Profile to serve as the basis for all CARD ActivityDefinitions based on the CPG Communication Activity"
* ^abstract = true
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1

Profile: CCG_CARD_Library
Parent: cql-library
Id: ccg-card-library
Title: "CCG Library for CARDs"
Description: "Profile to serve as the basis for all CARD definitions referencing Library resources based on the CPG CQL Library"
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1

Profile: CCG_CARD_Folder
Parent: CPGComputablePlanDefinition
Id: ccg-card-folder
Title: "CCG CARD Folder PlanDefinition"
Description: "Each unique CCG will be expressed as a PlanDefinition (a CCG Folder) that lists the CCG's defined CARDs"
* id 1..1
* url 1..1
* name 1..1
* text 1..1
* title 1..1
* date 1..1
* publisher 1..1
* type = #clinical-protocol (exactly)
* action 1..
* action.definitionCanonical only Canonical(CCG_CARD_PlanDefinition)

Profile: CCG_Signature
Parent: Provenance
Id: ccg-signature
Title: "CCG CARD Digital Signature"
Description: "This is a profile on the FHIR Provenance resource to align with CCG requirements for signature"
* recorded ^short = "timestamp of the signature"
* agent.who only Reference(Organization)
* agent.who ^short = "identifier of the CARD&apos;s publisher"
* signature.type.system = "http://hl7.org/fhir/ValueSet/signature-type"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.type.display = "Author&apos;s Signature"
* signature.when ^short = "timestamp of the signature"
* signature.who ^short = "identifier of the CARD&apos;s publisher"
* signature.targetFormat from ccg-signature-target
* signature.sigFormat from ccg-signature-sigformat

ValueSet: CCG_Sign_Target_VS
Id: ccg-signature-target
Title: "AllowedSignature targetFormat"
Description: "Constraining to fhir only"
* http://hl7.org/fhir/ValueSet/mimetypes#application/fhir+xml
* http://hl7.org/fhir/ValueSet/mimetypes#application/fhir+json

ValueSet: CCG_Sign_sigformat_VS
Id: ccg-signature-sigformat
Title: "AllowedSignature signatureFormat"
Description: "Constraining to signature xml and json only"
* http://hl7.org/fhir/ValueSet/mimetypes#application/signature+xml
* http://hl7.org/fhir/ValueSet/mimetypes#application/signature+json
