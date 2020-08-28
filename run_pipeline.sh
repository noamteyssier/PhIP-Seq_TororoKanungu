#!/usr/bin/env bash

# Runs Complete Processing and Analysis Pipeline

# PROCESSING BEGIN

## Generate Peptide Meta
jupyter nbconvert --execute notebooks/GeneratePeptideMeta.ipynb

## Run Enrichment Pipeline
jupyter nbconvert --execute notebooks/CalculateEnrichment.ipynb

## Run MCD-Motif Search
jupyter nbconvert --execute notebooks/MCD-MotifSearch.ipynb

## Run AVARDA
jupyter nbconvert --execute notebooks/RunAVARDA.ipynb

# PROCESSING END



# ANALYSES START

## Healthy Patient Enrichment Comparison
jupyter nbconvert --execute notebooks/Healthy_Patient_Enrichment_Comparison.ipynb

## Antibody Breadth
jupyter nbconvert --execute notebooks/AntibodyBreadth.ipynb

## Motif Analyses
jupyter nbconvert --execute notebooks/Motif_Analysis.ipynb


# ANALYSES END
