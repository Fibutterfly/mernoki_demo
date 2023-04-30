% testing Euler method/ test_euler1/ode1
fun='ode1'
x0=1;
y0=3;
xend=3;
%
t1=[1:0.5:3];
y1=euler(fun,x0,y0,t1);
%
% exact solution
%
hh=(xend-x0)/1000;
for i=1:1001
    x(i)=x0+(i-1)*hh;
    yx(i)=3.0*exp(x(i)-1);
end
%
%
plot(x,yx,'b-',t1,y1,'rd-','LineWidth',2)
grid on
title('explicit Euler method')
xlabel('t')
ylabel('y')
legend('exact solution','Euler polygon','Location','Best')
pause
close


