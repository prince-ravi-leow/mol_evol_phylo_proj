# Molecular Evolution and Phylogenomics Mini-project

# Data
* Data source: https://nextstrain.org/pathogens/files
* Under `rabies`, version: 2025-10-21
```sh
mkdir -p data/nextstrain_rabies

# Download most recent
wget -P data/nextstrain_rabies https://data.nextstrain.org/files/workflows/rabies/metadata.tsv.zst
wget -P data/nextstrain_rabies https://data.nextstrain.org/files/workflows/rabies/ncbi.ndjson.zst
wget -P data/nextstrain_rabies https://data.nextstrain.org/files/workflows/rabies/sequences.fasta.zst

# Download study version
wget -P data/nextstrain_rabies https://nextstrain-data.s3.amazonaws.com/files/workflows/rabies/metadata.tsv.zst?versionId=1uMeLbcOIb5UPwu_WmrY0SmdhQCWPyPs 
wget -P data/nextstrain_rabies https://nextstrain-data.s3.amazonaws.com/files/workflows/rabies/sequences.fasta.zst?versionId=A8vDZIgdemsoFXxDBJrFWz0nUZ4ri4d2 
wget -p data/nextstrain_rabies https://nextstrain-data.s3.amazonaws.com/files/workflows/rabies/ncbi.ndjson.zst?versionId=oFyghYQpyzsnlte3EtLMVIywHKfceiJ. 

# Decompress
unzstd data/nextstrain_rabies/metadata.tsv.zst
unzstd data/nextstrain_rabies/ncbi.ndjson.zst
unzstd data/nextstrain_rabies/sequences.fasta.zst
```

# Pipeline
- Filtering + deduplication
- Sanity check 
    - Gene calling, check gene order
- MAFFT
- Run IQTree
- Run treetime

# Environment / software
- Conda
    - prodigal-gv
    - blast
    - seqkit
    - iqtree
    - Prokka 
    - mafft (osx-64)
    - treetime (osx-64)
- pip
    - numpy
    - pandas
    - matplotlib
    - seaborn
    - biopython

## Recreate environment
```sh
# Linux / x86 
mamba env create -f rabies_environment.yml
mamba activate rabies
uv pip install -r requirements.txt

# Apple Silicon
CONDA_SUBDIR=osx-64 mamba env create -f rabies_environment.yml
mamba activate rabies
conda config --env --set subdir osx-64
uv pip install -r requirements.txt
```