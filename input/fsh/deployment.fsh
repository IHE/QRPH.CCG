Profile: CCG_Deployment_Package
Parent: cpg-computableguideline
Id: ccg-deployment
Title: "CCG Deployment Package (IG)"
Description: "The deployment model is that each unique CCG Folder and its contents will be contained in a FHIR package."
* id 1..1
* obeys CCG-ID-and-URL-match
* title 1..1
* date 1..1
* publisher 1..1 
* publisher ^short = "Required to match publisher of CCG Folder"

Invariant: CCG-ID-and-URL-match
Description: "Deployment Package .id and .url must both be an OID that matches, .id will be unprefixed"
Expression: "url.contains(id).not()"
Severity: #error

