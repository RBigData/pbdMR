#include <RNACI.h>
#include "mr-mpi/cmapreduce.h"


SEXP R_mr_set_mapstyle(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_mapstyle(mr, INT(value));
  
  return RNULL;
}



SEXP R_mr_set_verbosity(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_verbosity(mr, INT(value));
  
  return RNULL;
}



SEXP R_mr_set_timer(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_timer(mr, INT(value));
  
  return RNULL;
}



SEXP R_mr_set_memsize(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_memsize(mr, INT(value));
  
  return RNULL;
}



SEXP R_mr_set_keyalign(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_keyalign(mr, INT(value));
  
  return RNULL;
}



SEXP R_mr_set_valuealign(SEXP mr_extptr, SEXP value)
{
  void *mr = (void *) getRptr(mr_extptr);
  MR_set_valuealign(mr, INT(value));
  
  return RNULL;
}


