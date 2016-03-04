map2c <- function(val, vals)
{
  val <- comm.match.arg(tolower(val), vals)
  as.integer(which(vals==val)-1L)
}



mr_set_mapstyle <- function(mr, mapstyle)
{
  assert_type(mr, "MR")
  
  mapstyles <- c("chunk", "stride", "master/slave")
  value <- map2c(mapstyle, mapstyles)
  
  .Call(R_mr_set_mapstyle, mr, value)
}



mr_set_verbosity <- function(mr, verbosity)
{
  assert_type(mr, "MR")
  
  verbosities <- c("none", "summary", "histogrammed")
  value <- map2c(verbosity, verbosities)
  
  .Call(R_mr_set_verbosity, mr, value)
}



mr_set_timer <- function(mr, timer)
{
  assert_type(mr, "MR")
  
  timers <-  c("none", "summary", "histogrammed")
  value <- map2c(timer, timers)
  
  .Call(R_mr_set_timer, mr, value)
}



mr_set_memsize <- function(mr, memsize)
{
  assert_type(mr, "MR")
  
  assert_type(memsize, "int")
  assert_val(memsize > 0)
  
  .Call(R_mr_set_memsize, mr, as.integer(memsize))
}



mr_set_keyalign <- function(mr, keyalign)
{
  assert_type(mr, "MR")
  
  assert_type(keyalign, "int")
  assert_val(keyalign > 0)
  
  .Call(R_mr_set_keyalign, mr, as.integer(keyalign))
}



mr_set_valuealign <- function(mr, valuealign)
{
  assert_type(mr, "MR")
  
  assert_type(valuealign, "int")
  assert_val(valuealign > 0)
  
  .Call(R_mr_set_valuealign, mr, as.integer(valuealign))
}

