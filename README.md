
<!-- README.md is generated from README.Rmd. Please edit that file -->

# genesets: a simple R data package for collected cancer associated gene lists

<!-- badges: start -->
<!-- badges: end -->

The goal of `genesets` is to collect many useful gene sets for cancer
bioinformatics analysis.

## Installation

You can install the developing version of `genesets` from
[Github](https://github.com/Moonerss/genesets) with:

``` r
devtools::install_github("Moonerss/genesets")
```

## Getting started

All the gene sets list can be seen by:

``` r
library(genesets)
available_genesets()

[1] "CancerSEA" "Hallmark"  "Immport"
```

To search a special gene sets, you can use `search_genesets()`:

``` r
search_genesets(keywords = "SEA")

[1] "CancerSEA"
```

The structure of each gene set like this:

``` r
str(CancerSEA)

List of 14
 $ angiogenesis   :'data.frame':    73 obs. of  2 variables:
  ..$ ensembl_gene_id: chr [1:73] "ENSG00000139567" "ENSG00000101384" "ENSG00000154188" "ENSG00000091879" ...
  ..$ symbol         : chr [1:73] "ACVRL1" "JAG1" "ANGPT1" "ANGPT2" ...
  ..- attr(*, "spec")=
  .. .. cols(
  .. ..   EnsembleID = col_character(),
  .. ..   GeneName = col_character()
  .. .. )
 $ apoptosis      :'data.frame':    66 obs. of  2 variables:
  ..$ ensembl_gene_id: chr [1:66] "ENSG00000120868" "ENSG00000128272" "ENSG00000149311" "ENSG00000030110" ...
  ..$ symbol         : chr [1:66] "APAF1" "ATF4" "ATM" "BAK1" ...
  ..- attr(*, "spec")=
  .. .. cols(
  .. ..   EnsembleID = col_character(),
  .. ..   GeneName = col_character()
  .. .. )
```

Each particular pathway or functional gene set contain two column:
`ensembl_gene_id` `symbol`

``` r
CancerSEA$angiogenesis

# A tibble: 73 x 2
   ensembl_gene_id symbol
   <chr>           <chr> 
 1 ENSG00000139567 ACVRL1
 2 ENSG00000101384 JAG1  
 3 ENSG00000154188 ANGPT1
 4 ENSG00000091879 ANGPT2
 5 ENSG00000174059 CD34  
 6 ENSG00000070831 CDC42 
 7 ENSG00000112062 MAPK14
 8 ENSG00000025708 TYMP  
 9 ENSG00000078401 EDN1  
10 ENSG00000125266 EFNB2 
# ... with 63 more rows
```
