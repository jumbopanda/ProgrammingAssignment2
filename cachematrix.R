## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a LIST that contains 4 objects:
##  1 - Sets the value of the matrix passed to it.
##  2 - Gets the value of the matrix.
##  3 - Sets the inverse value of the matrix.
##  4 - Gets the inverse value of the matrix.

makeCacheMatrix <- function(x = matrix()) {
           i <- NULL
            set <- function(y) {
                    x <<- y
                    i <<- NULL
            }
            get <- function() x
            setMatrix <- function(solve) i <<- solve
            getMatrix <- function() i
            list(set = set, get = get,
                 setMatrix = setMatrix,
                 getMatrix = getMatrix)
}


## Write a short comment describing this function

##  This function is passed an invertible matrix.
##  If the matrix has been solved, cached result is returned.
##  Else, the matrix is solved and the result cached above for future.
##  The function returns a new or cached value for the inverse of the matrix.

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'

         i <- x$getMatrix()
            if(!is.null(i)) {
                    message("getting cached data")
                    return(i)
            }
            matrix <- x$get()
            i <- solve(matrix, ...)
            x$setMatrix(i)
            i

}
