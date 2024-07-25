# Baiftap
# 1. In các số từ 1 đến 100 trên cùng một hàng 
for i in range(1, 101):
    print(i, end=' ')

# 2. In 100 lần dòng chữ "Hello World!"
for _ in range(100):
    print("Hello World!")


# 3. In ra các số chia hết cho 3 trong đoạn [1, 1000]
for i in range(1, 1001):
    if i % 3 == 0:
        print(i, end=' ')


# 4. Đếm số lượng số nguyên tố trong [1, 100]
count = 0
for n in range(2, 101):
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0: 
            break
    else:
        count += 1 

print(count)
# Return 25 


# 5. Nhập vào một số nguyên dương n tính tổng các chữ của n, Ví dụ: n = 4312 => S = 4 + 3 + 1 + 2 = 10 
n = int(input("Nhap vao so nguyen duong n = "))
while n < 0:
    print("Hay nhap so nguyen duong n")
    n = int(input("Nhap vao so nguyen duong n = "))

S = 0
while n > 0:
    last = n % 10
    S += last 
    n //= 10

print(S)
# ta nhap 4567
# Return la 22
# Ta coi giai thich o Test2(day9).py




# 6. Nhập vào một số nguyên dương n. Đếm số lượng số chẵn và lẻ trong đoạn [0, n]
Odd = Even = 0  # Odd la so le, Even la so chan 
n = int(input("Nhap vao so nguyen duong n = "))
while n <= 0:
    print("Hay nhap vao so nguyen duong n")
    n = int(input("Nhap vao so nguyen duong n = "))

for i in range(0, n + 1 ):
    if i % 2 == 0:
        Even += 1
    else:
        Odd +=1

print(f"So luong so chan la: {Even}")
print(f"So luong so le la: {Odd}")

