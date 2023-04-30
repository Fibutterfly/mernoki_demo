% testing Euler method/ test_euler2/ode2
fun='ode2'
x0=1;
y0=2;
xend=3;
t1=[1:0.5:3];
t2=[1:0.05:3];
%
y1=euler(fun,x0,y0,t1);
%
y2=euler(fun,x0,y0,t2);
%
% exact solution
%
hh=(xend-x0)/1000;
for i=1:1001
    x(i)=x0+(i-1)*hh;
    yx(i)=x(i)^4+x(i)^2;
end
%
%
plot(x,yx,'b-',t1,y1,'r-',t2,y2,'g-','LineWidth',2)
grid on
title('explicit Euler method')
xlabel('t')
ylabel('y')
legend('exact solution','h=0.5','h=0.05','Location','Best')
pause
close


