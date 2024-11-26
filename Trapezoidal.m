clc
format long
f= @(x)  cos(x)-log(x)+exp(x);
a=input('Enter lower limit: ');
b=input('Enter upper limit: ');
n=input('Number of intervals: ');
h=(b-a)/n;
sum=0;
for  i=1:n-1
sum=sum+f(a+i*h);
end
answ=h*(f(a)+2*sum+f(b))/2;
fprintf('%f\n',answ);