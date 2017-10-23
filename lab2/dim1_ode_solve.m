f = @(t, y) y;

[t, y] = ode45(f, [0 1], 1);

plot(t, y)
grid on;