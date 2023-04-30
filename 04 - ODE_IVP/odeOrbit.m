function yp=odeOrbit(t,y)
% function of the form z=f(t,y)
% ODE IVP testfunction: Orbital/Enright-Pryce/D1
yp(1,1)=y(3);
yp(2,1)=y(4);
temp=(y(1)^2+y(2)^2)^(3/2);
yp(3,1)=-y(1)/temp;
yp(4,1)=-y(2)/temp;


