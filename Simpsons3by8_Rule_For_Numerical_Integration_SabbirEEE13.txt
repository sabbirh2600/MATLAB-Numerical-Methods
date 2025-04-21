% Simpson's 3/8 Rule for Numerical Integration - SabbirEEE13

clc;
clear;

% Simpson's 3/8 Rule - Sabbir EEE13

% Ask the user for function input
f = input('Enter the Function (use @(x) format, e.g. @(x) x^3 + 2*x): ');

% Define integration limits
a = input('Enter the Lower Limit (a): ');
b = input('Enter the Upper Limit (b): ');

% Ask for number of subintervals
n = input('Enter number of subintervals (must be a multiple of 3): ');

% Validate the condition for Simpson's 3/8 Rule
if mod(n, 3) ~= 0   %The mod(a, b) function gives the remainder when a is divided by b.
    error('Number of subintervals must be a multiple of 3 for Simpson''s 3/8 Rule.');
end

% Calculate step size
h = (b - a) / n;

% Initialize sum with first and last terms
integral = f(a) + f(b);

% Loop through subintervals
for i = 1:n-1
    x = a + i * h;
    
    if mod(i, 3) == 0
        integral = integral + 2 * f(x);  % Every 3rd term gets weight 2
    else
        integral = integral + 3 * f(x);  % Others get weight 3
    end
end

% Final multiplication factor for Simpson’s 3/8 Rule
integral = integral * (3 * h / 8);

% Display the result
fprintf('\nApproximate integral using Simpson''s 3/8 Rule: %.6f\n', integral);
