R=1e3;
C=1e-6;
x=0:0.0001:0.01;
y1=1+0.*x;
y2=1-exp(-x./(R*C));
plot(x,y1);
hold on;
plot(x,y2);
axis([0 0.005 0 1.1]);
legend('Vin','Vout');
hold off;
saveas(gcf,'ideal_1.png');
x=0:0.0001:0.005;
y3=exp(-x./(R*C))./(R*C)./1000;
clear gcf;
plot(x,y3);
axis([0 0.005 0 1]);
legend('Vout');
saveas(gcf,'ideal_2.png');
t=-5e-3:1e-5:5e-3;
x=10.*(t-5e-3);
h=[0.*(-5e-3:1e-5:0),exp(-(1e-5:1e-5:5e-3)./(R*C))/10];
y=conv(x,h);
plot(t,y(500:1500));
legend('Vout');
saveas(gcf,'ideal_3.png');
t=0:1e-5:1e-2;
h=exp(-t./(R*C))./(R*C);
x=[0.1.*(0:1e-5:1e-3),0.*(1e-3+1e-5:1e-5:1e-2)];
y=conv(x,h);
plot(t,y(1:1001));
legend('Vout');
saveas(gcf,'ideal_2_width_1.png');
t=0:1e-5:1e-2;
h=exp(-t./(R*C))./(R*C);
x=[0.2.*(0:1e-5:5e-4),0.*(5e-4+1e-5:1e-5:1e-2)];
y=conv(x,h);
plot(t,y(1:1001));
legend('Vout');
saveas(gcf,'ideal_2_width_2.png');

f=[50 500 5000];
ratio=1./sqrt(1+(2*pi*R*C.*f).^2)
time=atan(2*pi*R*C.*f)./(2*pi*R*C.*f)
deg=atan(2*pi*R*C.*f).*-180./pi
