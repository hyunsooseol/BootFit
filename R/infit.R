#' Bootstrap Infit.mnsq Function
#'
#' This function calculates bootstrap item Infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Infit.mnsq fit statistis
#'
#' @examples
#'     #Not run
#'     #data <- read.csv("data.csv")
#'    #infit.mnsq(data)
#'
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot
#' @export

infit.mnsq<- function(data,indices){
  data = data[indices,]

  # estimate Rasch model
  Rasch <-TAM::tam.mml(resp=data)
  # item fit
  fit <-TAM::msq.itemfit(Rasch)
  infit<- fit[[1]][,6]
  return(infit)
}


