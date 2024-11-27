clc;
sum1 = 0;
sum2 = 0;
sum3 = 0;
sum4 = 0;
x = [-2,-1,0,1,2];
y = [15,1,1,3,19];
n = 5;
%calculating $xi $yi $xiyi %xi^2
for i = 1 : n
    sum1 = sum1 + x(i);
    sum2 = sum2 + y(i);
    sum3 = sum3 + (x(i)*y(i));
    sum4 = sum4 + (x(i)*x(i));
end
syms a
syms b
x=[a,b];
A = [n,sum1;
    sum1,sum4]
B = [sum2;sum3];
x = inv(A)*(B);
disp(x);