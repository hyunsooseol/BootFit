#' Bootstrap boot infit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param object: the name of objectset
#'
#' @return: print Bootstrap Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #infit.conf(object)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

infit.conf <- function(object) {

  boot.infit<- boot.infit(object)

  for (i in ncol(object)) {


print(boot::boot.ci(boot.infit, index = i,
                    type = "basic"))

    }

  }


