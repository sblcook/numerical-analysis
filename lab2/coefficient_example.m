syms x;
P = (x-1)*(x-2)*(x-3)*(x-4)*(x-5)*(x-6)*(x-7)*(x-8)*(x-9)*(x-10)  +  x^5;

coeff = coeffs(P); % gives coeffs of P, lower order terms first
coeff = flip(coeff); %reverses order

z = roots(coeff); %takes vector of coefficients and outputs roots
z = double(z); %changes data type to double precision floats
z = complex(z); %changes data type to complex
plot(z, 'o')
grid on
title('roots of P(x)')