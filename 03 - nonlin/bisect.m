function x=bisect(fun,a,b,tol)
% bisection algorithm on the interval [a,b]
% fun - name of the function 
% [a,b] interval
% tol - exit tolerance
%
fa=feval(fun,a);
fb=feval(fun,b);
if fa*fb>0
    return
end
i=0
while b-a>tol
    x=(a+b)/2.0
    fa=feval(fun,a);
    fx=feval(fun,x);
    if fa*fx<0
        b=x;
    else
        a=x;
    end
    i=i+1
end
x=(a+b)/2.0;
