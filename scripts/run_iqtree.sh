# From mafft aligned MSA, make iqtree

mkdir -p data/iqtree_output
iqtree -s data/deduplicated/align_full_filtered.fasta -m "GTR" --seed 42 -T 10 -alrt 1000 -pre data/iqtree_output/full_species_rabies_filtered