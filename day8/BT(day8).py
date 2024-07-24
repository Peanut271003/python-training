# Bai tap 
# 1. Nhập vào một số nguyên n. Kiểm tra và in ra n là số chẵn hay lẻ
n = int(input("n = "))
if n % 2 == 0:
    print("n la so chan")
else: 
    print("n la so le")

""" print("n la so chan" if n % 2 == 0 else "n la so le") """
    

# 2. Nhập vào một năm bất kì. Kiểm tra xem năm đó có phải là năm nhuận hay không?
year = int(input("year = "))
if year % 4 == 0:
    print(f"{year} la nam nhuan")
else:
    print(f"{year} la nam khong nhuan")

""" print("nam nhuan" if year % 4 == 0 else "nam khong nhuan") """


# 3. Nhập hai số a và b từ bàn phím. In ra số lớn nhất và nhỏ nhất trong 2 số
a = eval(input("Nhap vao so a = "))
b = eval(input("Nhap vao so b = "))
if a > b: 
    print(f"So lon nhat la {a}, So be nhat la {b}")
else: 
    print(f"So lon nhat la {b}, So be nhat la {a}")




# 4. Giải và biện luận phương trình bặc nhất 1 ẩn ax + b = 0 (ẩn x, a và b là 2 số cho trước)
""" a = eval(input("Nhap vao a = "))
b = eval(input("Nhap vao b = "))
# ta co pt ax + b = 0
print(f"Phuong trinh bac nhat {a}x + {b} = 0")
if a == 0:
    if b == 0:
        print("Phuong trinh co vo so nghiem") 
    else:
        print("Phuong trinh vo nghiem")
else:
    print("Phuong trinh co 1 nghiem duy nhat x =", -b/a) 
 """
# Cach 2
a, b = map(eval, input("Nhap vao gia tri cua a va b: ").split())
print(f"bieu thuc phuong trinh bac nhat: {a}x + {b} = 0")
if a == 0:
    if b == 0:
        print("Phuong trinh co vo so nghiem")
    else:
        print("Phuong trinh vo nghiem")
else:
    print(f"Phuong trinh co 1 nghiem duy nhat x = {-b/a}")

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

# Cach 2
a, b, c = map(eval, input("Nhap vao gia tri cua a va b va c: ").split())
print(f"Phuong trinh bac hai 1 an co dang {a}x^2 + {b}x + {c} = 0")
if a == 0:
    if b == 0:
        if c == 0:
            print("Phuong trinh co vo so nghiem")
        else:
            print("Phuong trinh vo nghiem")
    else:
        print(f"Phuong trinh co 1 nghiem x = {-c/b}")
else:
    denta = b**2 -4*a*c
    if denta > 0:
        x1 = (-b + denta**0.5) / (2*a)
        x2 = (-b - denta**0.5) / (2*a)
        print(f"Phuong trinh co 2 nghiem: x1 = {x1} & x2 = {x2}")
    elif denta == 0:
        print(f"Phuong trinh co 1 nghiem kep: x = {-b/(2*a)}")
    else:
        print("Phuong trinh vo nghiem")









