#' Creation of mRNA template for translation
#'
#' @param codons codon list to be merged
#'
#' @return mRNA template as a single string sequence
#' @export
#'
#' @examples
#' codons <- c("AUG", "UCG", "UUU")
#' codonMerging(codons)
#'
codonMerging <- function(codons){
  mRnaTemplate <- paste0(codons, collapse = "")
  return(mRnaTemplate)
}
