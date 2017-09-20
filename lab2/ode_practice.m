%dx/dt + (1/t)x = sin(t)/t; x(pi/2) = 1, epsiolon = .001


% ode = diff(x, t) == sin(t)/t - 1/t * x;
% epsilon = 0;
% cond = x(pi/2) == 1 + epsilon;
f = @(t, x) sin(t)/t - x/t;
interval = [pi/2 10];

[t1, x1] = ode45(f, interval, 1);
% [t2, x2] = ode45(f, interval, 1 - epsilon);
% [t3, x3] = ode45(f, interval, 1 + epsilon);

for j = 1:10
    epsilon = 2^(-j);
    [t,x] = ode45(f, interval, 1 + epsilon);
    hold on
    plot(t,x)
    grid on
    pause(1)
end