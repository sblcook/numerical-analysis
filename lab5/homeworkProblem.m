function[x1, x2] = homeworkProblem()

A = [1 10 0 3 -15; 
    2 2/5 -1 2 1/2; 
    100 -1 exp(1) -2 1/7; 
    -pi 1 0 100 -7
    1/2 -3 1 .1 1];

[L, U] = lu_decomposition(A);

b = transpose([1 1 2 0 -1]);
x1 = lu_solver(L, U, b);

b = transpose([-1 0 0 17 1]);
x2 = lu_solver(L, U, b);

end