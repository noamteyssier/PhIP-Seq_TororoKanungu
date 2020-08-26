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
