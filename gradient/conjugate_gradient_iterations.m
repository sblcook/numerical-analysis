function [x] = conjugate_gradient_iterations(A, b, x0, N)
%use the conjugate gradient method to solve Ax=b given an initial guess x0
%and en error bound e

%return the approximate solution, x, and the number of iterations it took, N

%calculate initial values
x = x0;
r_old = b-A*x0;
d = r_old;

for i = 0:N
    %we keep track of the new residual and the old residual because it is
    %required for caluclating B
    l = (r_old'*r_old)/(d'*A*d); %optimal step size
    x = x + l*d; %new solution
    r_new = r_old - l*A*d; %new residual
    B = (r_new'*r_new)/(r_old'*r_old); %new B
    d = r_new + B*d; %new direction
    r_old = r_new; %update the residual
    N = N+1; %increment number of iterations
end

end