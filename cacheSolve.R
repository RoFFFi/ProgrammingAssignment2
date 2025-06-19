cacheSolve <- function(x = matrix(),...) {
       inv <- x$getInverse()
       if(!is.null(inv)) {
               message("getting cached data")
               return(inv)
       }
       # if inverse not already calculated, done here
       
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}