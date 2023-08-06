# Printing for n rows

# Half Triangle
n=5
stars=c()
for (i in 1:n){
  for (j in 1:i+1){
    stars=c(stars, "*")
  }
  print(stars)
  stars=c()
}

# Inverted Half Pyramid
n=5
i=1
j=n
starsrev=c()
while(i<=n){
  for (j in 1:j){
    starsrev=c(starsrev, "*")
  }
  print(starsrev)
  starsrev=c()
  i=i+1
  j=j-1
}