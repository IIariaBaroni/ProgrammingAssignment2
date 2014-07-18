## Function to take and cache matrix

makeCacheMatrix <- function(x = matrix()) {

    ##Internal variable for makeCacheMatrix
    inv <- NULL
    
    ## set and get funcion for the x matrix
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    
    ## set and get funcion for the inverse of the x matrix
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    
    ##Output: a list of the functions availables
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## This function return a matrix that is the inverse of 'x'
  ## The x variable is a makeCacheMatrix object, it's not a matrix!
  
  
  ## Taking a the possible inverse matrix with the getinverse method
  inv <- x$getinverse()
  
  ##If the inv matrix is not empty, we already have the result in inv, so the system return inv variable
  if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
  }
  ## If the matrix is not empty, the function go on, taking the original matrix from x
  data <- x$get()
  
  ## Creation of the inv variable
  inv <- solve(data)
  
  ## Call to the Setinverse varable in x
  x$setinverse(inv)
  
  ## Output of the funcion: inv variable
  inv
}
