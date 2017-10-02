%given upper triangular matrix, use back subsitution solve Ux=b

function [x] = forwardSub(U, b);
%U an n by n matrix, b an n by 1 vector, x the n by 1 solution vector

[m, n] = size(U);
x = zeros(n, 1);

for j=1:1:n
    x(j) = b(j) / U(j, j);
    b(j+1:n) = b(j+1:n) - U(j+1:n, j) * x(j);
end
