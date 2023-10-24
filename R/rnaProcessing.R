#' RNA processing step
#'
#' @param rnaSequence sequence of rna nucleotides
#' @param start define the start position on the string
#'
#' @return Processed RNA sequence
#' @export
#'
#' @examples
#' # Testing a random RNA sequence
#' rnaSequence <- "AUGCAUGCAUGCU"
#' rnaProcessing(rnaSequence)
rnaProcessing <- function(rnaSequence, start = 1){
  sequenceLength <- nchar(rnaSequence)
  codons <- substring(rnaSequence,
                      first = seq(from = start, to = sequenceLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequenceLength, by = 3))
  return(codons)
}
