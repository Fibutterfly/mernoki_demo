% odetest/ test_RK4_3E
% Solver: explicit RK4
% with stephalving error estimate
% and adaptive step selection (stepsize decrease or increase)
clear all
% Orbital ODE initial value
par=0.3;
y0=zeros(4,1);
y0(1)=1-par;
y0(4)=((1+par)/(1-par))^(1/2);
fun='odeOrbit'
%
t0=0;
tend=20;
N=401;
h=(tend-t0)/(N-1);
tol=1e-8;
t(1)=t0;
Y(:,1)=y0;
hiba(1)=0;
i=1;
while t(i)+h<=tend
    EST=tol+1;
    while EST>tol | EST<0.1*tol
        [Y(:,i+1),EST]=RK4est(fun,Y(:,i),t(i),h);
        h=h*(tol/EST)^(1/5);
    end
    s(i)=h;
    t(i+1)=t(i)+h;
    i=i+1;
    hiba(i)=EST;
end
plot(t,Y(1,:),'b-',t,Y(2,:),'g:',t,Y(3,:),'r-.',t,Y(4,:),'k--','Linewidth',2)
grid on
title('RK4 results')
xlabel('t')
ylabel('y components')
legend('y_1(t)','y_2(t)','y_3(t)','y_4(t)','Location','Best')
pause
close
%
k=length(t);
plot([1:k],hiba,'r-')
grid on
title('hiba')
pause
close
%
plot([1:k-1],s)
grid on
title('stepsize')
pause
close


