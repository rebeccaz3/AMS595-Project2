% Computes the length of the polynomial curve from s to e
function l = poly_len(p, s, e)
    % p: fitted polynomial coefficients
    % s: Lower bound point (on x)
    % e: Upper bound point (on x)

    % Get the coefficients of the derivative of polynomial p
    dp_dx = polyder(p); % This is a built-in MATLAB function

    % Define the integrand as an anonymous function
    ds = @(x) sqrt(1 + polyval(dp_dx, x).^2); % Element-wise operation
    
    % Calculate the length of the curve using numerical integration
    l = integral(ds, s, e);
end