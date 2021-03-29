#' Curated CancerSEA gene sets
#'
#' @description A curated cancer functional state genes lists from CancerSEA.
#'
#' @format A list with 14 tibble. And each tibble with columns ensembl_gene_id and symbol.
#'
#' @source \url{http://biocc.hrbmu.edu.cn/CancerSEA/goDownload}
#'
#' @usage data(CancerSEA)
"CancerSEA"


#' Curated immune gene sets
#'
#' @description A curated immune gene lists from Immport.
#'
#' @format A list with 17 tibble. And each tibble with columns ensembl_gene_id and symbol.
#'
#' @source \url{https://www.immport.org/}
#'
#' @usage data(Immport)
"Immport"


#' Cancer hallmark gene sets
#'
#' @description Cancer hallmark gene lists getted using `msigdbr` package from MsigDB.
#'
#' @format A list with 50 tibble. And each tibble with columns ensembl_gene_id and symbol.
#'
#' @source \url{http://www.gsea-msigdb.org/gsea/msigdb/index.jsp}
#'
#' @usage data(Hallmark)
"Hallmark"
