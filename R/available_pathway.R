#' Avaliable gene sets in this package
#'
#' @description Show the genesets in current package.
#'
#' @export
#'
#' @usage available_genesets()
available_genesets <- function() {
  ## list all genesets
  files <- list.files(system.file("data", package = "genesets"))
  datas <- unlist(lapply(strsplit(files, split = "[.]"), function(x) {x[1]}))
  return(datas)
}


#' search gene sets in this package
#'
#' @description Search the genesets in current package.
#'
#' @param keywords the pattern argument in [base::grep()]
#' @param ... the arguments in \link{grep} function
#'
#' @export
search_genesets <- function(keywords = NULL, ...) {
  datas <- available_genesets()
  if (is.null(keywords)) {
    res <- datas
  } else {
    res <- datas[grep(pattern = keywords, datas, ...)]
  }
  return(res)
}

