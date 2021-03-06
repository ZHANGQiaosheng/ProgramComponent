# 
# http://blog.revolutionanalytics.com/2016/03/com_class_eval_metrics_r.html#perclass
set.seed(0)
actual = c('a','b','c')[runif(100, 1,4)] # actual labels
predicted = actual # predicted labels
predicted[runif(30,1,100)] = actual[runif(30,1,100)]  # introduce incorrect predictions
cm = as.matrix(table(Actual = actual, Predicted = predicted)) # create the confusion matrix
cm
n = sum(cm) # number of instances
nc = nrow(cm) # number of classes
diag = diag(cm) # number of correctly classified instances per class 
rowsums = apply(cm, 1, sum) # number of instances per class
colsums = apply(cm, 2, sum) # number of predictions per class
p = rowsums / n # distribution of instances over the actual classes
q = colsums / n # distribution of instances over the predicted classes
precision = diag / colsums 
recall = diag / rowsums 
f1 = 2 * precision * recall / (precision + recall)
data.frame(precision, recall, f1)

