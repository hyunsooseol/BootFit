#' Bootstrap outfit.mnsq Function
#'
#' This function calculates bootstrap item Outfit Mnsq using MML estimation
#' @param object: Data Frame
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #boot.out(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @export

boot.out<- function(object,indices){
  object = object[indices,]

  # estimate Rasch model
  Rasch <- TAM::tam.mml(resp=object)
  # item fit
  fit <- TAM::msq.itemfit(Rasch)
  outfit<- fit$itemfit$Outfit
  return(outfit)
}





