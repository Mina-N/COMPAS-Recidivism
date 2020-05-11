# COMPAS-Recidivism
Explore predictors of recidivism on the Broward County population 

Our analysis seeks to 
1. Construct an RAI for predicting two-year recidivism on the Broward County population
- Select the most salient predictors from **compas-scores-two-years.csv** to estimate the outcome variable **is_recid**
- Split the data into test (40% of the data) and training (60% of the data) datasets and record training error
- Revise the predictors in the model as needed
2. Construct an RAI for predicting two-year violent recidivism on the Broward County population
- Select the most salient predictors from **compas-scores-two-years.csv** to estimate the outcome variable **is_violent_recid**
- Split the data into test (40% of the data) and training (60% of the data) datasets and record training error
- Revise the predictors in the model as needed
3. Determine whether each RAI is equally predictive across race, age, and gender
- Compare performance of Random Forests and Decision Trees across race, age, and gender
4. Compare the performance of our RAIs to COMPAS
- Cox Proportional Hazards Model for Random Forests and Decision Trees
