# 6. Nhập vào một số nguyên dương n. Đếm số lượng số chẵn và lẻ trong đoạn [0, n]
Odd = Even = 0  # Odd la so le, Even la so chan 
n = int(input("Nhap vao so nguyen duong n = "))
while n <= 0:
    print("Hay nhap so nguyen duong n")
    n = int(input("Nhap vao so nguyen duong n = "))

for i in range(0, n + 1 ):
    if i % 2 == 0:
        Even += 1
    else:
        Odd +=1

print(f"So luong so chan la: {Even}")
print(f"So luong so le la: {Odd}")