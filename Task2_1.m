% rectangular window
close all
N=32;
n=0:N-1;
% w_r=0;
% for i=1:N
%   w_r(i) = 1;
% end
w_r = ones(N,1);
plot(n,w_r);
xlim([0 32])
ylim([0 1.5])
xlabel('n')
gtext('Rectangular')
grid MINOR
shg

hold on

% triangular window
N=31;
n=0:N-1;
w_t = ((N-1)/2-abs(n-(N-1)/2))*2/(N-1);
plot(n,w_t)
gtext('Triangular')

hold on

% sine window
N=32;
n=0:N-1;
w_s=sin(pi*n/(N-1));
plot(n,w_s)
gtext('Sine')

hold on

% Hann window
N=32;
n=0:N-1;
w_h=0.5*(1-cos(2*pi*n/(N-1)));
plot(n,w_h)
gtext('Hann')
legend('Rectangular','Triangular','Sine','Hann')



