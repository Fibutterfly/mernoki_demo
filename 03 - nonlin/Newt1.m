function [xout,itno]=Newt1(fun,funjac,x0,tol)
% Newton's method
% fun - function 
% funjac - Jacobian of funcion
% x0  - initial approximation
% tol - tolerance
% itmax - maximum number of allowed iterations
%
itmax=120;
delta=tol+1;
itno=0;
x1=x0;
while delta>tol & itno<itmax
    b=-feval(fun,x1);
    A=feval(funjac,x1);
    dd=A\b;
    if norm(dd)<delta
        delta=norm(dd);
    end
    x2=x1+dd
    itno=itno+1;
    x1=x2;
end
xout=x2;
