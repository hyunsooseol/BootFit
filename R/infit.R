#' Bootstrap Infit.mnsq Function
#'
#' This function calculates bootstrap item Infit Mnsq using MML estimation
#' @param object: Data Frame
#'
#' @return: Bootstrap Item Infit.mnsq fit statistis
#'
#' @examples
#'     #Not run
#'     #object <- read.csv("object.csv")
#'    #infit.mnsq(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

boot.in<- function(object,indices){

  object = object[indices,]

  # estimate Rasch model
  Rasch <-TAM::tam.mml(resp=object)
  # item fit
  fit <-TAM::msq.itemfit(Rasch)
  infit<- fit$itemfit$Infit
  return(infit)
}













