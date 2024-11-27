%clc
% f = @(x) x*log10(x)-1.2;
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
%     while (it<=itrmax && err>=tol)
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
% a=input('Enter a: ');
% b=input('Enter b: ');
% tol=input('Enter the tolerance: ');
% f= @(x) x^2-16;
% c=(a+b)/2;
% err=abs(f(c));
% it=0;
% var=[];
% itrmax=ceil(log2((b-a)/tol));
% if f(a)*f(b)>0
%     fprintf('Wrong vals of a and b. \n');
% else 
%     while(it<=itrmax && err>=tol)
%         if f(a)*f(c)<0
%             b=c;
%         else 
%             a=c;
%         end
%         c=(a+b)/2;
%         err=abs(f(c));
%         it=it+1;
%         var=[var;it a b c f(c) err];
%     end
% end
% disp(var);


clc
a=input('Enter Lower Limit: ');
b=input('Enter upper limit: ');
tol=input('Enter tolerance: ');
f=@(x) x^2-4;
it=0;
c=(a+b)/2;
var=[];
err=abs(f(c));
n=log2((b-a)/tol);
if f(a)*f(b)>0
    fprintf('WRONG');
else 
    while it<=n &&  err<=tol
        if f(a)*f(c)<0
            b=c;
        else 
            a=c;
        end
        err=abs(f(c));
        it=it+1;
         var=[var;it a b c f(c) err];
    end
end
disp(var);

