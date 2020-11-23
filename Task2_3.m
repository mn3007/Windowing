% normalized dB spectrum of the rectangular and triangular window functions
close all
% rectangular window
N=32; % Number of samples
M = 2048; % number of samples (with zeropadding)
w_r = ones(N,1); % rectangular window
y_r = fft(w_r,M); % Discrete Fourier transform
m_r = abs(y_r); % Absolute value of y_r
m_R = fftshift(m_r); % Move zero frequency to centre

% triangular window
N1=31; % Number of samples
n=0:N1-1; % Discrete time axis for N1 = 31
w_t = ((N1-1)/2-abs(n-(N1-1)/2))*2/(N1-1); % triangular window
y_t = fft(w_t,M); % Discrete Fourier transform
m_t = abs(y_t); % Absolute value of y_t
m_T = fftshift(m_t); % Move zero frequency to centre

f = (0:M-1)/M-1/2; % frequency vector

close all;
plot_r = plot(f,20*log10(m_R/max(m_R))); % Plot Frequency against Magnitude
hold on % Hold current graph
plot_t = plot(f,20*log10(m_T/max(m_T)),':'); % Plot Frequency against Magnitude
xlim([-0.2 0.2]); % set x-axis limits
ylim([-80 5]); % set y-axis limits
grid MINOR % Turn on grid lines
xlabel('Normalized Frequency'); % Label x-axis
ylabel('Magnitude (dB)'); % Label y-axis
legend([plot_r,plot_t],'Rectangular','Triangular') % Create legend
shg % Show graph window

