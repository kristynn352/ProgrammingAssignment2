## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a list with functions to set the value 
##of the matrix, and get that value, set the value of the inverse
##using solve, and get the value of the invers

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      x <- x$getsolve()
      if(!is.null(m)) {
              message("getting cached data")
              return(m)
      }
      data <- x$get()
      m <- solve(data,...)
      x$setsolve(m)
      m
}
