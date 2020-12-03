
% Part 1
A = input("Enter value for A: ");
n = [0:10];
x = A * n;

stem(n, x);
xlabel('n');
ylabel('Signal x[n]');
title('Signal x[n] over interval of n')


% Part 2
B = input("Enter value for B: ");
C = input("Enter value for C: ");
y = (B * x) + C

subplot(1, 2, 1);
stem(n, x, '-b');
xlabel('n');
ylabel('x[n]');
title('Signal x[n] over interval of n')

subplot(1, 2, 2);
stem(x, y, '-r');
xlabel('x[n]');
ylabel('y[n]');
title('Output response y[n] over input signal x[n]')


% Part 3
x_shifted = x + 2;
y_shifted = (B * x_shifted) + C

stem(x_shifted, y_shifted)
xlabel('x_shifted');
ylabel('y_shifted');
title('Output response y_shifted over input signal x_shifted')


% Part 4
y_hand_shift = y + 2;
stem(x, y, '-r');
xlabel('x[n]');
ylabel('y_hand_shift');
title('Output response y_hand_shift over input signal x[n]')


% Part 5
if (y_hand_shift == y_shifted)
	disp('The signals are equal')
else
	disp('The signals are not equal')
end








