function [xout,itno]=fpit(fun,x0,tol)
% fixed point iteration for x=f(x)
% fun - function name
% x0  - initial guess
% tol - tolerance 
% xout - approximate solution on output
% itmax - maximum number of allowed iterations
%
x1=x0;
itmax=120;
delta=tol+1;
itno=0;
while delta>tol & itno<itmax
    x2=feval(fun,x1)
    delta=norm(x2-x1);
    x1=x2;
    itno=itno+1;
end
xout=x2;


    
