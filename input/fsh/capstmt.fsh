Instance: IHE.CCG.GuidelineEngine
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/QRPH/CCG/CapabilityStatement/IHE.CCG.GuidelineEngine"
* name = "IHE_CCG_GuidelineEngine"
* title = "Guideline Engine"
* status = #active
* experimental = false
* date = 2025-02-12
* description = "IHE QRPH Computable Care Guidelines (CCG) - Guideline Engine."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server
* rest.security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
* rest.resource[0].type = #Bundle
* rest.resource[=].profile = "https://profiles.ihe.net/QRPH/CCG/StructureDefinition/ccg-di-bundle"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource.operation.name = "$apply"
* rest.resource.operation.definition = "http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-plandefinition-apply"

Instance: IHE.CCG.GuidelinePerformer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/QRPH/CCG/CapabilityStatement/IHE.CCG.GuidelinePerformer"
* name = "IHE_CCG_GuidelinePerformer"
* title = "Guideline Performer"
* status = #active
* experimental = false
* date = 2025-02-12
* description = "IHE QRPH Computable Care Guidelines (CCG) - Guideline Performer."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #client
* rest.resource.type = #Bundle
* rest.resource.interaction.code = #create
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "https://profiles.ihe.net/QRPH/CCG/StructureDefinition/ccg-di-bundle"
