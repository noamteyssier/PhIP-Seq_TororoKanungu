# Ph-IP Seq Analyses for Tororo/Kanungu Dataset

- Directory to organize analyses of phage display in Plasmodium falciparum.

- Study Design : 100 Healthy and 200 Ugandan Patient Samples
  - 100 Kanungu, 100 Tororo


# Notebooks

## Pipelines

### Peptide Meta Generation
Generates peptide meta generation and a log file showing which peptide meta was used and when it was run

```{bash}
notebooks/GeneratePeptideMeta.ipynb
```

### Run Enrichment
Runs enrichment pipeline on a raw count matrix
Input matrix must be 2D with columns as sample names and rows as peptides

```{bash}
# Jupyter Notebook
notebooks/CalculateEnrichment.ipynb

# Individual Program Instructions
src/PhageLoader/README.md
```

### MCD-MotifSearch
Runs maximal clique decomposition motif search pipeline on a given enriched dataset

```{bash}
# Jupyter Notebook
notebooks/MCD-MotifSearch.ipynb

# Individual Program Instructions
src/MCD-MotifSearch/README.md
```

### AVARDA
Runs AVARDA on a given enrichment dataset

```{bash}
# Jupyter Notebook
notebooks/RunAVARDA.ipynb
```

## Analyses

### Healthy Patient Enrichment Comparison
Runs analyses of effect of varying z-score and c-min between healthy and patient sets

*Requires Enrichment to have been run*

```{bash}
# Notebook
notebooks/Healthy_Patient_Enrichment_Comparison.ipynb

# Generated Figures
figures/HPEC/*
```

### Antibody Breadth
Correlations of Post-AVARDA antibody breadth and immunity random effects of antidisease, antimalaria, and antiparasite immunities.

Random effects are derived from immunity models using the same subset of the cohort in :

Rodriguez-Barraquer I, Arinaitwe E, Jagannathan P, Kamya MR, Rosenthal PJ, Rek J, Dorsey G, Nankabirwa J, Staedke SG, Kilama M, et al. Quantification of anti-parasite and anti-disease immunity to malaria as a function of age and exposure. Elife. 2018 Jul 25;7. pii: e35832. doi: 10.7554/eLife.35832. PubMed PMID: 30044224.

https://elifesciences.org/articles/35832

```{bash}
# Notebook
notebooks/AntibodyBreadth

# Generated Figures
figures/AntibodyBreadth
```
