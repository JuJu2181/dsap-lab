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
% Scaling
% Compressed Signal x[2n]
op_len = ceil(length(x)/scale_factor);
x1=zeros(1,op_len);
for i=1:op_len
    x1(i) = x(scale_factor*i-1);
    n1(i) = n(scale_factor*i-1)/scale_factor;
endfor
subplot(2,2,2);
stem(n1,x1,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Compressed Signal x[2n] | CRN: KCE075BCT008");
grid on;
% Dilated Signal x[n/2]
subplot(2,2,3);
stem(n*scale_factor,x,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Dilated Signal x[n/2] | CRN: KCE075BCT008");
grid on;
