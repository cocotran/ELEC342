% Question 1 Part 1

% Part a
n = [0:9];
X = n;
Y = X.^2.*n;
energyX = X.^2;
totalEX = 0;
for index = energyX
  totalEX = totalEX + index;
end


energyY = Y.^2;
totalEY = 0;
for index = energyY
  totalEY = totalEY + index;
end

#disp(X);
disp(Y);
disp(totalEX);
disp(totalEY);


% Part b
Xb =  sin( (2*pi)/10 * n);
disp(Xb);
