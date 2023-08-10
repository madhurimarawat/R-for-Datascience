# Creating example list
myList=list(1,2,list(3,4),list(5,list(6,7)),"eight",TRUE)
print(myList)

# Creating recursive function
rec_fun_sum=function(x){
  sum=0
  for(i in x){
    if(is.numeric(i)){
      sum=sum+i
    }
    else if(is.list(i)){
      sum=sum+rec_fun_sum(i)
    }       }
  return(sum)
}

# Calling Function
rec_fun_sum(myList)

# Creating more Lists to check
myList1=list(12,56,TRUE,"H","I",FALSE,52,11,34,"Wo",SUB=list(12,TRUE,"F",45,67,11))
print(myList1)
rec_fun_sum(myList1)

myList2=list(12,56,list1=list(8,7,TRUE),TRUE,"H","I",FALSE,52,11,34,"Wo",SUB=list(12,TRUE,"F",45,67,11,list=(8)))
print(myList2)
rec_fun_sum(myList2)

myList3=list(12,56,list1=list(8,7,TRUE,list2=list(1,2,3)),TRUE,"H","I",FALSE,52,11,34,"Wo",SUB=list(12,TRUE,"F",45,67,11,list=(8)))
print(myList3)
rec_fun_sum(myList3)
