## As indicated in the assignment, the goal of the functions is caching the inverse of a matrix

## As requested in the assignment, this function seeks to create a  creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## As requested in the assignment, this function seeks to calculate and obtain the inverse of the matrix that we previously had

cacheSolve <- function(x, ...) {
  

  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

x <- matrix(1:4, nrow = 2, ncol = 2)
x1 <- makeCacheMatrix(x)
test <- cacheSolve(x1)
