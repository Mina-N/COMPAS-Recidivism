#loadign libraries
library(rpart)
library(randomForest)

# Create train and test datasets
compas_non_violent <- read.csv("./compas-scores-two-years.csv")
compas_non_violent$is_recid <- factor(compas_non_violent$is_recid)
compas_non_violent$is_violent_recid <- factor(compas_non_violent$is_violent_recid)
index = sample( 1:nrow( compas_non_violent ), round( nrow( compas_non_violent )*0.6 ), replace = FALSE )
train = compas_non_violent[ index, ] # About 60% of the observations
test = compas_non_violent[ -index, ] # About 40% of the observations

required_columns <- c("sex",
                      "age",
                      "race",
                      "juv_fel_count",
                      "juv_misd_count",
                      "juv_other_count",
                      "priors_count")
dependent_column_non_violent <- "is_recid"

formula_non_violent <- paste0(dependent_column_non_violent,
                              "~",
                              paste0(required_columns, collapse = "+"))


#Decision Tree Non Violent

dt_object <- rpart(formula_non_violent, data=train)
dt_value = predict(object=dt_object,
                   newdata =test[required_columns],
                   type="class" )
dt_error = sum(test[[dependent_column_non_violent]] != dt_value)  / length(dt_value)
dt_error

#Random forest Non Violent
rf_object <- randomForest(y=train[[dependent_column_non_violent]],
                          x=train[required_columns])

rf_value = predict(object=rf_object,
                   newdata =test[required_columns],
                   type="class" )
rf_error = sum(test[[dependent_column_non_violent]] != rf_value)  / length(rf_value)
rf_error

#Decision Tree Violent

dependent_column_violent <- "is_violent_recid"

formula_violent <- paste0(dependent_column_violent,
                              "~",
                              paste0(required_columns, collapse = "+"))
#Decision Tree Violent

dt_object_v <- rpart(formula_violent, data=train)
dt_value_v = predict(object=dt_object_v,
                   newdata =test[required_columns],
                   type="class" )
dt_error_v = sum(test[[dependent_column_violent]] != dt_value_v)  / length(dt_value_v)
dt_error_v

#Random forest Non Violent
rf_object_v <- randomForest(y=train[[dependent_column_violent]],
                          x=train[required_columns])

rf_value_v = predict(object=rf_object_v,
                   newdata =test[required_columns],
                   type="class" )
rf_error_v = sum(test[[dependent_column_violent]] != rf_value_v)  / length(rf_value_v)
rf_error_v
