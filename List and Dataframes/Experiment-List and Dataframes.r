# Experiment 1

# Creating the list:

# Creating a sequence of 20 evenly spaced numbers between -4 and 4 
seq1=seq(-4,4,length.out=20)
print(seq1)

# Creating a 3x3 matrix of the logical vector filled column-wise 
mat1=matrix(c(FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE), nrow = 3, ncol = 3)
print(mat1)

# Creating a character vector with the two strings "don" and "quixote"
char_vec1=c("don","quixote")
print(char_vec1)

# Creating a factor vector containing the observations
Fact1=factor(c("LOW", "MED", "LOW", "MED", "MED", "HIGH"))
print(Fact1)

# Creating a list containing the elements
list1=list(seq=seq1,mat=mat1,vec=char_vec1,fact=Fact1)
print(list1)

# Extracting row elements 2 and 1 of columns 2 and 3 of the logical matrix
ele=list1$mat[c(2,1),c(2,3)]
print(ele)


# Experiment 2

# Creating and storing the data frame, and appending the two new records:

# Create a data frame with example data
d_frame <- data.frame(person = c("Alice", "Bob", "Charlie", "David"),sex = c("F", "M", "M", "M"),
                           funny = c("High", "Med", "Low", "High"))
print(d_frame)

# Append two new records
new_records <- data.frame(person = c("Eve", "Steve"),
                             sex = c("F", "M"),
                            funny = c("Med", "Low"))

d_frame <- rbind(d_frame, new_records)
print(d_frame)

# Experiment 3

# Extracting the names and ages of any records where the individual is female and has a level of funniness equal to Med OR High:

filtered_records <- subset(d_frame, sex == "F" & (funny == "Med" | funny == "High"), select = c("person", "funny"))
print(filtered_records)


# Experiment 4

# Extracting all records from the data frame that correspond to people whose names start with 'S':

s_records <- subset(d_frame, grepl("^S", person))
print(s_records)