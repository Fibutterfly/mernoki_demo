% odetest/ test_beandaod_1
% Solver: explicit RK4
clear all
y0=ones(4,1);
y0

%
b=10;
N=2^31;
h=b/(N-1);
for i=1:N
    t(i)=(i-1)*h;
end
%%
Y=RK4('odebe1',y0,t);
%[t,Y] = ode45('odebe1',[0 10],y0);
plot(t,Y(1,:),'b-',t,Y(2,:),'g:',t,Y(3,:),'r-.',t,Y(4,:),'k--','Linewidth',2)
%plot(t,Y,'-o')
grid on
title('RK4 results on orbital DE')
xlabel('t')
ylabel('y components')
legend('y_1(t)','y_2(t)','y_3(t)','y_4(t)','Location','Best')
pause
close
