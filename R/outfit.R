#' Bootstrap outfit.mnsq Function
#'
#' This function calculates bootstrap item Outfit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #data <- read.csv("data.csv")
#'    #outfit.mnsq(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot
#' @export

outfit.mnsq<- function(data,indices){
  data = data[indices,]

  # estimate Rasch model
  Rasch <-TAM::tam.mml(resp=data)
  # item fit
  fit <-TAM::msq.itemfit(Rasch)
  outfit<- fit[[1]][,3]
  return(outfit)
}





