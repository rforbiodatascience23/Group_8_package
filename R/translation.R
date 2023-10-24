#' Translation form RNA to protien sequence
#'
#' @param mRnaTemplate RNA sequence input
#'
#' @return plot with aa distribution of the sequence
#' @export
#'
#' @examples
#' mRnaTemplate <- "AUGUCGUUU"
#' translation(mRnaTemplate)
#'
translation <- function(mRnaTemplate){
  aaSequence <- mRnaTemplate |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aaSequence, function(amino_acid) stringr::str_count(string = mRnaTemplate, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["mRNA_Template"]] <- rownames(counts)

  aaCountPlot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = mRNA_Template, y = Counts, fill = mRNA_Template)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aaCountPlot)
}
