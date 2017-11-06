function [x] = gradient_iterations(A, b, x0, N)
%use the gradient method to solve Ax=b given an initial guess, x0,
%and how many iterations to complete, N

%return the approximate solution, x

%calculate initial values
r = b-A*x0;
d = r;
x = x0;

for i=0:N   
   l = (d' * r)/(d'*A*d); %optimal step size
   x = x + l*d;  %new solution
   r = b - A*x; %residual
   d = r; %set direction equal to residual for gradient
end

end

