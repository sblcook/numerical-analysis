%y'' = sin(y), initial condition : y(0) = pi
%need first order system

f = @(t,y) [y(2); -sin(y(1))];

epsilon = 1e-5;
[t1, y1] = ode45(f, [0 20], [pi + epsilon;0]);
[t2, y2] = ode45(f, [0 20], [pi - epsilon;0]);

plot(t1, y1(:,1), t2, y2(:,1)) %first column (all rows, first column)
grid on
%axis([0 20 0 10])
