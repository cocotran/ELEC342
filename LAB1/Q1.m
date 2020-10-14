% Question 1
% Quang Anh Tran - 40075748


format long

r = 1:10;

V = (4/3)*pi*r.^3;
S = 4*pi*r.^2;
subplot(1,2,1);
plot(r,V,'-b',r,S,'-g');
xlabel('Radius');
ylabel('Volume/surface area');
title('Volume and Surface Area of a Sphere');

subplot(1,2,2)
V = r.^3;
S = 6*r.^2;
plot(r,V,'-b',r,S,'-r');
xlabel('Length of side');
ylabel('Volume/sureface area');
title('Volume and Surface Area of a Square');

