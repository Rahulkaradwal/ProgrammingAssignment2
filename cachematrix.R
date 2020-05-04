## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
## Here it is setting the matrix
set <- function(matrix) {
  m <<-matrix
  i <<- NULL
}

## Here this function will get the matrix
get <- function(){
  m
}

## This method will set the inverse of the matrix
setInverse <-function(inverse){
  i<<- inverse
}

## This method will get the inverse of the matrix
getInverse <- function(){
  i
}
list(set=set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
## Return the inverse of the 'x' matrix
  m <- x&getInverse()
if(!is.null(m)){
  message("cached data:")
return(m)
}
data <- x$get()

## Calculate the inverse
m <- solve(data) %*% data

## Set the inverse of the object
x$setInverse(m)
m  
}
