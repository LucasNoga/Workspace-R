a<-1
factorielle<-function(n){
  for (var in seq(1,n)){
    var2<-a
    var3<-var*var2
    a<-var3
  }
  return(a)
}
