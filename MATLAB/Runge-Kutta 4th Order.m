f = @(x,y) (0.5 - x + y^2)/(1 + y + x^2);
x = 0; y = 0; h = 0.05;

while x < 0.6
    k1 = h * f(x, y);
    k2 = h * f(x + h/2, y + k1/2);
    k3 = h * f(x + h/2, y + k2/2);
    k4 = h * f(x + h, y + k3);
    y = y + (k1 + 2*k2 + 2*k3 + k4)/6;
    x = x + h;
end

fprintf('Value of y at x=0.6 using RK4: %.6f\n', y);
