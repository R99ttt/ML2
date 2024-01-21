%Jacob Zack , Rami Abu Rabia 
[D,Y] = loadData("ex2data1.txt");
Data = addOnesColumn(D);
%Hypothesis = [-10 0.8 0.08];
%[J, Gradient] = computeCostAndGradient(Data, Y, Hypothesis);
%disp(J);
%disp(Gradient);
%[J, Gradient] = computeRegularizedCostAndGradient(Data, Y, Hypothesis, 1000);
%disp(J);
alpha = 0.001;
max_iter = 1000;
threshold = 0.00001;
Hypothesis = [-8 2 -0.5];
[Costs, FinalHypothesis] = gradientDescent(Data, Y, Hypothesis, alpha, max_iter, threshold);
