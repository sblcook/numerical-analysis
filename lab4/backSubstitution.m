%given upper triangular matrix, use back subsitution solve Ux=b

function [x] = backSubstitution(U, b);
%U an n by n matrix, b an n by 1 vector, x the n by 1 solution vector

[n, n] = size(U);
x = zeros(n, 1);
x(n) = b(n) / U(n, n);

for i=n-1:-1:1
    sum = b(i);
    for j=i+1:n
        sum = sum - U(i, j) * x(j);
    end
    x(i) = sum/U(i,i);
end
