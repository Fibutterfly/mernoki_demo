% fpitdemo
% fixed point iteration demo
% for estimating the lipschitz constant
% for fveq3.m
x=[-1;0];
fx=fveq3(x);
for i=1:5
    y=x-10^(-i);
    fy=fveq3(y);
    Lest=norm(fy-fx)/norm(y-x)
end
