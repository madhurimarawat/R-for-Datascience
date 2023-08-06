# Experiment 1

# Confirm the specific locations of elements equal to 0 in the 10 X 10 identity matrix I10

m1=diag(10)
print(m1)

B<-m1[,]==0
print(B)

which(m1==0)

# Method 2
I10 <- diag(10)
print(I10)

# find locations of 0's
which(I10 == 0, arr.ind = TRUE)

# Experiment 2

# Store this vector of 10 values as foo<-c(7, 5, 6, 1, 2, 10, 8, 3, 8, 2).Then do the following:

# i. To extract the elements greater than or equal to 5 from the vector foo and store the result as bar.

foo<-c(7,5,6,1,2,10,8,3,8,2)
bar=foo[foo>=5]
print(bar)

# ii. To display the vector containing those elements from foo that remain after omitting all elements that are greater than or equal to 5.

foo=foo[foo<5]
print(foo)


# Experiment 3

# Store the string "Two 6-packs for $12.99".Then do the following:

# i.Use a check for quality  to confirm that the substring beginning with character 5 and ending with character 10 is "6-pack".

s1="Two 6-packs for $12.99"

substring<-substr(s1,start=5,stop=10)
print(substring)
print(substring == "6-pack")

# ii. Make it a better deal by changing the price to $10.99.

# Method 1
# Direct Assignment
substr(s1,start=17,stop=22)="$10.99"
print(s1)

# Method 2
# This uses the sub() function to substitute the old price with the new price in the string.
new_string <- sub("\\$12\\.99", "\\$10\\.99", s1)
print(new_string)

# Experiment 4

# Create a factor with levels of confidence as follows: Low for percentages [0,30]; Moderate for Percentages (30, 70]; and High for percentages (70,100].

#This uses the cut() function to create a factor with the specified levels and breakpoints. The include.lowest argument is set to TRUE so that the first interval includes 0. The right argument is set to FALSE so that the intervals are closed on the left and open on the right.

f1=c(12,36,98,75,24,10,78,96,25,38,44,75,55,77,11)

print(f1)

cut_f=cut(f1,breaks=c(0,30,70,100),labels=c("Low","Moderate","High"),include.lowest = TRUE,right = FALSE)

print(cut_f)