#' Remove punctuation from scrabble matrix
#'
#' @param m a matrix of scrabble plays
#' @return a matrix of scrabble plays with no notation
#' @examples
#' board_clean(scrab2)
#' @export


board_clean <- function(m){
  gsub("\\.", "", gsub('"',"",gsub("=|'|-|","",m)))
}
