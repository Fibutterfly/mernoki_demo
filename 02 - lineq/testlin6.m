% testing linear solvers / No. 6
% testing tridiagonal Gauss method
% ---------------------------------------------------------
%
clear all
rng('default')
%
m=100;
a=randn(m,1);
b=6+rand(m,1);
c=randn(m,1);
A=diag(b)+diag(c(1:m-1),1)+diag(a(2:m),-1);
xsol=ceil(10*rand(m,1));
d=A*xsol;
%
xM=A\d;
deltaM=norm(xM-xsol);
xT=gtri(a,b,c,d);
deltaG=norm(xT-xsol);
%
disp(['Matlab error',' = ', num2str(deltaM)])
disp(['gtri error','   ', num2str(deltaG)])

%return
 
%



