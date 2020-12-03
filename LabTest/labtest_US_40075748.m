% Quang Anh Tran
% ID 40075748

clc 
clear all
close all

a = input("Enter the value of a: ");

array1 = [1:11];
array2 = [1:11];

for i=2:11
	array1(i) = a^(i-1);
end

for i=1:11
	if i == 11
		array2(i) = abs(a^11 - array1(i));
	else	
		array2(i) = abs(array1(i+1) - array1(i));
	end
end

sum_of_array = sum(array1);
sum_of_series = 1 / (1 - a);

n = [0:10];

disp('Array of the series: ');
disp(array1);

disp('Array of the errors: ');
disp(array2);

disp('The sum of the array: ');
disp(sum_of_array);

disp('The sum of the series: ');
disp(sum_of_series);

subplot(1, 2, 1);
stem(n, array1, '-b');
xlabel('n');
ylabel('Value');
title('Terms of the series')

subplot(1, 2, 2);
stem(n, array2, '-r');
xlabel('n');
ylabel('Error');
title('Error between each term')