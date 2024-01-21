%Jacob Zack , Rami Abu Rabia 
function [prediction] = predictValue(Example, Hypothesis)
    %Hypothesis' <=> Hypothesis^T
    value = Example * Hypothesis';
    prediction = sigmoid(value);
end