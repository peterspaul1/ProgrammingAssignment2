## makeCacheMatrix makes a list, with

## set the value of the matrix
## get the value of the matrix
## set the value of inverse of the matrix
## get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  set<-function(z){
    x<<-z
    inverse<<-NULL
  }
  get<-function()z
  setinv<-function(inv) inverse<<-inv
  getinv<-function()inverse
}


## cacheSolve computes the inverse if it was not computed yet.

cacheSolve <- function(x, ...) {
      inverse<-x$getinv() 
      if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
      }
      data<-x$get()
      inv<-solve(data)
      x$setinv(inverse)
      inverse
  
  
   ## Return a matrix that is the inverse of 'x'
}
