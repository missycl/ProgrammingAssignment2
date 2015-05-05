## Caching an Inverse of a Matrix


## The following function creates a special vector
## This vector is a list that sets the value of the matrix
## gets the value of the matrix, sets the value of the inverse
## gets the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
	set <-function(y) {
    x <<- y
    m<<-NULL
	}
  get <-function() x
  setmatrix<-function(solve) m<<-solve
  getmatrix<-function() m
  list(set = set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
  
}


##  This function calculates the inverse of the special vector
##  It first checks to see if the inverse has been calculated
##  If so, it gets the inverse from the cache and skips the computation
##  Otherwise, it calculates the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
	m<-x$getmatrix()
	if(!is.null(m)){
		message("getting cached matrix")
		return(m)
	}
	matrix<-x$get()
	m<-solve(matrix,...)
	x$setmatrix(m)
	m
}
