x=-20:0.2:20;
y1=y2=y3=y4=zeros(1,length(x));
for i=1:length(x)
  if x(i) > 0
    y1(i) = 1;
    y2(i)=0;
    y3(i) =x(i);
    y4(i) = sin(pi*x(i))/(pi*x(i));
  elseif x(i)==0
    y1(i) = 1;
    y2(i)= 1;
    y3(i) = x(i);
    y4(i) = 1;
  else
    y1(i)=0;
    y2(i)=0;
    y3(i)=0;
    y4(i) = sin(pi*x(i))/(pi*x(i));
  endif
endfor
%Unit Step
subplot(2,2,1);
stem(x,y1,"g");
axis([-20,20,-2,2]);
title("Unit Step Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude u[n]");
% Unit Impulse
subplot(2,2,2);
stem(x,y2,"k");
axis([-10,10,-2,2]);
title("Unit Impulse Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude d[n]");
% Unit Ramp
subplot(2,2,3);
stem(x,y3,"b");
axis([-10,10,-10,10]);
title("Unit Ramp Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude R[n]");
% Sinc
subplot(2,2,4);
stem(x,y4,"r");
axis([-20,20,-2,2]);
title("Sinc Signal");
xlabel("Discrete Time(n)");
ylabel("Amplitude s[n]");
