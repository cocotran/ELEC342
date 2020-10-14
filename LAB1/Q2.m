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

subplot(1,2,1);
plot(x1,Vector1,'-b');
subplot(1,2,2);
plot(x2,Vector1,'-b');

%subplot(1,2,3);
%plot(x2,Vector1,'-b');
%subplot(1,2,4);
%plot(x2,Vector2,'-b');
