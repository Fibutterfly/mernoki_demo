function Y=RK4(fun,y0,t)
% Runge-Kutta 4 order method for ODE y'=f(x,y), t1=y0, 
% on the points t1<t1<...<tN
% output:
%  y(i)~y(t_i)
%
N=length(t);
Y(:,1)=y0;
for i=1:N-1
    hi=t(i+1)-t(i);
    k1=feval(fun,t(i),Y(:,i));
    k2=feval(fun,t(i)+hi/2,Y(:,i)+(hi/2)*k1);
    k3=feval(fun,t(i)+hi/2,Y(:,i)+(hi/2)*k2);
    k4=feval(fun,t(i)+hi,Y(:,i)+hi*k3);
    Y(:,i+1)=Y(:,i)+hi*(k1+2*k2+2*k3+k4)/6;
end

