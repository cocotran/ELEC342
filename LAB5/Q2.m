s=8192;
% sampling frequency
time=3;
% timing
t=0:1/fs:time-1/fs;
R=(-time*fs/2:(time*fs)/2-1)/(time*fs);
freq_step=((2*pi)/(time*fs));
% frequency step function
t1=1:1/fs:time-1/fs;
t2=2:1/fs:time-1/fs;
% signal tones
s1=sin(2*pi*200*(t));
% signal tone function for a
s2=sin(2*pi*330*(t1));
% signal tone function for b
s3=sin(2*pi*480*(t2));
% signal tone function for c
s=s1+[zeros(1,fs),s2]+[zeros(1,2*fs),s3];
% using Fourier transform
s_fft=fft(s);
s_fft=fftshift(s_fft);
% create 2 rows, 1 columns, and
set the figure in the top left box
subplot(2,1,1);
plot(t,s);

title('Time domain input signalname:id');
% create 2 rows, 1 columns, and set the figure in the top right box
subplot(2,1,2);
plot(R,abs(s_fft));

title('DFT of input signal');
print('-r500','-dpdf','Lab5_Q2_Figure_1');
% printing figure 1
% filter specifications and designing commands
wn=[525/8192,825/8192];
[b,a]=butter(2,wn,'stop');
[H,f]=freqz(b,a);
y_n=filter(b,a,s);
y_fft=fft(y_n);
y_fft=fftshift(y_fft);
% plot the magnitude response of the filter
figure;
% create 2 rows, 1 columns, and set the figure in the top left box
subplot(2,1,1);
plot(f/pi,abs(H));
% to label the x-axis with the specified string
xlabel('The Frequency ');

ylabel('Magnitude(dB)');
title('The responsename:id');
% create 2 rows, 1 columns, and set the figure in the top right box
subplot(2,1,2);
plot(f/pi,angle(H));
xlabel('The Frequency');
% to label the yaxis with the specified string
ylabel('Phase(degrees)');
% title of the graph
title('The response');
print('-r500','-dpdf','Lab5_Q2_Figure_2');
% printing figure 2
% plot for time domain output signal
figure;
% create 2 rows, 1 columns, and set the figure in the top left box
subplot(2,1,1);
plot(t,y_n);
% title of the graph
title('Time domain output signalname:id');
% create 2 rows, 1 columns, and set the figure in the top right box
subplot(2,1,2);
plot(R,abs
(y_fft));
title('DFT of output signal');
print('-r500','-dpdf','Lab5_Q2_Figure_3');
% printing figure 3