""" 
+ Iterable: list, tuple, set, dict
"""

# For trong list
lst = [4, 100, 5, 6]

for value in lst:
    print(value)
# Return:
#  4
# 100
# 5
# 6

lst = (4, 100, 5, 6)

for a in lst:
    print(a)
# Return:
#  4
# 100
# 5
# 6

lst = {4, 100, 5, 6}

for b in lst:
    print(b)
# Return: (do set no khong co thu tu nen no tra ve random)
# 5
# 100
# 4
# 6

# For trong dict
d = {
    'a': 1,
    'b': 2,
    'c': 3
}

for key in d:
    print(key)

# Return:
# a
# b
# c

# Vay H ta muon lay ra cai value trong cai key do ta lam nhu sau;
for value in d.values():
    print(value)

# Return: 
# 1
# 2
# 3

# Vay h ta muon lay ca key va value cau key do thi ta lam nhu sau:
d = {
    'a': 1,
    'b': 2,
    'c': 3
}
for item in d.items():
    print(item)

# Return: 
# ('a', 1)
# ('b', 2)
# ('c', 3)
# Nay la in ra dang tuple roi, h ta muon in ra tung gia tri vua ca key va value thi lam nhu sau:
d = {
    'a': 1,
    'b': 2,
    'c': 3
}

for item in d.items():
    key, value = item
    print(key)
    print(value)
    print("-" * 20)

# Return: 
# a
# 1
# --------------------
# b
# 2
# --------------------
# c
# 3
# --------------------


""" 
+ List comprehensions: luon tao ra list moi

"""

lst = [1, 2, 3, 4]

# new_lst = [2, 4, 6, 8]: muc tieu 

new_lst = []

for x in lst:
    val = x * 2
    new_lst.append(val)

print(new_lst)
# Return: [2, 4, 6, 8]
# Lam bang cach nay rat lau ta co the nhanh hon bang cach

new_lst = [val * 2 for val in lst]  # Day dc goi la list comprehensions, voi val la 1 cai bien minh tu them vao
print(new_lst)
# Return: [2, 4, 6, 8]

new_lst1 = [a * 3 for a in lst]
print(new_lst1)
# Return: [3, 6, 9, 12]


""" 
+ Set comprehensions: luon tao ra set moi

"""

set_a = {"a", "v", "b"}

new_set = {s.upper() for s in set_a}  # Nay set comprehensions
print(new_set)
# Return: {'V', 'A', 'B'} nay la do set no khong co thu tu


""" 
+ Dict comprehensions: luon tao ra dict moi

"""

d = {
    "a": 1,
    "b": 5,
    "d": 9
}

new_d = {
    k: v * 2
    for k, v in d.items()
}  # nay la dict comprehesions

print(new_d)  
# Return: {'a': 2, 'b': 10, 'd': 18}

print(d is new_d) # Return False 


""" 
+ zip: deu tao ra object, khi in ra voi lenh print thi no chi ra object thoi, khong ra dc gia tri ben trong object do
+ enumerate: thang nay tuong tu thang zip
"""

lst1 = ["a", "b", "c"]
lst2 = (1, 2, 3, 4)
print(list(zip(lst1,lst2)))
# Return: [('a', 1), ('b', 2), ('c', 3)]

# nay ta co the hieu la zip no ghep cap gia tri cua 2 list lai voi nhau nhung no chi ghep den het cua 1 list co gia tri thap nhat, con list con lai phan du se bi bo di. 
# Ta co the lay o VD lst1 vs lst2 thi lst1 co 3 gtri, lst2 co 4 gia tri nen khi ghep lai thi lst2 se bi du 1 gia tri and gia tri do se bi bo di.

# vd2
lst1 = ["a", "b", "c"]
lst2 = (1, 2, 3, 4)
lst3 = ["a1", "b1", "c1"]
print(list(zip(lst1, lst2, lst3)))
# Return: [('a', 1, 'a1'), ('b', 2, 'b1'), ('c', 3, 'c1')]

# vd3
lst1 = ["a", "b", "c"]
lst2 = (1, 2, 3, 4)
lst3 = ["a1", "b1"]
print(list(zip(lst1, lst2, lst3)))
# Return: [('a', 1, 'a1'), ('b', 2, 'b1')]



# enumerate: ()()()()
lst = ["a", "b", "c"]

print(enumerate(lst))
# Return: <enumerate object at 0x000001CC973E5A30>

print(list(enumerate(lst)))
# Return: [(0, 'a'), (1, 'b'), (2, 'c')]
# Mấy số 0, 1, 2 đo ta có thể hiều đó là giá trị index của cái list đó

