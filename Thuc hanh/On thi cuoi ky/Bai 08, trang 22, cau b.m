% 19120383
% Huynh Tan Tho
% Bai 08, trang 22
% Cau b, phuong phap day cung
clc;
format long;
syms x
f = log(x-1) + cos(x-1);
a = 1.25; b = 1.5; k = 1; delta = 0.01;
while true
    fa = subs(f,x,a); fb = subs(f,x,b);
    c = a - (b-a)*fa/(fb-fa);
    rEc = abs((c-a)/a);
    fc = subs(f,x,c);
    if abs(fc)<delta
        disp(double(c))
        break
    end
    if (sign(fa*fc) > 0)
        a=c;
    else
        b=c;
    end
    k = k+1;
end 
