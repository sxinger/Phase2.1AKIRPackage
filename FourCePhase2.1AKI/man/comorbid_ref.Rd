% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comorbid_ref.R
\docType{data}
\name{comorbid_ref}
\alias{comorbid_ref}
\title{Diagnoses Codes for Common Comorbidities and Thrombotic Events}
\format{
An object of class \code{data.frame} with 3698 rows and 5 columns.
}
\usage{
data(comorbid_ref)
}
\description{
This table contains ICD9 and ICD10 codes for diagnoses pertaining to the following broad categories:
\enumerate{
\item Cardiovascular Risk Factors (Diabetes mellitus, hypertension, hyperlipidemia, ischemic heart
disease)
\item Chronic kidney disease / End-stage Renal Failure
\item Malignancies (solid tumours, myeloproliferative and lymphoproliferative disorders)
\item Thrombo-embolic events (e.g. pulmonary embolism, myocardial infarction, deep vein thromboembolism,
arterial thromboembolism)
\item Pulmonary diseases (e.g. asthma, chronic obstructive pulmonary disease, pulmonary tuberculosis,
interstitial lung diseases)
\item Rheumatological conditions (e.g. rheumatoid arthritis, systemic lupus erythematosus, systemic
sclerosis, dermatomyositis, polymyositis, Sjogren's syndrome)
}
}
\details{
The headers in the table are as follows:
\itemize{
\item icd_version - ICD version ("DIAG-ICD9" or "DIAG-ICD10")
\item icd_code - shortened ICD code (see below)
\item full_code - full ICD code (see below)
\item comorbid_type - diagnosis category as above
\item description - full-text description of diagnosis
}

Due to the variations in the way ICD codes may be stored, we have adhered to the following conventions:
\itemize{
\item icd_code will store the broad category of the diagnosis
\item Full ICD diagnosis codes will have the major category and subcategory separated by a period.
For example, the ICD-10 diagnosis "Chronic kidney disease, stage 1" with full code N18.1 will have
icd_code = "N18" and full_code = "N18.1".
Please ensure that your data tables store diagnoses codes as their broad categories. (e.g. N18.1 will be
stored as "N18").
In future versions, this convention may be changed depending on the granularity required for analysis.
}
}
\keyword{datasets}
