clc
format short
x=[4 5 7 10 11 13];
y=[48 100 294 900 1210 2028];
X=8;
n=size(x,2);
DD=zeros(n,n);
for i=1:n
    DD(i,1)=y(i);
end
for i=2:n
    for j=i:n
        DD(j,i)=(DD(j,i-1)-DD(j-1,i-1))/(x(j)-x(j-i+1));
    end
end
prod=ones(1,n);
for i=1:n
    for j=1:i-1
        prod(i)=prod(i)*(X-x(j));
    end
end
sum=0;
for i=1:n
    sum=sum+(DD(i,i)*prod(i));
end
disp(DD);
disp(sum);

