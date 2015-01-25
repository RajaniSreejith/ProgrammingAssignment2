## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    m<-NULL
    set<-function(y)
    {
        x<<-y
        m<<-NULL
    }
    get<-function()x
    
    setCacheMatrix<-function(inv){
        m<<-inv
     
    }
    getCacheMatrix<-function()m
    list(set=set,get=get,setCacheMatrix=setCacheMatrix,getCacheMatrix=getCacheMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    m<-x$getCacheMatrix()
    if(!is.null(m))
    {
        message("sending cashed inverse matrix")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setCacheMatrix(m)
    m
  
      
        ## Return a matrix that is the inverse of 'x'
}
