% Define the function and its derivative
f = @(x) x.^3 - 6*x.^2 + 11*x - 6.1;  % Example function
df = @(x) 3*x.^2 - 12*x + 11;          % Derivative of the function

% Initial guess for the root
x0 = 3.5;

% Tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 20;

% Arrays to store the iterations
x_vals = zeros(1,max_iter);
y_vals = zeros(1,max_iter);

% Newton-Raphson iteration
x = x0;
for i = 1:max_iter
    x_new = x - f(x) / df(x);  % Newton-Raphson update
    x_vals(i) = x;         % Store the current guess
    y_vals(i) = f(x);      % Store the function value at the current guess
    
    % Check for convergence
    if abs(x_new - x) < tol
        break;
    end
    x = x_new;
end

% Plot the function and the iterations
x_range = linspace(0, 5, 400);  % Range for plotting the function
figure;
hold on;

% Plot the function
plot(x_range, f(x_range), 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('f(x)');
title('Newton-Raphson Method Convergence');
grid on;

% Plot the iterations
for i = 1:length(x_vals)
    plot(x_vals(i), y_vals(i), 'ro');  % Plot the current guess
    plot([x_vals(i) x_vals(i)], [0 y_vals(i)], 'r--');  % Vertical line to the curve
end

% Highlight the final root
plot(x_vals(end), y_vals(end), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
legend('f(x)', 'Iterations', 'Final Root');
hold off;

