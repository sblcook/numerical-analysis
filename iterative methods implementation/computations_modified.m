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
Xerror = zeros(10,1);
Yerror = zeros(10,1);

%approximate x and calculate error based on number of iterations from 1 to
%50,000 iterations
for numIterations = 1:100
    [x, xError] = jacobi_modified(A, b, numIterations * 500, x0);
    [y, yError] = gauss_seidel_modified(A, b, numIterations * 500, x0);
    Xerror(numIterations) = xError;
    Yerror(numIterations) = yError;
end

%plot the error vs the numbr of iterations
plot(numIterations, Xerror, numIterations, Yerror)
semilogy(numIterations, Xerror, numIterations, Yerror)

