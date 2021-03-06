## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# function for define a cached matrix

makeCacheMatrix <- function(x = matrix()) {
    ## Write a short comment describing this function
    # define set/get functions for cachematrix
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) inv <<- inverse
    getInv <- function() inv
    list(set=set, get=get, setInv=setInv,
         getInv=getInv)
}

## Write a short comment describing this function
# special function calculate the inverse of matrix and store it

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv()
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data,...)
    x$setInv(inv)
    inv
}
