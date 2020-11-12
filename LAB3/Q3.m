% Quang Anh Tran	
% 40075748
% Question 3

n = -10:10;
x = zeros(1,21);
x(9:13) = 1;

x_fft = fft(x);
x_ifft = ifft(x_fft);

subplot(2,1,1);
stem(n,x,'blue');
title('x[n]');

subplot(2,1,2);
stem(n,x_ifft);
title('new x[n]');