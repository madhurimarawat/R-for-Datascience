#1 Storing taglines
s1="Be the change"
s2="The perfect fit"
s3="Taste the difference"
#2 Concatenating and separating with a newline
str=cat(paste(c(s1,s2,s3),collapse="\n"))
print(str)
str1=cat(paste(s1,s2,s3,sep="\n"))
print(str1)
str2=cat(s1,s2,s3,sep="\n")
print(str2)
str3=cat(c(s1,s2,s3),sep="\n")
print(str3)
print(sprintf("%s\n%s\n%s",s1,s2,s3))
#3 Extracting Substring
substr=substr(s1,4,6)
print(substr)
#4 Checking perfect in taglines
s1_check=grepl("perfect",s1)
s2_check=grepl("perfect",s2)
s3_check=grepl("perfect",s3)
print(s1_check)
print(s2_check)
print(s3_check)