# Nhưng ta cx phải lưu ý là thằng enumerate nó có đối số start nên nó có quyết định giá tri bắt đâu la bao nhiêu, con nếu ta không cho giá trị nào thì start bắt đầu là 0, ta có ví dụ sau để hiểu rõ hơn

lst = ["a", "b", "d", "e"]

print(list(enumerate(lst)))
# Return: [(0, 'a'), (1, 'b'), (2, 'd'), (3, 'e')]
print(list(enumerate(lst, start= 1)))
# Return: [(1, 'a'), (2, 'b'), (3, 'd'), (4, 'e')]
print(list(enumerate(lst, start= 4)))
# Return: [(4, 'a'), (5, 'b'), (6, 'd'), (7, 'e')]




# Ta có vd biến 1 cái list object trở thành dictionary, ta làm như sau:
# Ta sử dụng đến thằng zip

lst1 = ('a', 'b', 'c')
lst2 = (1, 2, 3)

print(list(zip(lst1, lst2)))
# Return: [('a', 1), ('b', 2), ('c', 3)]  - này là 1 list tuple

print(dict(zip(lst1, lst2)))
# Return: {'a': 1, 'b': 2, 'c': 3}  -  này nó đã trở thành dictionary
# File csv hay dùng dictionary nhiều ta có thể lấy vd ngoài đời:
student = {
    'Name': "Peanut",
    'age': 21,
    'gender': "Male"
} ### Này là 1 dictionary cơ bản ngoài thực tế




""" 
SAU ĐÂY LÀ NHỮNG VD HAY, Ở NGOÀI BÀI HỌC

"""
# VD1
lst = [1, 2, 3, 4, 5]
# H ta muốn tạo ra 1 cái list mới mà giá trị trong list mới mũ 3 lần giá trong list ban đầu
# Cách 1:
new_lst = [v**3 for v in lst]  # ta không thể print ra được giá trị của v
print(new_lst) # Return: [1, 8, 27, 64, 125]

# Cách 2:
new_lst = []

for x in lst:
        new_lst.append(x**3)

print(x)        # Return: 5
print(new_lst)  # Return: [1, 8, 27, 64, 125]

# VD2:
numbers = [100, 34, 46, 78, 80, -46, 23, 15]
# H ta tính tổng các con số trên nếu là số lẻ
# Cách 1:
numbers_new = [x for x in numbers if x % 2 != 0]
print(numbers_new) # Return [23, 15]
print(sum(numbers_new))
# Return: 38 là do 23 + 15

# Cách 2
numbers = [100, 34, 46, 78, 80, -46, 23, 15]
S = 0
for v in numbers:
    if v % 2 == 0:
        continue
    S += v

print(S)
# Return: 38, ta nên làm cách 1 cho nó nhanh 

# Cách 3 
numbers = [100, 34, 46, 78, 80, -46, 23, 15]
S = 0
for v in numbers:
    if v % 2 != 0:
        S += v

print(v) # Return 15 
print(S) # Return 38


# VD3
numbers = [100, 34, 56, 78, 80, -46, 3, 5, -11]
# H ta muốn tạo ra 1 cái list mới mà trong đó lấy số chẫn ở list cũ nhân với 2 
# còn số lẻ nhân với 3.

new_numbers = [x*2 if x % 2 == 0 else x*3 for x in numbers]  #(1)
print(new_numbers)
# Return:[200, 68, 112, 156, 160, -92, 9, 15, -33] 

#(1) hàm đó là đc viết tắt bởi hàm này
new_numbers = []

for x in numbers:
    if x % 2 == 0:
        new_numbers.append(x * 2)
    else:
        new_numbers.append(x * 3)

print(new_numbers)
# Return: [200, 68, 112, 156, 160, -92, 9, 15, -33]


# VD4 
# enumerate -> (),(),() ( nó trả về 1 dãy tuple )
lst = [1, 2, 3, 4]

# Mục tiêu là in ra {i} - {value}

print(list(enumerate(lst)))
# Return: [(0, 1), (1, 2), (2, 3), (3, 4)]
# ta có thể thấy là nó không ra đc đáp án mà đề bài yêu cầu, nên ta phải dùng vòng lặp for thông thường, ta làm như sau
lst = [1, 2, 3, 4]

for item in enumerate(lst):
    idx, value = item
    print(f"{idx} - {value}")

# Return: 
# 0 - 1
# 1 - 2
# 2 - 3
# 3 - 4

# Vậy h ta chi muốn lấy ra giá trị mà là số lẻ thì ta làm như thế nào, ta làm như sau:
lst = [1, 2, 3, 4]

for item in enumerate(lst):
    idx, value = item
    if value % 2 != 0:
        print(f"{idx} - {value}")

# Return: 
# 0 - 1
# 2 - 3