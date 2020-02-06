#1
A = read.table(file = "D:/UTT/IF17/IF17_TP5/image_originale.txt")

#2 
cat(dim(A))

#3
cat(mode(A))

#4
#solution 1  
#C = matrix(unlist(A), ncol=256, byrow=FALSE)


#solution 2
columns = cbind()
for (i in 1:length(A)){
  columns = cbind(columns, A[[i]])
}

C = matrix(c(columns), 256, 256)

image(C,col=grey(seq(0,1, length=256)))

#5


# function that allows to get the variance
VarIntFinder = function(Cinf, Csup){
  meanSup = mean(Csup)
  meanInf = mean(Cinf)
  cardInf = length(Cinf)
  cardSup = length(Csup)
  cardAll = cardInf + cardSup
  
  Psup = cardSup / cardAll
  Pinf = cardInf / cardAll
  
  return (Psup * Pinf * (meanInf - meanSup)^2)
}

#initialize vetch (list of vectors of the matrix), Cinf and Csup
vecth = sort(columns)
Cinf = cbind(vecth[1])
Csup = cbind(vecth[2:length(vecth)])

#initialize variables that allows to find h optimal
VarInt = -100
VarTemp = 0
hopt = 0
h = vecth[1]

#h optimizer process
for (i in 2:length(vecth)){
  
  VarTemp = VarIntFinder(Cinf, Csup)
  if (VarTemp >= VarInt){
    VarInt = VarTemp
    hopt = h
  }
  
  h = vecth[i]
  Cinf = cbind(Cinf, Csup[1])
  Csup = Csup[2:length(Csup)]
}

#convert greyscale to black and white using h optimal
bwPixels = cbind()
for (i in 1:length(columns)){
  
  if(columns[i] > hopt){
    bwPixels = cbind(bwPixels, 1)
  }
  
  else{
    bwPixels = cbind(bwPixels, 0)
  }
}

#construct our black/white image
B = matrix(c(bwPixels), 256, 256)
image(B,col=grey(seq(0,1, length=256)))

