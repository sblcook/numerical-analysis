function [error] = newtons_method_modified(f, fprime, e, x0, max_iter, a, b, correct)
%This function uses Newton's Method to find the roots of function f, using
%the modified critereon from part c of the homeowrk(multiplying by 3)
%Input: f, f', error, initial guess, max number of iterations, range
%Output: The approximate root and how many iterations it took to calculate

req_iter = 0; %how many iterations have been required
x = x0; %our approximation
error = zeros(max_iter, 1);

while (abs(f(x)) > e) && (req_iter < max_iter)
    x = x - (3*f(x)/fprime(x));
    req_iter = req_iter + 1;
    error(req_iter) = abs(x - correct)/abs(correct);

end

end