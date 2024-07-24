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
