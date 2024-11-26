clc
format long
f=@(x) cos(x)-log(x)+exp(x);
a=input('Enter lower limit: ');
b=input('Enter upper limit: ');
n=input('Number of intervals: ');
while rem(n, 2) ~= 0
    fprintf('The number of intervals must be even.\n');
    n = input('Please enter a valid even number of intervals: ');
end
h=(b-a)/n;
sum=0;
for i=1:n-1
    if(rem(i,2)==0)
        sum=sum+2*f(a+i*h);
    else
        sum=sum+4*f(a+i*h);
    end
end
answ=(f(a)+f(b)+sum)*h/3;
fprintf('%f\n',answ);