% Question 3
% Quang Anh Tran - 40075748

format long;

n = [0:31];
N = 1024;
x = cos( (2*pi)/N * n);
stem(n,x);

n = [0:31];
N = 16;
x = cos( (2*pi)/N * n) -cos( (2*pi)/N * (n+1024));
stem(n,x);

n = [0:31];
N = 16;
x = cos( (2*3.14)/N * n) -cos( (2*3.14)/N * (n+1024));
stem(n,x);

n = [0:7];
N = 4;
x1 = cos(pi/4*n+pi/3);
x2 = cos((9*pi)/4.*n+pi/3);
subplot(2,1,1);
stem(n,x1);
title('x1 = cos(pi/4* n + pi/3');
hold on;
subplot(2,1,2);
stem(n,x1);
title('x2 = cos(9*pi/4.*n + pi/3');

