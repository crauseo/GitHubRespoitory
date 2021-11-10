## Put comments here that give an overall description of what your
## functions do
My functions create a cache for computing functions from large data, so that when it is time to compute the function, 
        it can be called from the cache so that it does not have to go through the entire process again

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
This function creates a cache for the function that I want to run repeatedly on the data set

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
This function uses the above 1st function to return the inverse of the matrix in the data set
        


makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function () {inv}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
