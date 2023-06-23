clear all; clc;
% MSSV: 19120383
% Bai 09 cau a
% Input la so can tinh gan dung (x) va so luong so thap phan (n)
% Output la ket qua tinh gan dung (result)
% Bai 09 cau b
bai09b(0.6454938232932,4)
% Bai 09 cau c
bai09c(0.6454938232932,4)

% Bai 11 cau a
% Input la so chinh xac (p_e), so gan dung (p_t) va sai so tuong doi (rEp)
% Output la dong chu 'Dung' hoac 'Sai'
% Bai 11 cau c
bai11c(138, 135, 0.03)
bai11c(43.789, 42.5, 0.05)

% Bai 13
syms x y;
u_1 = log(x^2+2*y);
[gtlt,ssgh1,ssgh2] = bai13d(u_1, x, y, 1.976, 0.532)

u_2 = y*exp(x) - x^2
[gtlt,ssgh1,ssgh2] = bai13d(u_2, x, y, 1.675, 1.073)

u_3 = x*tan(y) + (x+y)^2
[gtlt,ssgh1,ssgh2] = bai13d(u_3, x, y, -1.395, 1.643)
