# Employee-Attrition-Analysis Project

## Project Overview

This project explores the socioeconomic factors influencing employee attrition, focusing on the impact of education, income, and work-life balance. The goal is to provide actionable insights to improve employee retention strategies.

## Dataset

- **Source**: IBM HR Analytics Employee Attrition & Performance dataset from [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Description**: The dataset contains 3,338 records and 35 variables, including employee demographics, job roles, income, performance ratings, and attrition status.

## Tools and Libraries Used

- **R**: Statistical analysis and data visualization
- **RStudio**: Development environment
- **Packages**: ggplot2, dplyr, readr, tidyr

## Analysis Methodology

1. **Descriptive Statistics**
   - Calculated measures of central tendency and variability to identify outliers and understand the distribution of variables like monthly income.
  
2. **Data Transformations**
   - Converted the attrition variable to binary (0 = no attrition, 1 = attrition) for further analysis.

3. **Chi-Square Tests**
   - Examined if attrition rates differed significantly based on education levels and work-life balance ratings.

4. **Independent Samples T-Test**
   - Compared average monthly income between employees who left the company and those who stayed.

5. **Binomial Logistic Regression**
   - Predicted the likelihood of attrition based on education, income, and work-life balance, checking for multicollinearity, linearity, and independence of errors.

6. **Data Visualizations**
   - Created histograms, boxplots, and scatterplots to explore relationships between variables and attrition patterns.

## Key Findings

- **Work-Life Balance**: Employees with poor work-life balance are significantly more likely to leave the company.
- **Income**: Higher monthly incomes are associated with higher attrition rates.
- **Education**: No significant correlation was found between education level and attrition rates.

## How to Run the Analysis

1. **Clone the Repository**:
   ```sh
   git clone [your-repository-url]
