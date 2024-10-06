function it = fractal(c)
    % Initialize variables
    z = 0;
    it = 0;
    max_it = 100;   % Maximum number of iterations


    % Iterate to check divergence
    for it = 1:max_it
        z = z^2 + c;  % Apply the Mandelbrot function
        if abs(z) > 2.0 % Check if z has diverged
            return;    % Diverged, exit the loop and return the iteration count
        end
    end
    % If we reach the maximum iterations, it hasn't diverged
    it = max_it;  % If it doesn't diverge within max_it, return max_it
end
