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

% Part B

function [fft_x]=Fourier(x,n)

global w;
vector=zeros(1,length(w));

for i=1:length(w)
	sum=0;
	for a=1:length(n)
		sum=sum+exp(-1i*w(i)*n(a))*x(a);
	end;
	vector(i)=sum;
end;

fft_x=vector;

% prompt for user input
samplerate=input('Please enter the sampling rate:');
stepsize=input('Enter the step size:');
N=samplerate*2;
% Nyquist rate
% using golbal
global w;

for i=1:5
	windowsize=input('Enter the window_size:');
	w=-windowsize*pi:stepsize: windowsize*pi;
	floor(N);
	n = 0: 2*N-1;
	x=sin((2*pi/N)*n);
	x_fft = Fourier(x,n);

	figure;
	subplot(2,1,1);
	stem(n,x);
	xlabel('n');
	ylabel('x[n]');
	str=strcat('Sampling rate: ', num2str(samplerate),' Windowsize:',num2str(windowsize),'Name:ID');
	title(str);
	subplot(2,1,2);
	plot(w,abs(x_fft));
	xlabel('w');
	ylabel('magnitude of x[w]');
	str2=strcat('|X(ejw)| for number of window size (',num2str(windowsize),')');
	title(str2);
	file=strcat('Q1 (b)) with window size of ',num2str(windowsize));
	print('-r500','-dpdf','Lab2-Question#1B figures');
end