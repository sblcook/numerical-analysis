%Numerical Analysis homework 7, due 11/27
%Sam Cook

f = @(x) cos(2*x)^2 - x^2;
fprime = @(x) -2*sin(4*x)-2*x;
a = 0;
b = 1.5;
x0 = 0.75;
e = 10e-10;
max = 100;
xaxis = [1:max]';

[exact, req_iter] = regula_falsi(f, e, max, a, b);
errorRF = regula_falsi_error(f, e, max, a, b, exact);

[exact, req_iter] = bisection_method(f, e, max, a, b);
errorBM = bisection_method_error(f, e, max, a, b, exact);

[exact, req_iter] = newtons_method(f, fprime, e, x0, max, a, b);
errorNM = newtons_method_error(f, fprime, e, x0, max, a, b, exact);

semilogy(xaxis, errorRF, xaxis, errorBM, xaxis, errorNM);
loglog(xaxis, errorRF, xaxis, errorBM, xaxis, errorNM);
%From the graphs, we can see that Newton's converges quadratically, Regula
%Falsi converges linearly, and Bisection converges linearly, but at a
%slower rate than Regula Falsi

