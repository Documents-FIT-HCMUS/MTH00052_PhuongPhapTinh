% 19120383
% Huynh Tan Tho
% Bai 06, trang 44
clc;
syms x; 
f = sin(x);
a=0; b=pi; I=int(f,x,0,pi);
w1 = 1; x12=-0.5774; x12= (b-a)*x12/2+(a+b)/2;
w2 = 1; x22= 0.5774; x22= (b-a)*x22/2+(a+b)/2;
I1=(b-a)/2*(w1*subs(f,x,x12)+w2*subs(f,x,x22));
rEI1=abs((I-I1)/I);

w1 = 0.5556; x13=-0.7746; x13= (b-a)*x13/2+(a+b)/2;
w2 = 0.8889; x23= 0; x23= (b-a)*x23/2+(a+b)/2;
w3 = 0.5556; x33= 0.7746; x33= (b-a)*x33/2+(a+b)/2;
I2=(b-a)/2*(w1*subs(f,x,x13)+w2*subs(f,x,x23)+w3*subs(f,x,x33));
rEI2=abs((I-I2)/I);

double(I)
double(I1)
double(I2)