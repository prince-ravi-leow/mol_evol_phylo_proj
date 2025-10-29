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

# Download virus RefSeq 
mkdir -p data/blastdb
cd data/blastdb
update_blastdb.pl --decompress refseq_protein
blastp -query ${OUT_DIR}/proteins.faa" -db data/blastdb/refseq_protein_viral -out resuts/gene_called/results.txt


