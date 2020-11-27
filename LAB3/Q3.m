// % Quang Anh Tran	
// % 40075748
// % Question 3

// n = -10:10;
// x = zeros(1,21);
// x(9:13) = 1;

// x_fft = fft(x);
// x_ifft = ifft(x_fft);

// subplot(2,1,1);
// stem(n,x,'blue');
// title('x[n]');

// subplot(2,1,2);
// stem(n,x_ifft);
// title('new x[n]');

x1=zeros(1,21);
x1(9:13)=1;
n=[-10:10];
subplot(3,1,1);
stem(n,x1);
ylabel('x[n]');
xlabel('n');
title('A rectangular pulse');
t = 0.3;
w = 0:t:2*pi;
fft1 = fft(x1);
magnitude_fft1=abs(fft1);
subplot(3,1,2);
plot(w,magnitude_fft1);
ylabel('X(w)');
xlabel('w');
title('Fourier transform with fft');
inv_fft1 = ifft(fft1);
magnitude_inv_fft1=abs(inv_fft1);
subplot(3,1,3);
stem(n,magnitude_inv_fft1);
subplot(3,1,3);
ylabel('x[n]');
xlabel('n');
title('inverse of the FT of the rectangular pulse');

x_shifted(1,13) = 0;
for index = (3:13)
	x_shifted(index) = x_n(index-2);
end
subplot(3,2,3);
n_domain = [0:12];
stem(n_domain,x_shifted);
xlabel('n');
ylabel('x_shifted[n]');
title('Shifted Input')