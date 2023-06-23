% 19120383 - Huỳnh Tấn Thọ
% Thực hành PPT Ca 2, kiểm tra ngày 04/12/2021
% Câu 2
clc;
syms x
xx = [ 0; 2; 5];
yy = [ 1; 1; 4];
x1 = 3;
h = xx(2:end)-xx(1:end-1);
VT = [ 1 0 0; h(1)/6 (h(1)+h(2))/3 h(2)/6; 0 0 1];
VP = [0; (yy(3)-yy(2))/h(2) - (yy(2)-yy(1))/h(1); 0];
m = inv(VT)*VP;

M = yy(1:end-1) - m(1:end-1).*h(1:end).^2/6;
N = yy(2:end) - m(2:end).*h(1:end).^2/6;

S1 = m(2)*(x-xx(1))^3/6/h(1) + m(1)*(xx(2)-x)^3/6/h(1) + M(1)*(xx(2)-x)/h(1) + N(1)*(x-xx(1))/h(1);
S2 = m(3)*(x-xx(2))^3/6/h(2) + m(2)*(xx(3)-x)^3/6/h(2) + M(2)*(xx(3)-x)/h(2) + N(2)*(x-xx(2))/h(2);
y1 = subs(S2,x,x1)
hold on;
plot(xx,yy,'bo');
fplot(S1,[xx(1) xx(2)]);
fplot(S2,[xx(2) xx(3)]); 
axis([xx(1) xx(end) min(yy) max(yy)])