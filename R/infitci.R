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

infit.confi <- function(object) {

  for (i in 1:ncol(object)) {

  # bootstrap confidence interval

    infit.ci <- boot::boot.ci(boot.infit, index = i, type = "basic")

    print(infit.ci)
  }
}

