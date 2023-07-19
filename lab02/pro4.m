syms n;
n=-10:30;
figure();
u=heaviside(n);
h=(((5./8).^n).*u);
u10=heaviside(n-10);

x=u-u10;
stem(n,x);
#4b
figure;
stem(n,h);
title("h")
xlabel("sec")
ylabel("h(t)")


#4c
n=-20:60;
y=conv(x,h);
stem(n,y);
