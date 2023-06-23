function [yc] = XapXiDaThucTongQuat(xx,yy,xc)
n = length(xx);
X = zeros(n,n);
for i=1:n
    for j=1:n
        X(i,j)=xx(i)^(j-1);
    end
end

Y = yy';

A=inv(X)*Y;
syms x;
P=0;
for i=1:n
    P=P+A(i)*x^(i-1);
end
yc = subs(P,x,xc);
yc = double(yc);
end
