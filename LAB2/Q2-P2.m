% Question 2 Part 2
% Quang Anh Tran - 40075748


n=[0:9]; 
x=zeros(1:10);
x(1:3)=1;
y(1)=0;
 
h=(1/4).^n;
y=conv(x(1:9),h(1:9)); 
 
stem(y);
title('Output Response y[n]');
xlabel('n');
ylabel('y[n]');


