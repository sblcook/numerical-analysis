function [error] = newtons_system_error3(F, jacobian, x0, n, exact)

e = 10e-10;
i = 0;
x = x0;
error = zeros(n, 1); 

while i < n
    i = i+1;
    V = jacobian(x(1),x(2),x(3))\-F(x(1),x(2),x(3));
    xnew = x + V;
    
    if abs(F(xnew(1),xnew(2),xnew(3))) < e %reached the error bound
        x = xnew;
        return
    end
    error(i) = abs(norm(exact) - norm(xnew));
    x = xnew;
    
end

end