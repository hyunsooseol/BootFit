#' Bootstrap boot outfit.mnsq CI Function
#'
#' This function calculates bootstrap item infit Mnsq using MML estimation
#' @param data: the name of dataset
#'
#' @return: Bootstrap Item Outfit.mnsq CI statistis
#'
#' @examples
#'    #Not run
#'    #outfit.conf(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot.ci
#' @export


outfit.conf <- function(object){

  boot.outfit<- boot.outfit(object)
  result=c()

   for (i in 1:ncol(object)) {

    ci=boot::boot.ci(boot.outfit, index = i,
                     type = "basic")
    result=c(result, ci)

  }
  return(result)
}

# 분석결과 출력:capture.output() 함수이용
