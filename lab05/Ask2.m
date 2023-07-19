function Ask2
  
########################## 2a
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
xlabel("repetition");
ylabel("wbros");

subplot(2,1,2);
stem(n,y);
title("y[n]");  
xlabel("repetition");
ylabel("ebros");
saveas(gcf,"Ask2a.jpg");

########################## 2b
#----------------------------------------(w1)
w1 = [-pi:0.01:pi];
U = atan((sin(w1)./(1-cos(w1))));
H = 2.*abs(sin(w1./2)).*exp(-j.*U);

figure();
subplot(4,1,1);
grid;
plot(w1,abs(H));        
title("Metro_w1");
xlabel("w1");
ylabel("Metro");

subplot(4,1,2);
grid;
plot(w1,angle(H));
title("phase_w1");
xlabel("w1");
ylabel("phase");

#----------------------------------------(w2)

w2 = [-3*pi:0.01:3*pi];
U = atan(sin(w2)./(1-cos(w2)));
H = 2.*abs(sin(w2./2)).*exp(-j.*U);

subplot(4,1,3);
plot(w2,abs(H));        
title("Metro_w2");
xlabel("w2");
ylabel("Metro");

subplot(4,1,4);
plot(w2,angle(H));
title("phase_w2");
xlabel("w2");
ylabel("phase");

########################## 2c
X = imread('lena.tiff');
size(X)
figure(3); 
imshow(X);
X = double(rgb2gray(X));
size(X)
figure(4);
imshow(X,[]);
saveas(gcf,"Ask2ca.jpg");

[R C] = size(X);
Z = zeros(R,C);
G = zeros(R,C);
Y = zeros(R,C);


for k = 1:R
   Y(k,1) = 0;
   for m = 2:1:C
      Y(k,m) = X(k,m)- X(k,m-1);
   end
end

for m = 1:C
   Z(1,m) = 0;
   for k = 2:R
      Z(k,m) = X(k,m)- X(k-1,m);
   end
end

for k = 1:R
   for m = 1:C
     G(k,m) = sqrt((Y(k,m)^2) + (Z(k,m)^2));
   end
end 

figure();
imshow(Y,[]);
saveas(gcf,"Ask2cb.jpg");
figure();
imshow(Z,[]); 
saveas(gcf,"Ask2cc.jpg");
figure();
imshow(G,[]);
saveas(gcf,"Ask2cd.jpg");

endfunction
