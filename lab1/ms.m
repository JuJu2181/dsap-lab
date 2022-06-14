clc;
clear variables;
close all;
n = -5:0.5:5;
x = zeros(1, length(n));
for i=1:(length(n))
 if n(i) >= 0
 x(i) = 1;
 end
end
subplot(3, 2, 1);
stem(n,x);
axis([-5 5 0 2]);
xlabel('Discrete interval n');
ylabel('Amplitude');
title('Discrete unit step signal');
n = -5:0.5:5;
x = zeros(1, length(n));
for i=1:(length(n))
 if n(i) >= 0
 x(i) = n(i);
 end
end
subplot(3, 2, 2);
stem(n,x);
axis([-5 5 0 10]);
xlabel('Discrete interval n');
ylabel('Amplitude');
title('Ramp signal');
n = -5:0.1:5;
x = zeros(1, length(n));
x = 1.*0.8.^n;
subplot(3, 2, 3);
stem(n,x);
axis([-10 10 0 4]);
xlabel('Discrete interval n');
ylabel('Amplitude');
title('Exponential signal');
n = -5:0.1:5;
x = zeros(1, length(n));
x = sin(pi.*n)./(pi.*n);
subplot(3, 2, 4);
stem(n,x);
axis([-5 5 -1 2]);
xlabel('Discrete interval n');
ylabel('Amplitude');
title('Sinc signal');
n = -5:0.5:5;
x = zeros(1, length(n));
for i=1:(length(n))
 if n(i) == 0
 x(i) = 1;
 end
end
subplot(3,2,5);
stem(n,x);
axis([-5 5 0 2]);
xlabel('Discrete interval n');
ylabel('Amplitude');
title('Discrete unit impulse signal');
