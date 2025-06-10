f = @(x) 3*x - cos(x) - 1;
df = @(x) 3 + sin(x);
x = 0.5;
tol = 1e-6;

while abs(f(x)) > tol
    x = x - f(x)/df(x);
end

fprintf('Root using Newton-Raphson: %.6f\n', x);
