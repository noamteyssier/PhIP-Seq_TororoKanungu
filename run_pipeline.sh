#!/usr/bin/env bash

# Runs Complete Processing and Analysis Pipeline

# PROCESSING BEGIN

## Generate Peptide Meta
echo "Generate Peptide Meta"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/GeneratePeptideMeta.ipynb

## Run Enrichment Pipeline
echo "Run Enrichment Pipeline"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/CalculateEnrichment.ipynb

## Run MCD-Motif Search
echo "Run MCD-Motif Search"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/MCD-MotifSearch.ipynb

## Run AVARDA
echo "Run AVARDA"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/RunAVARDA.ipynb

# PROCESSING END



# ANALYSES START

## Healthy Patient Enrichment Comparison
echo "Healthy Patient Enrichment Comparison"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/Healthy_Patient_Enrichment_Comparison.ipynb

## Antibody Breadth
echo "Antibody Breadth"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/AntibodyBreadth.ipynb

## Motif Analyses
echo "Motif Analyses"
time jupyter nbconvert \
  --ExecutePreprocessor.timeout=-1 \
  --execute notebooks/Motif_Analysis.ipynb


# ANALYSES END
