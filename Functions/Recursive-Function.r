# Making recursive function to calculate Factorial

# Creating Recursive Function
rec_fun_fact=function(x){
  if(x==0|x==1){
    return(1)
  }else{
    return(x*rec_fun_fact(x-1))
  }
}
print(rec_fun_fact(5))

# Making recursive function to find sum of n natural numbers
rec_fun_sum_n=function(x){
  if(x==1){
    return(1)
  }else{
    return(x+rec_fun_sum_n(x-1))
  }
}
print(rec_fun_sum_n(5))

# Making recursive function to calculate Sum of Series(1^2 +2^2 + ...)

# Creating Recursive Function
rec_fun_sum_s=function(x){
  if(x==0){
    return(0)
  }else{
    return((x*x)+rec_fun_sum_s(x-1))
  }
}
print(rec_fun_sum(6))

# Making recursive function to calculate Fibonacci Series(0,1,1,2,3,5 ...)

# Creating Recursive Function
rec_fun_fib=function(x){
  if(x==0){
    return(0)
  }else if(x==1){
    return(1)}
    else{
    return(rec_fun_fib(x-1)+rec_fun_fib(x-2))
  }
}
# Take input from user
nterms=as.integer(readline("Enter Number of Terms:"))

# printing fibonacci series
if(nterms<=0){
  print("Please Enter a Positive integer")
}else{
  print("Fibonacci Sequence is :")
  for(i in 0:(nterms-1)){
    print(rec_fun_fib(i))
  }
}