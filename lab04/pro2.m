#syms t;
t = 0 : 0.01 : 10;
u = heaviside(t);
x = exp(-2.*t).*u;

figure;
subplot(3,1,1);
plot(t,x);
grid();
title("x(t), te[0,10]");
xlabel("t(sec)");
ylabel("x(t)");

f= -10 : 0.01 : 10;
F = 1./((2*pi*f.*j)+2);  
subplot(3,1,2);
plot(f,abs(F));
grid();
title("fasma platous");
xlabel("frequency(f)");
ylabel("x(t)");

subplot(3,1,3);
plot(f,angle(F));
grid();
title("fasma fasis");
xlabel("frequency(f)");
ylabel("x(t)");