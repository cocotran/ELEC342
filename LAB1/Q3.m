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
