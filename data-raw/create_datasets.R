devtools::use_data_raw()

## notation dataframe
notation <- data.frame(symbol = c("'",'"',"-","="), value = c("dls", "tls", "dws", "tws"), total = c(24,12,17,8))

devtools::use_data(notation,overwrite = T)
devtools::document()
devtools::load_all()


## Example character matrix

scrab1  <- structure(c("=", " ", " ", "'", " ", " ", " ", "C", " ", " ",
            " ", "W", " ", " ", "=", " ", "-", " ", " ", " ", "'", " ", "O",
            " ", "'", " ", "E", "E", "-", " ", " ", " ", "-", " ", " ", "W",
            "I", "N", "K", "S", " ", "A", "X", "E", " ", "'", " ", " ", "-",
            "C", " ", " ", "V", " ", " ", " ", "V", " ", "N", "'", " ", " ",
            " ", " ", "A", " ", " ", "E", " ", " ", "-", "E", " ", "T", " ",
            " ", "'", " ", " ", "N", "\"", " ", "R", " ", "\"", " ", "r",
            " ", "A", " ", " ", " ", "B", "I", "O", "L", "O", "G", "I", "S",
            "T", "S", "\"", "s", " ", "=", " ", " ", "'", "N", " ", " ",
            "E", " ", " ", " ", "'", " ", "I", "=", " ", " ", "P", "A", "I",
            "R", "E", "D", "'", " ", " ", " ", "J", "A", "R", " ", "Q", "I",
            " ", "Z", "\"", " ", " ", " ", "\"", " ", " ", " ", "'", "E",
            " ", " ", " ", " ", "E", " ", "Y", "O", "U", "N", "G", " ", " ",
            " ", "A", "'", " ", "P", "O", "D", "I", "A", "'", " ", " ", " ",
            "F", "U", "B", "S", " ", "O", "H", "O", " ", " ", "G", "A", "U",
            "M", "I", "E", "R", " ", "T", " ", "D", "O", "T", "T", "R", "E",
            "L", " ", "'", " ", " ", " ", "-", "E", "F", "A", "H", "'", " ",
            " ", " ", "U", "N", "M", "I", "R", "Y", " ", "D"), .Dim = c(15L,
                                                                        15L))


devtools::use_data(scrab1,overwrite = T)
devtools::load_all()

scrab2 <- structure(c("=", " ", " ", "'", " ", " ", " ", "C", " ", " ",
                      " ", "W", " ", " ", "=", " ", "-", " ", " ", " ", "'", " ", "O",
                      " ", "'", " ", "E", "E", "-", " ", " ", " ", "-", " ", " ", "W",
                      "I", "N", "K", "S", " ", "A", "X", "E", " ", "'", " ", " ", "-",
                      "C", " ", " ", "V", " ", " ", " ", "V", " ", "N", "'", " ", " ",
                      " ", " ", "A", " ", " ", "E", " ", " ", "-", "E", " ", "T", " ",
                      " ", "'", " ", " ", "N", "\"", " ", "R", " ", "\"", " ", "r",
                      " ", "A", " ", " ", " ", "B", "I", "O", "L", "O", "G", "I", "S",
                      "T", "S", "\"", "s", " ", "=", " ", " ", "'", "N", " ", " ",
                      "E", " ", " ", " ", "'", " ", "I", "=", " ", " ", "P", "A", "I",
                      "R", "E", "D", "'", " ", " ", " ", "J", "A", "R", " ", "Q", "I",
                      " ", "Z", "\"", " ", " ", " ", "\"", " ", " ", " ", "'", "E",
                      " ", " ", " ", " ", "E", " ", "Y", "O", "U", "N", "G", " ", " ",
                      " ", "A", "'", " ", "P", "O", "D", "I", "A", "'", " ", " ", " ",
                      "F", "U", "B", "S", " ", "O", "H", "O", " ", " ", "G", "A", "U",
                      "M", "I", "E", "R", " ", "T", " ", "D", "O", "T", "T", "R", "E",
                      "L", " ", "'", " ", " ", " ", "-", "E", "F", "A", "H", "'", " ",
                      " ", " ", "U", "N", "M", "I", "R", "Y", " ", "D"), .Dim = c(15L,
                                                                                  15L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8",
                                                                                                           "9", "10", "11", "12", "13", "14", "15"), c("A", "B", "C", "D",
                                                                                                                                                       "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O")), class = "noquote")


devtools::use_data(scrab2,overwrite = T)
devtools::load_all()


tiles <- data.frame(tile=c(LETTERS[1:26],"?"),
                    points=c(1,3,3,2,1,4,2,4,1,8,5,1,3,1,1,3,10,1,1,1,1,4,4,8,4,10,0),
                    number=c(9,2,2,4,12,2,3,2,9,1,1,4,2,6,8,2,1,6,4,6,4,2,2,1,2,1,2),
                    stringsAsFactors = FALSE
)

devtools::use_data(tiles,overwrite = T, internal = T)
devtools::load_all()



###### Main Datasets----


turns <- readRDS('C:/Users/curley1/Dropbox/Work/R/scrabble/data-raw/turns.RData')
turns
saveRDS(turns,"data-raw/turns.RData")

devtools::use_data(turns,overwrite = T)
devtools::load_all()



finalboards <- readRDS('C:/Users/curley1/Dropbox/Work/R/scrabble/data-raw/finalboards.RData')
finalboards_chr <- readRDS('C:/Users/curley1/Dropbox/Work/R/scrabble/data-raw/finalboards_chr.RData')
boards <- readRDS('C:/Users/curley1/Dropbox/Work/R/scrabble/data-raw/boards.RData')
boards_chr <- readRDS('C:/Users/curley1/Dropbox/Work/R/scrabble/data-raw/boards_chr.RData')
saveRDS(boards,"data-raw/boards.RData")
saveRDS(finalboards,"data-raw/finalboards.RData")
saveRDS(boards_chr,"data-raw/boards_chr.RData")
saveRDS(finalboards_chr,"data-raw/finalboards_chr.RData")

devtools::use_data(boards,overwrite = T)
devtools::use_data(finalboards,overwrite = T)
devtools::use_data(boards_chr,overwrite = T)
devtools::use_data(finalboards_chr,overwrite = T)
devtools::load_all()

