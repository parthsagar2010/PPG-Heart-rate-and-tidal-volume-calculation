M = xlsread('t3.csv');
t = M(3:end,1);
x=M(3:end,2);
x=x(1:end-8);%removing the unwanted nan values
nfft = length(x); % n point FFT
x = fft(x);
x = x(1:nfft/2);
freq = abs(x);
Fs = 1600;
freq_vector = (0:nfft/2-1)*Fs/nfft;
freq_vector=freq_vector';

subplot(2,1,1);
fig1 = plot(M(3:end,1),M(3:end,2));
subplot(2,1,2);
fig2 = plot(freq_vector,freq);