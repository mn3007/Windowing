% DFT
clear all
N=32; % Number of samples
N2=1024;
f=128; % Frequency (cycles/sample)
Fs=2048; % Samples per second
ts=1/Fs; % Sampling rate
n=0:N-1; % Discrete time axis for N = 32
n2=0:N2-1; % Discrete time axis for N = 1024
x=sin(2*pi*f*n*ts); % Sampled sinusoid
y = fft(x); % Discrete Fourier transform
y0 = fft(x, N2); % 1024-point FFT with zero-padding;
m = abs(y); % Absolute value of y
m0 = abs(y0); % Absolute value of y0
f = n*Fs/N; % Frequency vector
f0 = n2*Fs/N2; % Frequency vector

close all
plot(f0,m0) % Plot Frequency against Magnitude
hold on
stem(f,m) % Stem plot of Frequency against Magnitude
xlim([0 Fs/2]); % set x-axis limits
xticks([0:Fs/N:Fs/2]) % Set x-axis tick values
xlabel('Frequency (Hz)') % Label x-axis
ylabel('Magnitude') % Label y-axis
grid on
title('The DFT of the length-32 sinusoid with frequency 128 Hz (stem), and with zeropadding to length-1024 (line)'); % Plot title
saveas(gcf, 'Task1_2', 'png')
shg

