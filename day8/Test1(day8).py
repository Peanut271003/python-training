# 5. Giải và biện luận phương trình hai 1 ẩn ax^2 + bx + c = 0 (ẩn x, a, b, c là 3 số cho trước)
a = eval(input("Nhap vao he so a = "))
b = eval(input("Nhap vao he so b = "))
c = eval(input("Nhap vao he so c = "))
print(f"Phuong trinh bac hai 1 an co dang: {a}x^2 + {b}x + {c} = 0")
if a == 0:
    if b == 0:
        if c == 0:
            print("phuong trinh co vo so nghiem")
        else: 
            print("Phuong trinh vo nghiem")
    else: 
        print(f"Phuong trinh co 1 nghiem duy nhat x = {-c/b}")
else:
    denta = b**2 - 4*a*c
    if denta > 0:
        x1 = (-b + denta**0.5) / (2*a)  # Return **0.5 tuc la can bac hai, vi ** tuc la mũ, mà mũ 1/2 thì là căn 
        x2 = (-b - denta**0.5) / (2*a)
        print(f"Phuong trinh co 2 nghiem x1 = {x1} & x2 = {x2}")
    elif denta == 0:
        print(f"Phuong trinh co nghiem kep: x = {-b/(2*a)} ")
    else:
        print("Phuong trinh vo nghiem")

