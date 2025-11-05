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
    - Prodigal-gv
    - blast
    - seqkit
    - iqtree3
    - Prokka (osx-64)
    - mafft (osx-64)
    - treetime (osx-64)
- pip
    - numpy
    - pandas
    - matplotlib
    - seaborn
    - biopython

## Recreate environment Linux (x86)
```sh
mamba env create -f rabies_environment.yml
mamba activate rabies
uv pip install -r requirements.txt
```

## Recreate environment macOS (osx-arm64)
- 