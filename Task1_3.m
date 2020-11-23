% DFT
clear all
N=32; % Number of samples
N2=2048; % Number of samples
Fs=2048; % Samples per second
ts=1/Fs; % Sampling rate
n=0:N-1; % Discrete time axis with 32 samples
n2=0:N2-1; % Discrete time axis with 1024 samples
x=sin(2*pi*128*n*ts)+0.2*sin(2*pi*220*n*ts)+0.01*cos(2*pi*525*n*ts); % Sampled sinusoid
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
title('The DFT of the length-32 sinusoids with frequencies 128, 220, and 525 Hz (stem), and of the zeropadded sequence (line).'); % Plot title
saveas(gcf, 'Task1_3', 'png')
shg

