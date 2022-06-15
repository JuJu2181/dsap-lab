% Test for linearity 
x = [0 1 2 3];
y = [1 1 2 2];

% Scaling factors 
A = 2;
B = 3;

% Calling function get fourier coefficients
% x[n]
a = fourierCoeff(x);
% y[n]
b = fourierCoeff(y);


rhs = A*a + B*b;
lhs = A*x + B*y;

lhs_coeff = fourierCoeff(lhs);

% floor(lhs_coeff) == floor(rhs)

if floor(abs(lhs_coeff - rhs)) == zeros(1,length(x));
    "linear"
else 
    "non-linear"
endif;

