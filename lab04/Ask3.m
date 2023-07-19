function Ask3
  
############### 3a
syms t;
Dt=0.0001;
t=0 : Dt : 1;
Ts=0.02;
x1=(2*sin(8*pi*t))-cos(6*pi*t);
figure;
subplot(3,1,1);
plot(t,x1);
grid;
title("Sima sinexous xronou");
xlabel("t");
ylabel("x1(t)");

n=0 : 1 : 50;
x2=(2*sin(8*pi*n*Ts))-cos(6*pi*n*Ts);
subplot(3,1,2);
stem(n,x2);
grid;
title("Sima diakritou xronou");
xlabel("n");
ylabel("x2[n]");

############### 3b
Dt=0.0001;
t=0 : Dt : 1;
Ts=0.3;

#x3=(2*sin(8*pi*t))-cos(6*pi*t);
#figure;
#subplot(2,1,1);
#plot(t,x3);
#title("Sima sinexous xronou");
#xlabel("t");
#ylabel("x3(t)");

n=0 : 1 : 50;
x4=(2*sin(8*pi*n*Ts))-cos(6*pi*n*Ts);
subplot(3,1,3);
stem(n,x4);
grid;
title("Sima diakritou xronou");
xlabel("n");
ylabel("x4[n]");

saveas(1,"Ask3");

endfunction