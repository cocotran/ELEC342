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



function [fft_x]=Fourier(x,n)
global w;
vector=zeros(1,length(w));
for i=1:length(w)
	sum=0;
	for a=1:length(n)
		sum=sum+exp(-i*w(i)*n(a))*x(a);
	end;
	vector(i)=sum;
end;
fft_x=vector;


% propmt for input
periods=input('Enter the number of periods:');
stepsize=input('Enter the step size:');

global w;
w=-periods*pi:stepsize: periods*pi;

for i=1:5
	samplerate=input('Please enter the sampling rate');
	a=floor(samplerate*2);
	numberofsample=a*2;
	n=0:numberofsample-1;
	x=(0.5*sin(2*pi/a * n) + 0.33* sin(4*pi/a*n));
	x_fft = Fourier(x,n);

	% transform from a function
	figure;
	subplot(2,1,1);
	stem(n,x);
	xlabel('n');
	ylabel('x[n]');
	str=strcat('Sampling rate: ', num2str(samplerate),' Number ofperiods:',num2str(periods),name:id'
	title(str);

	subplot(2,1,2);
	polar(w,abs(x_fft));
	file=strcat('Q2 with sampling rate of ',num2str(samplerate));
	print('-r500','-dpdf','Lab4_Q2n_Figure_1');
end
