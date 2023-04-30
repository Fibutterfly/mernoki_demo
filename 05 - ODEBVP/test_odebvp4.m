% testing odebvp solver/ test_odebvp4
% for solving nonlinear bvp of the form
%
%     y''=f(x,y(x),y'(x))
%
% with boundary conditions
%
%     y(a)=alfa, y(b)=beta
%
% on the equidistant set
%
%  x(i)=a+(i-1)h, h=(b-a)/(N+1)
% called routines:
% - odepp1
% - 3 coefficient functions for f=f(x,y,z), df/dy, df/dz
%
clear all
clc
% initial data
a=0;
alfa=0;
b=1;
beta=0;
%
% tolerance, initial subinterval number, initial approximation
tol=1e-3;
N=9;
y0=5*ones(N+2,1);
% coefficient functions
fun='fBVn1';
funpy='fBVn1py';
funpz='fBVn1pz';
%
[x,y]=odepp2(fun,funpy,funpz,a,b,alfa,beta,N,y0,tol);
y0=5*ones(2*N+3,1);
[x2,y2]=odepp2(fun,funpy,funpz,a,b,alfa,beta,2*N+1,y0,tol);
%
plot(x,y,'bo-',x2,y2,'r*-')
grid on
title('approximate solution of ODE BVP')
xlabel('x')
ylabel('y')
pause
close
% the approximate error estimate by Runge's rule
nx=length(x);
for i=1:nx
    y2x(i,1)=y2(2*i-1);
end
plot(x,abs(y-y2x),'r-')
title('estimated error')
grid on
pause
close
disp(['max estimated error =',num2str(max(abs(y-y2x)))]) 
%





