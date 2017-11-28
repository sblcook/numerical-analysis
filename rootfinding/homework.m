%Numerical Analysis homework 7, due 11/27
%Sam Cook

f = @(x) cos(2*x)^2 - x^2;
fprime = @(x) -2*sin(4*x)-2*x;
a = 0;
b = 1.5;
x0 = 0.75;
e = 10e-10;
max = 100;
xaxis = (1:max)';

[exact, req_iter] = regula_falsi(f, e, max, a, b);
errorRF = regula_falsi_error(f, e, max, a, b, exact);

[exact, req_iter] = bisection_method(f, e, max, a, b);
errorBM = bisection_method_error(f, e, max, a, b, exact);

[exact, req_iter] = newtons_method(f, fprime, e, x0, max, a, b);
errorNM = newtons_method_error(f, fprime, e, x0, max, a, b, exact);

figure()
    semilogy(xaxis, errorRF, xaxis, errorBM, xaxis, errorNM);
    title('Number of Iterations vs Relative Error, f(x) = cos(2*x)^2 - x^2, semilogy')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
    legend('Regula Falsi', 'Bisection', 'Newton')
figure()
    loglog(xaxis, errorRF, xaxis, errorBM, xaxis, errorNM);
    title('Number of Iterations vs Relative Error, f(x) = cos(2*x)^2 - x^2, loglog')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
    legend('Regula Falsi', 'Bisection', 'Newton')
%From the graphs, we can see that Newton's converges quadratically, Regula
%Falsi converges linearly, and Bisection converges linearly, but at a
%slower rate than Regula Falsi

%----part D----
[exact, req_iter] = newtons_method(f, fprime, e, x0, max, a, b);
errorNM2 = newtons_method_modified(f, fprime, e, x0, max, a, b, exact);
figure()
    semilogy(xaxis, errorNM2);
    title('Number of Iterations vs Relative Error, modified Newton''s Method, semilogy')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
figure()
    loglog(xaxis, errorNM2);
    title('Number of Iterations vs Relative Error, modified Newton''s Method, loglog')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
%This method with the modified update does not converge at all
%--------------

g = @(x) x*(1-cos(x));
gprime = @(x) x*sin(x) - cos(x) + 1;
a = -2;
b = 1;
x0 = 1;

[exact, req_iter] = regula_falsi(g, e, max, a, b);
errorRF1 = regula_falsi_error(g, e, max, a, b, exact);

[exact, req_iter] = bisection_method(g, e, max, a, b);
errorBM1 = bisection_method_error(g, e, max, a, b, exact);

[exact, req_iter] = newtons_method(g, gprime, e, x0, max, a, b);
errorNM1 = newtons_method_error(g, gprime, e, x0, max, a, b, exact);

figure()
    semilogy(xaxis, errorRF1, xaxis, errorBM1, xaxis, errorNM1);
    title('Number of Iterations vs Relative Error, g(x) = x*(1-cos(x)), semilogy')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
    legend('Regula Falsi', 'Bisection', 'Newton')
figure()
    loglog(xaxis, errorRF1, xaxis, errorBM1, xaxis, errorNM1);
    title('Number of Iterations vs Relative Error, g(x) = x*(1-cos(x)), loglog')
    xlabel('Number of Iterations')
    ylabel('Relative Error')
    legend('Regula Falsi', 'Bisection', 'Newton')
%This time, the error converges to zero much more slowly due to the larger
%range of possible values
