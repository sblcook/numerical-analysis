function [error] = regula_falsi_error(f, e, max_iter, a, b, correct)
%This function uses Regula Falsi to find the error at each iteration from
%Regula Falsi
%Input: f, error, max number of iterations, range, correct answer
%Output: The error at each iteration

req_iter = 0; %how many iterations have been required
x = 0;
error = zeros(max_iter,1);

while (abs(b-a) >= e) && (req_iter < max_iter)
    req_iter = req_iter+1;
    fa = f(a);
    fb = f(b);
    x = b - ((fb*(b-a))/(fb-fa));
    error(req_iter) = abs(correct - x)/abs(correct); %calculate and save the error
    if f(x) * fb < 0 %root in right half
        a = x;
    elseif f(x) * fa < 0 %root in left half
        b = x;
    else
        break;
    end
end

end
