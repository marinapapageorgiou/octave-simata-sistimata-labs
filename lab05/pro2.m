function Ask2
  
#2a
x = [7 6 5 4 4 4 4 10 10 10 8 8 7 6 0];
y(1) = 0;
n=[1:15];

for i = 2:15
  y(i) = x(i)- x(i-1);
end

figure();
subplot(2,1,1);
stem(n,x);
title("x[n]");
xlabel("n");
ylabel("x[n]");


subplot(2,1,2);
stem(n,y);
title("y[n]");
xlabel("n");
ylabel("y[n]");

#2b
#--------------------------------
w = -pi : 0.01 : pi;
Q = atan((sin(w))./(1-cos(w)));
H = 2.*abs(sin(w./2)).*exp(-j.*Q);

abs1 = abs(H);
angle1 = angle(H);

figure;
subplot(4,1,1);
grid;
plot(w,abs1);
title("abs [-pi,pi]");
xlabel("apokrisi sixnotiton");
ylabel("abs");

subplot(4,1,2);
grid;
plot(w,angle1);
title("angle [-pi,pi]");
xlabel("apokrisi sixnotiton");
ylabel("angle");

#--------------------------------
w2 = -3*pi : 0.01 : 3*pi;
Q = atan((sin(w2))./(1-cos(w2)));
H = 2.*abs(sin(w2./2)).*exp(-j.*Q);

abs2 = abs(H);
angle2 = angle(H);

subplot(4,1,3);
grid;
plot(w2,abs2);
title("abs [-3pi,3pi]");
xlabel("apokrisi sixnotiton");
ylabel("abs");

subplot(4,1,4);
grid;
plot(w2,angle2);
title("angle [-3pi,3pi]");
xlabel("apokrisi sixnotiton");
ylabel("angle");

endfunction

