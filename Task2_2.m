% normalized magnitude spectrum of each window at 1,024 points
% rectangular window
close all
N=1024;
y_r = fft(w_r,1024);
m_r = abs(y_r); % Absolute value
m_R = fftshift(m_r); % Move zero frequency to centre
f = (0:N-1)/N-1/2; % Frequency vector
subplot(2,2,1), plot(f,m_R);
title('Rectangular');


% triangular window
y_t = fft(w_t, 1024);
m_t = abs(y_t);
m_T = fftshift(m_t); % Move zero frequency to centre
subplot(2,2,2), plot(f,m_T);
title('Triangular');


% sine window
y_s = fft(w_s,1024);
m_s = abs(y_s);
m_S = fftshift(m_s); % Move zero frequency to centre
subplot(2,2,3), plot(f,m_S);
title('Sine');
xlabel('f');


% Hann window
y_h = fft(w_h,1024);
m_h = abs(y_h);
m_H = fftshift(m_h); % Move zero frequency to centre
subplot(2,2,4), plot(f,m_H);
title('Hann');
xlabel('f'); 
shg % Show graph window







