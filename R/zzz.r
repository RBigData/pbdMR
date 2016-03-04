.onLoad <- function(libname, pkgname){
  if(! is.loaded("spmd_initialize", PACKAGE = "pbdMPI")){
    library.dynam("pbdMPI", "pbdMPI", libname)
    if(pbdMPI::comm.is.null(0L) == -1){
      pbdMPI::init()
    }
  }
  
  library.dynam("pbdMR", pkgname, libname)
  invisible()
}

.onUnload <- function(libpath){
  library.dynam.unload("pbdMR", libpath)
  invisible()
}

