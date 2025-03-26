Instance: card-example-stopsrv
InstanceOf: ccg-card-stopsrv
Title: "CARD Stop Service Order"
Description: "Example CCG CARD to Recommend Stopping a Service Order"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-stopsrv"
* version = "1.0.0"
* name = "ExampleCARDstopsrv"
* title = "CCG CARD example - recommend stopping a service order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Stop Service Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#stopsrv
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/publications/i/item/9789240033986"
* library = "http://example.org/Library/stopsrv"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Cancel Outpatient Electrocardiogram Order"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-stopservice-ad"

Instance: card-example-stoprx
InstanceOf: ccg-card-stoprx
Title: "CARD Stop Medication Order"
Description: "Example CCG CARD to Recommend Stopping a Medication Order"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-stoprx"
* version = "1.0.0"
* name = "ExampleCARDstoprx"
* title = "CCG CARD example - recommend stopping a medication order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Stop Medication Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#stoprx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/publications/i/item/9789240033986"
* library = "http://example.org/Library/stoprx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Second-line Hypertension Meds Recommended to Replace First-line"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-stopmedication-ad"

Instance: card-example-reqref
InstanceOf: ccg-card-reqrefserv
Title: "CARD Recommend Referral Order"
Description: "Example CCG CARD to Recommend a Referral Order"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-reqref"
* version = "1.0.0"
* name = "ExampleCARDreqref"
* title = "CCG CARD example - recommend referral order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Recommend Referral Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqref
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/publications/i/item/9789240033986"
* library = "http://example.org/Library/reqref"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Referral to Hospital Recommended"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-ref-ad"

Instance: card-example-reqrad
InstanceOf: ccg-card-reqradserv
Title: "CARD Recommend Radiology Order"
Description: "Example CCG CARD to Recommend a Radiology Order"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-reqrad"
* version = "1.0.0"
* name = "ExampleCARDreqrad"
* title = "CCG CARD example - recommend radiology order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Recommend Radiology Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqrad
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/publications/i/item/9789240033986"
* library = "http://example.org/Library/reqrad"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "DI recommended"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-rad-ad"

Instance: card-example-reqproc
InstanceOf: ccg-card-reqprocserv
Title: "CARD Recommend Procedure Order"
Description: "Example CCG CARD to Recommend a Procedure"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-reqproc"
* version = "1.0.0"
* name = "ExampleCARDreqproc"
* title = "CCG CARD example - recommend procedure order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Recommend Procedure Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqproc
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/reqproc"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "More than 12 months since last retinal exam"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-proc-ad"

Instance: card-example-reqlab
InstanceOf: ccg-card-reqserv-labs
Title: "CARD Recommend Lab Order"
Description: "Example CCG CARD to Recommend a Lab Order"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-reqlab"
* version = "1.0.0"
* name = "ExampleCARDreqlab"
* title = "CCG CARD example - recommend lab order"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Recommend Lab Order CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqlab
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/reqlab"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "More than 6 months since last HbA1C"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-orderservice-lab-ad"

Instance: card-example-reqvx
InstanceOf: ccg-card-reqvx
Title: "CARD Recommend Immunization"
Description: "Example CCG CARD to Recommend an Immunization"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-reqvx"
* version = "1.0.0"
* name = "ExampleCARDreqvx"
* title = "CCG CARD example - recommend immunization"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Recommend Immunization CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#reqvx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/reqvx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Recommend COVID booster"
* action.definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/activity-example-recommendimmunization-ad"

Instance: card-example-provide
InstanceOf: ccg-card-provide
Title: "CARD Provide Information"
Description: "Example CCG CARD to Provide Information"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-provide"
* version = "1.0.0"
* name = "ExampleCARDprovide"
* title = "CCG CARD example - provide information"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for a Provide Information CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#provide
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/provide"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Diabetes Educational Materials to be Provided"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-sendmessage-ad"

Instance: card-example-propdx
InstanceOf: ccg-card-proposedx
Title: "CARD Propose Diagnosis"
Description: "Example CCG CARD to Propose a Diagnosis"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-propdx"
* version = "1.0.0"
* name = "ExampleCARDpropdx"
* title = "CCG CARD example - propose a diagnosis"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Propose Diagnosis CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#propdx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/propdx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "HbA1C results indicate Diabetes"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-proposediagnosis-ad"

Instance: card-example-orderrx
InstanceOf: ccg-card-orderrx
Title: "CARD Order Medication"
Description: "Example CCG CARD to Order Medication"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-orderrx"
* version = "1.0.0"
* name = "ExampleCARDorderrx"
* title = "CCG CARD example - order medication"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Order Medication CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#orderrx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/orderrx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "HbA1C not controlled by diet"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-ordermedication-ad"

Instance: card-example-disprx
InstanceOf: ccg-card-disprx
Title: "CARD Dispense Medication"
Description: "Example CCG CARD to Dispense Medication"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-disprx"
* version = "1.0.0"
* name = "ExampleCARDdisprx"
* title = "CCG CARD example - dispense medication"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Dispense Medication CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#disprx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/disprx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Insulin Medication Order exists and can be filled"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-dispensemedication-ad"

Instance: card-example-collect
InstanceOf: ccg-card-collect
Title: "CARD Collect Information"
Description: "Example CCG CARD to Collect Information"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-collect"
* version = "1.0.0"
* name = "ExampleCARDcollect"
* title = "CCG CARD example - collect information"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Collect Information CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#collect
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/collect"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Measure and Record BP"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-collectinformation-ad"

Instance: card-example-adminrx
InstanceOf: ccg-card-adminrx
Title: "CARD Administer Medication"
Description: "Example CCG CARD to Administer Medication"
Usage: #example
* url = "http://example.org/PlanDefinition/card-example-adminrx"
* version = "1.0.0"
* name = "ExampleCARDadminrx"
* title = "CCG CARD example - administer medication"
* type = $PlanDefType#eca-rule
* status = #active
* experimental = true
* date = "2024-11-18T17:56:55+00:00"
* publisher = "Pyke Health IT Inc."
* description = "IHE CCG example for Administer Medications CARD (based on HL7 CPG example)"
* topic.coding = https://profiles.ihe.net/QRPH/CCG/CodeSystem/ccg-card-type-cs#adminrx
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact.type = #documentation
* relatedArtifact.url = "https://www.who.int/southeastasia/publications/i/item/who-ucn-ncd-20.1"
* library = "http://example.org/Library/adminrx"
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Insulin Dispensed"
* action.definitionCanonical = "http://example.org/fhir/uv/cpg/ActivityDefinition/activity-example-administermedication-ad"

Instance: example-ccg-CARD-signature
InstanceOf: ccg-signature
Title: "CARD Digital Signature example"
Description: "Example FHIR Provenance resource for CARD digital signature"
Usage: #example
* target = Reference(ActivityDefinition/activity-example-stopservice-ad)
* recorded = "2015-08-27T08:39:24+10:00"
* agent.who = Reference(Organization/Organization-14)
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2015-08-27T08:39:24+10:00"
* signature.who = Reference(Organization/Organization-14)
* signature.targetFormat = #application/fhir+json
* signature.sigFormat = #application/signature+json
* signature.data = "Li4u"