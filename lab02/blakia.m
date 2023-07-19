syms t
u(t) = heaviside(t-1)
x(t) = exp(-t)*u(t);
c = figure();
subplot(3,1,1);
ezplot(x(t));
axis([-4 4 0 1]);
subplot(3,1,2);
ezplot(x(t-1));
axis([-4 4 0 1]);
subplot(3,1,3);
ezplot(x(t+1));
axis([-4 4 0 1]);