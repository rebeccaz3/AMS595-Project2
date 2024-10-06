% Bisection method to find boundary points of the fractal

function m = bisection(fn_f, s, e)
    % fn_f: Indicator function
    % s: Lower bound point (on y)
    % e: Upper bound point (on y)

    tol = 1e-5; % Tolerance
    max_iter = 100;  % Maximum number of iterations

    for iter = 1:max_iter
        m = (s + e) / 2;  % Midpoint
        if abs(e - s) < tol
            break;  % Convergence check
        end
        
        if fn_f(m) < 0
            s = m;  % Move lower bound up
        else
            e = m;  % Move upper bound down
        end
    end
end


