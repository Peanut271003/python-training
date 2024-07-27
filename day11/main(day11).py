""" 
+ python functions: hàm trong python 
"""

def my_func():
    print("Hello World") # Khi mà ta run thì nó chưa ra cái j, vậy ta phải làm ntn, ta sẽ phải gọi hàm, ta làm như sau

my_func() ### này là gọi hàm
# Lúc này ta run thì nó cho ra Hello World

# ta có 1 ví dụ
def my_func(msg):
    print(msg)

my_func("Hello")
# Return Hello World, muốn bk tại sao nó in ra ta có thể debug tại dòng 12 

# VD ta có thể cho nhiều tham số trong hàm
# def show_full_name(fname, lname):
#     print(f"{fname}, {lname}")

# show_full_name("Ngọc", "Hải")

# cách này mn hay viết hơn khi mà viết hàm ta nên làm theo cách này
def get_full_name(fname, lname = "Hải"):
    return f"{fname} {lname}"

full_name = get_full_name("Ngọc", "Huy")
print(full_name) # Return Ngọc Hải


# vd1 
def get_full_name(fname, lname = "Hải"):
    if fname:
        return f"{fname} {lname}"
    return f"Peanut {lname}"

full_name = get_full_name("")
print(full_name) 
# Return: Peanut Hải
# Ta có thể giải thích như sau: Ta có hàm get_full_name có 2 biến, 1 là fname và 2 là lname mà lname ban đầu đã đc gắn gtri là "Hải", nên ta có thể chỉ cần thêm gtri cua thằng fname thôi cx đc, nhưng nếu muốn thêm cả fname và lname thì vẫn đc, cái lname đó sẽ thay thế lname ban đầu.
# Sau đó ta thấy trường hợp ở đây là hàm get_full_name ta không có thêm fname j cả, sau đó nó sẽ vào gặp if fname(False) thì nó sẽ return ra Peanut Hải.

# Còn trường hợp này ta thêm cái fname thì nó ra ntn đây:

def get_full_name(fname, lname = "Hải"):
    if fname:
        return f"{fname} {lname}"
    return f"Peanut {lname}"

full_name = get_full_name("Ngọc")
print(full_name) 
# Return; Ngọc Hải

# Còn trường hợp ta thêm cả fname và lname thì lúc này thằng lname sẽ bị thay đổi( kiểu như là ta updte giá trị của lname)
def get_full_name(fname, lname = "Hải"):
    if fname:
        return f"{fname} {lname}"
    return f"Peanut {lname}"

full_name = get_full_name("Ngọc", "Huy")
print(full_name)
# Return: Ngọc Huy

# Hoặc ta có thể viết như sau nó vẫn return ra Ngọc Huy

def get_full_name(fname, lname = "Hải"):
    if fname:
        return f"{fname} {lname}"
    return f"Peanut {lname}"

full_name = get_full_name(lname="Huy", fname="Ngọc") # ở đây ta có thể hiểu là cái lname vs fname nó đc gắn trị vào rồi nên là nó không có quan tâm vị trí sắp xếp cả, nó hiểu là lname ="Huy" -> thì nó sẽ gắn gtri vào đúng với tên biến.
print(full_name)
# Return: Ngọc Huy 


# VD2 
def add(x, y):
    return x + y

print(add(10, 22)) # Return 32

def add(x, y = 40):
    return x + y

print(add(10))     # Return 50

def add(x, y = 40):
    return x + y

print(add(x=10, y=100))  # Return 110
#  Tức là lúc này y = 100 rồi, nó đã update từ 40 thành 100 nên x + y = 10 + 100 = 110

# VD3 # này là giá trị có thể thay đổi, ta nên ít sử dụng cái này mà thay vào đó sử dụng tham số mặc định như vd1 vs vd2

def func(lst=[]):
    lst.append(2)
    print(lst)

func() # Return [2]  Khi ta goi ham func() nay thì ban đầu lst = [] nên khi gọi xong thì nó đã append giá trị 2 vào lst nên lst lúc này: lst = [2]
func() # Return [2, 2] 
# Lúc này là gọi func() 1 lần nữa mà trc thì lst = [2] nên khi chạy thì nó thành [2, 2]. Vay h ta them 1 ham func() nua thi ntn 
func()  # Return [2, 2, 2]

# Ta không nên để list vs dict vào trong hàm vì 2 cái này có thể thay đổi đc mà thằng tuple nó lại không thể thay đổi được 

# VD4
""" friends = ["Kenny", "Bob", "Jen"]

def my_func():
    friends = friends + ["Joe"]
    print(friends)

my_func() """
# Return UnboundLocalError: cannot access local variable 'friends' where it is not associated with a value
# Vậy ta xử lý lỗi này như sau

friends = ["Kenny", "Bob", "Jen"]

def my_func():
    f = friends + ["Joe"]
    print(f)

