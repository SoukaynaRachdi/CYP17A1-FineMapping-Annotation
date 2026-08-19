# CYP17A1-Fine-Mapping-Annotation
# 🧬 CYP17A1 Fine Mapping & Functional Annotation

## 📌 Project Overview

This project focuses on the **fine mapping and functional annotation of genetic variants in the CYP17A1 genomic region** using a GWAS dataset related to **Body Mass Index (BMI)**.

The project combines **GWAS analysis, linkage disequilibrium analysis, statistical fine mapping, and functional annotation** to prioritize potentially relevant genetic variants and investigate their possible biological and regulatory effects.

The workflow integrates statistical genetics and functional genomics approaches, from the identification of variants in the CYP17A1 region to their functional interpretation.

---

## 🎯 Objectives

The main objectives of this project are to:

* Analyze genetic variants located in the **CYP17A1 genomic region**.
* Use **BMI GWAS data** for genetic association analysis.
* Investigate the **linkage disequilibrium (LD)** structure between variants.
* Perform statistical **fine mapping** of candidate variants.
* Identify potentially important variants using **Posterior Inclusion Probability (PIP)**.
* Construct **95% credible sets** containing the most likely causal variants.
* Perform **functional annotation** of prioritized variants.
* Investigate regulatory evidence using functional genomics resources.
* Explore predicted effects of selected variants using **AlphaGenome**.
* Provide a biological interpretation of the prioritized variants.

---

# 📊 GWAS Data

## Phenotype

**Body Mass Index (BMI)**

The GWAS dataset used in this project is based on **Body Mass Index (BMI)**.

BMI was used as the phenotype of interest for investigating genetic variation in the **CYP17A1 region**.

### GWAS Analysis

The GWAS data were used as the starting point of the analysis workflow.

The main steps were:

1. Selection of the CYP17A1 genomic region.
2. Extraction of genetic variants in the region.
3. Variant filtering and preprocessing.
4. Linkage Disequilibrium analysis.
5. Statistical fine mapping using SuSiE.
6. Identification of candidate variants based on PIP.
7. Functional annotation.
8. Regulatory and biological interpretation.

---

# 🧬 Gene of Interest: CYP17A1

**Gene:** CYP17A1

**Chromosome:** 10

**Genomic region:** CYP17A1

CYP17A1 was selected as the genomic region of interest for the fine-mapping and functional annotation analysis.

The project focuses on genetic variants located around this gene and investigates their statistical and functional relevance.

---

# 🔬 Project Workflow

The complete analysis follows the workflow:


BMI GWAS Data
      │
      ▼
CYP17A1 Region Selection
      │
      ▼
Variant Extraction & Filtering
      │
      ▼
Linkage Disequilibrium (LD) Analysis
      │
      ▼
Statistical Fine Mapping
      │
      ▼
SuSiE Analysis
      │
      ▼
PIP & 95% Credible Sets
      │
      ▼
Candidate Variant Prioritization
      │
      ▼
Functional Annotation
      │
      ├── RegulomeDB
      ├── ENCODE
      ├── Ensembl
      └── Other functional resources
      │
      ▼
AlphaGenome Predictions
      │
      ▼
