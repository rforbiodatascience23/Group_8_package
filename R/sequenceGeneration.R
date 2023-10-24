#' New random sequence creation
#'
#' @param sequenceLength desired sequence length
#'
#' @return random DNA sequence
#' @export
#'
sequenceGeneration <- function(sequenceLength){
  nucleotideList <- sample(c("A", "T", "G", "C"), size = sequenceLength, replace = TRUE)
  newSequence <- paste0(nucleotideList, collapse = "")
  return(newSequence)
}
