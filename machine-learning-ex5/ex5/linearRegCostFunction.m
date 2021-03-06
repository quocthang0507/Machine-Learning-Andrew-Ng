function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% for computing cost function

hypothesis = X * theta;
% Sum squared error
t1 = sum((hypothesis - y) .^ 2);
% regularize
t2 = lambda * sum([0; theta(2:end)] .^ 2);
J = (1 / (2 * m)) * (t1 + t2);

% for computing gradient descent

% sum error
t1 = X' * (hypothesis - y);
% regularize
t2 = lambda * [0; theta(2:end)];
grad = (1 / m) * (t1 + t2);

% =========================================================================

grad = grad(:);

end
