% 19120383
% Huynh Tan Tho
% Bai 08, trang 18
% Cau b, phuong phap lap
clc;
format long;
syms x
f = log(x-1) + cos(x-1);
phi = exp(-cos(x-1))+1;
x0 = 1.3; k = 1; del_f = 0.001;

while (true)
    xn = subs(phi, x, x0);
    rExn = abs((xn-x0)/x0);
    fxn = subs(f,x,xn);
    if (abs(fxn) < del_f)
        disp(round(xn, 6))
        break;
    end
    x0 = xn;
    k = k + 1;
end