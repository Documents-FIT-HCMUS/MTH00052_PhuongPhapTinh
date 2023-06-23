% 19120383
% Huynh Tan Tho
% Bai 04, trang 49
clc;
f =@(x,y) 2*x^2 + y;
a = 0; b = 0.5; y0 = 1;
xx = a:0.1:b;

y1 = 0*xx; y1(1)=y0;
y1(2) = y1(1) + (xx(2)-xx(1))*f(xx(1),y1(1));
y1(3) = y1(2) + (xx(3)-xx(2))*f(xx(2),y1(2));
y1(4) = y1(3) + (xx(4)-xx(3))*f(xx(3),y1(3));
y1(5) = y1(4) + (xx(5)-xx(4))*f(xx(4),y1(4));
y1(6) = y1(5) + (xx(6)-xx(5))*f(xx(5),y1(5));

y2 = 0*xx; y2(1)=y0;
y2(2) = y2(1) + (xx(2)-xx(1))*f(xx(1),y2(1));
y2(2) = y2(1) + (xx(2)-xx(1))/2*(f(xx(1),y2(1))+f(xx(2),y2(2)));
y2(3) = y2(2) + (xx(3)-xx(2))*f(xx(2),y2(2));
y2(3) = y2(2) + (xx(3)-xx(2))/2*(f(xx(2),y2(2))+f(xx(3),y2(3)));
y2(4) = y2(3) + (xx(4)-xx(3))*f(xx(3),y2(3));
y2(4) = y2(3) + (xx(4)-xx(3))/2*(f(xx(3),y2(3))+f(xx(4),y2(4)));
y2(5) = y2(4) + (xx(5)-xx(4))*f(xx(4),y2(4));
y2(5) = y2(4) + (xx(5)-xx(4))/2*(f(xx(4),y2(4))+f(xx(5),y2(5)));
y2(6) = y2(5) + (xx(6)-xx(5))*f(xx(5),y2(5));
y2(6) = y2(5) + (xx(6)-xx(5))/2*(f(xx(5),y2(5))+f(xx(6),y2(6)));

h = {'0','0.1','0.2','0.3','0.4','0.5'};
data = zeros(2,length(h));
data(1,:) = [y1(1) y1(2) y1(3) y1(4) y1(5) y1(6)];
data(2,:) = [y2(1) y2(2) y2(3) y2(4) y2(5) y2(6)];
dt = figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);
disp(t);