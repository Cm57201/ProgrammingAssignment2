## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Define the s and x variables in the cache environment.
## Create the set/get/setsolve/getsolve functions
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <-function(y){
    x<<-y
    s<<-NULL
  }
  
  get <- function() x
  setsolve <- function(solve) s<<- solve
  getsolve <- function() s
  list (set = set, get = get, setsolve = setsolve, getsolve=getsolve)

}


## Write a short comment describing this function
## Get the s value from x$getsolve function.
## If s is null calculate the inverse of the matrix and set it in the x function.
## if s is not null get the value of the inverse from the x function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if (!is.null(s)) {
    message("getting cached data")
    return (s)
  }
  
  data <-x$get()
  s <- solve(data)
  x$setsolve(s)
  s

}
