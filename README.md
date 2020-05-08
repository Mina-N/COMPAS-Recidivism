# COMPAS-Recidivism
Explore predictors of recidivism on the Broward County population 

Our analysis seeks to 
1. Construct an RAI for predicting two-year recidivism on the Broward County population
- Select the most salient predictors from compas-scores-two-years.csv to estimate the outcome variable is_recid
- Perform k-fold cross-validation on the model by iteratively splitting the data into test (40% of the data) and training (60% of the data) datasets and recording the estimated test error
- Revise the predictors in the model and rerun cross-validation as needed
2. Construct an RAI for predicting two-year violent recidivism on the Broward County population
- Select the most salient predictors from compas-scores-two-years.csv to estimate the outcome variable is_violent_recid
- Perform k-fold cross-validation on the model by iteratively splitting the data into test (40% of the data) and training (60% of the data) datasets and recording the estimated test error
- Revise the predictors in the model and rerun cross-validation as needed
3. Determine whether each RAI is equally predictive across race, age, and gender
4. Compare the performance of our RAIs to COMPAS
