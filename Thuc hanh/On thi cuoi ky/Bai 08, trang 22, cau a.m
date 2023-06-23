% 19120383
% Huynh Tan Tho
% Bai 08, trang 22
% Cau a, phuong phap tiep tuyen
clc
syms x
f = exp(x) + 2^(-x) + 2*cos(x) - 6;
df = diff(f,x);
x0 = 1.5; k = 1; delta = 0.001;
while (true)
    xk = x0 - subs(f,x,x0)/subs(df,x,x0);
    xk = double(xk);
    rExn = abs((xk-x0)/x0);
    fxk = subs(f,x,xk);
    if abs(fxk)<delta
        disp(xk)
        break
    end
    x0 = xk;
    k = k+1;
end
