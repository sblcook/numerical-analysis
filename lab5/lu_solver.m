function [x] = lu_solver(L, U, b)
%given upper and lower triangular matrices, and a solution vector, do
%substitution to find the answer

%Ly = b
%Ux = y

y = forwardSub(L, b);
x = backSub(U, y);

end