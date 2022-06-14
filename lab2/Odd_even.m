% Plot for x[n] = 1 for -4<=n<=0 and
%                 2 for 1<=n<=4
% Resets
clc
clear variables 
close all
% Code 
% Variables
scale_factor = 2;
xticks_val=-10:1:10;
yticks_val=-3:1:3;
axis_val=[-10 10 -3 3];
shift=3;
n = -4:1:4;
x = zeros(1,length(n));
for i=1:length(n)
    if n(i) <=0
        x(i) = 1;
    else 
        x(i) = 2;
    endif
endfor 
% Subplot for x[n]
subplot(2,2,1);
stem(n,x,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Original Signal x[n] | CRN: KCE075BCT008");
grid on;
% Odd and even part of signal 
% For even part 
x_neg = fliplr(x);
% even part of signal
even=(x+x_neg)/2;
% Odd part of signal
odd=(x-x_neg)/2;
% Subplot for even part e[n]
subplot(2,2,2);
stem(n,even,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Even part of Signal e[n] | CRN: KCE075BCT008");
grid on;
% Subplot for odd part e[n]
subplot(2,2,3);
stem(n,odd,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Odd part of Signal o[n] | CRN: KCE075BCT008");
grid on;