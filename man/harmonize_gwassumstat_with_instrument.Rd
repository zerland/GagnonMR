% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/harmonize_gwassumstat_with_instrument.R
\name{harmonize_gwassumstat_with_instrument}
\alias{harmonize_gwassumstat_with_instrument}
\title{harmonise your instrument and your outcome}
\usage{
harmonize_gwassumstat_with_instrument(
  inst,
  action = 1,
  gwas_file,
  snp_col,
  outcome_name,
  beta_col,
  se_col,
  pval_col,
  eaf_col,
  effect_allele_col,
  other_allele_col,
  ncase_col = "ncase",
  ncontrol_col = "ncontrol",
  samplesize_col = "samplesize",
  snp_format = "rsids",
  units_col,
  prevalence_col = 1
)
}
\arguments{
\item{inst}{the gwas sumstat of your instrument in character. Your instrument must exist in the global environnemnt.}

\item{action}{same as harmonise_data}

\item{gwas_file}{the directory where the gwas sumstat of the outcome lay.}

\item{snp_col}{the name of the Snp column.}

\item{outcome_name}{the name you want to give your outcome}

\item{beta_col}{the name of the beta column}

\item{se_col}{the name of the se coumn}

\item{pval_col}{the name of the pval column}

\item{eaf_col}{the name of the eaf column}

\item{effect_allele_col}{the name of the efffect_allele column}

\item{other_allele_col}{the name of the other_allele_col}

\item{ncase_col}{how many case? numeric. if continuous supply "ncase"}

\item{ncontrol_col}{how many control? numeric. if continuous supply "ncontrol".}

\item{samplesize_col}{total samplesize (ncase+nconrol). numeric. if the data has a samplesize column. simply provide the name of that column.}

\item{snp_format}{can take two values either "rsids" or "chr:bp". if "chr:bp" will attempt to convert to rsids.}

\item{units_col}{if the outcome is continuous units are in standard deviation supply "SD". if the outcome is dichotomous supply "log odds". if the outcome is continuous and units are not is SD (years, Cm , Mm ,etc.) supply a character of your units.}

\item{prevalence_col}{if outcome is binary provide the prevalence of the condition in the general population. if it is continuous supply as.numeric("1").}
}
\value{
a data.frame of harmonised data.
}
\description{
inst_IBD <- fread("/mnt/sda/gagelo01/Projects/Dysbiose_project/Data/Modified/Instruments/inst_IBD")
harmonize_gwassumstat_with_instrument( inst = "inst_IBD",
action = 1,
gwas_file = "/home/couchr02/Mendel_Commun/Christian/GWAS/40_diseases/CAD_META.gz",
snp_col = "oldID",
outcome_name = "van_der_Harst_CAD",
beta_col = "Effect",
se_col = "StdErr",
pval_col = "P-value",
eaf_col = "Freq1",
effect_allele_col = "Allele1",
other_allele_col = "Allele2",
ncase_col = 122733,
ncontrol_col = 424528,
samplesize_col = 122733+424528,
snp_format = "rsids",
units_col = "log odds",
prevalence_col = 0.11)
}
