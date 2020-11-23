% DFT
clear all % Clear variables and functions from memory 
N=32; % Number of samples
N2=1024; % Number of samples
f=220; % Frequency (cycles/sample)
Fs=2048; % Samples per second
ts=1/Fs; % Sampling rate
n=0:N-1; % Discrete time axis with 32 samples
n2=0:N2-1; % Discrete time axis with 1024 samples
x=sin(2*pi*f*n*ts); % Sampled sinusoid
y = fft(x); % Discrete Fourier transform
y0 = fft(x, N2); % 1024-point FFT with zero-padding;
m = abs(y); % Absolute value of y
m0 = abs(y0); % Absolute value of y0
f = n*Fs/N; % Frequency vector
f0 = n2*Fs/N2; % Frequency vector

close all % closes all the open figure windows
plot(f0,m0) % Plot Frequency against Magnitude
hold on % Hold current graph
stem(f,m) % Stem plot of Frequency against Magnitude
xlim([0 Fs/2]); % set x-axis limits
xticks([0:110:Fs/2]) % Set x-axis tick values
xlabel('Frequency (Hz)') % Label x-axis
ylabel('Magnitude') % Label y-axis
grid on % Turn on grid lines
title('The DFT of the length-32 sinusoid with frequency 220 Hz (stem), and with zeropadding to length-1024 (line).'); % Plot title
saveas(gcf, 'Task1_1', 'png') % Save Figure
shg % Show graph window

