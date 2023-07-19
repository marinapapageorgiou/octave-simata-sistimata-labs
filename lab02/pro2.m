t = 0 : 0.01 : 2*pi;
x = cos(1.3*pi*t);

figure;
plot(t,x);

#####################################
n = 0 : 50;
x = sin(((1.8*pi)./10).*n);

figure;
stem(n,x);


#####################################
figure;
syms t;
#t = -4 : 4;
#x = 0 : 1;

u = heaviside(t);
x = exp(-t)*u;

u1 = heaviside(t-1);
x1 = exp(-t+1)*u1;

u2 = heaviside(t+1);
x2 = exp(-t-1)*u2;

subplot(3,1,1);
ezplot(x,[-4,4]);
axis([-4 4 0 1]); 
title("x(t)");
xlabel("t(sec)");
ylabel("x(t)");

subplot(3,1,2);
ezplot(x1,[-4,4]);
axis([-4 4 0 1]); 
title("x(t-1)");
xlabel("t(sec)");
ylabel("x(t-1)");

subplot(3,1,3);
ezplot(x2,[-4,4]);
axis([-4 4 0 1]); 
title("x(t+1)");
xlabel("t(sec)");
ylabel("x(t+1)");




