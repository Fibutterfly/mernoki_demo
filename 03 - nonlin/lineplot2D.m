function lineplot2D(x,y)
% plotting plain 2D lines between x and y in 2D
% variables:
%   x   -   1 x 2 vector
%   y   -   1 x 2 vector
%
n=100;
d=1/n;
%
for j=1:n+1
    xx(j)=x(1)+(j-1)*d*(y(1)-x(1));
    xy(j)=x(2)+(j-1)*d*(y(2)-x(2));
end
% 
plot(xx,xy,'b-','Linewidth',1.2)
hold on    