Biological Interpretation
```

---

# 🔗 Linkage Disequilibrium Analysis

**Linkage Disequilibrium (LD)** analysis was performed to investigate the correlation structure between variants located in the CYP17A1 region.

LD analysis helps determine how genetic variants are correlated with each other and provides important information for the subsequent fine-mapping analysis.

### Tools

* **LDlink**

The LD structure was used to support the identification and interpretation of potentially independent genetic signals.

---

# 🎯 Fine Mapping

## What is Fine Mapping?

Fine mapping aims to identify and prioritize variants that are more likely to contribute to an observed genetic association within a genomic region.

Instead of considering all associated variants equally, fine mapping uses statistical information and LD patterns to estimate which variants have stronger evidence of being involved in the association.

---

# 🧬 SuSiE Analysis

**SuSiE — Sum of Single Effects**

SuSiE was used for statistical fine mapping of the CYP17A1 region.

The analysis aims to:

* Identify potentially independent causal signals.
* Estimate the **Posterior Inclusion Probability (PIP)** for each SNP.
* Construct **95% credible sets** containing variants with high probability of explaining the observed association.

### Posterior Inclusion Probability (PIP)

The **Posterior Inclusion Probability (PIP)** represents the posterior probability that a given variant belongs to one of the inferred causal effects.

Variants with higher PIP values receive stronger statistical support during the fine-mapping analysis.

### 95% Credible Sets

The credible sets contain variants that collectively represent a high posterior probability of containing the causal variant for an inferred signal.

---

# 📈 Fine-Mapping Results

Fine-mapping was performed using **SuSiE (Sum of Single Effects)** to identify independent genetic signals and prioritize candidate SNPs in the CYP17A1 region.

The analysis was performed separately for **female and male samples**.

## 👩 Results for Women

The SuSiE analysis identified **3 independent signals** in the CYP17A1 region.

The following SNPs showed a **Posterior Inclusion Probability (PIP) of 1.00**:

| Rank | SNP        |  PIP |
| ---: | ---------- | ---: |
|    1 | rs11190643 | 1.00 |
|    2 | rs11190644 | 1.00 |
|    3 | rs7900417  | 1.00 |

These variants were therefore strongly prioritized by the fine-mapping analysis in the female dataset.

---

## 👨 Results for Men

The SuSiE analysis identified **5 independent signals** in the CYP17A1 region.

The following SNPs showed a **Posterior Inclusion Probability (PIP) of 1.00**:

| Rank | SNP        |  PIP |
| ---: | ---------- | ---: |
|    1 | rs17094222 | 1.00 |
|    2 | rs17113297 | 1.00 |
|    3 | rs11190643 | 1.00 |
|    4 | rs11190644 | 1.00 |
|    5 | rs7900417  | 1.00 |

These variants were strongly prioritized by the fine-mapping analysis in the male dataset.

---

## 🔎 Comparison Between Female and Male Results

The fine-mapping analysis revealed a difference in the number of independent signals between the two groups:

| Dataset | Independent signals | Top SNPs with PIP = 1.00                                  |
| ------- | ------------------: | --------------------------------------------------------- |
| Female  |                   3 | rs11190643, rs11190644, rs7900417                         |
| Male    |                   5 | rs17094222, rs17113297, rs11190643, rs11190644, rs7900417 |

Two variants, **rs11190643** and **rs11190644**, as well as **rs7900417**, were prioritized in both female and male analyses.

The male analysis additionally prioritized **rs17094222** and **rs17113297**.

---

## 🧬 Interpretation

The SuSiE fine-mapping results provide statistical evidence for a set of prioritized variants within the CYP17A1 region.

The identification of variants with **PIP = 1.00** indicates very strong posterior support for their inclusion among the inferred signals in the corresponding sex-specific analysis.

These prioritized variants were subsequently considered for **functional annotation and regulatory analysis**, including analyses using RegulomeDB, ENCODE and AlphaGenome.

> **Note:** A PIP of 1.00 represents strong statistical support from the fine-mapping model, but it does not by itself establish that a variant is experimentally proven to be causal.


---

# 🧪 Functional Annotation

Following fine mapping, prioritized variants were investigated using functional annotation resources.

The objective was to determine whether the candidate variants have potential regulatory or biological relevance.

The functional annotation analysis included resources such as:

* **Ensembl**
* **RegulomeDB**
* **ENCODE**
* **AlphaGenome**

---

# 🧬 RegulomeDB Annotation

**RegulomeDB** was used to investigate the potential regulatory relevance of selected variants.

The annotation provides information that can help assess whether variants may be located in regulatory regions or associated with regulatory activity.

The RegulomeDB results were used as complementary evidence for prioritizing and interpreting candidate variants.

---

# 🧬 ENCODE Annotation

**ENCODE** functional genomics data were explored to investigate regulatory characteristics associated with candidate variants.

ENCODE provides functional genomic information that can help characterize genomic regions involved in regulatory processes.

The annotation was used as additional evidence in the functional interpretation of prioritized variants.

---

# 🧬 AlphaGenome Analysis

**AlphaGenome** was used to investigate predicted regulatory effects of selected variants.

The workflow focused on candidate variants identified during the fine-mapping analysis and evaluated their predicted effects across different genomic signals.

The analyzed signals included:

* **CTCF**
* **RNA**
* **DNase**
* **ATAC**

---

# 📊 AlphaGenome Results

The AlphaGenome analysis included the following selected variants:

| SNP        |      CTCF |       RNA |     DNase |      ATAC | Interpretation           |
| ---------- | --------: | --------: | --------: | --------: | ------------------------ |
| rs17094222 | -0.000275 |  0.000004 |  0.000005 |  0.000001 | Very weak                |
| rs17113297 |  0.001793 |  0.000021 | -0.000001 | -0.000001 | Weak                     |
| rs11190643 |  0.002937 |  0.000008 |  0.000004 |  0.000004 | Highest predicted effect |
| rs11190644 |  0.000107 |  0.000033 |  0.000002 |  0.000002 | Very weak                |
| rs7900417  | -0.001503 | -0.000004 |  0.000001 | -0.000001 | Weak                     |

Among these variants, **rs11190643 showed the highest predicted effect** in the presented AlphaGenome comparison.

These predictions provide additional computational evidence for interpreting the candidate variants.

---

# 🧠 Biological Interpretation

The integration of statistical fine mapping and functional annotation provides a strategy for prioritizing candidate variants within the CYP17A1 region.

The analysis combines:

**Statistical evidence**

→ PIP
→ Credible sets
→ LD structure

with:

**Functional evidence**

→ RegulomeDB
→ ENCODE
→ AlphaGenome
→ Other annotation resources

This integrated approach helps identify variants that may deserve further investigation from a biological perspective.

---

# ⚠️ Limitations

The project has several limitations that should be considered when interpreting the results.

* Fine-mapping results depend on the quality and characteristics of the GWAS data.
* LD patterns can differ between populations.
* Statistical fine mapping does not by itself prove that a variant is causally responsible for the observed association.
* Functional annotation provides supporting evidence but does not constitute experimental validation.
* AlphaGenome predictions are computational predictions and should therefore be interpreted with caution.
* Further experimental and biological validation would be required to confirm the functional effects of prioritized variants.

---

# 🛠️ Tools & Technologies

## Bioinformatics & Genomics

* GWAS data
* Ensembl
* RegulomeDB
* ENCODE
* AlphaGenome

## Statistical Genetics

* Fine Mapping
* SuSiE
* Linkage Disequilibrium (LD)
* Posterior Inclusion Probability (PIP)
* 95% Credible Sets

## Genetic Analysis

* LDlink

## Programming

* R
* Python

---


# 📌 Key Findings

The project combines GWAS-based analysis with fine mapping and functional annotation to investigate variants in the **CYP17A1 region** using **BMI as the GWAS phenotype**.

The main analytical components were:

* CYP17A1 region analysis.
* LD analysis.
* SuSiE fine mapping.
* PIP-based variant prioritization.
* 95% credible sets.
* RegulomeDB annotation.
* ENCODE annotation.
* AlphaGenome predictions.

The AlphaGenome comparison highlighted **rs11190643** as the variant with the highest predicted effect among the selected variants presented in the analysis.

---

# 👩‍💻 Authors

**Soukaina Rachdi**
**Imane Laaguili**

### Academic Project

Master's project in **Bioinformatics & Artificial Intelligence**

---

# 📚 Project Topics

This project covers several areas of computational biology and bioinformatics:

* 🧬 GWAS
* 🧬 Statistical Genetics
* 📍 Fine Mapping
* 🔗 Linkage Disequilibrium
* 🧪 Functional Annotation
* 🧬 Regulatory Genomics
* 🤖 Computational Genomics
* 📊 Genetic Variant Prioritization

---

## ⭐ Summary

This project demonstrates a complete bioinformatics workflow for investigating genetic variants associated with **BMI** in the **CYP17A1 genomic region**, combining statistical fine mapping with functional annotation and computational regulatory predictions.

The integration of **GWAS, LD analysis, SuSiE fine mapping, RegulomeDB, ENCODE and AlphaGenome** provides complementary evidence for prioritizing and interpreting candidate genetic variants.
