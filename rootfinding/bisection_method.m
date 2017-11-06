function [x, req_iter] = bisection_method(f, e, max_iter, a, b)
%This function calculates roots of a function using the Bisection Method
%Input: a function, error tolerance, max num of iterations, and a range
%from a to b
%Output: the root and how many iterations were required to calculate it

req_iter = 0;

while (abs(b-a) >= e) && (req_iter < max_iter)
    req_iter = req_iter + 1;
    fa = f(a);
    fb = f(b);
    fmid = f((b+a)/2);
    x = (b+a)/2;
    if fmid * fb < 0 %root in right half
        a = x;
    elseif fmid * fa < 0 %root in left half
        b = x;
    else
        break
    end
end

end
