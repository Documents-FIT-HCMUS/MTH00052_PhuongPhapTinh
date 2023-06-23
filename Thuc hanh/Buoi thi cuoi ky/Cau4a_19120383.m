% MSSV: 19120383
% Ho va ten: Huynh Tan Tho
% Cau 4a
clc
format longG
f =@(x,y) x^2 - y^2 + 0.8;
xx = 0:0.2:0.8; y0 = -0.3;

yn = 0*xx; yn(1)=y0;
yn(2) = yn(1) + (xx(2)-xx(1))*f(xx(1),yn(1));
yn(2) = yn(1) + (xx(2)-xx(1))/2*(f(xx(1),yn(1))+f(xx(2),yn(2)));
yn(3) = yn(2) + (xx(3)-xx(2))*f(xx(2),yn(2));
yn(3) = yn(2) + (xx(3)-xx(2))/2*(f(xx(2),yn(2))+f(xx(3),yn(3)));
yn(4) = yn(3) + (xx(4)-xx(3))*f(xx(3),yn(3));
yn(4) = yn(3) + (xx(4)-xx(3))/2*(f(xx(3),yn(3))+f(xx(4),yn(4)));
yn(5) = yn(4) + (xx(5)-xx(4))*f(xx(4),yn(4));
yn(5) = yn(4) + (xx(5)-xx(4))/2*(f(xx(4),yn(4))+f(xx(5),yn(5)))

h = {'y0', 'y1', 'y2', 'y3', 'y4' };
data = zeros(1,length(h));
data(1,:) = [yn(1) yn(2) yn(3) yn(4) yn(5)];
dt = figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);

% Xap xi dao ham theo cong thuc 5 diem giua
df_5DG = (yy(1)-8*yy(2)+8*yy(4)-yy(5))/((xx(5)-xx(1))*3)