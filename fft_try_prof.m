Fs=1600;
T=1/Fs;
M = xlsread('t3.csv');
% t = M(3:end,1);
x=M(3:end-8,3);
L=length(x);
t=(0:L-1)*T;
Y = fft(x);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
%%
figure
semilogx(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
