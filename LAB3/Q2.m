% Quang Anh Tran
% 40075748
% Question 2

n = -10:10;
x = zeros(1,21);
x(9:13) = 1;

w = 0:2 * pi()/21:2 * pi() - pi()/21;
array = 0:20;

for k = 1:21
	sum = 0;
	for m = 1:21
		sum = sum + x(m) * exp(-j * w(k) * (m))
	end 
	array(k) = sum;
end

magnitude = abs(array);
subplot(2,1,1);
plot(w, magnitude, 'red');
title('DTFT with for loop');

x_fft = fft(x);
w = 0:2 * pi()/21:2 * pi() - pi()/21;
magnitude_og = abs(x_fft);

subplot(2,1,2);
plot(w,magnitude_og, 'blue');
title('DTFT with MATLAB function');
