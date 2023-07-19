function Ask2

############### 2a
#syms t;
t= 0 : 0.01 : 10;
u=heaviside(t);

x=exp((-2)*t).*u;

figure;
subplot(3,1,1);
plot(t,x);
grid;
title("Sima x(t)");
xlabel("t(sec)");
ylabel("x(t)");

############### 2b
f= -10 : 0.01 : 10;
F=1./((2*pi*f.*j)+2);               #Typos poy proekipse apo to erotima 1e 
subplot(3,1,2);
#r=abs(F);
plot(f,abs(F));
grid;
title("Fasma platous");
xlabel("Frequency(f)");
ylabel("x(t)");

############### 2c
f= -10 : 0.01 : 10;
F=1./((2*pi*f.*j)+2);               #Typos poy proekipse apo to erotima 1e 
subplot(3,1,3);
plot(f,angle(F));
grid;
title("Fasma phasis");
xlabel("Frequency(f)");
ylabel("x(t)");

saveas(1,"Ask2");

endfunction