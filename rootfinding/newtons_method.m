function [x, req_iter] = newtons_method(f, fprime, e, x0, max_iter, a, b)
%This function uses Newton's Method to find the roots of function f
%Input: f, f', error, initial guess, max number of iterations, range
%Output: The approximate root and how many iterations it took to calculate

req_iter = 0; %how many iterations have been required
x = x0; %our approximation

while (abs(f(x)) > e) && (req_iter < max_iter)
    x = x - (f(x)/fprime(x));
    req_iter = req_iter + 1;
end

end