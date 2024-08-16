"""
+ Advanced Set
+ Dictionary
+ sum, len, min, max, join
"""

set1 = {1, 4, 3, 2}
set2 = {2, 3, 10, -10}

set3 = set1.intersection(set2)  # intersection la tim phan chung 
print(set3)  # Return {2, 3} phan chung cua set1 va set2

print(set1 & set2)  # Return {2, 3} phan chung cua set1 va set2 (yêu cầu  hai cái set1 và set2 đều phải là set) nếu nó không phải là set thì bị lỗi
# ta có thể vd nhu sau

set_1 = {1, 5, 9, 4}
set_2 = {3, 4, 10, 6, 5}
# set_2 = [3, 4, 10, 6, 5]

set_3 = set_1.intersection(set_2)

print(set_3) # Return {4, 5} mặc dù hai set_1 và set_2 khác nhau 1 cái là set còn 1 cái là list nhưng khi dùng hàm(intersection) vẫn chạy đc còn khi dùng toán tử thì nó sẽ báo lỗi
print(set_1 & set_2)  # Return TypeError: unsupported operand type(s) for &: 'set' and 'list'
### LƯU Ý là toán tử (&) nó không thể chạy dc khi mà kết hợp set vs list mà bắt buộc phải là set với set

# Tìm phần tử nằm trong set_1 và không nằm trong set_2
# Ta dùng hàm different

set_1 = {1, 5, 9, 4}
set_2 = {3, 4, 10, 6, 5}
set_3 = set_1.difference(set_2)
set_4 = set_2.difference(set_1)

print(set_3) # Return {1, 9}
# Hoac ta co the in bang cach khac nhu sau
print(set_1 - set_2) # Return {1, 9}

print(set_4) # Return {10, 3, 6}
print(set_2 - set_1) # Return {10, 3, 6}

# H ta muon lay ca set_1 va set_2 thi ta lam nhu sau
# Ta dung ham union()
# Con toan tu ta dung dau pipe "|"
set_1 = {1, 5, 9, 4}
set_2 = {3, 4, 10, 6, 5}
set_3 = {11, 22, 33}
set_4 = set_1.union(set_2)
set_5 = set_1.union(set_2).union(set_3)

print(set_4)  # Return {1, 3, 4, 5, 6, 9, 10}
print(set_1 | set_2)  # Return {1, 3, 4, 5, 6, 9, 10}   , | la pipe

print(set_1 | set_2 | set_3)  # Return {1, 33, 3, 4, 5, 6, 9, 10, 11, 22}
print(set_5)  # Return {1, 33, 3, 4, 5, 6, 9, 10, 11, 22}



# H ta muon lay tat ca nhung tru di phan chung
# ta su dung symmetric_difference()
# con toan tu ta dung dau mu (^)
set_1 = {1, 5, 9, 4}
set_2 = {3, 4, 10, 6, 5}
set_3 = set_1.symmetric_difference(set_2)

print(set_3)  # Retuen {1, 3, 6, 9, 10}
print(set_1 ^ set_2)  # Return {1, 3, 6, 9, 10}



###  Dictionary: keyvalue

# Dictionary là 1 cấu trúc dữ liệu dùng để lưu trữ nhiều giá trị bên trong 1 cái biến duy nhất
# vd
import json 

student = {
    "name": "Bob", 
    "age": "23",
    "grades": [45, 67, 90, 98, 99]
}

print(student)  # Return {'name': 'Bob', 'age': '23', 'grades': [45, 67, 90, 98, 99]}
print(type(student))  # Return <class 'dict'>

print(json.dumps(student, indent = 4)) # Coi cai return nay hay ne nen lam theo, muon co dc phai (import json)

# H ta muon lay ra gia tri trong dictionary thi phai lam ntn
# Cách 1
# Đối với dict thì nó truyền vào là cái key chứ không phải là gtri index như list với tuple
              # "name" nay được gọi là cái key 
value = student["name"]
print(value)  # Return Bob

# Còn khi ta truyền 1 cái Key mà không có trong dict nó sẽ báo lỗi
# vd
# value = student["id"]
print(value)  # Return KeyError: 'id' , nó báo lỗi vì trong dict không có cái key nào là "id" cả

# Cách 2: dùng hàm get
value = student.get("name")
print(value)  # Return Bob
# Lưu ý khi ta dùng hàm get thì nếu mà ta truyền vào 1 cái key không có trong dict nó sẽ ko báo lỗi mà trả về None khác với TH1 kia
value = student.get("id")
print(value)  # Return None

value = student.get("id", "SV001")
print(value)  # Return SV001


# H ta muốn thêm 1 cái key vô trong 1 dict ta làm như sau
student = {
    "name": "Bob", 
    "age": "23",
    "grades": [45, 67, 90, 98, 99]
}
student["id"] = "SV001"
print(student)  # Return {'name': 'Bob', 'age': '23', 'grades': [45, 67, 90, 98, 99], 'id': 'SV001'}
# ta thấy cái key "id" được thêm vào dict(student)
# còn khi ta dùng cái key có sẵn trong dict mà ta cho bằng 1 cái j đó tức là ta đang update cái giá trị của key đó
student["age"] = 34
print(student)  # Return {'name': 'Bob', 'age': 34, 'grades': [45, 67, 90, 98, 99], 'id': 'SV001'}
#  Ta thay đc là giá trị của cái key "age" đã thay đổi từ 23 thành 34

# H ta muốn thêm nhiều key vào thì phải dùng hàm update

student = {
    "name": "Bob", 
    "age": "23",
    "grades": [45, 67, 90, 98, 99]
}

