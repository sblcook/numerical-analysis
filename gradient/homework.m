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
[y, M] = gradient(A, -b, x_0, 10e-8);
[x1, N1] = conjugate_gradient(A1, -b1, x1_0, 10e-8);
[y1, M1] = gradient(A1, -b1, x1_0, 10e-8);

[cg_error] = conjugate_gradient_iterations(A, -b, x_0, max(N, M), x);
[g_error] = gradient_iterations(A, -b, x_0, max(N, M), y);
[cg1_error] = conjugate_gradient_iterations(A1, -b1, x1_0, max(N1,M1), x1);
[g1_error] = gradient_iterations(A1, -b1, x1_0, max(N1, M1), y1);

x_scale = 1:max(N, M);
y_scale = 1:100:max(N1, M1);

figure()
    semilogy(x_scale, g_error, x_scale, cg_error)
figure()
    semilogy(y_scale, g1_error, y_scale, cg1_error)




