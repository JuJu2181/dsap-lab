x=-20:0.5:20;
y=zeros(1,length(x));
for i=1:length(x)
  if x(i)==0
    y(i) = 1;
  else
    y(i) = sin(pi*x(i))/(pi*x(i));
  endif
endfor
stem(x,y,"r");
axis([-20,20,-2,2]);
title("Sinc Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude s[n]");
