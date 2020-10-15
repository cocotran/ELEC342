% Question 1 Part 2
% Quang Anh Tran - 40075748

n = [0:9];
 
x=zeros(1:10); 
x(1:3)=1;
y=zeros(1:10);
 
y(1)=0;
for (i=2:10);
    y(i)=x(i)+((1/4).*y(i-1));
end 
 
stem (n,y);
xlabel('n'); 
ylabel('y[n]'); 
title('Output Response y[n]');

