# User defined function in R

# User defined function can be invoked to perform a specific task

add5<-function(x){
  print(x+5)
}

# calling the function

add5(8)
add5(6)

# Making function to calculate sum of elements in vector

# Creating Vector
vec1=c(1,2,3,8,7,5,3)

# Creating Function
fun_Sum_vec=function(x){
  sum=0
  for(i in x){
    sum=sum+i
  }
  return(sum)
}
print(fun_Sum_vec(vec1))

# Predefined function for finding sum
print(sum(vec1))

# Making recursive function to find sum of list containing combined elements
fun_Sum_list_combined=function(x){
  sum=0
  for(i in x){
    if(is.numeric(i)){
      sum=sum+i
    }
  } 
  return(sum)
}
print(fun_Sum_list_combined(list(1,2,3,8,7,5,3,8,"Hello")))

# sum() dosen't work for list

# Factorial
fun_fact<-function(x){
  f=1
  for(i in 1:x){
    f=f*i
  }
return(f)}
print(fun_fact(5))

# Fibonacci Sequence
fun_fib=function(x){
  i1=0
  i2=1
  print(i1)
  print(i2)
  for(i in 2:x){
    print(i1+i2+i)
    
  }
}
print(fun_fib(5))

# Fibonacci Sequence
fun_fib=function(x){
  v=c()
  s=0
  for(i in 1:x){
    if(i==1){print("0")
      v=c() }
    if(i==2){ print("1") 
      v=c()}
    else{  print(s+v)
      v=s+v }
    
  }
}



fun_fib=function(n){
  fibseq=c(0,1)
  if(n>2){
    for(i in 3:n){
      fibseq[i]=fibseq[i-1]+fibseq[i-2]
    }
  }
  return(fibseq)
}
fun_fib(5)