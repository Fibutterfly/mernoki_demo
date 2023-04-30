% 1D Newton demo
[xout,itno,x1k,y1k]=Newt1D('f1','f1p',2,1e-3);
%
t=[-3:0.05:3];
yt=exp(t)-t.^2+1;
plot(t,yt,'r-','LineWidth',2)
grid on
hold on
% % iterations
m=length(x1k);
for i=1:m-1
    u=[x1k(i),0];
    v=[x1k(i),y1k(i)];
    lineplot2D(u,v);
    u=[x1k(i+1),0];
    lineplot2D(v,u);
end
plot(x1k,zeros(1,m),'ko')
pause
close
