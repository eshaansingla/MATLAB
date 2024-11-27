clc
Info=[6 3 2; 6 4 3; 20 15 12];
b=[6;0;0];
A=[Info b];
for i=1:size(A,1)
    for j=i+1:size(A,1)
        key=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-key*A(i,:);
    end
end
x = zeros(size(Info, 2), 1);
    for i=size(A,1):-1:1
        d=sum(A(i,i+1:end-1).* x(i+1:end));
        x(i)=(A(i,end)-d)./A(i,i);
    end
fprintf('%f',x);
