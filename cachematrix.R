## This functions allow you to:
##1) Create a matrix object that can cache its inverse
##2) Cache the inverse of a matrix imput. If the inverse of the matrix has alre
##   been done, it displays the matrix from the object and, if not, it will do 
##   do the inverse of the matrix.

## This function create a special object matrix which is indeed a list and,
##if possible creates its inverse.


makeCacheMatrix <- function(x = matrix()) {
        z<-solve(x)
        mat<-x
        list(matrix=mat, inverse=z)
}

## This function reads and object and checks if it's a matrix or a special matrix object,
## if the inverse is in the special object matrix it returns it, if the object is a simple
##matrix it does its inverse and if its not a matrix, it will return the message "this is not
## a matrix!!!"         

cacheSolve <- function(x, ...) {
        if(is.list(x)==TRUE){
                inv<-x$inverse
                if(!is.null(inv)){
                message("getting cached data")
                return(inv)
                }
                else{
                solve(x$matrix)
                }
        }
        ## Return a matrix that is the inverse of 'x'
        
        else if(is.matrix(x)==TRUE){
                
                solve(x)
        }
        else{
                message("this is not a matrix!!!!!")
        }
}

}