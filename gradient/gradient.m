function [x, N] = gradient(A, b, x0, e)

r = b-A*x0;
d = r;
N = 0;
x = x0;
gradient = 2*A'*(Ax-b)

while (r<e):
    
   l = (d' * r)/(d'*A*d);
   x = x + l*d;
   r = b - A*x;
   d = r;
   N = N+1;
end

end