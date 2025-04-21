% Newton-Raphson Method using Derivative Input - SabbirEEE13

clc;
clear;

% --- Input Section ---
f = input('Enter the function f(x) using @(x): ');      % Example: @(x) x^3 - x - 2
df = input('Enter the derivative f''(x) using @(x): '); % Example: @(x) 3*x^2 - 1
x0 = input('Enter the initial guess x0: ');             % Example: 1.5
n = input('Enter the maximum number of iterations: ');  % Example: 20
e = input('Enter the tolerance (e.g. 1e-6): ');          % Example: 1e-6

fprintf('Iteration 0: x = %.6f\n', x0);  % Show initial guess

% --- Iterative Process ---
for i = 1:n
    fx = f(x0);
    dfx = df(x0);

    if abs(dfx) < 1e-10
        disp('Derivative is near zero. Newton-Raphson Method fails.');
        break;
    end

    x1 = x0 - fx / dfx;  % Newton-Raphson formula

    fprintf('Iteration %d: x = %.6f\n', i, x1);

    if abs(x1 - x0) < e
        fprintf('\nRoot found at x = %.6f after %d iterations.\n', x1, i);
        break;
    end

    x0 = x1;  % Update for next iteration
end

% --- If root not found within max iterations ---
if i == n && abs(x1 - x0) >= e
    fprintf('\nMaximum iterations reached. Last estimate: x = %.6f\n', x1);
end
