#' Bootstrap boot infit.mnsq Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq fit statistis
#'
#' @examples
#'    #Not run
#'    #boot.infit(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot
#' @export


#boot function using boot package

boot.infit <- function(data){

  boot.fit<- boot::boot(data = data,statistic = infit.mnsq,
                        R=1000)
  return(boot.fit)
}
