#' Bootstrap boot infit.mnsq CI Function
#'
#' This function calculates bootstrap item infit 95% Confidence Interval
#' using 'boot' package
#' @param data: Data Frame
#'
#' @return: boot infit.mnsq CI Function
#'
#' @examples
#'    #Not run
#'    #infit.conf(data)
#'
#' @importFrom TAM tam.mml msq.itemfit
#' @importFrom boot boot.ci
#' @export


infit.conf <- function(object){

  boot.infit<- boot.infit(object)
  result=c()

  ## progress bar-------------------------------------------------------------------------------
  winPB <- winProgressBar(title="bootstrap fit statistics", max=1000)
  ##-----------------------------------------------------------------------------------------------


  for (i in 1:ncol(object)) {

    ci=boot::boot.ci(boot.infit, index = i,
                     type = "basic")
    result=c(result, ci)

  }

  ## progress bar----------------------------------------------------------------------------

  for(i in 1:1000) {
    Sys.sleep(0.01)
    setWinProgressBar(winPB,i, title=paste(round(i/100*100,1), "% done"))
  }
close(winPB)

  return(result)
}


