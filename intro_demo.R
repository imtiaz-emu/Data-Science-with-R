gender <- c('Male', 'Female', 'Female', 'Male', 'Female', 'Male')
gender <- factor(gender)
unclass(gender)

genders <- c('Male', 'Female')
people <- c('Kabir', 'Laif', 'Moin')
df <- data.frame(colnames(genders), people)
df
