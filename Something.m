% IVT and Bisection
% f= @(x) x^2-29;
% range=input('Enter range: ');
% h=input('Number of sub intervals: ');
% for i=-range:range
%     if f(i)*f(i+h)<0
%         a=i;
%         b=i+h;
%     end
% end
% disp(a);
% disp(b);
% c=(a+b)/2;
% err=abs(f(c));
% tol=input('Enter tolerance: ');
% itrmax=log2((b-a)/tol);
% it=0;
% var=[];
% while it<=itrmax && err>=tol
%     if f(a)*f(c)<0
%         b=c;
%     else 
%         a=c;
%     end
%     c=(a+b)/2;
%     err=abs(f(c));
%     it=it+1;
%     var=[var;it,a,b,c,f(c),err];
% end
% disp(var);
% disp(c);
% 

% NEWTON RAPHSON
% clc
% format long
% f=@(x) x^2-17;
% df=@(x) 2*x;
% tol=input('Enter tolerance: ');
% x0=input('Enter initial guess: ');
% N=input('Number of iterations: ');
% for i=1:N
%     x1=x0-f(x0)/df(x0);
%     if abs(x0-x1)<tol
%         break;
%     end
%     x0=x1;
% end
% disp(x1);
% disp(i);

% Fixed Point Iteration
% clc
% format long
% f=@(x) atan(4*x);
% tol=input('Enter tolerance: ');
% x0=input('Enter initial guess: ');
% N=input('Number of iterations: ');
% for i=1:N
%     x1=f(x0);
%     if abs(x0-x1)<tol
%         fprintf('Root= %f and iterations= %d.\n',x1,i);
%         break;
%     end
%     x0=x1;
% end

%Lagrange Interpolation 
% x = [5 7 11 13];
% y = [150 392 1452 2366];
% X=input('Enter the value to be intrepolated: ');
% l=zeros(length(x));
% for i=1:length(x)
%     x1=x;
%     x1(i)=[];
%     l(i)=prod(X-x1)/prod(x(i)-x1);                                        YE YAAD KARNA HAI
% end
% sum=0;
% for i=1:size(l,2)
%     sum=sum+l(i)*y(i);
% end
% disp(sum);

% Newton Divided Difference                                                 YE PURA YAAD KARNA HAI
% x=[-1 0 1 2];
% y=[3 -4 5 -6];
% n=length(x);
% X=input('Enter the value to be intrepolated: ');
% F=zeros(n,n);
% F(:,1)=y';
% for i=2:n
%     for j=i:n
%         F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
%     end
% end
% prod=ones(1,n);
% for i=1:n
%     for j=1:i-1
%         prod(i)=prod(i)*(X-x(j));
%     end
% end
% sum=0;
% for i=1:n
%     sum=sum+prod(i)*F(i,i);
% end
% disp(sum);



% DD 
%  x=[-1 0 1 2];
%  y=[3 -4 5 -6];
% n=length(x);
% F=zeros(n,n);
% X=1.5;
% F(:,1)=y';
% for i=2:n
%     for j=i:n
%         F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
%     end
% end
% prod=ones(1,n);
% for i=1:n
%     for j=1:i-1
%     prod(i)=prod(i)*(X-x(j));
%     end
% end
% answ=0;
% for i=1:n
%     answ=answ+(prod(i)*F(i,i));
% end
% F
% answ
% Trapezoidal and Simpson
% clc
% f= @(x) 1/(1+x^2);
% format long
% a=input('Enter lower limit: ');
% b=input('Enter upper limit: ');
% N=input('Number of subintervals: ');
% while rem(N,2)~=0
%     N=input('Subintervals have to be even for Simpson method so enter again: ');
% end
% h=(b-a)/N;
% sum1=0;
% sum2=0;
% for i=1:N
%     sum1=sum1+f(a+i*h);
%     if rem(i,2)==0
%         sum2=sum2+2*f(a+i*h);
%     else 
%         sum2=sum2 +4*f(a+i*h);
%     end
% end
% sum1=(2*sum1+f(a)+f(b))*h/2
% sum2=(sum2+f(a)+f(b))*h/3

% GAUSS THE BOSS ELIMINATION -KARNA HAI PURA ABHI.

% Gauss Seidel                                     PURA REVISE KARNA HAI
%Least Squares
% x=[-2 -1 0 1 2];
% y=[15 1 1 3 19];
% sum1=0;
% sum2=0;
% sum3=0;
% sum4=0;
% for i=1:length(x)
%     sum1=sum1+x(i);
%     sum2=sum2+y(i);
%     sum3=sum3+x(i)*y(i);
%     sum4=sum4+x(i)*x(i);
% end
% A=[length(x) sum1;sum1 sum4];
% B=[sum2;sum3];
% C=inv(A)*B;
% C

%GAUSS SEIDEL
% A=[4 2 1;1 3 1; 3 2 6];
% b=[4;4;7];
% tol=input('Enter tolerance: ');
% x=[0.1 0.8 0.5];
% maxiter=input('Enter maximum number of iterations: ');
% n=length(b);
% for k=1:maxiter
%     xn=x;
%     for i=1:n
%         sum1=0;
%         sum2=0;
%         for j=1:i-1
%             sum1=sum1+A(i,j)*x(j);
%         end
%         for j=i+1:n
%             sum2=sum2+A(i,j)*xn(j);
%         end
%         x(i)=(b(i)-sum1-sum2)/A(i,i);
%     end
%     if norm(xn-x,inf)<tol
%         x
%         k
%         break;
%     end
% end
    % A = [2 4 -6;1 5 3;1 3 2];
    % B = [-4;10;5];
    % n = length(B);
    % AB = [A B];
    % for i = 1:n-1
    %     for j = i+1:n
    %         factor = AB(j, i) / AB(i, i);
    %         AB(j, i:end) = AB(j, i:end) - factor * AB(i, i:end);
    %     end
    % end
    % X = zeros(n, 1);
    % for i = n:-1:1
    %     X(i) = (AB(i, end) - AB(i, i+1:n) * X(i+1:n)) / AB(i, i);
    % end
    % disp('Solution:');
    % disp(X);
A = [2 4 -6;1 5 3;1 3 2];
B = [-4;10;5];
n = length(B);
AB=[A B];
for i=1:n
    for j=i+1:n
        key=AB(j,i)/AB(i,i);
        AB(j,i:end)=AB(j,i:end)-key*AB(i,i:end);
    end
end
X=zeros(n,1);
for i=n:-1:1
    X(i)=(AB(i,end)-AB(i,i+1:n)*X(i+1:n))/AB(i,i);
end
disp(X);


clc
A=[1 1 0 0;1 2 0 1;0 0 3 3;0 1 2 3];
x0=[1;1;0;1];
k0=0;
tol=0.0001;
N=10000;
t=0;
while t<=N
    y=A*x0;
    k=max(abs(y));
    x0=y/k;
    if(abs(k0-k)<tol)
        break;
    end
    k0=k;
    t=t+1;
end
t
k
x0



