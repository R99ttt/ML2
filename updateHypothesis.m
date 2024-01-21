%Jacob Zack , Rami Abu Rabia 
function [Hyhpothesis] = updateHypothesis(Hypothesis, alpha, Gradient)
    Hyhpothesis = Hypothesis - alpha * Gradient;
end