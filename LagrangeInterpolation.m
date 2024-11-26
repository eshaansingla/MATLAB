clc
format long
x = [110 130 160 190];
y = [10.8 8.1 5.5 4.8];
an = input('Desired value: ');
l = [0 0 0 0];
Y = 0;
for i = 1:4
    x1 = x;
    x1(i) = [];  % Remove the i-th element of x for the Lagrange formula
    l(i) = prod(an - x1) / prod(x(i) - x1);  % Lagrange coefficient
    Y = Y + l(i)*y(i);  % Accumulate the result for the interpolation
end
disp(l);
disp('Interpolated value at desired x:');
disp(Y);
