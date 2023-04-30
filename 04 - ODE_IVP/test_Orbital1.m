% odetest/ test_Orbital1
% Solver: Matlab Ode23
clear all
par=0.3;
y0=zeros(4,1);
y0(1)=1-par;
y0(4)=((1+par)/(1-par))^(1/2);
%
[T,Y] = ode23('odeOrbit',[0 20],y0);
N=length(T)
%
plot(T,Y(:,1),'b-',T,Y(:,2),'m:',T,Y(:,3),'r-.',T,Y(:,4),'k--','LineWidth',2)
grid on
title('ode23 results on orbital DE')
xlabel('t')
ylabel('y components')
legend('y_1(t)','y_2(t)','y_3(t)','y_4(t)','Location','Best')
pause
close
%
% stepsize data
%
for i=1:N-1
    h(i)=T(i+1)-T(i);
end
plot([1:N-1],h,'b-','LineWidth',2)
grid on
title('stepsizes of ode23')
xlabel('i')
ylabel('h_i')
pause
close
%
