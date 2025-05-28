# Matrix in R

study_hours = c(89, 98, 47, 34, 23, 14, 67, 90, 76, 86)
subject_marks = c(79, 53, 72, 68, 90,87, 86, 68, 76, 84)

#creating a matrix just using only study_hours

stu_hours_mat = matrix(study_hours) # to calculate matrix
stu_hours_mat
study_hours #to see the vector

# joining two columns in a matrix

students_data = c(study_hours, subject_marks)
students_data   # as a vector
students_matrix = matrix(students_data)
students_matrix
students_matrix = matrix(students_data, byrow = FALSE, nrow = 10)
students_matrix
#byrow = FALSE means row will be shown egdwise (bycolumn = True)

#if bycolumn = TRUE
students_matrix = matrix(students_data, bycolumn = TRUE, nrow = 10) # bycolumn is not perfect command for R

# naming rows & columns
colnames(students_matrix) = c('hours', 'marks')
students_matrix
rownames(students_matrix) = c(1:10)
students_matrix

#Selecting an element from a matrix

students_matrix[4, 1] #row 4, column 1
students_matrix[5, 2]
