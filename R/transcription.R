#' DNA to RNA transcription
#'
#' @param dnaSequence String composed of singleletter nucleotide code of variable sequence.
#'
#' @return A new sequence with all the thymines substituted by uracil.
#' @export
#'
transcription <- function(dnaSequence){
  newRnaSequence <- gsub("T", "U", dnaSequence)
  return(newRnaSequence)
}
