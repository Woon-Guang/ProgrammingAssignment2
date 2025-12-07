## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makecachematrix<-function(x=matrix()){
  m=NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmatrix<-function(inverse) m<<-inverse
  getmatrix<-function()m
  list(set=set,get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}




cachesolve<-function(x,...){
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cache data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setmatrix(m)
  return(m)
}


