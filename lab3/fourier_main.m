% Resets
clc;
clear variables;
close all;
% fourier series
% x[n]
x = [0 1 2 3];
% fourier coefficients from function
c = fourierCoeff(x);
c
% magnitude 
mag_c = abs(c);

% Phase angle
phase_c = angle(c);

% Real part of c 
real_c = real(c);

% Imaginary part of c 
imag_c = imag(c);

% Axis value
axis_val=[-1 4 -4 4];

% Plots 
% Original Signal
subplot(3,2,1);
stem(x,x,'k');
axis(axis_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Original discrete time sequence x[n] | CRN: KCE075BCT008");
grid on;

% Magnitude Plot
subplot(3,2,2);
stem(x,mag_c,'k');
axis(axis_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Magnitude Spectrum of F.S. coefficients | CRN: KCE075BCT008");
grid on;

% Phase Plot
subplot(3,2,3);
stem(x,phase_c,'k');
axis(axis_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Phase Spectrum of F.S. coefficients | CRN: KCE075BCT008");
grid on;

% Real Plot
subplot(3,2,4);
stem(x,real_c,'k');
axis(axis_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Real part of F.S coefficients | CRN: KCE075BCT008");
grid on;

% Phase Plot
subplot(3,2,[5,6]);
stem(x,imag_c,'k');
axis(axis_val);
xlabel("Discrete Interval n");
ylabel("Amplitude");
title("Imaginary part of F.S. coefficients | CRN: KCE075BCT008");
grid on;