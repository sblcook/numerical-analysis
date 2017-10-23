%given upper triangular matrix, use back subsitution solve Ux=b

function [x] = backSubstitution(U, b);
%U an n by n matrix, b an n by 1 vector, x the n by 1 solution vector

[m, n] = size(U);
x = zeros(n, 1);

for j=n:-1:1
    x(j) = b(j) / U(j, j);
    b(1:j-1) = b(1:j-1) - U(1:j-1, j) * x(j);
end
