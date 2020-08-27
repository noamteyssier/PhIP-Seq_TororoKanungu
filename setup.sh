#!/usr/bin/env bash

# Setup Script for repo

## Initialize SubModules
git submodule update --init --recursive

## Unzip example files
gunzip -v data/raw_counts/*.gz
gunzip -v data/reference_sequences/*.gz

## Update git path in PhageLoader preprocess pipeline
pl_path=$(realpath .)/src/PhageLoader
sed -i "s|git_path=.*|git_path=${pl_path}|" ${pl_path}/pipeline/preprocess.sh
