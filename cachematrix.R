

## makeCacheMatrix
## This function creates a special "matrix" object that can cache its inverse.


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
    setimatrix <- function(imatrix) {
        imv<<-imatrix
    }
    
    ## Method to read the stored imv
    getimatrix <- function() {
        imv
    }
    
    ## returning the methods as list.
    list(set=set,get=get,setimatrix=setimatrix,getimatrix=getimatrix)
    
    

}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
