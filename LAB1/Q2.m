% Question 2
% Quang Anh Tran - 40075748

size = 10;
n = 5

Vector1 = zeros(1,size);
Vector1(2) = 1;
Vector1(8) = 1;

Vector2 = ones(1,size);
Vector2(1:n) = 0;

x1 = -5:4;
x2 = 0:9

subplot(2,2,1);
stem(x1,Vector1);
subplot(2,2,2);
stem(x2,Vector1);

subplot(2,2,3);
stem(x1,Vector2);
subplot(2,2,4);
stem(x2,Vector2);
