function [x,y]=odepp1(funp,funq,funr,a,b,alfa,beta,N)
% solves linear bvp of the form
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
%
%
h=(b-a)/(N+1);
for i=1:N+2
    x(i)=a+(i-1)*h;
end
%
y(1)=alfa;
y(N+2)=beta;
%
for i=1:N
    aa(i)=1.0-(h/2)*feval(funp,x(i+1));
    bb(i)=-(2.0-h^2*feval(funq,x(i+1)));
    cc(i)=1.0+(h/2)*feval(funp,x(i+1));
end
%
d=zeros(N,1);
d(1)=h^2*feval(funr,x(2))-aa(1)*alfa;
for i=2:N-1
    d(i)=h^2*feval(funr,x(i+1));
end
d(N)=h^2*feval(funr,x(N+1))-cc(N)*beta;
%
% solving the linear system
%
A=zeros(N);
for i=1:N
    A(i,i)=bb(i);
end
for i=2:N
    A(i,i-1)=aa(i);
end
for i=1:N-1
    A(i,i+1)=cc(i);
end
%
u=A\d;
y(2:N+1)=u;
