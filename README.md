# Molecular Evolution and Phylogenomics Mini-project

# Data
* Data source: https://nextstrain.org/pathogens/files
* Under `rabies`, version: 2025-10-21

# Pipeline
- Filtering + deduplication
- Sanity check 
    - Gene calling, check gene order
- MAFFT
- Run IQTree
- Run treetime

# Environment / software
- Conda
    - Biopython
    - Prodigal-gv
    - Prokka (osx-64)
    - blast
    - mafft (osx-64)
    - iqtree3
    - treetime (osx-64)