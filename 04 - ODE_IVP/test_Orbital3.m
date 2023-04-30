% odetest/ test_Orbital3
% Solver: explicit RK4
clear all
par=0.3;
y0=zeros(4,1);
y0(1)=1-par;
y0(4)=((1+par)/(1-par))^(1/2);
y0

%
b=20;
N=401;
h=b/(N-1)
for i=1:N
    t(i)=(i-1)*h;
end
Y=RK4('odeOrbit',y0,t);
plot(t,Y(1,:),'b-',t,Y(2,:),'g:',t,Y(3,:),'r-.',t,Y(4,:),'k--','Linewidth',2)
grid on
title('RK4 results on orbital DE')
xlabel('t')
ylabel('y components')
legend('y_1(t)','y_2(t)','y_3(t)','y_4(t)','Location','Best')
pause
close
