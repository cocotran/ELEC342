% Question 3
% Quang Anh Tran - 40075748

% Part a
n=[0:10];
x1= (exp(-2*(abs(n))).*(sin(2.*pi./36)*n));
x2=(exp(-2*(abs(-1.*n))).*(sin(2.*pi/36)*(-1*n)));
subplot(2,2,1); 
stem(x1, 'b');
xlabel('n'); 
ylabel('x[n]');
title('Signal');
 
subplot(2,2,2);
stem(x2, 'b');
xlabel('n');
ylabel('x[-n]');
title('Mirror Image');

evenpart = 1./2*(x1+x2); 
oddpart = 1./2*(x1-x2); 
 
subplot(2,2,3);
stem (evenpart, 'r');
title ('Even Component'); 
 
subplot (2,2,4);
stem (oddpart,'g'); 
title ('Odd Component');

% Part b
n=[-5:5];
x1= (-1).^(n-1); 
x2=(-1).^((-1.*n)-1);
 
subplot(2,2,1) 
stem(x1, 'b'); 
xlabel('n');
ylabel('x[n]');
title('Signal');
 
subplot(2,2,2);
stem(x2, 'b');
xlabel('n');
ylabel('x[-n]');
title('Mirror Image');
 
evenpart = 1./2*(x1+x2); 
oddpart = 1./2*(x1-x2); 
 
subplot(2,2,3);
stem (evenpart, 'r');
title ('Even Component');
 
subplot (2,2,4);
stem (oddpart,'g'); 
title ('Odd Component');


 

 
