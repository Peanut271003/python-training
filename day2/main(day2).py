# value
# data types
# input

# number: 1, 2, -1, 0 (interger - số nguyên), 1,25, 3.14 (float)
# string: "hello", 'main'
# boolen: True False
print(type(1)) #int
print(type(1.24)) #float
print(type('')) # str
print(type(True)) # bool

# variables 
x = 5 
print(type(x)) #int

x = 6 
print(x) # Nhan Ctrl + Alt + N  de RUN CODE

print('--------------------------------------------------')

a=4
print(a)

_=45
print(_) # _ cung la 1 ten bien hop le

'------------------------------------------------------------------------------------------------------------------------------'
# tên biến không được chứa giá trị đặc biệt như kiểu là !, ~, @, $, %, ^, &, *, ...


# hàm input  --> str
# hàm input nó sẽ trả về giá trị thuộc kiểu chuỗi (str)
full_name = input("Nhập vào tên của bạn:")
print(full_name)
print(type(full_name))

number = input("Nhập vào số nguyên: ")
print(type(number))
print(number)
# khi run ta thấy đc là cho dù nhập số nguyên vào kết quả nó trả về vẫn là số đó nhưng nó vãn báo là <class 'str'> - kiểu vẫn là dạng chuỗi
# Vậy để nó trả về số nguyên ta làm như sau
number = input("Nhập vào số nguyên: ")
number_as_int = int(number) # hàm int() này là để chuyển đổi giá trị truyền vào thành giá trị số nguyên
print(type(number_as_int))
print(number_as_int + 3)

number = input("Nhập vào số nguyên: ")
number_as_float = float(number)
print(type(number_as_float))
print(number_as_float)

print(type(True))

'------------------------------------------------------------------------------------------------------------------------------'
# luu y nen dat ten bien sao cho co y nghia vd 
full_name = "Kenvin"
age = 34
PI = 3.14 # Trong pythom các hằng số đều phải viết hoa ví dụ PI











