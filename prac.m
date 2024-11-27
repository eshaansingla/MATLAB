% clc
% f = @(x) x*x-4;
% a=input('Enter a: ');
% b=input('Enter b: ');
% tol=input('Enter tolerance: ');
% c=(a+b)/2;
% err=abs(f(c));
% it=0;
% itrmax=ceil(log2((b-a)/tol));
% var=[];
% if f(a)*f(b)>0
%     disp('Error');
% else 
%     while (it<=itrmax && b-a>=tol)
%         if f(a)*f(c)<0
%             b=c;
%         else 
%             a=c;
%         end
%         c=(a+b)/2;
%         err=abs(f(c));
%         var=[var; it+1 a b c f(c) err];
%         it=it+1;
%     end    
% end
% disp(var);
% clc
% format long
% 
% f=@(x) x-2*sin(x);
% df=@(x) 1-2*cos(x);
% x0=input('Initial guess: ');
% n=input('Enter n:');
% tol=input('Enter tolerance: ');
% for i=1:n
%     x1=x0-f(x0)/df(x0);
%     if abs(x1-x0)<tol
%         fprintf('%f\n',x1);
%         break;
%     end
%     x0=x1;
% end
% clc
% format long
% f=@(x) 1/(x+1);
% a=input('Enter a: ');
% b=input('Enter b: ');
% n=input('Number of sub intervals: ');
% h=(b-a)/n;
% sum=0;
% sum2=0;
% for i=1:n-1
%     sum=sum+f(a+i*h);
%     if rem(i,2)==0
%         sum2=sum2+2*f(a+i*h);
%     else 
%         sum2=sum2+4*f(a+i*h);
%     end
% end
% answ=(f(a)+2*sum+f(b))*h/2;
% answ2=(f(a)+sum2+f(b))*h/3;
% disp(answ);
% fprintf('\n');
% disp(answ2);
clc
format short
x=[110 130 160 190];
y=[10.8 8.1 5.5 4.8];
l=[0 0 0 0];
X=127;
for i=1:size(x,2)
    x1=x;
    x1(i)=[];
    l(i)=prod(X-x1)/prod(x(i)-x1);
end
answ=0;
for i=1:size(x,2)
    answ=answ+l(i)*y(i);
end
disp(answ);


