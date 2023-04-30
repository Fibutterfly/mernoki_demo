function y=fveq3(x)
% example 3 for fixed point iteration
% y(1,1)=x(1)-(-2*x(1)*x(2)+2*x(2));
% y(2,1)=x(2)-((x(1)-1)^2-x(2)^2-4);
% scaled version
alpha=1/100;
y(1,1)=x(1)-alpha*(-2*x(1)*x(2)+2*x(2));
y(2,1)=x(2)-alpha*((x(1)-1)^2-x(2)^2-4);

