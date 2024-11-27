clc;
clear all;
x0 = [1;1;0;1];
A = [1,1,0,0;1,2,0,1;0,0,3,3;0,1,2,3];
k0 = 0;
e = 0.001;
N = 10000;
t = 0;
while t <= N
    %multiply matrix with base
    y = A * x0;
    %take the max elemnt common
    k = max(abs(y));
    x0 = y / k;
    %stopping condition
    if abs(k0 - k) < e
        break;
    end
    k0 = k;
    t = t + 1;
end
disp('No of iteration required is: ');
disp(t);
disp('Eigen value is: ');
disp(k);
disp('Eigen vector is: ');
disp(x0);