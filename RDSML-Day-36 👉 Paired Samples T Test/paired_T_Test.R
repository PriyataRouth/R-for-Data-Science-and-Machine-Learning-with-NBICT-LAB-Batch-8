# Paired sample t test in R
# importing the dataset

mydataset <- read.csv("paired-samples-t-test.csv")

# calculating the difference

diffs <- mydataset$carb - mydataset$carb_protein

# checking if the differences are normally distributed
shapiro.test(diffs)

# checking if any outlier exist
boxplot(diffs)

# Running the paired sample T-test
t.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)

# if the distribution is not normal, running the Wilcoxon signed-rank test
wilcox.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)


# calculating mean & sd
mean(mydataset$carb)
sd(mydataset$carb)

mean(mydataset$carb_protein)
sd(mydataset$carb_protein)

# effect size calculation using Cohen's d
# 0.2 = small, 0.5 ~ medium, 0.8 ~ large
# to install packages
install.packages("effsize")
library(effsize)
cohen.d(mydataset$carb_protien, mydataset$carb, paired = T)


# A paired samples t_test was used to determine whether there was a 
# statistically significant mean difference between the distance ran
# when participant imbibed a carbohydrate-protien drink compared to 
# a carbohydrate-0nly drink. no outlier was ditected. The assumption of normality was not violated as  assesed by
# Shapiro-wilk test. (p = 0.78). Participants ran further when limbbing the carbohydrate-
# protien drink (mean + 11.302 KM, sd = 0.713KM ) as opposed to the carbohydrate only drink  mean = 11.167 Km), (sd = 0.726 KM
# statistically significant mean increase of 0.135 KM, a 95% CI [0.091 , 0.181], t(19) = 6.352, p <= .001, 
# Cohen's d estimate: 0.187

# 