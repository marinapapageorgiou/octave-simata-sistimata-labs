function Ask2

###################### 2a

clear;
f= [-60:0.01:60];
H=1./(f.*((2*pi)*j)+3);

abs1=abs(H);
angle1=angle(H);
a=figure();
plot(f,abs1)
title("f Abs ");
xlabel("f");
ylabel("abs");
b=figure();
plot(f,angle1)
title("f Angle ");
xlabel("f");
ylabel("angle");
saveas(1, "figure2a.jpg");

###################### 2b

clear;
f= [-60:0.01:60];
H=(f.*((2*pi)*j)+2)./(f.*((2*pi)*j)+3);

abs1=abs(H);
angle1=angle(H);
a=figure();
plot(f,abs1)
title("2nd f Abs ");
xlabel("f");
ylabel("abs");
b=figure();
plot(f,angle1)
title("2nd f Angle ");
xlabel("f");
ylabel("angle");
saveas(1, "figure2b.jpg");

endfunction
