function b=odepp2f(fun,funpy,funpz,alfa,beta,x,u,N,h)
% computes b=-F(u) for odepp2.m
%
b=zeros(N,1);
%
b(1)=(u(2)-2*u(1)+alfa)/h^2-feval(fun,x(2),u(1),(u(2)-alfa)/(2*h));
for i=2:N-1
    b(i)=(u(i+1)-2*u(i)+u(i-1))/h^2-feval(fun,x(i+1),u(i),(u(i+1)-u(i-1))/(2*h));
end
b(N)=(beta-2*u(N)+u(N-1))/h^2-feval(fun,x(N+1),u(N),(beta-u(N-1))/(2*h));
b=-b;
