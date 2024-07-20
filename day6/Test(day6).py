friends = [
    ("Bob", 34),
    ("Hena", 25),
    ("Peter", 45)
]
# Muon lay gtri 34 thi lam nhu nao
print(friends[0][1])  # Return 34
print(friends[-1])  # Return ('Peter', 45)

# Ta thử xem vd này có lỗi gì không nha 
lst = [[1, [2,3]], (5, 4)]  # yeu cau lay ra gia tri [2, 3]

print(lst[0][-1]) # Return [2, 3]

print(lst[0][-1][0])  # Return 2

print(lst[-1]) # Return (5, 4)



lst = [[1, [2,3]], (5, 4)]

lst[0][1].append(100) # do ta truy cap vao list nay nen no se them 100 vao list nay

print(lst)  # Return [[1, [2, 3, 100]], (5, 4)]

# Con truong hop muon them 1000 vao cuoi list thi ta lam nhu sau
lst.append(1000)

print(lst) # Return [[1, [2, 3, 100]], (5, 4), 1000]


# H ta muon copy list ta lam nhu sau
lst = [[1, [2,3]], (5, 4)]

lst1 = lst[:] # nay la ta da dung copy list roi chi can nhap [:]
# Hoac ta co the lam cach khac la
# lst1 = lst.copy()
print(lst1)          # Return  [[1, [2, 3]], (5, 4)]
print(lst == lst1)   # Return  True
print(lst is lst1)   # Return  False


# Truong hop nay hay ne (dac biet)
list_1 = [[1, [0, 2]], (4,6)]
list_2 = list_1[:]
list_3 = list_1.copy()

list_1[0][1].append(100)
# Cau hoi la khi print no se co them 100 (khi ta dung append) vo trong list_2 khong?

print(list_2)   # Cau tra loi la co vi ta co dung [:] hay ham .copy thi no van se them gia tri 100 vao tai vi khi ma list_2 = list_1.copy thi no se copy het cac gia tri y chang o trong ngoac vang
                # Return [[1, [0, 2, 100]], (4, 6)]

print(list_3)
                # Return [[1, [0, 2, 100]], (4, 6)]

# Vay h ta muon no khong co nhan gtri 100 vao  cai list do thi phai lam sao?
# ta phai dung deepcopy 
from copy import deepcopy

list_1 = [[1, [0, 2]], (4,6)]
list_2 = deepcopy(list_1)

list_1[0][1].append(100)

print(list_2)  # Return [[1, [0, 2]], (4, 6)] . Vay la gtri 100 da khong dc them vao trong list

""" *** LƯU Ý ***
Vậy tóm lại khi mà ta muốn copy hoàn toàn giá trị thì ta nên dùng thằng deepcopy 
Còn thằng copy nó chỉ copy 1 phần thôi kiểu chi copy dấu ngoặc vuông bên ngoài thôi

"""


# Để kiểm tra một giá trị có phải thuộc về kiểu được truyền vào hay không ta dùng hàm 
# isinstance --> kq trả về là bool (True or False)

print(isinstance(3,int))  # Return True
print(isinstance(3,float))  # Return False
print(isinstance(0j, complex)) # Return True
print(isinstance(True, int)) # Return True

# Ham ord

print(ord("a"))  # Return 97 
    # ord(c, /)
        # Return the Unicode code point for a one-character string.




