########################### erotima a

figure;                             # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
syms n;                             # gia tin syms balame tin antistoixi library pkg load symbolic prin to trexoyme
n = -10 : 30;                       #to diastima tou n (oi times pou pairnei)
u = heaviside(n);                   # u = u(n)
u1 = heaviside(n-10);               # u1 = u(n-10)
x = u-u1;                           # x[n] = u(n) * u(n-10)
h = ((5/8).^n).*u;                  # h[n] = [(5/8)^n] * u(n)
stem(n, x);                         # gia tin anaparastasi simaton diakritou xronou vazo thn stem 
axis([-10 30 0 1 ]);                # ta diastimata stous axones x(gia to n) kai y(gia to x) antistoixa
title('Graph x[n] at [-10,30]');    # onomatzizo genika to graphima moy
xlabel('n');                        # onomatzizo axona x
ylabel('y[n]');                     # onomatzizo axona y
saveas(1, "figure_4a.jpg");         # kano ikona-apothikeuo to grafima mou

########################### erotima b

figure;                             # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
stem(n, h);                         # gia tin anaparastasi simaton diakritou xronou vazo thn stem 
axis([-10 30 0 1 ]);                # ta diastimata stous axones x(gia to n) kai y(gia to h) antistoixa
title('Graph h[n] at [-10,30]');    # onomatzizo genika to graphima moy
xlabel('n');                        # onomatzizo axona x
ylabel('h[n]');                     # onomatzizo axona y
saveas(1, "figure_4b.jpg");         # kano ikona-apothikeuo to grafima mou

########################### erotima c

figure;                             # stin arxi kathe askisis bazo tin figure gia na tiposi ta graphimata ths askisis
n = -20 :60;                        # to diastima tou n (oi times pou pairnei)
y = conv(x, h);                     # sinelixi
stem(n, y);                         # gia tin anaparastasi simaton diakritou xronou vazo thn stem
title('Graph y[n] at [-20,60]');    # onomatzizo genika to graphima moy
xlabel('n');                        # onomatzizo axona x
ylabel('y[n]');                     # onomatzizo axona y
saveas(1, "figure_4c.jpg");         # kano ikona-apothikeuo to grafima mou