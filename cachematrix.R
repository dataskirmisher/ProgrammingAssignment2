##  R Programming - COURSERA
##  Programing Assignment 2
##  Victor Sousa - 08/18

## makeCacheMatrix ()
## This function creates a special "matrix" object that can cache its inverse.
## It contains a list of methods
## Set and Get the value of the Matrix and the Inverse

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize the inverse matrix (imv) as NULL
    imv <- NULL
    
    ## "set" is a method to replace the stored matrix
    ## resetting the stored "imv" to NULL
    set <- function(y){
        x <<- y
        imv <<- NULL
    }
    
    ## "get" is a method to read the value of the matrix
    get <- function(){
        x
    }
    
    ## set the value of the inverse 
    setimv <- function(imatrix) {
        imv<<-imatrix
    }
    
    ## Method to read the stored imv
    getimv <- function() {
        imv
    }
    
    ## returning the methods as list.
    list(set=set,get=get,setimv=setimv,getimv=getimv)

}


##  cacheSolve ()
##  This function computes the inverse of the special "matrix" 
##  returned by makeCacheMatrix above. If the inverse has already
##  been calculated (and the matrix has not changed), then the 
##  cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        
    imv <- x$getimv
    
    ## if inverse matrix has been calculated
    ## retun stored value
    
    if (!is.null(imv)){
        message("getting cached data")
        return(imv)
        
    ## if not, proceed the following
    }else{
        ## Read stored matrix
        data <- x$get()
        
        ## Calculate inverse matrix
        imv <- solve(data,...)
        
        ## Store the inverse on cache
        x$setimv(imv)
        
        ## return calculed imv (inverse matrix)
        imv
        
    }
}
