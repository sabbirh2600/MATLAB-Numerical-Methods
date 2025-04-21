clc;
clear;

% Sample data
x = [1 2 3 4 5 6 7 8 9 10];
y = [2.3 4.1 5.9 8.2 10.5 12.7 14.9 17.2 19.5 21.6];

% Choose the degree of the polynomial
degree = 2;  % Change this to 1, 3, etc., depending on what you need

% Fit the polynomial to the data
p = polyfit(x, y, degree);

% Evaluate the fitted polynomial at the data points
y_fit = polyval(p, x);

% Plot original data and fitted curve
figure;
plot(x, y, 'bo', 'MarkerFaceColor','b');  % Original data (blue dots)
hold ON;
plot(x, y_fit, 'r-', 'LineWidth', 2);     % Fitted curve (red line)
title(['Polynomial Curve Fit (Degree = ' num2str(degree) ')']);
xlabel('x');
ylabel('y');
legend('Original Data', 'Fitted Curve');
grid ON;



