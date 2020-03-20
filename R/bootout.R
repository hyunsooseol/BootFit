#' Bootstrap boot outfit.mnsq Function
#'
#' This function calculates bootstrap item outfit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #boot.outfit(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export


#boot function using boot package

boot.outfit <- function(data){

  boot.fit<- boot::boot(data = data,statistic = outfit.mnsq,R=100)

  return(boot.fit)
}




