################################ erotima a

t = 0 : 0.01 : 1;
x = ones(1, length(t));
h = ones(1, length(t));
t = 0: 0.01 : 2;
figure;
y = conv(x, h); 
plot(t, y);
saveas(1, "figure_3a.jpg");

################################ erotima b

t = 0 : 0.01 : 3;
z = conv(y, h);

figure;
plot(t, z);
saveas(1, "figure_3b.jpg");

################################ erotima c

t = 0 : 0.01 : 4;
w = conv(z, h);

figure;
plot(t, w);
saveas(1, "figure_3c.jpg");
