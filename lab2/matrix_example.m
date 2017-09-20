%linear algebra ill-posed problem


A = [1.1 2.1; 2 3.8];

%solve Ax = b

b1 = [3.2; 5.8];

%backslash is matlab operator
A\b1

%a slight perturbance drastically changes solution