f = @(x) 3*x - cos(x) - 1;
x0 = 0.5; x1 = 0.8;
tol = 1e-6;

while abs(x1 - x0) > tol
    f0 = f(x0); f1 = f(x1);
    x2 = x1 - f1*(x1 - x0)/(f1 - f0);
    x0 = x1;
    x1 = x2;
end

fprintf('Root using Secant method: %.6f\n', x1);
