#' Convert character matrix to pretty scrabble matrix
#'
#' @param m the character matrix
#' @return a square matrix of scrabble plays
#' @examples
#' board_pretty(scrab1)
#' @export

board_pretty <- function(m){
  colnames(m)<-LETTERS[1:15]
  rownames(m)<-1:15
  m<-noquote(m)
  return(m)
}
