t = 0 : 0.01 : 1;
x = ones(1, length(t));
h = ones(1, length(t));

t = 0 : 0.01 : 2;
y = conv(x,h);
figure;
plot(t,y);

##############################
t = 0 : 0.01 : 3;
z = conv(y,h);
figure;
plot(t,z);

##############################
t = 0 : 0.01 : 4;
w = conv(z,h);
figure;
plot(t,w);