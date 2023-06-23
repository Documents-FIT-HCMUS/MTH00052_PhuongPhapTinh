clear all
clc

disp("CHUONG TRINH TINH TOAN HINH HOC")
disp("Lua chon chuc nang can su dung")
disp("1. Ve hinh vuong")
disp("2. Ve hinh tron")
disp("3. Ve hinh tam giac")
disp("4. Thoat")


while 1
    t = input('Nhap lua chon cua ban:');
    if t == 1
        canh = input('Nhap do dai canh');
        cthinhvuong(canh)
    elseif t == 2
        r = input('Nhap ban kinh');
        cthinhtron(r)
    elseif t == 3
        a = input('Nhap do dai canh 1');
        b = input('Nhap do dai canh 2');
        c = input('Nhap do dai canh 3');
        cthinhtamgiac(a,b,c)
    elseif t == 4
        break
    end
end