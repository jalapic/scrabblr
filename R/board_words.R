#' Get all words in a scrabble matrix
#'
#' @param m a matrix of scrabble plays
#' @return a vector of all words on the scrabble board
#' @examples
#' board_words(scrab2)
#' @export


board_words <- function(m){

  words_in_mat <- function(z){
    gtx <-  strsplit(paste(z, collapse='' ), "\\.")
    gtx1 <- gtx[[1]][which(unlist(lapply(gtx[[1]], nchar))>1)]
    return(gtx1)
  }

  m <- board_dots(m)
  allwords <- c(unlist(apply(m,1,words_in_mat)),unlist(apply(m,2,words_in_mat)))
  allwords <-  as.vector(toupper(allwords))
  return(allwords)
}
