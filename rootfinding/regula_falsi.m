function [x, req_iter] = regula_falsi(f, e, max_iter, a, b)
%This function uses Regula Falsi to find the roots of function f
%Input: f, error, max number of iterations, range
%Output: The approximate root and how many iterations it took to calculate

req_iter = 0; %how many iterations have been required
x = 0;

while (abs(b-a) >= e) && (req_iter < max_iter)
    req_iter = req_iter+1;
    fa = f(a);
    fb = f(b);
    x = b - ((fb*(b-a))/(fb-fa));
    if f(x) * fb < 0 %root in right half
        a = x;
    elseif f(x) * fa < 0 %root in left half
        b = x;
    else
        break;
    end
end

end
