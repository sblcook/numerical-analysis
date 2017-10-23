%cancellation error example

f = @(x) exp(x)- cos(x) - x;

x = linspace(-5e-8, 5e-8, 1000);

plot(x,f(x))