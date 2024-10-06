% Indicator function for a given vertical line at x

function fn = indicator_fn_at_x(x)
    fn = @(y) (fractal(x + 1i * y) >= 1 && fractal(x + 1i * y) < 100) * 2 - 1;  % 1 for divergence, -1 for no divergence
end
