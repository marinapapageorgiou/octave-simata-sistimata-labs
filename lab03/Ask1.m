function Ask1

################# 1a

dk = 1;
T = 2;
k = -15 : dk : 15;        
N = 31;
X0 = 1/2; 
x0 = zeros(1, length(k));

Xk = (1./(k*pi)) .* sin((pi*k)./2);
x = (1./(k*pi)) .* sin((pi*k)./2).*exp(j*k*pi);    

x2 = abs(Xk);          
x3 = angle(Xk);  
figure;        
stem(k, x2);
figure;
stem(k, x3);
grid;
title("Fourier Series I");
xlabel("Time(s)");
ylabel("x(t)");
ylim([0,3]); 
saveas(1, "figure1a.jpg");

################# 1b

t=[-3:0.01:3];
N=[3,5,9,31,50,500,1000];
totalplots=length(N)-2;
x=zeros(length(N),length(t));
for i=1:totalplots
   for l=1:length(t)  
      for k=-N(i):N(i)
       if(k==0)
          x(i,l)+=1/2;
          continue
       endif
       x(i,l)+=(1/(pi*k))*sin(pi*k/2)*exp(j*k*pi*t(l));
      endfor   
    endfor
endfor
power=zeros(1,length(N));

#calculate power
for i=1:totalplots
  for k=-N(i):N(i)
    if(k==0)
      power(i)+=100*(1/4);
      continue
    endif
    power(i)+=100*((1/(pi*k))*sin(pi*k/2))^2;
  endfor   
endfor
figure();

#show plots
for i=1:totalplots
    subplot (totalplots, 1, i);
    plot(t,x(i,:));
    title(['N=',num2str(N(i)),'  ',num2str(power(i)),'% of average Power']);
    xlabel("t");
    ylabel("x(t)");
endfor
saveas(1, "figure1b.jpg");

endfunction