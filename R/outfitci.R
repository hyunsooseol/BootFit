#' Bootstrap boot outfit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: print Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #outfit.conf(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot boot.ci
#' @export

outfit.confi <- function(object) {


  for (i in 1:ncol(object)) {

    # bootstrap confidence interval

    outfit.ci <- boot::boot.ci(boot.outfit, index = i, type = "basic")

    print(outfit.ci)
  }
}
