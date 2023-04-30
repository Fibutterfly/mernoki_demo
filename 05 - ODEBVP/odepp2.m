function [x,y]=odepp2(fun,funpy,funpz,a,b,alfa,beta,N,y0,tol)
% solves nonlinear bvp of the form
%
%     y''=f(x,y,y')
%
% with boundary conditions
%
%     y(a)=alfa, y(b)=beta
%
% on the equidistant set
%
%  x(i)=a+(i-1)h, h=(b-a)/(N+1)
%
% fun   =f(x,y,z)
% funpy =df/dy
% funpz =df/dz
%
% y0 = (N+2) x 1 vector
%
h=(b-a)/(N+1);
for i=1:N+2
    x(i)=a+(i-1)*h;
end
%
y=zeros(N+2,1);
y(1)=alfa;
y(N+2)=beta;
u=y0(2:N+1);
%
% initial settings for Newton iteration
%
itmax=200;
itno=0;
hiba=tol+1;
%
b=zeros(N,1);
A=zeros(N);
%
while hiba>tol & itno<itmax
    itno=itno+1
    b=odepp2f(fun,funpy,funpz,alfa,beta,x,u,N,h);
% Jacobi
% 
    A=odepp2fJ(funpy,funpz,alfa,beta,x,u,N,h);
    d=A\b;
    hiba=norm(d);
    u=u+d;
end
y(2:N+1)=u;
