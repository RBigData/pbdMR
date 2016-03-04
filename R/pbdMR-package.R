#' MapReduce
#' 
#' An interface to MapReduce over MPI.
#' 
#' This package requires an MPI library (OpenMPI, MPICH2, or LAM/MPI).
#' 
#' @useDynLib pbdMR,
#### create
#'   R_mr_create, R_mr_copy,
#### options
#'   R_mr_set_mapstyle, R_mr_set_verbosity, R_mr_set_timer, 
#'   R_mr_set_memsize, R_mr_set_keyalign, R_mr_set_valuealign
#' 
#' @import methods
#' @import pbdMPI
#' 
#' @name pbdMR-package
#' @docType package
#' @author Drew Schmidt, Wei-Chen Chen, George Ostrouchov.
#' @references Programming with Big Data in R Website: \url{http://r-pbd.org/}
#' @keywords Package
NULL
