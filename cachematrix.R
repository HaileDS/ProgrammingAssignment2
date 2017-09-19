# Put comments here that give an overall description of what your functions do
# These functions R-Programming assignment for week 3

# Write a short comment describing this function
# The below function creates a special "matrix" object that can help to get cache inverse
makeCacheMatrix <- function(x = matrix()) {

#The below functions help to set values
#get the value of the matrix and their invertible matrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL                             
    set <- function(y) {                     
        x <<- y                             
        inv <<- NULL                        
 }
 get <- function() x                    
  
 setinverse <- function(inverse) inv <<- inverse 
 getinverse <- function() inv                     
 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
                                                                                 
  }
  
 #Write a short comment describing this function
 #The below functions compute or solve the special "matrix" returned by makeCacheMatrix and its inverse.
 #They also computes and set invertible matrix of 'x'

  cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
      inv <- x$getinverse()
      if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
}
     data <- x$get()
     inv <- solve(data, ...)
     x$setinverse(inv)
     inv
  }
