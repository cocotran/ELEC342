% Part A
fs=6000; % sampling frequency
time=1;
t=0:1/fs:time-1/fs;
R=(-time*fs/2:(time*fs)/2-1)/(time*fs);
x=sin(100*t) + sin(2000*t) + sin(6000*t); % function given
x_fft=fft(x,fs); % using fourier transform function
x_fft=fftshift(x_fft); % using fourier transform function
% create 3 row, 1 columns, and set the figure in the top left box
subplot(3,1,1);
plot(t,x);

xlabel('t');
ylabel('x[t]');
title('Input Signal to be filteredname:id');
% create 3 row, 1 columns, and set the figure in the top right box
subplot(3,1,2);
plot(t(1:150),x(1:150));
title('First 150 samples');
% create 3 row, 1 columns, and set the figure in the middle left box
subplot(3,1,3);
plot(R,abs(x_fft));
xlabel('w');
ylabel('Fourier transform magnitude');
% title of the graph
title('Fourier transform plot');
print('-r500','-dpdf','Lab5_Q1_a_Figure_1');
% declaring filter's specefications for order 4
y=zeros(2,length(x));
% using zeros funtion for y
wn=[600/6000,700/6000];
% declaring wn
% using matlab commands to design butter filter
[b,a]=butter(4,wn,'Bandpass');
[H,f]=freqz(b,a);
y_n=filter(b,a,x);
y_fft=fft(y_n,fs);
y_fft=fftshift(y_fft);
% figure of the filter's output with order 4
figure;
%create 2 row, 1 columns, and set the figure in the top left box
subplot(2,1,1);
plot(f/pi,abs(H));
xlabel('frequency in pi ');
% title of the graph
title('The magnitude response of Butterworth filter with order:4name:id');
% create 2 row, 1 columns, and set the figure in the top right box
subplot(2,1,2);
plot(t(1:150),y_n(1:150));
% title of the graph
title('output of 150 samples of order:4');
print('-r500','-dpdf','Lab5_Q1_a_Figure_2');
% printing figure 2
% declaring filter's specifications for order 8
wn1=[450/6000,850/6000];
[b,a]=butter(8,wn1,'Bandpass');
[H,f]=freqz(b,a);
y_n1=filter(b,a,x);
y_fft1=fft(y_n1,fs);
y_fft1=fftshift(y_fft1);
figure;
% create 3 row, 1 columns, and set the figure in the top left box
subplot(3,1,1);
plot(f/pi,abs(H));
xlabel('frequency in pi');
title('The magnitude response of Butterworth filter with order:8name:id');
% create 3 row, 1 columns, and set the figure in the top right box
subplot(3,1,2);
plot(t(1:150),y_n1(1:150));
title('output of 150 samples of order:8');
% create 3 row, 1 columns, and set the figure in the middle left box
subplot(3,1,3);
plot(R,abs(y_fft1));
ylabel('Fourier transform magnitude');
title('Fourier transform plot');
print('-r500','-dpdf','Lab5_Q1_a_Figure_3');


% Part B
fs=6000;
% sampling frequency
time=1;
t=0:1/fs:time-1/fs;

R=(-time*fs/2:(time*fs)/2-1)/(time*fs);
x=sin(100*t) + sin(2000*t) + sin(6000*t);
% function given
x_fft=fft(x,fs);
% using Fourier transform function
x_fft=fftshift(x_fft);
% using Fourier transform function
% create 3 row, 1 columns, and set the figure in the top left box
subplot(3,1,1);
plot(t,x);
xlabel('t');
ylabel('x[t]');
% title of the graph
title('Input Signal to be filteredname:id');
% create 3 row, 1 columns, and set the figure in the top right box
subplot(3,1,2);
plot(t(1:150),x(1:150));
% title of the graph
title('First 150 samples');
% create 3 row, 1 columns, and set the figure in the middle left box
subplot(3,1,3);
plot(R,abs(x_fft));
% to label the x-axis with the specified string
xlabel('w');
% to label the y-axis with the specified string
ylabel('Fourier transform magnitude');
% title of the graph
title('Fourier transform plot');
print('-r500','-dpdf','Lab5_Q1_b_Figure_1');
% printing figure 1
% declaring filter's
specifications for order 4
y=zeros(2,length(x));
% using zeros function for y
wn=[350/6000,750/6000];
% declaring wn
Rp=1;
% declaring Rp as given in the question
% using matlab commands to design Chebyshev type I filter
[b,a]=cheby1(4,Rp,wn,'Bandpass');
[H,f]=freqz(b,a);
y_n=filter(b,a,x);
y_fft=fft(y_n,fs);
y_fft=fftshift(y_fft);
% figure of the filter's output with order 4
figure;
% create 2 row, 1 columns, and set the figure in the top left box
subplot(2,1,1);
plot(f/pi,abs(H));
xlabel('frequency in pi');
title('The magnitude response of Chebyshev type I filter with order:4name:id');
% create 2 row, 1 columns, and set the figure in the top right box
subplot(2,1,2);
plot(t(1:150),y_n(1:150));

title('output of 150 samples of order:4');
print('-r500','-dpdf','Lab5_Q1_b_Figure_2');
% printing figure 2
% declaring filter's specifications for order 8
wn1=[450/6000,1050/6000];
Rp=1;
[b,a]=cheby1(8,Rp,wn1,'Bandpass');
[H,f]=freqz(b,a);
y_n1=filter(b,a,x);
y_fft1=fft(y_n1,fs);
y_fft1=fftshift(y_fft1);
% figure of the filter's output with order 8
figure;
% create 3 row, 1 columns, and set the figure in the top left box
subplot(3,1,1);
plot(f/pi,abs(H));
% to label the x-axis with thespecified string
xlabel('frequency in pi');
% title of the graph
title('The magnitude response of Chebyshev type I filter with order:8name:id');
% create 3 row, 1 columns, and set the figure in the top right box
subplot(3,1,2);
plot(t(1:150),y_n1(1:150));
% title of the graph
title('output of 150 samples of order:8');
% create 3 row, 1 columns, and set the figure in the middle left box
subplot(3,1,3);
plot(R,abs(y_fft1));
% to label the y-axis with the specified string
ylabel('Fourier transformmagnitude');

title('Fourier transform plot');
print('-r500','-dpdf','Lab5_Q1_b_Figure_3');