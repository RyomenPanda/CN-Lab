f = @(x) sin(x) + cos(x) - 1;
a = 1;
b = 2;
tol = 1e-6;

if f(a) * f(b) > 0
    error('Invalid initial interval. f(a) and f(b) must have opposite signs.');
end

while true
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));
    fc = f(c);

    if abs(fc) < tol
        break;
    end

    if f(a) * fc < 0
        b = c;
    else
        a = c;
    end
end

fprintf('Root using Regula-Falsi method: %.6f\n', c);
