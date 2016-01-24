## Coursera R Programming - Week 3 programming assignment

## Invert a matrix and cache the inverted matrix objective in memory
## for future usage (to save repeated computation)


## This function takes a matrix object and create a list containing
## functions to:
##       1. set the value of the matrix
##       2. get the value of the matrix
##       3. set the value of  the inverted matrix
##       4. get the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
        
        # Initialize the inverted matrix
        inv <- NULL
        
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        
        setinv <- function(inv_m) inv <<- inv_m
        
        getinv <- function() inv
        
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        
        inv <- x$getinv()
        
        if (!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        
        orig_m <- x$get()
        inv <- solve(orig_m)
        x$setinv(inv)
        inv
        

}
