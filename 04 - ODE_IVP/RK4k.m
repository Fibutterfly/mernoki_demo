function y1=RK4k(fun,y0,t0,h0)
% one step of order 4 Runge-Kutta method for ODE y'=f(x,y)
% from the point (t0,y0) to the point (t0,y1) with t1=t0+h0
k1=feval(fun,t0,y0);
k2=feval(fun,t0+h0/2,y0+(h0/2)*k1);
k3=feval(fun,t0+h0/2,y0+(h0/2)*k2);
k4=feval(fun,t0+h0,y0+h0*k3);
y1=y0+h0*(k1+2*k2+2*k3+k4)/6;


