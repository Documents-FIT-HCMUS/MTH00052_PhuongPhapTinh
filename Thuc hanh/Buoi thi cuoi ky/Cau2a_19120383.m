% MSSV: 19120383
% Ho va ten: Huynh Tan Tho
% Cau 2a
clc;
format longG;
syms x
f = 2^x - 4*x;
df = diff(f,x);
x0 = 1; k = 1; delta = 10^-5;

h = {'k','x0','xk','fxk','abs(fxk)<=delta'};
data = zeros(k,length(h));

while (true)
    xk = x0 - subs(f,x,x0)/subs(df,x,x0);
    xk = double(xk);
    rExn = abs((xk-x0)/x0);
    fxk = subs(f,x,xk);
    data(k,:) = [k x0 xk fxk abs(fxk)<=delta];
    
    if abs(fxk)<delta
        disp(xk)
        break
    end
    x0 = xk;
    k = k+1;
end
dt = figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);
disp(t);