% odetest/ test_Orbital2
% Solver: explicit Euler
clear all
par=0.3;
y0=zeros(4,1);
y0(1)=1-par;
y0(4)=((1+par)/(1-par))^(1/2);
%
b=20;
N=4001;
h=b/(N-1)
for i=1:N
    t(i)=(i-1)*h;
end
Y(:,1)=y0;
for i=1:N-1
    Y(:,i+1)=Y(:,i)+h*feval('odeOrbit',t(i),Y(:,i));
end
plot(t,Y(1,:),'b-',t,Y(2,:),'g:',t,Y(3,:),'r-.',t,Y(4,:),'k--', 'Linewidth',2)
grid on
title('Euler results on orbital DE')
xlabel('t')
ylabel('y components')
legend('y_1(t)','y_2(t)','y_3(t)','y_4(t)','Location','Best')
pause
close



