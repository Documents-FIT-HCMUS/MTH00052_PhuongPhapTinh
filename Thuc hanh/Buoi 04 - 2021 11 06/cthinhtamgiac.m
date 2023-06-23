function [] = cthinhtamgiac(a,b,c)
p = (a + b + c)/2;
disp("Dien tich hinh tam giac:")
disp(sqrt(p*(p-a)*(p-b)*(p-c)))
disp("Chu vi hinh tam giac:")
disp(a + b + c)
end