function x=gauss1(A,b)
% solves Ax=b with plain Gauss method
n=length(b);
% phase I
for k=1:n-1
    for i=k+1:n
        gamma=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-gamma*A(k,k+1:n);
        b(i)=b(i)-gamma*b(k);
    end
end
% phase II
x(n,1)=b(n)/A(n,n);
for i=n-1:-1:1
    x(i,1)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
end
    
