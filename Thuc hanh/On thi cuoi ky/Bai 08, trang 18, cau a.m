% 19120383
% Huynh Tan Tho
% Bai 08, trang 18
% Cau a, phuong phap chia doi
clc;
format long;
syms x
f = exp(x) + 2^(-x) + 2*cos(x) - 6;
a = 1; b = 2; k = 1; del_f = 0.001;
fa = subs(f, x, a); fb = subs(f, x, b);

while (true)
    c = (a+b)/2; rEc = abs((a-c)/c); fc = subs(f,x,c);
    if (abs(fc) < del_f)
        disp(double(c))
        break;
    end
    dau = sign(fa*fc);
    if (dau > 0) 
        a = c;
    end
    if (dau < 0) 
        b = c;
    end
    k = k + 1;
end