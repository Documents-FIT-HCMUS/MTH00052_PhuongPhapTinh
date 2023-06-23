function [xn,k] = GPT_TT(f,x0,delta)
syms x;
df = diff(f,x);
k=1;
h = {'k','x0','xn','fx','abs(fx)<=delta'};
data = zeros(k,length(h));
xn=x0-subs(f,x,x0)/subs(df,x,x0);
xn=double(xn);
fx = subs(f,x,xn);
data(k,:) = [k x0 xn fx abs(fx)<=delta];
while (abs(fx)>=delta)
    x0=xn;
    xn=x0-subs(f,x,x0)/subs(df,x,x0);
    xn=double(xn);
    fx = subs(f,x,xn);
    plot(xn,fx, 'ro')
    axis([-5 5 -5 5])
    hold on
    k=k+1;
    data(k,:) = [k x0 xn fx abs(fx)<=delta];
end
dt = figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);
disp(t);
end
