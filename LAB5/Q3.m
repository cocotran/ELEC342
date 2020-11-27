time=1;
[y,fs]=wavread('ELEC_364_lab_5_Audio_S.wav');
t=0:1/fs:time-1/fs;
R=(-time*fs/2:(time*fs)/2-1)/(time*fs);
y_fft=fft(y,fs);
y_fft=fftshift(y_fft);
sim('Question_3_model.mdl');
y_fft1 = fft(audio_down_sampled,fs);
y_fft1 = fftshift(y_fft1);
figure;
% create 4 row, 1 columns, and set the figure in the top left box
subplot(4,1,1);
plot(
t,y(1:length(t)));
title('First second of original soundname:id');
% create 4 row, 1 columns, and set the figure in the top right box
subplot(4,1,2);
plot(R,abs(y_fft));

title('FFT of original sound');
% create 4 row, 1 columns, and set the figure in the middle left box
subplot(4,1,3);
plot(t,audio_down_sampled(1:length(t)));

title('First second of sampled sound');
% create 4 row, 1 columns, and set the figure in the middle right box
subplot(4,1,4);
plot (R,squeeze(abs(y_fft1)));
% title of the graph
title('FFT of sampled sound');
