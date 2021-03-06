function [errorBound, approx] = taylorError (x, n)

format long;
approx = 0;

for i = 0:n
    approx = approx + x^i / factorial(i);
end
approx
errorBound = x^(n+1) / factorial(n+1)
