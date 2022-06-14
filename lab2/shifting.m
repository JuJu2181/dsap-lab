% Plot for x[n] = 1 for -4<=n<=0 and
%                 2 for 1<=n<=4
% Resets
clc
clear variables 
close all
% Code 
% Variables
xticks_val=-8:1:8;
yticks_val=-3:1:3;
axis_val=[-8 8 -3 3];
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
% Shifting 
% right shifting x[n-3]
subplot(2,2,2);
stem(n+shift,x,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Right Shifted Signal x[n-3] | CRN: KCE075BCT008");
grid on;
% Left shifting x[n+3]
subplot(2,2,3);
stem(n-shift,x,'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Left Shifted Signal x[n+3] | CRN: KCE075BCT008");
grid on;
% Folding x[-n]
% Using -n
% subplot(2,4,4);
% stem(-n, x,'k');
% axis([-10 10 -3 3])
% xlabel("Discrete Interval n");
% ylabel("Amplitude");
% title("Folded Signal x[-n] using -n");
% Using fliplr
subplot(2,2,4);
stem(n, fliplr(x),'k');
axis(axis_val)
xticks(xticks_val);
yticks(yticks_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Folded Signal x[-n] using fliplr | CRN: KCE075BCT008");
grid on;