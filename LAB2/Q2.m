% Question 2 Part 1


n = [0:10];
% Part a
X1 = sin( (2*pi /10 ) * n );
Y1 = 2* X1;

X2 = cos( (2*pi /10 ) * n );
Y2 = 2* X2;

X3 = X1 + X2;
Y3 = 2* X3;

Y4 = Y1 + Y2;

if (Y3 == Y4)
  disp('Linear');
else
  disp('Not Linear');
end

subplot(1,4,1);
stem(Y1, n, '-b');

subplot(1,4,2);
stem(Y2, n, '-r');
subplot(1,4,3);
stem(Y3, n, '-g');
subplot(1,4,4);
stem(Y4, n, '-c');


% Part b
% Part i
x = [0,1];
y1 = x.^2
x2 = 2*x1;
y2 = x2.^2;
x3 = x1 + x2;
y3 = x3.^2;
if(y3 == (y1+y2))
disp( ’Outputs are consistent with a linear system’)
else
disp( ’System is not linear’)
end

x5 = [2:10];
x6 = 2.*x5;
x7 = x5+x6;
 
y5 = x5.^2;
y6 = x6.^2;
y7 = x7.^2;
if ( y7 == ( y5 + y6 ) )
disp( ’Outputs are consistent with a linear system’)
else
disp( ’System is not linear’)
end

% Part ii
smalln=[0,1];
largen =[2:10];
x1=smalln; 
 
x1= smalln;
x2= 2.*x1;
x3=x1+x2; 
 
x5=largen; 
x6= 2.*x5; 
x7= x5+x6; 
 
y1=(x1.*2+dirac(smalln));
y2=(x2.*2+dirac(smalln));
y3=(x3.*2+dirac(smalln));
y4=y1+y2;
 
y5=(x5.*2+dirac(largen));
y6=(x6.*2+dirac(largen));
y7=(x7.*2+dirac(largen));
y8=y5+y6;
if ( y3 == y4)
disp( ’Outputs are consistent with a linear system’)
else
disp( ’System is not linear’)
end
if ( y7 == y8)
disp( ’Outputs are consistent with a linear system’)
else
disp( ’System is not linear’)
end



