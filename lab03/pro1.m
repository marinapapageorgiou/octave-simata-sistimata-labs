t = -1 : 0.01 : 1;
k = -15 : 0.01 : 15;
T = 2;
X0 = 1/2;
Xk = (1./(pi.*k)).*sin((pi.*k)./2);
x = (1./(k*pi)) .* sin((pi*k)./2).*exp(j*k*pi);

abs1 = abs(Xk);
angle1 = angle(Xk);

figure;
subplot(2,1,1);
grid;
plot(k,abs1);
title("abs");
xlabel("t(sec)");
ylabel("abs");

subplot(2,1,2);
grid;
plot(k,angle1);
title("angle");
xlabel("t(sec)");
ylabel("angle");