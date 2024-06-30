## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
#Initializes "x" as an empty matrix vector and initializes "i" as NULL.
  set<-function(y){
    x<<-y
    i<<-NULL
  }
#set function takes new vector "y" as input and replaces "y" to "x" and resets "i" to NULL.
  get<-function()x
  setinverse<-function(inverse)i<-inverse
  getinverse<-function()i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
}
#get function returns the current value of "x".
#setinverse function caches the mean value in "i". 
#getmean function returns the cached value of "i".




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
#Retrives cached value and if cached value is not NULL, returns the cached value.

  data<-x$get()
  i<-solve(data)
  x$setinverse(i)
  i
}
#if cached value is NULL, retreives current vector data, computes the value and the value is cached.
