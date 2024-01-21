%Jacob Zack , Rami Abu Rabia 
function [J, Gradient] = computeRegularizedCostAndGradient (D, Y, Hypothesis, lambda)

%initialize variables
J = 0;
theta = 0;
gradientTheta = 0;
[row, col] = size(D);
Gradient = zeros(1, col);

for i=1:row
    h = predictValue(D(i, :),Hypothesis);
    if (h==0 || h==1)
        h = max(h, 0.0001);
        h = min(h, 0.9999);
    end
    J = J+(-Y(i)*log(h)-((1-Y(i))*log(1-h)));

    % Compute gradient
    for j=1:col
        error = h-Y(i);
        Gradient(j) = Gradient(j)+(error*D(i,j));
    end
end

%Compute cost
for j=2:col
    theta = theta + Hypothesis(j)^2;
end

J = J/row +((lambda/(2*row))*theta);

%Compute gradientTheta
for k=2:col
    gradientTheta = gradientTheta + Hypothesis(k);
end

Gradient = (Gradient ./ row)+((lambda/row))*gradientTheta;

end