%Sam Cook
%Matlab Homework 8
%Newton's Method for nonlinear systems


f = @(x1, x2)[exp(x1^2 + x2^2)-1; exp(x1^2-x2^2)-1];

jac = @(x1, x2)[
    2*x1*exp(x1^2 + x2^2),  2*x2*exp(x1^2 + x2^2);
    2*x1*exp(x1^2 - x2^2), -2*x2*exp(x1^2 - x2^2)
];

x0 = [.1; .1]; %newtons method converges
[x, i] = newtons_system(f, jac, x0, 100); %calculate exact solution
error1 = newtons_system_error(f, jac, x0, 300, x);

x0 = [10; 10]; %also converges, slower though
error2 = newtons_system_error(f, jac, x0, 300, x);

x0 = [20; 20]; %does not converge
error3 = newtons_system_error(f, jac, x0, 300, x);

x = 1:300;
semilogy(x', error1, x', error2, x', error3)