# student.update(id = "SV003")
# print(student) # {'name': 'Bob', 'age': '23', 'grades': [45, 67, 90, 98, 99], 'id': 'SV003'}

# student.update(id = "SV004", gender = "male")
# print(student) # Return  {'name': 'Bob', 'age': '23', 'grades': [45, 67, 90, 98, 99], 'id': 'SV004', 'gender': 'male'}
# Ta có thể thấy nó thêm đc 2 cái key mới vào trong dict, nếu mà cái key đó có rồi thì nó sẽ update giá trị của cái key đó, vd nhu cái id ban đầu là SV003 nó update lên SV004.
# còn mà muốn print cho đẹp dễ nhìn thì dùng import json
# import json
# print(json.dumps(student, indent = 4))


# H ta sẽ comment dòng student.update(id = "SV004", gender = "male") lại để chạy cái update khác

info = {
    "id": "SV005",
    "gender": "female"
}     # Cai info nay la dict
student.update(info)
print(json.dumps(student, indent = 4))
# Return: 
# {
#     "name": "Bob",
#     "age": "23",
#     "grades": [
#         45,
#         67,
#         90,
#         98,
#         99
#     ],
#     "id": "SV005",
#     "gender": "female"
# }

# ta co the them 1 cai info bang list tuple vo cai dict(student) ta lam nhu sau:
info_1 = [
    ("id", "SV005"),
    ("gender", "female")
]
student.update(info_1)
print(json.dumps(student, indent = 4))
# Return: 
# {
#     "name": "Bob",
#     "age": "23",
#     "grades": [
#         45,
#         67,
#         90,
#         98,
#         99
#     ],
#     "id": "SV005",
#     "gender": "female"
# }


# Do đó ta có thể thây đc là khi update cái dict ta có thể update kiểu info(kiểu dict) hay info_1(kiểu list tuple)

# Da them vao dc thi chac chan se phai xoa dc. Vay h ta xoa ntn
# ta dung remove ( ta phai du dung ham pop)
# thì muốn xóa thì ta xóa cái key thôi thì tự nhiên giá trị theo key cx sẽ biến mất theo

student.pop("name")
student.pop("id")
print(json.dumps(student, indent = 4))
# Return:
# {
#     "age": "23",
#     "grades": [
#         45,
#         67,
#         90,
#         98,
#         99
#     ],
#     "gender": "female"
# }

# Cach 2 de xoa la dung del
del student["age"]
print(json.dumps(student, indent = 4))
# Return: 
# {
#     "grades": [
#         45,
#         67,
#         90,
#         98,
#         99
#     ],
#     "gender": "female"
# }

# H ta muốn lấy ra phần tử cuối bên trong dictionary và xóa nó đi thì ta dùng:
# hàm popitem  --> hàm nay nó sẽ trả về 1 tuple 
tup = student.popitem()
print(tup)  # Return: ('gender', 'female') xong sau đó nó sẽ bị xóa đi kiểu như hàm pop() trong list

print(json.dumps(student, indent = 4))
# Return: 
# {
#     "grades": [
#         45,
#         67,
#         90,
#         98,
#         99
#     ]
# }

### Phần này quan trọng
# H ta muốn lấy tất cả các key trong dictionary và biến nó trở thành 1 cái list ta làm như sau
# ta phải dùng list() để biên dict thành list
student1 = {
    "name": "Peanut", 
    "age": "21",
    "grades": [11, 22, 33, 44, 55, 66]
}

keys = list(student1)
print(keys)  
# Return ['name', 'age', 'grades']  đây là 1 list chứa các key trong dict(student1)

# Ta đã lấy đc key trong dict rồi thi tất nhiên cx sẽ lấy đc giá trị của các key đó, ta làm như sau 
# cx dùng làm list() nhung có thêm .value() vào nữa

values = list(student1.values())
print(values)
# Return: ['Peanut', '21', [11, 22, 33, 44, 55, 66]]

# Vậy h ta muốn lấy cả key và giá trị thì ta dùng làm như sau:
# cũng dùng hàm list nhưng có thêm .items()

items = list(student1.items())
print(items)
# Return: [('name', 'Peanut'), ('age', '21'), ('grades', [11, 22, 33, 44, 55, 66])]  Đây là 1 list

item = tuple(student1.items())
print(item)
# Return: (('name', 'Peanut'), ('age', '21'), ('grades', [11, 22, 33, 44, 55, 66]))   Này là dạng tuple 

### Tóm lại là muốn từ dict về list hay tuple thì ta chỉ cần thay đổi chữ list thanh tuple như giá trị items( đổi dict thành list) và item( đổi dict thành tuple)


# clear
student1.clear()
print(student1) # Return {} (đây là dictionary trống chứ không phải set)



# Hàm join 
# Ham join no chi ket hop chuoi(str) neu ma list o dang int hay float... thi chuyen no ve het str.
# Để có thể convert thì ta phải dùng ham map()

lst = [4, 2, 3, 1]
s = ''.join(map(str, lst))
print(s)  # Return 4231 

a = "_".join(map(str, lst))
print(a)  # Return 4_2_3_1

b = "-".join(map(str, lst))
print(b)  # Return 4-2-3-1

# Này là do list đó là số(int) nên mới cần map
# Còn nếu nó là str thì không cần phải map
lists = ["4", "2", "1", "3"]
c = "".join(lists)
d = "__".join(lists)

print(c)  # Return 4213
print(d)  # Return 4__2__1__3

# Truong hop trog 1 list vua co str va vua co int 
# thi ta van phai dung map

list_1 = ["4", "2", "1", "3", 5]
hai = " - ".join(map(str, list_1))
print(hai)   # Return 4 - 2 - 1 - 3 - 5





