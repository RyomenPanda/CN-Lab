f = @(x, y) x^2 / (1 + y^2);
x = 0; y = 0; h = 0.05;

while x < 0.5
    y = y + h * f(x, y);
    x = x + h;
end

fprintf('Value of y at x=0.5 using Euler: %.6f\n', y);
