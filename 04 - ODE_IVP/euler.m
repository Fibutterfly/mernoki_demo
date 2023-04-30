function y=euler(fun,x0,y0,t)
% euler method for scalar ODE y'=f(x,y), x0=y0, 
% on the points t1<t2<...<tN
% t1=x0
% output:
%  y(i)~y(t_i)
%
N=length(t);
t(1)=x0;
y(1)=y0;
for i=1:N-1
    hi=t(i+1)-t(i);
    D=feval(fun,t(i),y(i));
    y(i+1)=y(i)+hi*D;
end

