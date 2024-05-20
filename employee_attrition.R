# Loaded the dataset
employee <- read.csv("C:/Users/Owner/Documents/Data/hr_employee_attrition.csv")

# Calculated summary statistics for Education, Monthly Income, and Work-Life Balance
summary(employee$Education)
summary(employee$MonthlyIncome)
summary(employee$WorkLifeBalance)

# Computed inferential Statistics:
str(employee)

# Conducted a chi-square test to determine if there is a significant difference in attrition rates based on Education
chisq.test(table(employee$Education, employee$Attrition))

# Conducted a chi-square test to determine if there is a significant difference in attrition rates based on WorkLifeBalance
chisq.test(table(employee$WorkLifeBalance, employee$Attrition))

# Conducted a t-test to determine if there is a significant difference in attrition rates based on Monthly Income
t.test(employee$MonthlyIncome ~ employee$Attrition)

# Converted attrition variable to binary variable 
employee$AttritionBinary <- ifelse(employee$Attrition == "No", 0, 1)
# Fitted a logistic regression model to predict Attrition based on Education, Monthly Income, and Work-Life Balance
fit <- glm(AttritionBinary ~ Education + MonthlyIncome + WorkLifeBalance, data = employee, family = "binomial")
summary(fit)

# Created a histogram of Monthly Income for employees who have attrited
hist(employee$MonthlyIncome[employee$Attrition == "Yes"], main = "Distribution of Monthly Income for Attrited Employees", xlab = "Monthly Income")

# Created a box plot of Work-Life Balance for different departments
boxplot(employee$WorkLifeBalance ~ employee$Department, main = "Work-Life Balance by Department", xlab = "Department", ylab = "Work-Life Balance")

# Created a scatter plot of Monthly Income vs. Work-Life Balance for all employees
plot(employee$MonthlyIncome, employee$WorkLifeBalance, main = "Monthly Income vs. Work-Life Balance", xlab = "Monthly Income", ylab = "Work-Life Balance")