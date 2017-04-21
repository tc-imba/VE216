t=0:1e-4:10;
s1=-1+sqrt(399)*1i;
s2=-1-sqrt(399)*1i;
M=200/sqrt(399)/1i;
s=1+M*(exp(s1.*t)./s1-exp(s2.*t)./s2);
plot(t,s);
xlabel('t');
ylabel('s(t)');
saveas(gcf,'p1.png');