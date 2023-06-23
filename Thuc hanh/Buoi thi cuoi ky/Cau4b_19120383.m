% MSSV: 19120383
% Ho va ten: Huynh Tan Tho
% Cau 4b
clc
format longG
f =@(x,y) x^2 - y^2 + 0.8;
xx = 0:0.2:0.8; x0=0; y0 = -0.3;
h = xx(2:end)-xx(1:end-1);
y = zeros(1, 4);

k1 = h(1)*f(x0,y0); k2 = h(1)*f(x0+h(1)/2,y0+k1/2); k3 = h(1)*f(x0+h(1),y0-k1+2*k2);
y(1) = y0+(k1+4*k2+k3)/6;

k1 = h(2)*f(xx(1),y(1)); k2 = h(2)*f(xx(1)+h(2)/2,y(1)+k1/2); 
k3 = h(2)*f(xx(1)+h(2),y(1)-k1+2*k2); y(2) = y(1)+(k1+4*k2+k3)/6;

k1 = h(3)*f(xx(2),y(2)); k2 = h(3)*f(xx(2)+h(3)/2,y(2)+k1/2);
k3 = h(3)*f(xx(2)+h(3),y(2)-k1+2*k2); y(3) = y(2)+(k1+4*k2+k3)/6;

k1 = h(4)*f(xx(3),y(3)); k2 = h(4)*f(xx(3)+h(4)/2,y(3)+k1/2);
k3 = h(4)*f(xx(3)+h(4),y(3)-k1+2*k2); y(4) = y(3)+(k1+4*k2+k3)/6;

h = {'y0', 'y1', 'y2', 'y3', 'y4'};
data = zeros(1,length(h));
data(1,:) = [y0 y(1) y(2) y(3) y(4)];
dt = figure;
t = uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);

% Xap xi dao ham theo cong thuc 5 diem giua
df_5DG = (yy(1)-8*yy(2)+8*yy(4)-yy(5))/((xx(5)-xx(1))*3)