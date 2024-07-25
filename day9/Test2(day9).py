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

print(f"Tổng các chữ số của n: {S}")
# Khi ta nhập n = 4567
# Return: Tổng các chữ số của n: 22


# Ta có thể giải thích như sau:
# Đầu tiên nếu ta nhập n = một số âm thì nó sẽ print() ra dòng lệnh Hãy nhập số nguyên dương, sau đó ta nhập
# n = 1 sô nguyên dương thì kết thúc vòng lặp while, sau đó nó chạy đến S = 0 ròi nó xét điều kiện n > 0, 
# sau đó tính đc last = n mình nhập chia cho 10 mà lấy phần dư đó, ta ở đây lấy ví dụ n = 234
"""  Thì lúc này nó xét n = 234 >0(True), rồi thì last = 234 % 10 thì last = 4 vì 234 % 10 = 23,4 tức 
là đc 23 dư 4 (% là lấy số dư ) -> S = 0 + 4 = 4, sau đó n = 234 // 10 = 23,4 nhưng lúc này do // là ta 
lấy phần nguyên(int) nên n = 23; sau đó lại xét n = 23 >0(True), rồi last (lúc này) = 23 % 10 = 3 
-> S = 4 + 3 = 7, sau đó n = 23 // 10 = 2,3 (// là chia lấy phân nguyên int) => n = 2 xong sau đó lại xét 
n = 2 >0(True), rồi last 2 % 10 = 0,2 dư 2 nên last = 2, --> S = 7 + 2 = 9, sau đó n = 2 // 10 = 0,2 
=> n = 0; sau đó lại xet n = 0 >0(False) nên nó kết thúc vòng lặp while và chạy dòng print(f"Tổng các chữ số của n: {S}")
thì khi đó nó in ra Tổng các chữ số của n: 9
"""

print(5 % 7)  # Return 5  tức là 5 chia cho 7 dư 5
print(3 % 14) # Return 3  tức là 3 chia cho 12 dư 3
