########################### erotima a

t = 0 : 0.01 : (2*pi);            # to diastima tou t (oi times pou pairnei)
x = cos(1.3*pi*t);    
figure;                           # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
plot(t,x);                        # oi 2 axones tou graphimatos mas
saveas(1, "figure_2a.jpg");       # kano ikona-apothikeuo to grafima mou

############################ erotima b

n = 0 : 50;                       # to diastima tou n (oi times pou pairnei)
x = sin(((1.8*pi) * n)/10);
figure;                           # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
stem(n,x);                        # gia tin anaparastasi simaton diakritou xronou vazo thn stem 
saveas(1, "figure_2b.jpg");       # kano ikona-apothikeuo to grafima mou

########################### erotima c
figure;                           # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
syms t;                           # gia tin syms balame tin antistoixi library pkg load symbolic prin to trexoyme

###x(t)
u = heaviside(t);                 # u(t) me tin voithia ths heaviside
x1 = (exp(-t)).*u;                # epidi den einai pollaplasiasmos me arithmo bazo kai thn . prin to *
subplot(3,1,1);                   # vazo ta 3 graphics se mia ikona-sxima
ezplot(x1,[-4 4]);                # sxediasi (anti gia plot)
grid;       
axis([-4 4 0 1]);                 # ta diastimata stous axones x(gia to t) kai y(gia to x) antistoixa
xlabel("time(sec)");              # onomatzizo axona x
ylabel("x(t)");                   # onomatzizo axona y
title("Graph_x(t)");              # onomatzizo genika to graphima moy
saveas(1, "figure_2c.jpg");       # kano ikona-apothikeuo to grafima mou

###x(t-1)
u2 = heaviside(t-1);              # u(t) me tin voithia ths heaviside
x2 = (exp(-t+1)).*u2;             # epidi den einai pollaplasiasmos me arithmo bazo kai thn . prin to *
subplot(3,1,2);                   # vazo ta 3 graphics se mia ikona-sxima
ezplot(x2,[-4 4]);                # sxediasi (anti gia plot)
grid;
axis([-4 4 0 1]);                 # ta diastimata stous axones x(gia to t) kai y(gia to x) antistoixa
xlabel("time(sec)");              # onomatzizo axona x
ylabel("x(t-1)");                 # onomatzizo axona y
title("Graph_x(t-1)");            # onomatzizo genika to graphima moy
saveas(1, "figure_2cc.jpg");      # kano ikona-apothikeuo to grafima mou

###x(t+1)
u3 = heaviside(t+1);              # u(t) me tin voithia ths heaviside
x3 = (exp(-t-1)).*u3;             # epidi den einai pollaplasiasmos me arithmo bazo kai thn . prin to *
subplot(3,1,3);                   # vazo ta 3 graphics se mia ikona-sxima
ezplot(x3,[-4 4]);                # sxediasi (anti gia plot)
grid;
axis([-4 4 0 1]);                 # ta diastimata stous axones x(gia to t) kai y(gia to x) antistoixa
xlabel("time(sec)");              # onomatzizo axona x
ylabel("x(t+1)");                 # onomatzizo axona y
title("Graph_x(t+1)");            # onomatzizo genika to graphima moy
saveas(1, "figure_2ccc.jpg");     # kano ikona-apothikeuo to grafima mou