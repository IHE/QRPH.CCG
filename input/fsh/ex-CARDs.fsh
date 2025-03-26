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