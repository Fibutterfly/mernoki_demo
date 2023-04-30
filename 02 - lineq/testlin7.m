% testing linear solvers / No. 7
% testing fill-in in phase 1 of Gauss on sparse matrix
% ---------------------------------------------------------
%
clear all
%
n=8;
A=zeros(n)+5*diag([1:n])
%
A(1,2)=-1;
A(1,5)=2;
A(1,8)=-3;
A(2,1)=-1;
A(2,7)=5;
A(3,5:7)=[-2 -2 -1];
A(4,7:8)=[1 1];
A(5,1)=2;
A(5,3)=-4;
A(6,3)=3;
A(6,7)=1;
A(7,2:4)=[-2 -3 -7];
A(7,6)=11;
A(8,1)=2;
A(8,4)=5;
A
nnz(A)
nnz(triu(A))
spy(A)
pause
close
%
for k=1:n-1
    for i=k+1:n
        gamma=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-gamma*A(k,k+1:n);
    end
    A(k+1:n,k)=zeros(n-k,1);
    if k==1
        A
        nnz(A)
        spy(A)
        pause
    end
end
A
nnz(A)
spy(A)
pause
close






