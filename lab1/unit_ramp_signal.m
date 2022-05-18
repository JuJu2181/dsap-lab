x=-10:1:10;
y=zeros(1,length(x));
for i=1:length(x)
  if x(i)>=0
    y(i) = x(i);
  else
    y(i) = 0;
  endif
endfor
stem(x,y,"r");
axis([-10,10,-10,10]);
title("Unit Ramp Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude R[n]");
