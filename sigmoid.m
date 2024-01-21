%Jacob Zack , Rami Abu Rabia 
function [Z] = sigmoid(z)
    %Element wise division operator <=> ./
    Z = 1 ./ (1 + exp(-z));
end