R=20;L=960e-6;C=100e-12;
freq=logspace(5,7,10000);
H1=20*log10(abs(1./(-L*C.*(2*pi.*freq).^2+R*C*1i*2*pi.*freq+1)));
semilogx(freq,H1);
grid on;
hold on;
R=90;C=30e-12;
H2=20*log10(abs(1./(-L*C.*(2*pi.*freq).^2+R*C*1i*2*pi.*freq+1)));
semilogx(freq,H2);

[m,index]=max(H1);
x=freq(index);
line([x,x],[-60,m],'linestyle','--');
text(x*1.05,-58,num2str(x,6));
db=m-3;
line([1e5,1e7],[db,db],'linestyle','--');
H=H1(1:index-1);
[mi,index2]=min(abs(H-db));
H=H1(index+1:length(H1));
[mi,index3]=min(abs(H-db));
width=-freq(index2)+freq(index3+index);
text(freq(index3+index),db,num2str(width,5));

[m,index]=max(H2);
x=freq(index);
line([x,x],[-60,m],'linestyle','--');
text(x*1.05,-58,num2str(x,6));
db=m-3;
line([1e5,1e7],[db,db],'linestyle','--');
H=H2(1:index-1);
[mi,index2]=min(abs(H-db));
H=H2(index+1:length(H2));
[mi,index3]=min(abs(H-db));
width=-freq(index2)+freq(index3+index);
text(freq(index3+index),db,num2str(width,5));

hold off;
axis([1e5 1e7 -60 50]);
legend('100pF','30pF');
xlabel('$$f/Hz$$','Interpreter','latex');
ylabel('$$20\log_{10}|H(j\omega)|$$','Interpreter','latex');
saveas(gcf,'prelab1.png');
