#!/usr/bin/env bash
# Gene calling on de-duplicated rabies genomes

DATA_DIR="data"
OUT_DIR="${DATA_DIR}/gene_called"

# Create output directory
mkdir -p "$OUT_DIR"

# Run Prodigal-GV
prodigal-gv \
  -i "${DATA_DIR}/deduplicated/sequences_full.fasta" \
  -a "${OUT_DIR}/proteins.faa" \
  > /dev/null 2>&1

# Run Prokka
prokka --kingdom Viruses --outdir myvirus --prefix virus_annotation data/deduplicated/sequences_full.fasta