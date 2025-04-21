% Simpson's 1/3 Rule for Numerical Integration - SabbirEEE13

clc;
clear;

% --- User Inputs ---
f = input('Enter the function using @(x): ');              % Example: @(x) x^3 + x^2 + 1
a = input('Enter the lower limit of integration (a): ');   % Example: 0
b = input('Enter the upper limit of integration (b): ');   % Example: 4
n = input('Enter number of subintervals (even number): '); % Must be even: 2, 4, 6, ...

% --- Check if n is even ---
if mod(n, 2) ~= 0   %The mod(a, b) function gives the remainder when a is divided by b.
    error('Error: Number of subintervals (n) must be EVEN for Simpson''s 1/3 Rule.');
end

% --- Step Size ---
h = (b - a) / n;

% --- Initialize sum with first and last terms ---
I = f(a) + f(b);  % f(x0) + f(xn)

% --- Apply Simpson's 1/3 Rule ---
% Odd index terms (i = 1, 3, 5, ..., n-1) → Coefficient = 4
for i = 1:2:n-1
    x = a + i * h;
    I = I + 4 * f(x);
end

% Even index terms (i = 2, 4, ..., n-2) → Coefficient = 2
for i = 2:2:n-2
    x = a + i * h;
    I = I + 2 * f(x);
end

% --- Final Approximation ---
I = I * (h / 3);

% --- Display Result ---
fprintf('\nApproximate integral using Simpson''s 1/3 Rule = %.10f\n', I);
