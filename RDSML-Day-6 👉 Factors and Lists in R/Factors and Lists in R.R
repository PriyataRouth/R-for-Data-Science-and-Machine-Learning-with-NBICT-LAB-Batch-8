#Factors in R

#Summery of numeric items
participants_age = c( 78, 25, 68, 45, 48, 36 )
summary(participants_age)  # to calculate summary statistics

#findings summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession)
profession = factor(profession) # convert vector to factor

summary(profession)

#putting the summary in order
birth_month = c("jan", "dec", "mar", "july", "aug", "jan", "dec", "feb", "mar", "jun", "feb", "apr")
summary(birth_month)
birth_month_fact = factor (birth_month)
summary(birth_month_fact)                           
birth_month = c("jan", "dec", "mar", "july", "aug", "jan", "dec", "feb", "mar", "jun", "feb", "apr")
birth_month_fact = factor (birth_month,
                           ordered = TRUE,
                           levels = c("jan", "feb", "mar", "apr", "may", "jun", "july", "aug", "sep", "oct", "nov", "dec")) # to get output in order basis
summary(birth_month_fact)

#Lists in R
#lists are used to place number of items in a bundle
a = c(2, 4, 6)
b = c("Red", "Green", "Blue")
c = "Welcome!"

my_list = list(a, b, c)

my_list

# naming the list items
my_list = list(pieces = a, colors= b, message = c)
my_list

# Calling a specific data structure
my_list[1]
my_list[2]
my_list[3]
my_list['colors']
my_list$pieces

# Calling particular items from the data structure
my_list$colors[3]
