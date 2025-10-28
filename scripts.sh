# From genomes make blastdb and run blast
cat data/genomes/*.fasta > data/all_candida_genomes.fsa
makeblastdb -in data/all_candida_genomes.fsa -parse_seqids -blastdb_version 5 -title "candida_database" -dbtype nucl

# Blast Entire reference genome against downloaded Candidata genomes from NCBI
blastn -db data/all_candida_genomes.fsa -query data/Ref_NC_018046.1.fasta -out data/results.out -outfmt 6

# Same, but query is a candidate gene (Large Ribosomal RNA
blastn -db data/all_candida_genomes.fsa -query data/rnl.fsa -out data/ref_rnl_blast.out -outfmt 6