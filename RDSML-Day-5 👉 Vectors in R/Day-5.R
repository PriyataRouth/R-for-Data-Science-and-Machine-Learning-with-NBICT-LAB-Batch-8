# victors in R

# creating a victor using the C() command
# C command is to include various value in a single variable
student.height = c(60, 69, 55, 62)
student.height

#checking the class of the victor students.height
is.numeric(student.height) # is for checking if the victor data is numeric or not
is.logical(student.height) # is to check if the data is logical or not

# R automatically converse numeric to text, when you have a text item in the victor
b = c(5, 8, 2, 'sv')
b
is.numeric(b)
is.character(b)


# we can convert data types
# for example numeric to character
a <- c(1, 2, 3, 5)
a
class(a)
is.numeric(a)
a = as.character(a) # to convert numeric to character
class(a)

#logical operator TRUE & FALSE when converted it to numeric,
# TRUE converts to 1 & FASLE converts to 0
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d


# numeric to logical (1 or any number 
# other than converts to TRUE, 0 converts to FALSE)
d
class(d)
d = as.logical(d)
d

e = c(1, 0, 0, 1, 0, 23, -7, 0)
e = as.logical(e)
e

# creating sequential vector
# creating a vector starting from 1 to 10

my_seq = c(1:50, 80, 99, 78, 67)
my_seq

# creating a sequential vector using the Seq function
new.seq = c(seq(1,10))
new.seq

# sequence in steps of three
new.seq = c(seq(1, 10, by=3))
new.seq

# vector can have character
names = c("Elias", "Priyata", "Titu", "Mumu")
class(names)
names[3]
names[3:4]

# assigning names to vector values

my_values = c(4, 7, 9, 11)
names(my_values) = c("a", "b", "c", "d")
my_values
my_values["c"]
