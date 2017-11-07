function [error] = conjugate_gradient_iterations(A, b, x0, N, exact_x)
%use the conjugate gradient method to solve Ax=b given an initial guess x0
%and en error bound e

%return the error at each iteration

%calculate initial values
x = x0;
r_old = b-A*x0;
d = r_old;
error = zeros(N,1);

for i = 1:N
    %we keep track of the new residual and the old residual because it is
    %required for caluclating B
    l = (r_old'*r_old)/(d'*A*d); %optimal step size
    x = x + l*d; %new solution
    r_new = r_old - l*A*d; %new residual
    B = (r_new'*r_new)/(r_old'*r_old); %new B
    d = r_new + B*d; %new direction
    r_old = r_new; %update the residual
    error(i) = norm(x - exact_x); %update the error
end

end