A=20
a=0.5
x=-5:0.2:5;
y1=y2=y3=y4=zeros(1,length(x));
for i=1:length(x)
  y1(i)=A*exp(a*x(i));
  y2(i)=A*exp((-a)*x(i));
  y3(i)=(-A)*exp(a*x(i));
  y4(i)=(-A)*exp((-a)*x(i));
endfor
% For Ae^an
subplot(2,2,1)
stem(x,y1,"r:diamond");
title("Exponential Signal for Ae^at");
xlabel("Discrete Time(n)");
ylabel("Amplitude e1[n]");
% For Ae^-an
subplot(2,2,2)
stem(x,y2,"bv");
title("Exponential Signal for Ae^-at");
xlabel("Discrete Time(n)");
ylabel("Amplitude e2[n]");
% For -Ae^an
subplot(2,2,3)
stem(x,y3,"g");
title("Exponential Signal for -Ae^at");
xlabel("Discrete Time(n)");
ylabel("Amplitude e3[n]");
% For -Ae^-an
subplot(2,2,4)
stem(x,y2,"mv");
title("Exponential Signal for -Ae^-at");
xlabel("Discrete Time(n)");
ylabel("Amplitude e4[n]");
