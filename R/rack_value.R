#' Get total value  of a scrabble rack
#'
#' @param rack a string representing scrabble tiles
#' @return integer of total value of all tiles
#' @examples
#' rack_value("FFJXUUZ")
#' @export

rack_value <- function(rack){
  d <-unlist(strsplit(rack, split=""))
  value <- sum(tiles$points[match(d,tiles$tile)])
  return(value)
}
