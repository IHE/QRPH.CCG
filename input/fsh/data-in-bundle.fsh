Profile: CCG_Data_In_Encounter
Parent: cpg-encounter
Id: ccg-di-encounter
Title: "CCG Data-In Bundle Encounter"
Description: "Identifies the Encounter to which the CCG Apply Guideline transaction is relevant."
* id 1..1
* status = #in-progress (exactly)
* period.start 1..1
* period.end 0..0
* serviceProvider MS

Profile: CCG_Data_In_Practitioner
Parent: cpg-practitioner
Id: ccg-di-practitioner
Title: "CCG Data-In Bundle Practitioner"
Description: "Identifies the Practitioner initiating the CCG Apply Guideline transaction"
* id 1..1
* address MS

Profile: CCG_Data_In_PractitionerRole 
Parent: cpg-practitionerrole
Id: ccg-di-practitionerrole
Title: "CCG Data-In Bundle PractitionerRole"
Description: "Role of the Practitioner in the Data-in Bundle"
* id 1..1
* organization MS
* specialty MS

Profile: CCG_Data_In_Location 
Parent: cpg-location
Id: ccg-di-location
Title: "CCG Data-In Bundle Location"
Description: "Location of the Encounter in the Data-in Bundle"
* id 1..1
* identifier MS
* address MS
* position MS
* physicalType MS

Profile: CCG_Data_In_Organization 
Parent: cpg-organization
Id: ccg-di-organization
Title: "CCG Data-In Bundle Organization"
Description: "Organization relevant to the current Encounter"
* id 1..1
* address MS
* telecom MS

Profile: CCG_Data_In_IPS_Composition
Parent: Composition-uv-ips
Id: ccg-di-ips-composition
Title: "CCG Data-In Bundle IPS Composition Resource"
Description: "IPS Composition Resource Profiled for use with CCG"

* section[sectionVitalSigns] MS
* section[sectionPastIllnessHx] MS
* section[sectionFunctionalStatus] MS
* section[sectionPlanOfCare] 1..1

Profile: CCG_Data_In_IPS_CarePlan
Parent: CarePlan
Id: ccg-data-in-ips-careplan
Title: "CCG Data-In Bundle IPS CarePlan Specific Resource"
Description: "This is a CarePlan profile that forces at least one of the activity.definitionCanonical to be a CARD Folder"
* activity.detail.instantiatesCanonical 1..*
* activity.detail.instantiatesCanonical ^slicing.discriminator[0].type = #type
* activity.detail.instantiatesCanonical ^slicing.discriminator[=].path = "$this"
* activity.detail.instantiatesCanonical ^slicing.rules = #open
* activity.detail.instantiatesCanonical contains
    folder 1..*
* activity.detail.instantiatesCanonical[folder] only Canonical(ccg-card-folder)


Profile: CCG_IPS_Bundle
Parent: Bundle
Id: ccg-di-ips-bundle
Title: "CCG IPS Bundle"
Description: "This bundle follows the IPS Bundle with the exception of using the CCG Composition"
* obeys bdl-ips-1
* identifier 1.. MS
* type = #document (exactly)
* timestamp 1.. MS
* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
    allergyintolerance 0..* and
    condition 0..* and
    device 0..* and
    deviceusestatement 0..* and
    diagnosticreport 0..* and
    imagingstudy 0..* and
    immunization 0..* and
    medication 0..* and
    medicationrequest 0..* and
    medicationstatement 0..* and
    practitioner 0..* and
    practitionerrole 0..* and
    procedure 0..* and
    organization 0..* and
    observation-pregnancy-edd 0..* and
    observation-pregnancy-outcome 0..* and
    observation-pregnancy-status 0..* and
    observation-alcohol-use 0..* and
    observation-tobacco-use 0..* and
    observation-results-laboratory-pathology 0..* and
    observation-results-radiology 0..* and
    observation-vital-signs 0..* and
    specimen 0..* and
    clinicalimpression 0..* and
    careplan 1..* and
    consent 0..* and
    documentreference 0..*
* entry[composition].resource 1..
* entry[composition].resource only ccg-di-ips-composition
* entry[patient].resource 1..
* entry[patient].resource only PatientUvIps
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only AllergyIntoleranceUvIps
* entry[condition].resource 1..
* entry[condition].resource only ConditionUvIps
* entry[device].resource 1..
* entry[device].resource only Device
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only DeviceUseStatementUvIps
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only DiagnosticReportUvIps
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only ImagingStudyUvIps
* entry[immunization].resource 1..
* entry[immunization].resource only ImmunizationUvIps
* entry[medication].resource 1..
* entry[medication].resource only MedicationIPS
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only MedicationRequestIPS
* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only MedicationStatementIPS
* entry[practitioner].resource 1..
* entry[practitioner].resource only PractitionerUvIps
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only PractitionerRoleUvIps
* entry[procedure].resource 1..
* entry[procedure].resource only ProcedureUvIps
* entry[organization].resource 1..
* entry[organization].resource only OrganizationUvIps
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only ObservationPregnancyEddUvIps
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only ObservationPregnancyOutcomeUvIps
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only ObservationPregnancyStatusUvIps
* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only ObservationAlcoholUseUvIps
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only ObservationTobaccoUseUvIps
* entry[observation-results-laboratory-pathology].resource 1..
* entry[observation-results-laboratory-pathology].resource only Observation-results-pathology-uv-ips
* entry[observation-results-radiology].resource 1..
* entry[observation-results-radiology].resource only ObservationResultsRadiologyUvIps
* entry[observation-vital-signs].resource 1..
* entry[observation-vital-signs].resource only $vital-signs-profile
* entry[specimen].resource 1..
* entry[specimen].resource only SpecimenUvIps
* entry[clinicalimpression].resource 1..
* entry[clinicalimpression].resource only ClinicalImpression
* entry[careplan].resource 1..
* entry[careplan].resource only CCG_Data_In_IPS_CarePlan
* entry[consent].resource 1..
* entry[consent].resource only Consent
* entry[documentreference].resource 1..
* entry[documentreference].resource only DocumentReference

Invariant: bdl-ips-1
Description: "An IPS document must have no additional Composition (including Composition subclass) resources besides the first."
* severity = #error
* expression = "entry.tail().where(resource is Composition).empty()"

Profile: CCG_DataIn_Bundle
Parent: Bundle
Id: ccg-di-bundle
Title: "CCG Data In Bundle"
Description: "CCG Data Input Bundle. \r\nA container for a collection of resources that is passed as part of the Apply Guideline transaction submission. This bundle represents the content that will be used by the Guideline Engine to evaluate all relevant CCG CARD&amp;s condition statements during the $apply operation."
* type = #collection (exactly)
* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the CCG Data In bundle"
* entry ^definition = "An entry resource included in the CCG DAta In document bundle resource."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    di-encounter 1..1 and
    di-practitioner 1..1 and
    di-practitionerrole 1..1 and
    di-location 1..1 and
    di-organization 1..1 and
    di-ips-bundle 1..1
* entry[di-encounter].resource 1..
* entry[di-encounter].resource only ccg-di-encounter
* entry[di-practitioner].resource 1..
* entry[di-practitioner].resource only ccg-di-practitioner
* entry[di-practitionerrole].resource 1..
* entry[di-practitionerrole].resource only ccg-di-practitionerrole
* entry[di-location].resource 1..
* entry[di-location].resource only ccg-di-location
* entry[di-organization].resource 1..
* entry[di-organization].resource only ccg-di-organization
* entry[di-ips-bundle].resource 1..
* entry[di-ips-bundle].resource only ccg-di-ips-bundle