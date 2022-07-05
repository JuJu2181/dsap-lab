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

%Displaying the fourier coefficients for X and y 
fprintf('Fourier Series of X gives a\na = ');
disp(a);
fprintf('Fourier Series of Y gives b\nb = ');
disp(b);

% Linearity test 
rhs = A*a + B*b;
lhs = A*x + B*y;

lhs_coeff = fourierCoeff(lhs);

fprintf('Linearity Test:\n');
fprintf('LHS | Fourier Series of %dx + %dy: \n',A,B);
disp(lhs_coeff);
fprintf('RHS | %da + %db : \n', A, B);
disp(rhs);

if floor(abs(lhs_coeff - rhs)) == zeros(1,length(x));
    disp("Hence Fourier Series is linear");
else 
    disp("Hence Fourier Series is non-linear");
endif;

disp("By Anish Shilpakar | KCE075BCT008");