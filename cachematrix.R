## Put comments here that give an overall description of what youryfunctions do

## Write a short comment describing this function
## first function will set the value of the matrix, 
##get the value of the matrix, 
##set the value of the inverse,
##get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse)
    m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function
## computes the inverse of the special "matrix" returned by function above. 
## If the inverse has already been calculated (matrix not changed), 
##then the cachesolve will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  NewMatrix <- x$get()
  m <- solve(NewMatrix,...)
  x$setInverse(m)
  m
  

}

