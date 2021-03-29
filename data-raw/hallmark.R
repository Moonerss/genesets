## code to prepare `hallmark` dataset goes here

usethis::use_data(hallmark, overwrite = TRUE)


## get hallmark genes from `msigdbr` package
library(msigdbr)
library(tidyverse)
library(clusterProfiler)

# Getting the hallmark genes----------------------------
hallmarks <- msigdbr(species = "Homo sapiens", category = "H") %>%
  dplyr::select(gs_name:gene_symbol) %>%
  group_by(gs_name) %>%
  nest() %>%
  ungroup() %>%
  mutate(data = map(data, function(x) {
    ensg <- bitr(geneID = x$gene_symbol, fromType = "SYMBOL",
                 toType = "ENSEMBL", OrgDb = 'org.Hs.eg.db', drop = F) %>%
      as_tibble() %>%
      dplyr::select(2, 1)
    colnames(ensg) <- c("ensembl_gene_id", "symbol")
    res <- ensg[!duplicated(ensg$symbol), ]
  }))

Hallmark <- hallmarks %>% dplyr::pull(data)
names(Hallmark) <- c("adipogenesis", "allograft_rejection", "androgen_response",
  "angiogenesis", "apical_junction", "apical_surface", "apoptosis", "bile_acid_metabolism",
  "cholesterol_homeostasis", "coagulation", "complement", "dna_repair", "E2F_targets",
  "epithelial_mesenchymal_transition", "estrogen_response_early", "estrogen_response_late",
  "fatty_acid_metabolism", "G2M_checkpoint", "glycolysis", "hedgehog_signaling", "heme_metabolism",
  "hypoxia", "IL2_STAT5_signaling", "IL6_JAK_STAT3_signaling", "inflammatory_response",
  "interferon_alpha_response", "interferon_gamma_response", "KRAS_signaling_dn", "KRAS_signaling_up",
  "mitotic_spindle", "mtorc1_signaling", "MYC_targets_v1", "MYC_targets_v2", "myogenesis", "NOTCH_signaling",
  "oxidative_phosphorylation", "p53_pathway", "pancreas_beta_cells", "peroxisome", "PI3K_AKT_mTOR_signaling",
  "protein_secretion", "reactive_oxygen_species_pathway", "spermatogenesis", "TGF_beta_signaling",
  "TNFA_signaling_via_nfkb", "unfolded_protein_response", "UV_response_dn", "UV_response_up",
  "WNT_beta_catenin_signaling", "xenobiotic_metabolism")

