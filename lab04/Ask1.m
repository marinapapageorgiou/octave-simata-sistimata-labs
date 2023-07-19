function Ask1
  
syms t;
u=heaviside(t);

############### 1a
x1=exp((-2)*abs(t));
display(fourier(x1));

############### 1b
x2=1/(1+(t^2));
display(fourier(x2));

############### 1c
x3=sign(t);
display(fourier(x3));

############### 1d
x4=exp(-(t^2)/8);
display(fourier(x4));

############### 1e
x5=exp((-2)*t)*u;
display(fourier(x5));

endfunction