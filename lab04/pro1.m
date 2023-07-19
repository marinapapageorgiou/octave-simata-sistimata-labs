syms t;
u = heaviside(t);

x1 = exp(-2*abs(t));
display(fourier(x1));

x2 = 1/(1+t^2);
display(fourier(x2));

x3 = sign(t);
display(fourier(x3));

x4 = exp(-((t^2)/8));
display(fourier(x4));

x5 = exp(-2*t)*u;
display(fourier(x5));