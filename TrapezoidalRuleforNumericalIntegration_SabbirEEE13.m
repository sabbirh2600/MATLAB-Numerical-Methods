% Trapezoidal Rule for Numerical Integration - SabbirEEE13

clc;
clear;

% --- User Inputs ---
f = input('Enter the function f(x) using @(x): ');       % Example: @(x) x^2 + 3*x + 2
a = input('Enter the lower limit of integration (a): '); % Example: 0
b = input('Enter the upper limit of integration (b): '); % Example: 4
n = input('Enter the number of subintervals (n): ');     % Example: 8

% --- Step Size ---
h = (b - a) / n;

% --- Trapezoidal Rule Calculation ---
% Initialize the sum with the first and last terms (weighted by 1/2)
sum = 0.5 * (f(a) + f(b));

% Loop through intermediate points
for i = 1:n-1
    x = a + i * h;     % Current x value
    sum = sum + f(x);  % Add f(x) to the total sum
end

% Final Integral Approximation
I = h * sum;

% --- Output Result ---
fprintf('\nUsing Trapezoidal Rule:\n');
fprintf('Approximate value of the integral = %.10f\n', I);
