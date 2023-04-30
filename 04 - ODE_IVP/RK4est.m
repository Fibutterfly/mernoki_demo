function [y1,EST]=RK4est(fun,y0,t0,h0)
% one step of order 4 Runge-Kutta method for ODE y'=f(x,y)
% from the point (t0,y0) to the point (t0,y1) with t1=t0+h0
% with step halving error estimate
y1=RK4k(fun,y0,t0,h0);
z0=y0;
z1=RK4k(fun,z0,t0,h0/2);
z2=RK4k(fun,z1,t0+h0/2,h0/2);
EST=norm(z2-y1)/15;