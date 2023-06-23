% 19120383 - Huynh Tan Tho
% Bai 2

clear all;
clc;
format long
syms x
E = 50000; I = 30000; L = 600; w0 = 2.5;
w = (w0/(120*E*I*L))*(-x^5 + 2*L^2*x^3 - x*L^4);
dw = diff(w,x);
xn = solve(dw);

max = subs(w,x,0);
if subs(w,x,L) > max 
    max = subs(w,x,L);
end
if subs(w,x,xn(1)) > max
    max = subs(w,x,xn(1));
end
if subs(w,x,xn(2)) > max
    max = subs(w,x,xn(2));
end
if subs(w,x,xn(3)) > max
    max = subs(w,x,xn(3));
end
if subs(w,x,xn(4)) > max
    max = subs(w,x,xn(4));
end
max
