clc
format long
f=@(x) 2*sin(x);
x0=input('Initial guess: ');
tol=input('Tolerance: ');
N=input('Number of iterations: ');
for i=1:N
    x1=f(x0);
    if abs(x1-x0)<tol 
        fprintf('Desired root= %f\n Iterations: %d',x1,i);
        break;
    end
    x0=x1;
end
