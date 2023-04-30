% odetest/ test_ODELV
% Solver: Matlab Ode45
clear all
tspan=[0 10];
% tspan=[0 30];
Ic=[5;4];
%
[ta,ya] = ode45('lotka',tspan,Ic);
% [ta,ya] = ode45(@lotka,tspan,Ic);
N=length(ta)
%

plot(ta,ya(:,1),'b-',ta,ya(:,2),'r-','LineWidth',2)
grid on
title('ode45 results on Lotka-Volterra ODE')
xlabel('t')
ylabel('y components')
legend('prey','predator','Location','Best')
pause
close
%
