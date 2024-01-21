%Jacob Zack , Rami Abu Rabia 
function [Costs, FinalHypothesis] = gradientDescent(Data, Y, Hypothesis, alpha, max_iter, threshold)
i = 0;
flag = true;
while(flag)
    i = i+1;
    [compCost,gradient] = computeCostAndGradient(Data, Y, Hypothesis);

    %Cost array
    Costs(i) = compCost;

    Hypothesis = updateHypothesis(Hypothesis, alpha, gradient);
    %Below threshold Improvement
    if(i >= 2 && (abs(Costs(i-1)-Costs(i)) <= threshold))
        flag = false;
        result = 'Gradient descent terminating after %d iterations. Improvement was :  %d   below threshold (%f)';
        fprintf(result, i, Costs(i-1)-Costs(i), threshold);
    end
    %Above max iter
    if(i+1 > max_iter )
        flag = false;
        result = 'Gradient descent terminating after %d iterations (max_iter)';
        fprintf(result,max_iter);
    end
end

FinalHypothesis = updateHypothesis(Hypothesis, alpha, gradient);

%Output graph cost
figure;
plot(Costs);
xlabel('Number of Iterations');
ylabel('Cost');
title(sprintf('Cost vs Iterations'));

%Output plot decision boundary graph
plotDecisionBoundary(FinalHypothesis,Data,Y);
end
