clc
clear
a=[4.63,-1.21,3.22;
   -3.07,5.48,2.11;
   1.26,3.11,4.57];
b=[2.22;-3.17;5.11];
x0=[0,0,0];
x=[0,0,0];
n=3;
N=100;
tol=0.001;
%N iteration
for k=1:N
    %for all x
    for i=1:n
        sum1=0;
        sum2=0;
        %using precalculated x(i)
        for j=1:i-1
            sum1=sum1+a(i,j)*x(j)
        end
        %using previous x ie x0
        for j=i+1:n
            sum2=sum2+a(i,j)*x0(j)
        end
        x(i)=(1/a(i,i))*(b(i)-sum1-sum2)
        %stopping
        if norm(x(i)-x0(i))<tol
           break;
        end
        x0(i)=x(i);
    end
end
x
