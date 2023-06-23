% MSSV: 19120383
% Ho va ten: Huynh Tan Tho
% Cau 3b
clc;
format longG;
syms x
f = 1/exp(x^2);
I = int(f,x,0,1.2)
xx = 0:0.2:1.2;
yy = subs(f,x,xx);
I_38 = (xx(4)-xx(1))*(yy(4)+3*yy(3)+3*yy(2)+yy(1))/8 + (xx(7)-xx(4))*(yy(7)+3*yy(6)+3*yy(5)+yy(4))/8;