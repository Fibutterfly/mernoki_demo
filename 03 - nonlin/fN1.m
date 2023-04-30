function y=fN1(x)
%
n=4;
%
y(1,1)=x(1);
for i=2:n
    y(i,1)=cos(x(i-1))+x(i)-1;
end
