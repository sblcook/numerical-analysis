%Sam Cook
%Matlab Homework 8
%Newton's Method for nonlinear systems

%part a
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

%part b
f = @(x1, x2, x3)[
    x1^3 - 10*x1 + x2 - x3 + 3;
    x2^3 + 10*x2 - 2*x1 - 2*x3 - 5;
    x1 + x2 - 10*x3 + 2*sin(x3) + 5;
    ];

jac = @(x1, x2, x3)[
    [ 3*x1^2 - 10,           1,             -1]
    [          -2, 3*x2^2 + 10,             -2]
    [           1,           1, 2*cos(x3) - 10]
];

x0 = [0;0;0;];
[x, i] = newtons_system3(f, jac, x0, 300);

error4 = newtons_system_error3(f, jac, x0, 10, x); %converges

x0 = [1;1;1;];
error5 = newtons_system_error3(f, jac, x0, 10, x); %converges

x = 1:10;
semilogy(x', error4, x', error5)

