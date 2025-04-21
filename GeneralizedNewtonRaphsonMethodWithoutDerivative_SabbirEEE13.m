% Generalized Newton-Raphson Method without Derivative_SabbirEEE13

clc;
clear;

f = input('Enter the Function (use @(x) format): ');    % Example: @(x) (x - 3).^2
x0 = input('Enter the Initial Guess (x0): ');
m = input('Enter the Multiplicity of the Root (default is 1): '); % Example: 2
n = input('Enter Maximum Number of Iterations: ');
e = input('Enter Tolerance: ');

h = 1e-6;  % Step size for derivative approximation

fprintf('Iteration 0: x = %.6f\n', x0);  % Show initial guess

for i = 1:n
    fx = f(x0);
    dfx = (f(x0 + h) - f(x0 - h)) / (2 * h);  % Central difference derivative
    
    if abs(dfx) < 1e-10
        disp('Derivative is near zero. Generalized Newton-Raphson Method Fails.');
        break;
    end
    
    x1 = x0 - m * (fx / dfx);  % Generalized formula with multiplicity
    
    fprintf('Iteration %d: x = %.6f\n', i, x1);
    
    if abs(x1 - x0) < e
        fprintf('\nRoot found at x = %.6f after %d iterations.\n', x1, i);
        break;
    end
    
    x0 = x1;
end

if i == n && abs(x1 - x0) >= e
    fprintf('\nMaximum iterations reached. Last estimate: x = %.6f\n', x1);
end
