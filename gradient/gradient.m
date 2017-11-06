function [x, N] = gradient(A, b, x0, e)
%use the gradient method to solve Ax=b given an initial guess x0
%and en error bound e

%return the approximate solution, x, and the number of iterations it took, N

%calculate initial values
r = b-A*x0;
d = r;
N = 0;
x = x0;

while (norm(r, 2) > e)    
   l = (d' * r)/(d'*A*d); %optimal step size
   x = x + l*d;  %new solution
   r = b - A*x; %residual
   d = r; %set direction equal to residual for gradient
   N = N+1; %increment number of iterations
end

end

