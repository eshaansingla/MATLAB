clc
format long
f=@(x) x-2*sin(x);
df=@(x) 1-2*cos(x);
x0=input('Initial guess: ');
tol=input('Tolerance: ');
N=input('Number of iterations: ');
for i=1:N
    x1=x0-f(x0)/df(x0);
    if abs(x1-x0)<tol 
        fprintf('Desired root= %f\n Iterations: %d',x1,i);
        break;
    end
    x0=x1;
end
