function A=odepp2fJ(funpy,funpz,alfa,beta,x,u,N,h)
% computes Jacobian of F(u) for odepp2.m
%
A=zeros(N);
%  main diagonal
A(1,1)=-2/h^2-feval(funpy,x(2),u(1),(u(2)-alfa)/(2*h));
for i=2:N-1
    A(i,i)=-2/h^2-feval(funpy,x(i+1),u(i),(u(i+1)-u(i-1))/(2*h));
end
A(N,N)=-2/h^2-feval(funpy,x(N+1),u(N),(beta-u(N-1))/(2*h));
%
% first lower subdiagonal
for i=2:N-1
    A(i,i-1)=1/h^2+feval(funpz,x(i+1),u(i),(u(i+1)-u(i-1))/(2*h))/(2*h);
end
A(N,N-1)=1/h^2+feval(funpz,x(N+1),u(N),(beta-u(N-1))/(2*h))/(2*h);
%
% first upper subdiagonal
A(1,2)=1/h^2-feval(funpz,x(2),u(1),(u(2)-alfa)/(2*h))/(2*h);
for i=2:N-1
    A(i,i+1)=1/h^2-feval(funpz,x(i+1),u(i),(u(i+1)-u(i-1))/(2*h))/(2*h);
end

