% Part 1: Generating complex points and graphing Mandelbrot Set

% Set up the grid for plotting the Mandelbrot Set
N = 200;  % Number of equally spaced points along each axis
x = linspace(-2.0, 1.0, N);  % Real part range
y = linspace(-1.0, 1.0, N);  % Imaginary part range
[X, Y] = meshgrid(x, y);

% Create the complex matrix
C = X + Y * 1i;  

% Initialize the iterations count matrix 
IT = zeros(N, N);

% Call the fractal function to find iterations until divergence for each point C
for i = 1:N
    for j = 1:N
        IT(i, j) = fractal(C(i, j));
    end
end

% Display the result of iterations
imshow(IT, []);
title('Mandelbrot Set');



% Part 2: Identifying boundary points
% Find boundary points for x in [-2, 1]
x_values = linspace(-2, 1, 1000);  % 1000 equally spaced x values in that range
boundary_points = zeros(size(x_values));  % Initialize array for boundary points

% Loop through each x value to find the boundary points using the bisection method
for i = 1:length(x_values)
    fn = indicator_fn_at_x(x_values(i));  % Create the indicator function for the current x
    boundary_points(i) = bisection(fn, 0, 2);  % Find the boundary point using bisection
end
% boundary_points now contains the y-coordinates of boundary points corresponding to x_values


% Plot the boundary points
figure;
plot(x_values, boundary_points, 'r.');
xlabel('Real part (x)');
ylabel('Imaginart part (y)');
title('Boundary Points of the Mandelbrot Set');
grid on;


% Part 3: Fitting a polynomial to the boundary points

% Select relevant points along the fractal boundary by looking at the visualization
% Only look at x-vales in range [-1.5, 0.5] and their corresponding y-values
relevant_x = x_values(x_values > -1.5 & x_values < 0.5);
relevant_y = boundary_points(x_values > -1.5 & x_values < 0.5);  

% Fit a polynomial of order 15
p = polyfit(relevant_x, relevant_y, 15);  % p holds polynomial coefficients

% Evaluate the polynomial at new x values for plotting
new_y = polyval(p, relevant_x);

% Plot the original boundary points and the fitted polynomial to compare
figure;
plot(relevant_x, relevant_y, 'ro', 'MarkerSize', 4);  % Original points
hold on;
plot(relevant_x, new_y, 'b-', 'LineWidth', 1.5);  % Fitted polynomial
xlabel('Real part (x)');
ylabel('Imaginary part (y)');
title('Polynomial Fit of Boundary Points');
legend('Boundary Points', 'Fitted Polynomial');
grid on;
hold off;


% Part 4: Calculate the curve length of the boundary
length_of_curve = poly_len(p, -1.5, 0.5);

% Display in Command Window
disp(['The approximate length of the fractal boundary is: ', num2str(length_of_curve)]);

