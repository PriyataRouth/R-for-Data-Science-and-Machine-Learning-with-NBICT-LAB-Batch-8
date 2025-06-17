library(ggplot2) # to load plot
dataset = mtcars

# Converting cyl column from a numeric to a factor variable
dataset$cyl = as.factor(dataset$cyl)

# Adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm)

# Removing the confidence intervals
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, se= FALSE)

# Extending the regression lines
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, se= FALSE, fullrange=TRUE)

#Filling the color of confidence bands 
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, aes(fill = cyl))

ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl, fill = cyl)) +
  geom_point()+
  geom_smooth(method=lm, fullrange=TRUE) # instead of previous command

# Changing point shapes manually
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(8,7,21))

# TO change the legend position
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(8,7,21))+
  theme(legend.position =" top")

# Changing point colors manually
ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(8,7,21))+
  scale_color_manual(values=c('darkblue','grey','orange'))
  theme(legend.position =" top")

  # Customizing scatter plots
  ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
    geom_point()+
    geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
    scale_shape_manual(values=c(8,7,21))+
    scale_color_manual(values=c('darkblue','grey','orange'))+
    labs(title="miles per gallon according to the weight")+
  theme(legend.position =" top")
  
# if wanna fragment the line
  ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
    geom_point()+
    geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
    scale_shape_manual(values=c(8,7,21))+
    scale_color_manual(values=c('darkblue','grey','orange'))+
    labs(title="miles per gallon \n according to the weight")+
    theme(legend.position =" top")
  
   # if changing the title of X,Y
  ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
    geom_point()+
    geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
    scale_shape_manual(values=c(8,7,21))+
    scale_color_manual(values=c('darkblue','grey','orange'))+
    labs(title="miles per gallon \n according to the weight",
         x="weight", y="miles per gallon")+
    theme(legend.position =" top")

    # Customizing themes
 plot = ggplot(dataset, aes(x=wt, y=mpg, colour = cyl, shape = cyl)) +
    geom_point()+
    geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
    scale_shape_manual(values=c(8,7,21))+
    scale_color_manual(values=c('darkblue','grey','orange'))+
    labs(title="miles per gallon \n according to the weight",
         x="weight", y="miles per gallon")+
    theme(legend.position =" top")
 
 plot + theme_classic()
 plot + theme_minimal()
 