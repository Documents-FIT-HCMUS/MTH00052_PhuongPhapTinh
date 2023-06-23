function [Xn,k] = GiaiHPT_Seidel(A,C,delta)
B=-A./repmat(diag(A),1,length(A))+eye(length(A));
G=C./diag(A);
X0=G;k=1;
Xn = X0;
for i=1:length(X0)
    Xn(i) = B(i,:)*X0+G(i);
    X0(i) = Xn(i);
end
fX = norm(A*Xn - C);
while (abs(fX)>=delta)
    X0 = Xn;
    for i=1:length(X0)
        Xn(i) = B(i,:)*X0+G(i);
        X0(i) = Xn(i);
    end
    fX = norm(A*Xn - C);
    k=k+1;
end
end
