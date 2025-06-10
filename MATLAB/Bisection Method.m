f = @(x) sin(x) + cos(x) - 1;
a = 1; b = 2;
tol = 1e-6;

while (b - a) / 2 > tol
    c = (a + b) / 2;
    if f(c) == 0
        break;
    elseif f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

fprintf('Root using Bisection: %.6f\n', c);
