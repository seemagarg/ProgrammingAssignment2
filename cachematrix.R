## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m=matrix(numeric(),r,c)) {
        i <- NULL
        setmatrix <- function(y) {
                m <<- y
                i <<- NULL
        }
        getmatrix <- function() m
        setinversematrix <- function(solve) i <<- solve
        getinversematrix <- function() i
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinversematrix = setinversematrix,
             getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
        i <- x$getinversematrix()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- m$getmatrix()
        i <- solve(data, ...)
        x$setinversematrix(i)
        i
}
