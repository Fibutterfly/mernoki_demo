function [xout,itno,xk,yk]=Newt1D(fun1,fun1p,x0,tol)
% Newton's method for 1D problems
% fun1 - function 
% fun1p - first derivative of funcion fun1
% x0  - initial approximation
% tol - tolerance
% itmax - maximum number of allowed iterations
%
itmax=120;
delta=tol+1;
itno=0;
x1=x0;
while delta>tol & itno<itmax
    a=-feval(fun1,x1);
    b=feval(fun1p,x1);
    dd=a/b;
    if abs(dd)<delta
        delta=abs(dd);
    end
    x2=x1+dd;
    itno=itno+1;
    xk(itno)=x1;
    yk(itno)=-a;
    x1=x2;
end
xout=x2;
