function [error] = bisection_method_error(f, e, max_iter, a, b, correct)
%This function calculates error using the Bisection Method
%Input: a function, error tolerance, max num of iterations, a range
%from a to b, and the correct solution
%Output: the error at each iteration

req_iter = 0;
error = zeros(max_iter,1);

while (abs(b-a) >= e) && (req_iter < max_iter)
    req_iter = req_iter + 1;
    fa = f(a);
    fb = f(b);
    fmid = f((b+a)/2);
    x = (b+a)/2;
    error(req_iter) = abs(x - correct);
    if fmid * fb < 0 %root in right half
        a = x;
    elseif fmid * fa < 0 %root in left half
        b = x;
    else
        break
    end
end

end
