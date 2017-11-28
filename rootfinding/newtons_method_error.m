function [error] = newtons_method_error(f, fprime, e, x0, max_iter, a, b, correct)
%This function uses Newton's Method to find the roots of function f
%Input: f, f', error, initial guess, max number of iterations, range
%Output: The approximate root and how many iterations it took to calculate

req_iter = 0; %how many iterations have been required
x = x0; %our approximation
error = zeros(max_iter, 1);

while (abs(f(x)) > e) && (req_iter < max_iter)
    x = x - (f(x)/fprime(x));
    req_iter = req_iter + 1;
    error(req_iter) = abs(x - correct);
end

end