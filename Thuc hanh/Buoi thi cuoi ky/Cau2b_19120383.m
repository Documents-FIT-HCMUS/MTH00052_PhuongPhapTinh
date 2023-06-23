% MSSV: 19120383
% Ho va ten: Huynh Tan Tho
% Cau 2b
clc;
format longG;
A = [24.21 2.42 3.85; 2.31 31.49 1.52; 3.49 4.85 28.72]; C = [30.24; 40.95; 42.81];
B = -A./[diag(A) diag(A) diag(A)]+eye(3);
G = C./diag(A);
k = 1; x0 = G; xn = x0; delta = 10^-5;

h = {'k', 'x1','x2','x3','fx','abs(fx)<=delta', 'rEx'};
data = zeros(k,length(h));

while true
    xn(1) = B(1,:)*x0+G(1);
    xn(2) = B(2,1)*xn(1) + B(2,2)*x0(2) + B(2,3)*x0(3) + G(2);
    xn(3) = B(3,1)*xn(1) + B(3,2)*xn(2) + B(3,3)*x0(3) + G(3);
    rEx = norm((xn-x0)./x0);
    fx = norm(A*xn-C);
    data(k,:) = [k xn(1) xn(2) xn(3) fx abs(fx)<=delta rEx];
    
    if (abs(fx) < delta)
       disp(xn);
       disp(k);
       break;
    end
    x0 = xn;
    k = k + 1;
end
dt = figure;
t=uitable(dt,'data',data,'columnname',h,'Position',[0 0 600 400]);