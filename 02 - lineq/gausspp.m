function x=gausspp(A,b)
% Gaussian elimination method with partial pivoting and pointer technique
% ------------
n=length(b);
P=[1:n];
% 
for k=1:n-1
    s=0;
    t=0;
    for i=k:n
        if abs(A(P(i),k))>s
            s=abs(A(P(i),k));
            t=i;
        end
    end
    if k<t
        w=P(k);
        P(k)=P(t);
        P(t)=w;
    end
    for i=k+1:n
        A(P(i),k)=A(P(i),k)/A(P(k),k);
        A(P(i),k+1:n)=A(P(i),k+1:n)-A(P(i),k)*A(P(k),k+1:n);
    end
end
%
for i=1:n
    s=0;
    for j=1:i-1
        s=s+A(P(i),j)*x(j);
    end
    x(i,1)=b(P(i))-s;
end
%
for i=n:-1:1
    s=0;
    for j=i+1:n
        s=s+A(P(i),j)*x(j);
    end
    x(i)=(x(i)-s)/A(P(i),i);
end
