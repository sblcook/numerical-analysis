function [error] = gradient_iterations(A, b, x0, N, exact_x)
%use the gradient method to solve Ax=b given an initial guess, x0,
%and how many iterations to complete, N

%return the error for each iteration

%calculate initial values
r = b-A*x0;
d = r;
x = x0;
error = zeros(N, 1);

for i=1:N   
   l = (d' * r)/(d'*A*d); %optimal step size
   x = x + l*d;  %new solution
   r = b - A*x; %residual
   d = r; %set direction equal to residual for gradient
   error(i) = norm(exact_x - x); %get error
end

end

