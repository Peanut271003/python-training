"""
+ Vong lap for - Lặp với số lần xác định
+ Vong lap while - Lặp với số lần không xác định
+ Vong lap trong vong lap
"""

""" 
+ break: thoat ra khoi vong lap chua no
+ continue: bo qua cac cau lenh ben duoi no va chuyen sang mot lan lap moi
+ Luu y break voi continue chi hay su dung cho vong lap for chu khong su dung cho vong lap while
"""


# Yeu cau in ra 5 lan hello
# Bth ta lam la print 5 lan
print("Hello World")
print("Hello World")
print("Hello World")
print("Hello World")
print("Hello World")
# Return thi no ra 5 lan Hello World

# Vay ta dung vong lap for de toi uu viec nay 
for _ in range(5):  # 5 la so lan lap lai
        print("I am Peanut")
# Return: 
    # I am Peanut
    # I am Peanut
    # I am Peanut
    # I am Peanut
    # I am Peanut

# Luu y ham range() -> chi nhan nhung so integer(so nguyen)

# vd1
for i in range(1, 21):
    if i % 2 == 0:
          print(i, end=' ')
# Return: 2 4 6 8 10 12 14 16 18 20

for i in range(1, 21):
    if i % 2 == 0:
          print(i)
# Return: 
# 2
# 4
# 6
# 8
# 10
# 12
# 14
# 16
# 18
# 20
# Qua đó ta thây đc muốn làm cho nó chạy trên cùng 1 dòng thì ta cần thêm thằng end = ' '



# Vong lap while 
""" s = input('> ')

while s != 'q':
    print("Hello Peanut") """
# Luu y neu ma ta run doan code nay ma ta nhap gia tri la a thi code nay no chay vo tan, khong dung lai dc
# Vay thi ta phai lam nhu sau:
s = input('> ')

while s != 'q':
    print("Hello Peanut")
    s = input('> ')
# Ta phai them cai dong nay vao de khi ta nhap a thi no in ra Hello xong sau do ta lai nhap q thi no ket thuc


# Vong lap trong vong lap
# vd2
for i in range(5):  # range(5) tuc la start = 0, stop = 5, step = 1 va stop = 5 thi no chi lay den 4, khong lay gia tri 5
     for j in range(3): # range(3) tuc la start = 0, stop = 3, step = 1
        print(i, j, sep= " - ")
# Return:
# 0 - 0
# 0 - 1
# 0 - 2
# 1 - 0
# 1 - 1
# 1 - 2
# 2 - 0
# 2 - 1
# 2 - 2
# 3 - 0
# 3 - 1
# 3 - 2
# 4 - 0
# 4 - 1
# 4 - 2



### VD ve break trong vong lap for
# vd3
for i in range(1, 21):
    if i > 5:
        break  # break la thoat ra khoi vong lap chua no

    print(i, end=' ')
# Return: 1 2 3 4 5 
# Ta co the thấy là nếu i = 6, tức là lớn hơn 5 thì nó sẽ chạy break, mà khi chạy break thì nó sẽ thoát ra khỏi vòng lặp chứa nó 
# nên là nó chỉ in ra giá trị 1 2 3 4 5 

# vd4 
for i in range(1, 21):
    if i % 2 == 0: 
        continue

    print(i, end=' ')
# Return: 1 3 5 7 9 11 13 15 17 19  # Day la nhung so khong chia het cho 2
# Ở đay ta có thể hiểu là khi i = 1, 1 chia cho 2 không = 0 nên nó bỏ qua dòng continue và nó đến dòng print(i) -> sau đó nó in ra giá trị của i = 1
# Xong sau đó nó chạy i = 2, thì 2 % 2 thì bằng 0 (True) -> no sẽ chạy thằng continue mà thằng continue có nghĩa là nó bỏ qua các câu lệnh bên dưới nó
# và chuyển sang một lần lặp mới nên là khi i = 2 nó sẽ bỏ qua dòng print() và nhảy qua i = 3 rồi i = 3 cũng như i = 1, rồi cứ thế lặp lại cho đén khi i = 20

# vd5
for i in range(1, 21):
    if i % 2 == 0:
        break

    print(i, end=' ')
# Return: 1
# Ta có thể hiểu là i = 1(start) rồi 1 % 2 khong = 0 (False) -> nen nó chạy print() thì in ra 1, sau đó nó chạy lại i = 2 vi step mặc định là 1, thì 2 % 2 bằng 0( True ) -> sau đó nó chạy break rồi kết thúc chương trình. Vậy giá trị ta nhận đc khi run là 1 bởi vì break có nghĩa là thoát ra khỏi cái vòng lặp chứa nó.

""" ### Ta có 1 vd hay về for else Ta có thể sang phần Test(day9) để coi, bởi vì bên này chạy quá nhiều mới đến đc hàm này

# TH1: Khi for else có break 
# TH2: Khi for else không có break  """





