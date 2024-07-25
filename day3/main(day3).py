# Operators (toán tử)

# + - * / // ** %  (toan tu toan hoc)
print(1 + 2)
print(1 - 2)
print(1 * 2)
print(3 / 2) # 3//2 = 1.5 - float   nay ra so thuc
print(3 // 2) # 3//2 = 1 - int  nay ra so nguyen 
print(5 ** 2 ) # 25  day la luy thua
print(3 % 2) # 1 lay phan du 
print(7 % 4) # 3 lay phan du la 7 chia 4 du 3

# >, <, >=, <=, ==, != (toan tu so sanh)
# ket qua tra ve la bool - True/False
print(1<2) # True
print(1>2) # False
print( 3 == 3.0) # True
print('a' != 'a') #False != nghia la khac
print('a' != 'b') #True 

# and or not (toan tu logic)
# 1 > 2 and 2 > 3
print(True and True) # True
print(True and False) # False
print(False and False) # False sẽ trả về giá thị False thứ 2
# Ta nhan Ctrl + Shift + L để bôi đen các từ giống nhau
# Sau khi ta Ctrl + Shift + L thì nó sẽ bôi đen các từ giống nhau sau đó ta dùng 
# Ctrl + D để chọn thay đổi giá trị đó
print(True or True) # True
print(True or False) # True
print(False or False) # False trả về giá trị False đầu tiên
print(False or True) # True
print(not True) # False
print(not False) # True
print(bool(0)) # False
print(bool(1)) # True
# print(1 and 2) # 2
# print(1 and 0) # 0
# khi ta muon cmt de dong do khong chay ta dung Ctrl + / 
# khi mo cmt thi click vao dong do roi Ctrl + /
print(0 or 2) # 2 do bool(0) la False nen no tra ve gia tri thu 2 la 2
print(1 or 2) # 1
print( not 0) # True
print( not 1) # False

# falsy: 0, 0.0, 0j, None: no value
# list: []
# set: set()
# dict: {}
# tuple: ()
# bool(falsy) = False
print(bool(0)) # False
print(bool(0.0)) # False
print(bool(0j)) # False
print(bool([])) # False
print(bool({})) # False
print(bool(())) # False
print(bool("")) # False # '' = "" - emty string (chuoi trong)

# 1 > 2
x = 1
y = 2
print(x > y) # 1 > 2 False


# +=, -=, *=, /=, //=, %=, **= (toan tu gan bang )
x = 5
x = x + 5
print("x =", x)
# hoac ta co the viet 
x = 5
x += 5 # x = x + 5
print("x =", x)

x = 5
x += 5 #10

x -= 9 # 1   (x = x - 9)

x *= 12 # x = x *12

print("x =", x)

print( .5 > 1) # 0.5 > 1 False 
print( 1 / 0) # khong chia duoc

# // - int vs / - float
age = 30 
age_as_str = str(age)
# I am 30 
print( 'I am ' + age_as_str)
# hoac ta co the viet nhu sau
print("I am "+ str(age))

# f-strings
age = 30
print(f"I am {age}") #  đây là cách dùng để nó tự động chuyển về giá trị str ta khỏi cần phải chuyển bằng tay 
print("I am {}".format(age)) #  đây là cách thứ 2 để viết ta dùng hàm format

# vd viet hoa chuoi sau
s = "hello world"
s = s.upper()
print(s) # nó sẽ in ra HELLO

# ví dụ in hoa chữ cái đầu tiên 
s = "hellO world"
s = s.capitalize() # Hàm này nó chỉ in ra chữ đầu tiên được in hoa
print(s) # nó sẽ in ra Hello world
# cach 2
s = "hellO world"
s = s.title() # Ham nay no in hoa cac chu cai dau tien 
print(s) # no in ra Hello World

# vd tach chuoi (tach chu trong 1 chuoi ra)
s = " Hello world"
s = s.split()
print(s) # kq tra ve la ["Hello", "world"]
s = " My name is Hai" # danh sách trong python đc biểu diễn bằng dấu []
lst = s.split()
print(lst) # kq tre ve la ['My', 'name', 'is', 'Hai'] nay dc goi la list

# vd viet chu thuong
s = "HEllo WorlD"
lower_case = s.lower()
print(lower_case) # kq tra ve la hello world
















