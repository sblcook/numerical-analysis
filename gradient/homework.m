%Homework 6 for Numerical Analysis

[b, A] = generate_2d_poisson_FD_matrix_and_RHS(19);
[b1, A1] = generate_2d_poisson_FD_matrix_and_RHS(99);

A = -A;
A1 = -A1;

[m, n] = size(A);
x_0 = ones([m, 1]);

[m,n] = size(A1);
x1_0 = ones([m, 1]);

[x, N] = conjugate_gradient(A, -b, x_0, 10e-8);
[x1, N1] = conjugate_gradient(A1, -b1, x1_0, 10e-8)