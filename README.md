# Data and Scripts Repository

This repository contains all scripts, raw data, and supporting files required to reproduce the analyses and figures presented in the manuscript.

Each folder corresponds to one **analysis section** of the Results section of the manuscript.

---

## Folder organization

The naming convention follows:

`X_Part-Y-Analysis_Name`

where:

- **X_Part** = major Results section of the manuscript
- **Y** = chronological order of appearance within the manuscript
- **Analysis_Name** = type of analysis performed

Each analysis folder contains:

- scripts used to generate the corresponding figures
- raw input data
- processed data (when applicable)
- additional files required to run the analysis
- generated output files (when applicable)

---

## Figure mapping

The table below indicates the correspondence between each analysis folder and the associated figure(s) in the manuscript.

| Folder | Corresponding Figure(s) |
|---|---|
| 1st_Part-1-190_Carbon_Screening | Figure 1 / Supplementary Figure 1 |
| 1st_Part-2-Methyl_Sugars_Screening | Figure 1 |
| 1st_Part-3-Microscopy+qPCR | Figure 1 |
| 1st_Part-4-Single_Pathogens_Colonization_Roots | Figure 1 / Supplementary Figures 2, 3, 4 |
| 1st_Part-5-3OMG_Gradient | Supplementary Figure 2 |
| 2nd_Part-1-Single_Pathogens_Colonization_Matrices | Figure 2 / Supplementary Figure 5 |
| 2nd_Part-2_Fungal_Growth_Screening | Figure 2 / Supplementary Figure 5 |
| 2nd_Part-3-Fungal_3OMG_labelled | Figure 2 |
| 2nd_Part-4-Fungal_Transcriptome | Figure 2 / Supplementary Figure 6 |
| 2nd_Part-5-Carbohydrates_Supplementation | Figure 2 |
| 2nd_Part-6-3-OMG_Citotoxicity | Supplementary Figure 7 |
| 2nd_Part-7-Glucose_Gradient | Figure 2 / Supplementary Figure 7 |
| 3rd_Part-1-3-OMG_Phytotoxicity | Figure 3 |
| 3rd_Part-2-Glucose_Gradient | Figure 3 |
| 3rd_Part-3-3OMG_TimePoints | Figure 3 |
| 3rd_Part-4-Plant_3OMG_labelled | Figure 3 |
| 3rd_Part-5-Plant_Transcriptome | Figure 3 / Supplementary Figure 6 |
| 3rd_Part-6-Arabidopsis_Mutants_Screening | Figure 3 / Supplementary Figure 8 |
| 3rd_Part-7-Glucosinolates_Quantification | Supplementary Figure 8 |
| 3rd_Part-8-At_Thalianol_mutants_Screening | Supplementary Figure 6 |
| 3rd_Part-9-Metabolomics_GCMS | Figure 3 / Supplementary Figures 9, 10 |
| 4th_Part_1-Bacterial_Growth_Screening | Figure 4 |
| 4th_Part_2_SynCom_Screening | Figure 4 / Supplementary Figure 11 |
| 4th_Part_3-P.cucu_Culture_Collection_Screening | Supplementary Figure 11 |
| 4th_Part_4-R329_TN5_Mutant_Screening | Figure 4 / Supplementary Figure 12 |
| 4th_Part_5-R329_Pqq_Supplementation | Figure 4 / Supplementary Figure 13 |
| 5th_Part_1_Arabidopsis_Disbiosis | Figure 5 |
| 5th_Part_2_Rapeseed_Disbiosis | Figure 5 / Supplementary Figure 14 |
| 5th_Part_3_Arabidopsis_Metabarcoding | Figure 5 / Supplementary Figure 15 |
| 5th_Part_4_Grapevine_Disbiosis | Figure 5 / Supplementary Figure 16 |

---

## Reproducibility notes

### Software requirements

Each folder contains the required scripts and information needed to reproduce the analyses.

Recommended software environment:

- **R**: version 4.5.3
- **RStudio**: version 2026.01.2+418
- Required R packages are specified within each script

---

## How to reproduce an analysis

Navigate to the corresponding analysis folder and run the provided script.

Example:

```bash
cd 1st_Part-1-190_Carbon_Screening
