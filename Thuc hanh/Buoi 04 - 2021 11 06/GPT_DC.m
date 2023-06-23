function [c,k] = GPT_DC(f,a,b,delta)
syms x;
c = a-subs(f,x,a)*(b-a)/(subs(f,x,b)-subs(f,x,a));
fc = subs(f,x,c);
k = 1;
h = {'k','a','b','c','fc','abs(fc)<=delta'};
data = zeros(k,length(h));
data(k,:) = [k a b c fc abs(fc)<=delta];
while (abs(fc)>delta)
    dau = subs(f,x,a)*subs(f,x,c);
    if (dau>0)
        a=c;
    else
        b=c;
    end
    c = a-subs(f,x,a)*(b-a)/(subs(f,x,b)-subs(f,x,a));
    c = double(c);
    fc = subs(f,x,c);
    plot(c,fc, 'ro')
    hold on
    k=k+1;
    data(k,:) = [k a b c fc abs(fc)<=delta];
end
dt=figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);
disp(t);
end
