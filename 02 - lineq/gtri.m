function x=gtri(a,b,c,d)
% solves tridiagonal linear system with gauss elimination
% diag(a,b,c)*x=d
% vectors a,b,c,d are n-vectors
% c(1:n-1) contains first upper diagonal values
% a(2:n)  contains first lower diagonal values
%
n=length(d)
e(1)=c(1)/b(1);
g(1)=d(1)/b(1);
for k=2:n-1
    e(k)=c(k)/(b(k)-a(k)*e(k-1));
    g(k)=(d(k)-a(k)*g(k-1))/(b(k)-a(k)*e(k-1));
end
g(n)=(d(n)-a(n)*g(n-1))/(b(n)-a(n)*e(n-1));
%
x(n,1)=g(n);
for k=n-1:-1:1
    x(k,1)=g(k)-e(k)*x(k+1,1);
end
