k=1e-4;
syms H w h t s;
H(w)=1/(k^2*w^2+3*k*w+1);
ezplot(H,[-1e5,1e5]);
saveas(gcf,'1.png');
h(t)=1/sqrt(5)/k*(exp((-3+sqrt(5))/2/k*t)-exp((-3-sqrt(5))/2/k*t));
ezplot(h,[0,2e-3]);
saveas(gcf,'2.png');
s(t)=1/2/sqrt(5)*(exp((-3+sqrt(5))/2/k*t)/(-3+sqrt(5))-exp((-3-sqrt(5))/2/k*t)/(-3-sqrt(5)));
ezplot(s,[0,2e-3]);
saveas(gcf,'3.png');