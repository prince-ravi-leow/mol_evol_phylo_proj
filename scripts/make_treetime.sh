treetime \
--tree "data/iqtree_output/full_species_rabies_filtered.treefile" \
--aln "data/deduplicated/align_full_filtered.fasta" \
--rng-seed 42 \
--dates "data/timetree/dates.csv" \
--outdir "data/timetree/rerun_filtered" \
--verbose 6
# --relax 1.0 0 \
# --gtr infer \
# --reroot  \