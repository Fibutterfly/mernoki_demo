function J=fN1p(x)
%
n=4;
J=eye(n);
for i=2:n
    J(i,i-1)=-sin(x(i-1));
end
