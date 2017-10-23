<<<<<<< HEAD
%computations modified

%build a 199x199 matrix with -2 on the diagonal and 1 above and below
%diagonal
v1(1:199) = -2; 
v2(1:198) = 1;  
A = zeros(199) + diag(-2*ones(199,1),0) + diag(ones(198,1), -1) + diag(ones(198,1), 1);

%create 199x1 vector with specific values
b(1:199) = .0001;
b(1) = -.9999;
b(199) = -.9999;
%ensure b is column vector
b = b(:);

%set initial solution x0
x0(1:199) = 0;
%ensure x is column vector
x0 = x0(:);

%create vector for error
howMany = 100;
Xerror = zeros(howMany,1);
Yerror = zeros(howMany,1);

%approximate x and calculate error based on number of iterations from 1 to
%50,000 iterations
for numIterations = 1:howMany
    [x, xError] = jacobi_modified(A, b, numIterations * 500, x0);
    [y, yError] = gauss_seidel_modified(A, b, numIterations * 500, x0);
    Xerror(numIterations) = xError;
    Yerror(numIterations) = yError;
end

%plot the error vs the numbr of iterations
numIterations = (1:howMany);
semilogy(numIterations, Xerror, numIterations, Yerror)
%Based on graph, we can tell that the Gauss-Seidel method is better.
%The smallest error on the graph for Gauss-Seidel is approx 10^-4,
%vs approx 10^-2 for Jacobi, so Gauss-Seidel could possibly be twice
%as good (it is more accurate)
=======
%computations modified

%build a 199x199 matrix with -2 on the diagonal and 1 above and below
%diagonal
v1(1:199) = -2; 
v2(1:198) = 1;  
A = zeros(199) + diag(-2*ones(199,1),0) + diag(ones(198,1), -1) + diag(ones(198,1), 1);

b(1:199) = .0001;
b(1) = -.9999;
b(199) = -.9999;

x0(1:199) = 0;

[x, k] = jacobi_modified(A, b, 50000, x0)
>>>>>>> parent of 53dbeda... guaranteed that vector b and x0 are column vectors
