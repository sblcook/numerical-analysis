function [x, i] = newtons_system3(F, jacobian, x0, n)

e = 10e-10;
i = 0;
x = x0;

while i < n
    i = i+1;
    V = jacobian(x(1), x(2), x(3))\-F(x(1),x(2), x(3));
    xnew = x + V;
    
    if abs(F(xnew(1), xnew(2), xnew(3))) < e
        x = xnew;
        return
    end
    
    x = xnew;
    
end

end