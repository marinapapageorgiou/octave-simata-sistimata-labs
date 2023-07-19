function Ask1

########################## 1a
clear;
n=[0:1:40];
s=2*cos((pi.*n)/4);
e=randn(1,length(n)).*0.4;
y=zeros(1,length(n));
x=s+e;
k=4;
#calculate sum
res=0;
for i=1:41
  for j=0:k-1
      if i-j<=0
        continue; 
      endif;
      y(i)+=(1/k)*x(i-j);
   endfor;
endfor;

figure();
subplot(4,1,1);
stem(n,s);
ylim([-3 3]);
title("s[n]");
xlabel("xronos");
ylabel("ebros"); 

subplot(4,1,2);
stem(n,x);
ylim([-3 3]);
title("e[n]");
xlabel("xronos");
ylabel("ebros"); 

subplot(4,1,3);
stem(n,y);
ylim([-3 3]);
title("y[n]");
xlabel("xronos");
ylabel("ebros"); 

########################## exodos filtrou gia N=4
y(1) = (1/4)*s(1);
y(2) = (1/4)*(s(2)+s(1));
y(3) = (1/4)*(s(3)+s(2)+s(1));

k=0;
for n0 = 4:41
   y(n0) = (1/4)*(s(n0)+s(n0-1)+s(n0-2)+s(n0-3)); 
end
subplot(4,1,4);
ylim([-3 3]);
stem(n,y);
grid;
title("grafiki gia N = 4");
xlabel("xronos");
ylabel("ebros"); 
  
saveas(1,"Ask1a.jpg");

########################## 1b
clear;
N=11;
omega=[-pi:0.01:pi];
#--------------------------------------------------------------[-pi,pi]
H=(sin(omega.*(N/2))./(N*sin(omega./2))).*(exp(j*omega.*((1-N)/2)));
abs_=abs(H);
angle_=angle(H);

figure();
subplot(2,1,1);
plot(omega,abs_);
title("Abs [-pi,pi]");
xlabel("xronos");
ylabel("ebros"); 


subplot(2,1,2);
plot(omega,angle_);
title("Angle [-pi,pi]");
xlabel("xronos");
ylabel("ebros"); 

#--------------------------------------------------------------[-3pi,3pi]
omega=[(-3)*pi:0.01:3*pi];

H=(sin(omega.*(N/2))./(N*sin(omega/2))).*(exp(-j*omega.*((N-1)/2)));
abs_=abs(H);
angle_=angle(H);


figure();
subplot(2,1,1);
plot(omega,abs_);
title("Abs [-3pi,3pi]");
xlabel("xronos");
ylabel("ebros"); 

subplot(2,1,2);
plot(omega,angle_);
title("Angle [-3pi,3pi]");
xlabel("xronos");
ylabel("ebros"); 

saveas(2,"Ask1b.jpg");
endfunction
