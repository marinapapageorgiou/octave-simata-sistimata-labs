
t = 0 : 0.0001 : 1;
x = 2*sin(8*pi*t) - cos(6*pi*t);          # sinexis xronos

n = 0 : 1 :50;
Ts = 0.02;
xn = 2*sin(8*pi*n*Ts) - cos(6*pi*n*Ts);   # diakritos xronos

figure;
subplot(3,1,1);
plot(t,x);
title("sinxis xronos");
xlabel("t(sec)");
ylabel("x(t)");

#figure;
subplot(3,1,2);
stem(n,xn);
title("diakritos xronos");
xlabel("n");
ylabel("x[n]");

#3b
Ts = 0.3;
xn2 = 2*sin(8*pi*n*Ts) - cos(6*pi*n*Ts);
subplot(3,1,3);
stem(n,xn2);
title("diakritos xronos");
xlabel("n");
ylabel("x[n]");