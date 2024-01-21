%Jacob Zack , Rami Abu Rabia 
function [J, Gradient] = computeCostAndGradient(D, Y, Hypothesis)
    [J, Gradient] = computeRegularizedCostAndGradient (D, Y, Hypothesis, 0);
end