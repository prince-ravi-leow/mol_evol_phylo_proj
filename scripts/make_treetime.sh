treetime \
--tree "data/iqtree_output/full_species_rabies_no_mf.treefile" \
--aln "data/deduplicated/align_full_no_mf.fasta" \
--rng-seed 42 \
--dates "data/timetree/dates.csv" \
--outdir "data/timetree/rerun_no_mf" \
--verbose 6
# --relax 1.0 0 \
# --gtr infer \
# --reroot  \