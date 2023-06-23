function [Xn,k] = GiaiHPT_Lap(A,C,delta)
B = -A./repmat(diag(A),1,length(A)) + eye(length(A));
G = C./diag(A);
X0 = G; k = 1; 
Xn = B*X0 + G; fX = norm(A*Xn - C);
while (abs(fX)>=delta)
    X0 = Xn;
    Xn = B*X0 + G;
    fX = norm(A*Xn - C);
    k = k+1;
end
end
