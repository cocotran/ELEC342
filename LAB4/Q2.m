step_size = input('Define step size: ');
period = input('Define # of period: ');
global w;
w = -period * pi : step_size : period * pi;
for loop = 1:5
	sampling_rate = input('Define sampling rate: ');
	N = floor(2*sampling_rate);
	n = 0:1:2*(N-1);
	x1 = 0.5*sin(2*pi/N * n) + 0.33* sin(4*pi/N*n);
	subplot(2,1,1);
	stem(n,x1);
	xlabel('n');
	ylabel('x[n]');
	title('The Discrete Signal');
	fft2 = fft1(x1,n);
	subplot(2,1,2);
	polar(w,abs(fft2));
	xlabel('w');
	ylabel('X(e^jw)');
	title('Polar coordinates');
end

y_n_shift = value_b.*x_shifted + value_c;
y[n] = Bx_shifetd[n] + C
subplot(3,2,4);
stem(n_domain,y_n_shift);
xlabel('n');
ylabel('y shift[n]');
title('Response due to shifted input');