[d, Fs, numBitsPerSample]=wavread('Original.wav', 44100);
[x, Fs, numBitsPerSample]=wavread('Distorted.wav', 44100);

L=2*Fs;
t=0:L-1;
subplot(211);
plot(t,d);
title('Original Signal');
subplot(212);
plot(t,x);
title('Distorted Signal');

MSE=0;
for i=1:L
MSE=MSE+(d-x).^2;
end
MSE=MSE/L;
figure;
plot(t,MSE);
title('MSE of Original vs Distorted');

mu=0.001;
N=16;
w=zeros(N,1);
for n=1:L-N
	X=x(n:N-1+n);
	y=w'*X;
	e=y-d(n);
	w=w+mu*e';
	yy(n)=y;
	E(n)=e^2;
end
figure;
Et=length(E);
plot(0:Et-1,E);
title('MSE of Original vs Recovered');
sound(yy,Fs,numBitsPerSample);

wavwrite(yy,22050,16,'Recovered.wav');
