% Poisson Sample with Bernoulli Approximation
clear all;
lambda = 50;
N = 1000;
p = lambda/N;
u = rand(N,1);
bernoulliTrials = u<p;
x = sum(bernoulliTrials); % This is a sample of Poisson(50)

