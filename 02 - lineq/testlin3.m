% testing linear solvers / No. 3
% testing plain Gauss solver
rng('default')
% n=5;
% A=randn(n);
% n=3;
n=5;
A=gallery(n);
xsol=[1:n]';
b=A*xsol;
xM=A\b;
xG=gauss1(A,b);
xP=gausspp(A,b);
deltaM=norm(xM-xsol);
deltaG=norm(xG-xsol);
deltaP=norm(xP-xsol);
%
disp(['Matlab error',' = ', num2str(deltaM)])
disp(['gauss1 error','   ', num2str(deltaG)])
disp(['gausspp error','   ', num2str(deltaP)])


