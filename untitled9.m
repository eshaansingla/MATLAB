clc;
clear all;

sum1 = 0;
sum2 = 0;
sum3 = 0;
sum4 = 0;
x = [-2,-1,0,1,2];
y = [15,1,1,3,19];
n = 5;

%calculating sum1, sum2, sum3, sum4
for i = 1 : n
    sum1 = sum1 + x(i);
    sum2 = sum2 + y(i);
    sum3 = sum3 + (x(i) * y(i));
    sum4 = sum4 + (x(i) * x(i));
end
% Setting up the matrix equations A * [a; b] = B
A = [n, sum1; sum1, sum4];  % Coefficients matrix
B = [sum2; sum3];           % Right-hand side vector

% Solving for [a; b] using the inverse of A
x = inv(A) * B;

% Display the result
disp('The coefficients are:');
disp(['a (intercept) = ', num2str(x(1))]);
disp(['b (slope) = ', num2str(x(2))]);
x