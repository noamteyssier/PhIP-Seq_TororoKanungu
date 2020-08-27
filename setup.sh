#!/usr/bin/env bash

# Setup Script for repo

## Initialize SubModules
git submodule update --init --recursive

## Unzip example files
gunzip -v data/raw_counts/*.gz
gunzip -v data/reference_sequences/*.gz
