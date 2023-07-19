syms t;
Dt= 0.0001;                       
t = -1000 + Dt : Dt :1000; 
x= exp(-2*abs(t));

x_sqr = x.^2;
result = Dt * sum(x_sqr); 



