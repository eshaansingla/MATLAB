clc
format long
A=[4 2 1;1 3 1;3 2 6];
b=[4;4;7];
tol=10^-3;
x=[0.1 0.8 0.5];
n=length(b);
maxiter=100;
for k=1:maxiter
    xn = x; 
    for i=1:n
        sum1=0;
        for j=1:i-1
            sum1=sum1+A(i,j)*x(j);
        end
        sum2=0;
        for j=i+1:n
            sum2=sum2+A(i,j)*xn(j);
        end
        x(i)=(b(i)-sum1-sum2)/A(i,i);
    end
    if norm(xn-x, inf) < tol
        fprintf('Converged in %d iterations.\n', k);
        break;
    end
end
disp(x);

