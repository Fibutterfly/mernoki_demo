% testing odebvp solver/ test_odebvp7
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
N=11;
y0=ones(N+2,1);
% t=linspace(0,1,13)';
% y0=16*t.*(1-t);
% coefficient functions
fun='fBVn4';
funpy='fBVn4py';
funpz='fBVn4pz';
%
[x,y]=odepp2(fun,funpy,funpz,a,b,alfa,beta,N,y0,tol);
% 
%
x2=linspace(0,1,101);
alpha=0.379291;
% alpha= 2.734675;
n=length(x2);
for i=1:n
    y2(i)=2*log(cosh(alpha)/cosh(alpha*(1-2*x2(i))));
end
plot(x,y,'bo',x2,y2,'r-')
% plot(x,y,'bo-')
grid on
title('approximate solution of ODE BVP')
xlabel('x')
ylabel('y')
legend('numerical solution','theoretical solution','Location','Best')
pause
close
