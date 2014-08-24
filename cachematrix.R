## Matrix Inversion can be costly if computated repeatedly and therefore caching the inverse of the matrix
## is a solution to avoid it.We are doing so by writing functions below:

## Defining a function makeCacheMatrix which takes teh argument x,defining another function within this called set.
## getting and setting the values of matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Definig function cacheSolve. It checks to see if inverse of matrix is already computed.If done,skips and if not sets the value in matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m<-x$getmatrix()
    if(!is.null(m)){
      message("The data seen is cached")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
