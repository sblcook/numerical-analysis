syms x;
f = x^2 - 4*x + 4 - 10e-8;

coeff = coeffs(f);
coeff = flip(coeff);
z = roots(coeff);
z = double(z);
z = complex(z);

plot(z, 'o')
grid on
title('roots of f')
hold on

f = x^2 - 4*x + 4 + 10e-8;
coeff = coeffs(f);
coeff = flip(coeff);
z = roots(coeff);
z = double(z);
z = complex(z);
plot(z, 'o')