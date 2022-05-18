x=-5:0.2:5;
y=zeros(1,length(x));
for i=1:length(x)
  y(i)=exp(x(i));
endfor
stem(x,y,"r");
%axis([-20,20,-20,20]);
title("Exponential Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude e[n]");
