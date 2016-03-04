#' MR Create
#' 
#' @param mapstyle
#' TODO
#' @param verbosity
#' TODO
#' @param timer
#' TODO
#' @param comm
#' MPI communicator number.
#' 
#' @return
#' An object of class \code{MR} (an external pointer).
#' 
#' @export
mr_create <- function(mapstyle="chunk", verbosity="none", timer="none", comm=0)
{
  # TODO comm.match.arg(...)
  
  mr <- .Call(R_mr_create, as.integer(comm))
  class(mr) <- "MR"
  
  mr_set_mapstyle(mr=mr, mapstyle=mapstyle)
  mr_set_verbosity(mr=mr, verbosity=verbosity)
  mr_set_timer(mr=mr, timer=timer)
#  mr_set_memsize # TODO
#  mr_set_keyalign # TODO
#  mr_set_valuealign # TODO
  
  mr
}



#' MR Copy
#' 
#' @param mr
#' An 'mr' object, as returned from \code{mr_create()}.
#' 
#' @return
#' An object of class \code{MR} (an external pointer).
#' 
#' @export
mr_copy <- function(mr)
{
  assert_type(mr, "MR")
  
  attributes(mr) <- NULL
  mr <- .Call(R_mr_copy, mr)
  class(mr) <- "MR"
  
  mr
}

