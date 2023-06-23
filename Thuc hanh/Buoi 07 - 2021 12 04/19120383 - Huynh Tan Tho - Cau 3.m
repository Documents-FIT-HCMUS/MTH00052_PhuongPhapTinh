% 19120383 - Huỳnh Tấn Thọ
% Thực hành PPT Ca 2, kiểm tra ngày 04/12/2021
% Câu 3
clc;
syms x a b
xx = [ 1; 1; 2; 3; 3; 4; 5];
yy = [ 4.12; 4.18; 6.23; 8.34; 8.38; 12.13; 18.32];
N=length(xx); X= sum(xx); Y= sum(yy);
XX= sum(xx.*xx); XY= sum(xx.*yy);
[a,b]=solve(XX*a + X*b == XY, X*a + N*b == Y)
R=a*x+b
fplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');
xlim([xx(1) xx(end)])