"""
if - elif - else
"""

# ta có thể dùng tổ hợp phím Shift ALT A để cmt màu đỏ như dòng trên 


""" if 1 > 0:
    print("1 > 0")
else: 
    print("1 <= 0") """


""" n = int(input("n = "))

if n > 0:
	print("So duong")
elif n < 0:
    print("So am")
else:
    print("So 0") """

# vd 2
# n = int(input("n = "))

# if n = 0:
# 	print("So duong")

# Return: 
# SyntaxError: invalid syntax. 
# Maybe you meant '==' or ':=' instead of '='?
# Cái if n = 0 đó nó báo lỗi là do nó hiểu rằng dấu bằng đó là nó gắn giá trị n bằng 0 chứ không phải là phép so sánh n = 0.
# Nên nếu mà muốn cho kiểu mà nếu n bằng không thi phải dùng dấu == chứ không phải bằng, ta sửa lại như sau 
n = int(input("n = "))

if n == 0: # Ý nghĩa câu này là nếu n bằng 0 thì in ra " số dương "
	print("So duong")
# Return Nếu ta nhập n =0 thì nó sẽ ra số dương, còn nhập n = 1 số nào đó khác không thì nó sẽ không ra kết quả mà nó tự kết thúc chương trình


# vd 3
n = int(input( "n = "))

if n % 3 == 0:   # này hay dùng và ý nghĩa của câu này là nếu n chia cho 3 mà = 0 thì in ra " n chia hết cho 3 ", dấu " == " có nghĩa là phép so sánh bằng, còn dấu " = " nó là gán giá trị vd n = 2 tức là n bằng 2 (đó gọi là gán giá trị)
     print("n chia hết cho 3")
else:
     print("n không chia hết cho 3")
# Return:
# n = 7
# n không chia hết cho 3
# n = 6
# n chia hết cho 3

# Ta có thể dùng cách khác:
""" n = int(input( "n = "))
print("n chia hết cho 3" if n % 3 == 0 else "n không chia hết cho 3") """

# vd4

a = int(input("a = "))
b = int(input("b = "))
# Yêu cầu bài toán là tìm ra số lớn nhất trong 2 số

# Shift Alt A
""" if a > b:
    print(a)
else: 
      print(b) """
      
# Cach khac 
print(a if a > b else b)

# vd5
# Vi du nay hay ne ta co the nhâp 2 gtri tren cung 1 dong và có khoảng cách với nhau bằng nhiều dấu tab hay dấu cách
# để làm đc ta cần phải dùng hàm map() với hàm split() - Hàm split là hàm dùng để cho mình cách 2 gtri ma mình nhập vào bằng dấu cách hay dấu tab.
a, b = map(int, input().split())

""" print(a if a > b else b) """

# Cách khác để print 
if a > b: 
    print(a)
else:
    print(b)
    


# eval  - Hàm eval dùng để đánh giá biểu thức nằm bên trong cặp dấu nháy

print("1")                  # Return 1
print("1.25") 				# Return 1.25
print(eval("1 + 2"))        # Return 3
print(eval("1 + 2 ** 4"))   # Return 17
# ta làm cách bằng eval thay cho int ở vd5 vẫn ra kết quả như vd 5
""" c, d = map(eval, input().split()) """
# Khi mà ta nhập nhiều giá trị nó sẽ báo lỗi ValueError: too many values to unpack (expected 2)  nên ta phải dùng hàm list thì nó sẽ không bị nữa, ta làm như sau:
lst = list(map(eval, input().split()))  # Này ta có thể nhấp đc nhiều giá trị và nó chứa đc cả số nguyên(int) và số thực(float) muốn đc vậy phải nhờ có thằng hàm eval()

print(lst)  # Return [1, 4, 6, 9, -15, 0.5, 34.98]



# vd6 
list1 = [1, 2, 3, 4]
# H ta muốn in ra nhu này 1 2 3 4   thì phải làm như thế nào
# ta phải làm như này: *list1  - nhớ là phải có dấu sao trc cái biến đó
print(*list1) # Return: 1 2 3 4
# nó tương đương như khi ta làm như thế này 
print(1, 2, 3, 4) # Return: 1 2 3 4

# Còn khi ta muốn dùng dấu khác để cách ra thì ta làm như sau
print(*list1, sep= " $ ")  # Return 1 $ 2 $ 3 $ 4
print(*list1, sep= "$")  # Return 1$2$3$4













