# Logistic Regression with Regularization

This repository contains the implementation of logistic regression with regularization, developed by Rami Abu Rabia and Jacob Zack. The primary objective is to perform binary classification using the logistic regression model while incorporating regularization to prevent overfitting.

## Contents

### 1. **addOnesColumn**
   - Adds a column of ones to the input matrix.
   - Usage: `D1 = addOnesColumn(D1)`

### 2. **computeCostAndGradient**
   - Computes the cost and gradient of the hypothesis for logistic regression.
   - Usage: `[J, Gradient] = computeCostAndGradient(D, Y, Hypothesis)`

### 3. **computeRegularizedCostAndGradient**
   - Computes the regularized cost and gradient of the hypothesis for logistic regression.
   - Usage: `[J, Gradient] = computeRegularizedCostAndGradient(D, Y, Hypothesis, lambda)`

### 4. **gradientDescent**
   - Performs gradient descent to optimize the hypothesis parameters.
   - Usage: `[Costs, FinalHypothesis] = gradientDescent(Data, Y, Hypothesis, alpha, max_iter, threshold)`

### 5. **loadData**
   - Loads data from a specified file and separates features (D) and labels (Y).
   - Usage: `[D, Y] = loadData(filename)`

### 6. **plotData**
   - Plots the data points with markers for positive and negative examples.
   - Usage: `plotData(X, y)`

### 7. **plotDecisionBoundary**
   - Plots the decision boundary defined by the hypothesis parameters.
   - Usage: `plotDecisionBoundary(theta, X, y)`

### 8. **predictValue**
   - Predicts a value based on the example and hypothesis.
   - Usage: `prediction = predictValue(Example, Hypothesis)`

### 9. **sigmoid**
   - Computes the sigmoid function for logistic regression.
   - Usage: `Z = sigmoid(z)`

### 10. **updateHypothesis**
   - Updates the hypothesis parameters using the gradient and learning rate.
   - Usage: `Hyhpothesis = updateHypothesis(Hypothesis, alpha, Gradient)`

## Usage Example
```matlab
[D, Y] = loadData("ex2data1.txt");
Data = addOnesColumn(D);
alpha = 0.001;
max_iter = 1000;
threshold = 0.00001;
Hypothesis = [-8 2 -0.5];
[Costs, FinalHypothesis] = gradientDescent(Data, Y, Hypothesis, alpha, max_iter, threshold);
```

## Notes
- Ensure that the input dataset ("ex2data1.txt" in this case) is formatted correctly with features and labels.
- Adjust hyperparameters such as learning rate (`alpha`), maximum iterations (`max_iter`), threshold for convergence (`threshold`), and regularization parameter (`lambda`) according to specific requirements.

## Contributors
- Rami Abu Rabia
- Jacob Zack
