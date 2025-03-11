% Clear cache and memory, and set seed for reproducability
clear; 
rng(1); 

% Set number of observations
n = 1000; 

% Initialise A and B as n x 1 vectors
A = zeros(n,1); 
B = zeros(n,1);

% Generate random walks of Series A and B
for t = 2:n
    A(t) = A(t-1)+randn;
    B(t) = B(t-1)+randn;
end

% Create table for data consisting of variables A and B
data = table(B, A);

% Regress A on B
slr = fitlm(data, 'A ~ B');

% Display results
disp(slr);