%given lower triangular matrix, use forward subsitution solve Ux=b

function [y] = forwardSub(L, b)
%U an n by n matrix, b an n by 1 vector, x the n by 1 solution vector

[m, n] = size(L);
y = zeros(n, 1);

for j=1:1:n
    y(j) = b(j) / L(j, j);
    b(j+1:n) = b(j+1:n) - L(j+1:n, j) * y(j);
end
