# Artificial Neural Network

# Importing the dataset
dataset = read.csv('parkinson.csv')
dataset = dataset[2:24]

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$status, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set[-23] = scale(training_set[-23])
test_set[-23] = scale(test_set[-23])

# Fitting ANN to the Training set
#install.packages('h2o')
library(h2o)
h2o.init(nthreads = -1)
model = h2o.deeplearning(y = 'status',
                         training_frame = as.h2o(training_set),
                         activation = 'Rectifier',
                         hidden = c(11,11,11,11,11),
                         epochs = 100,
                         train_samples_per_iteration = -2)

# Predicting the Test set results
y_pred = h2o.predict(model, newdata = as.h2o(test_set[-23]))
y_pred = (y_pred > 0.5)
y_pred = as.vector(y_pred)

# Making the Confusion Matrix
cm = table(test_set[, 23], y_pred)

#h2o.shutdown()