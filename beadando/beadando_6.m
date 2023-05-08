% testing odebvp solver/ test_odebvp1
% for solving linear bvp of the form
%
%     y''+p(x)y'+q(x)y=r(x)
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
% - 3 coefficient functions for p,q and r
%
clear all
clc
% initial data
a=0;
alfa=0;
b=1;
beta=0;
%
% initial subinterval number
N=99;
% coefficient functions
funp='px';
funq='qx';
funr='rx';
%
[x,y]=odepp1(funp,funq,funr,a,b,alfa,beta,N);
[x2,y2]=odepp1(funp,funq,funr,a,b,alfa,beta,2*N+1);
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
    y2x(i)=y2(2*i-1);
end
plot(x,abs(y-y2x),'r-')
title('estimated error')
grid on
pause
close
disp(['max estimated error =',num2str(max(abs(y-y2x)))]) 






