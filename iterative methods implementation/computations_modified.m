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