my_func()
# Return: ['Kenny', 'Bob', 'Jen', 'Joe']
# Ta lưu ý là không nên đặt tên cùng như trường hợp trên nó sẽ bị lỗi 


# Vd5 Ham khong co ten(lambda) hay su dung trong ham max, sort
# lambda x, y: x + y

add = lambda x, y: x + y  # Nay la ham khong co ten
print(add(1,2))
# Return 3

# Hoac viet bang cach nay
print((lambda x, y: x + y)(1, 2)) # Return 3


# Vd6 
""" First class function """

def great(msg):
    print("Hi" + msg)
    
hello = great  # Hello này đang giữ tham chiếu đến cái hàm great
print(hello("Jen"))
# Return: 
    # HiJen
    # None
# Ta có 1 cái lưu ý là tất cả các hàm def trong python trả về giá trị mặc định là None

""" Ta có thể hiểu rõ ví dụ trên tại sao lại ra None như sau:, ta thông qua 1 vd dưới đây và so sánh nó với vd trên """

def great(msg):
    print("Hi" + msg)
    return "Ngoc Hai"
hello = great  # Hello này đang giữ tham chiếu đến cái hàm great
print(hello("Jen"))

# Return: 
# HiJen
# Ngoc Hai 
# Ta có thể hiểu là khi mà ta không có return thì mặc định nó sẽ trả về là None nên ở vd trên ta thấy khi ta không có return thì trả về là None, còn ở vd này thì ta đã trả về nó là "Ngoc Hai"

""" LƯU Ý khi mà ta muốn cái hàm nó không bị lỗi khi mà tạo ra hàm trống, và in nó cx không ra j cả ta có từ pass """
def func():
    pass



# *args: là tập hợp các đới số vị trí 
def add(x, y, z, t):
    return x + y + z + t

print(add(1, 2, 3, 4))  # Return 10
# roi ta co vd sau day de so sanh 
def add(*args):   # Cái *args nó thay thế cho x, y, z, t và đối số theo đúng từng vị trí de tao thanh 1 cai tuple
    print(type(args))
    return sum(args)

print(add(1, 2, 3, 4))  # Này là đối số vị trí, nó sẽ tạp hợp vào args thành tuple, ta print(args) là kiểu tuple 
# Return:
# <class 'tuple'>
# 10



### *args khac voi * nay nha ###
lst = [4, 3, 2, 1]
print(*lst) # * ở đây có nghĩa là nó phá cái list này ra và trở thành đối số vị trí
# Return: 4 3 2 1
# Sau khi cái dấu * nó phá bỏ cái list thành những đối số thì nó kiểu như thế này
print(4, 3, 2, 1)
# Nên khi ta run thì nó ra 4 3 2 1
# từ đó ta thấy đc rằng:
""" print(*lst) tương đương với print(4, 3, 2, 1) """


# Vd 
lst = [3, 10, 4, 5, 6, 7]
first, *mid, last = lst
print(lst)    # Return: [3, 10, 4, 5, 6, 7]  
print(first)  # Return: 3
print(*mid)   # Return: 10 4 5 6
print(last)   # Return: 7
# Ta thay được công dụng khác của *

lst = [3, 10, 4, 5, 6, 7]
*first, last = lst
print(*first) # Retrun: 3 10 4 5 6
print(last)   # Retrun: 7


""" Ta có 1 vd rất hay first class function, first class function có  nghĩa là có thể truyền vào 1 hàm(coi như là biến) trong 1 hàm, ta có ví dụ như sau
add(1, 2, 3, 4, sum)  - thằng sum ở đây đc coi như là biến, vẫn chạy đc nha nên mới gọi nó là first class function"""
### Ta có vd sau cụ thể hơn
def func_peanut(*lst, operation):
    return operation(lst)

print(func_peanut(1, 2, 3, 4, 5))
# Khi ma ta run no se return: TypeError: funct_peanut() missing 1 required keyword-only argument: 'operation', tức là ta phải thêm giá trị của operation vào thì hàm nó mới chạy, ta sửa lại như sau:

def func_peanut(*lst, operation):
    return operation(lst)

print(func_peanut(1, 2, 3, 4, 5, operation=sum))
# Return: 15
# Ta có thể giải thích như sau khi truyền vào hàm func_peanut có 2 biến là *lst và operation, thì khi ta truyền vào operation = sum thì nó nhận là sum, còn thằng *lst sẽ gộp 1, 2, 3, 4, 5 thành tuple (1, 2, 3, 4, 5) mà * đó được hiểu như là thay thế đối số, nếu không có cái * đó thì ta phải truyền vào func_peanut những biến tương ứng với đối số đó, VD def func_peanut(x, y, z, t, h, operation). Tóm lại ta hiểu * ở đây có nghĩa là thay thế cho các biến x, y, z, t, h và sau đó đối số theo thứ tự và tạo thành tuple 
# Sau đó nó return thì lúc nay operation là sum(lst) tức là sum(1 cái tuple) -> sum((1, 2, 3, 4, 5)) -> Return 15.



