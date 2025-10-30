library(ape)
library(phangorn)
library(tidyverse)

edge_extract <- function(tree) {
    ntips <- Ntip(tree)
    tips <- tree$edge[, 2]
    edge_lenght <- tree$edge.length
    tip_tibble <- tibble(Tip = tips, Edge_length = edge_lenght)
    tip_tibble <- tip_tibble %>% filter(Tip >= 1, Tip <= ntips) # Filters out all the nodes, only leaving the tips
    tip_label_tibble <- tibble(label = tree$tip.label)
    tip_label_tibble <- tip_label_tibble %>% mutate(accession_number = word(label, 1, sep = "_"), Tip = row_number()) # The accession number can be used later to join the tibble with the main tibble
    tip_tibble_final <- left_join(tip_tibble, tip_label_tibble, by = "Tip")
    return(tip_tibble_final)
}

phylo_time <- read.nexus("data/timetree/rerun_filtered/timetree.nexus")
phylo_diverge <- read.nexus("data/timetree/rerun_filtered/divergence_tree.nexus")

df_diverge <- edge_extract(phylo_diverge)
df_time <- edge_extract(phylo_time)

df_merge <- left_join(df_diverge, df_time, by = "accession_number") |>
    mutate(rates = Edge_length.x / Edge_length.y)
df_merge |> write_csv("data/timetree/rates_df.csv")
