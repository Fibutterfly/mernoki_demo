function yp=odebe2(t,y)
% function of the form z=f(t,y)
% ODE IVP testfunction: Orbital/Enright-Pryce/D1
yp(1,1)=-0.5*y(1);
yp(2,1)=-y(2);
yp(3,1)=-100*y(3);
yp(4,1)=-90*y(4);


