#include <RNACI.h>
#include "mr-mpi/cmapreduce.h"


static void R_MRptr_finalizer(SEXP R_MRptr)
{
  if (NULL == R_ExternalPtrAddr(R_MRptr))
    return;
  
  void *MRptr = (void *) R_ExternalPtrAddr(R_MRptr);
  MR_destroy(MRptr);
  R_ClearExternalPtr(R_MRptr);
}



SEXP R_mr_create(SEXP comm)
{
  SEXP R_MRptr;
  void *MRptr = MR_create(INTP(comm));
  
  newRptr(MRptr, R_MRptr, R_MRptr_finalizer);
  
  UNPROTECT(1);
  return R_MRptr;
}



SEXP R_mr_copy(SEXP R_MRptr)
{
  SEXP R_MRptr_copy;
  void *MRptr_copy = MR_copy(R_ExternalPtrAddr(R_MRptr));
  
  newRptr(MRptr_copy, R_MRptr_copy, R_MRptr_finalizer);
  
  UNPROTECT(1);
  return R_MRptr_copy;
}

