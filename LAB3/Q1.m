% Quang Anh Tran
% 40075748
% Question 1

n = -10:1:10;
x = zeros(1,21);
x(9:13) = 1;

subplot(2,1,1);
stem(n,x);
title('x[n]');

w = -pi():pi()/10:pi();
array = -10:10;
for i = -10:10
		sum = 0;
	for n = -10:10
		sum = sum + x(n+11) * exp(-j * w(i+11) * n)
	end
	array(i+11) = sum
end 

magnitude = abs(array);
subplot(2,1,2);
plot(w, magnitude);
title('output');

