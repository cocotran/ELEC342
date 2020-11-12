step_size = input('Input step size  of the frequency interval: ');
period = input('Input number of periods: ');

global w;
w = -period * pi : step_size : period * pi;
for loop = 1:5
	sampling_rate = input('Input sampling rate: ');
	N = floor(2*sampling_rate);
	n = 0:1:2*(N-1);
	x1 = sin ( 2*pi /N * n);
	subplot(2,1,1);
	stem(n,x1);
	xlabel('n');
	ylabel('x[n]');
	title('Discrete Signal');
	fft2 = fft1(x1,n);
	subplot(2,1,2);
	plot(w,abs(fft2));
	xlabel('w');
	ylabel('X(e^jw)');
	title('Sampling');
end

% Sampling function

function fft1 = fft1(x1,n)
global w;

for i=1:length(w);
	sum=0;
	for q=1:length(x1);
		sum = sum + x1(q)*exp(-j*w(i)*n(q));
	end
	F(i)=sum;
end
fft1 = F;