function [yc] = XapXiDaThucLagrange(xx,yy,xc,isPlot)
syms x;
n=length(xx); L=0;
for i=1:n
    Tu = 1;
    Mau = 1;
    for j=1:n
        if i~=j
            Tu = Tu*(x-xx(j));
            Mau = Mau*(xx(i)-xx(j));
            
        end
    end
    L = L + (Tu/Mau)*yy(i);
end

yc = subs(L,x,xc);
yc = double(yc);
if isPlot==1
    fplot(L,[xx(1) xx(end)]);
    hold on ;
    plot(xx,yy,'bo');
end
end
