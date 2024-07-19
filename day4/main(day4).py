# LIST 

#          0    1    2   3   4  5  index
#         -6   -5   -4  -3  -2 -1  index
numbers = [0.1, 1.5, 3, 3.5, 5, 7]
# print(type(numbers))
# print(numbers)
print(numbers[0]) # in ra đc giá trị là 0.1
print(numbers[5]) # in ra đc giá trị là 7, mấy cái 0 vs 5 đó là giá trị index của cái list đó
print(numbers[-4]) # in ra đc giá trị là 3

# H ta muốn thêm giá trị khác vào cuối list đó ta làm như sau 
numbers.append(100)
print(numbers)
# giá trị 100 đã thêm vào cuối danh sách numbers
# Hàm append là hàm dùng để thêm 1 giá trị vào cuối danh sách đó

# H ta muốn xóa đi một phần tử trong danh sách
#    0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 2, 3.5, 4, 1]
# a.remove(1)
# print(a)
# Sau khi run ta có thể thấy được là nó chỉ xóa 1 số 1 đầu tiên chứ không có xóa đi hết cả 2 số 1
# Return [2, 3.5, 4, 1]

# Khi ta muốn lấy ra giá trị cuối cùng trong list và xóa đi giá trị đó:
last_value = a.pop()
print(last_value) # Return 1
print(a) # Return  [1, 2, 3.5, 4]

# H ta muốn thêm vào cuối list không phải là 1 gtri nữa mà h ta thêm vào cuối là 1 list khác
a.extend([2.5, 1000, 100, 125])
print(a) # Return [1, 2, 3.5, 4, 2.5, 1000, 100, 125]

#   0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 2, 3.5, 4, 1]
# H ta thấy ở vị trí 0 ta thấy giá trị là 1 mà h ta muốn thay đổi là 75 thì ta làm 
# a[0] = 75
# a[2] = 50
print(a) # Return [75, 2, 50, 4, 1]

# Đếm giá trị của 1 có trong list
amount = a.count(1) # 2
print(amount) # Return 2

# H ta muốn xóa hết giá trị trong list ta làm: 
# a.clear()
# print(a) # Return []

# Tìm tổng số lượng giá trị trong list
amount = len(a)
print(amount) # Return 5

### CÓ NHỮNG PHƯƠNG THỨC J LIÊN QUAN ĐẾN LIST 
### TA VÀO PHÂN MỀM IDLE NHẬP HÀM DIR(list)
#    Return ['__add__', '__class__', '__class_getitem__', '__contains__', '__delattr__', '__delitem__', '__dir__', '__doc__', '__eq__',
    #  '__format__', '__ge__', '__getattribute__', '__getitem__', '__getstate__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', 
    # '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__',
    #  '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__sizeof__', '__str__', '__subclasshook__', 'append', 'clear', 'copy', 'count', 
    # 'extend', 'index', 'insert', 'pop', 'remove', 'reverse', 'sort']

print('-------------------------------------------------------------------------------')

#   0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 2, 3.5, 4, 1]

# insert: chèn một giá trị bất kì vào trong list 
a.insert(0,1000)
print(a) # Return [1000, 1, 2, 3.5, 4, 1]

a.insert(7, 2000)
print(a) #  Return [1000, 1, 2, 3.5, 4, 1, 2000]
# con truong hop index la am thi 
a.insert(-5, 7000)
print(a) # Returm [1000, 1, 7000, 2, 3.5, 4, 1, 2000]

print('-------------------------------------------------------------------------------')

#   0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 2, 3.5, 4, 1]

# index: dùng để trả về 1 cái chỉ số mà 1 cái gtri mình truyền vào
index_of_3p5 = a.index(3.5)
print(index_of_3p5) # Return 2

index_of_4 = a.index(4)
print(index_of_4) # Return 3

# index_of_1000 = a.index(1000)
# print(index_of_1000) # Return ValueError: 1000 is not in list

print('-------------------------------------------------------------------------------')

#   0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 2, 3.5, 4, 1]

# reverse: hàm này là nó lật ngược lại gtri trong list
a.reverse()
print(a) # Return [1, 4, 3.5, 2, 1]

print('-------------------------------------------------------------------------------')

#   0  1   2   3  4 
#   -5 -4  -3  -2 -1
a = [1, 4, 3.5, 2, 1]

# sort: hàm sort nó chỉ hành động sắp xếp các gtri trong list theo thứ tự tăng dần chứ không trả về giá trị nào đó cụ thể
a.sort()
print(a) # Return [1, 1, 2, 3.5, 4]
# con muon theo gia tri giam dan thi:
a.sort(reverse = True)
print(a) # Return [4, 3.5, 2, 1, 1]


'-------------------------------------------------------------------------------'

friends = ["Jack", "Peanut", "Helen", "Kevin"]

# print(friends[0]) # Return Jack
# print(friends[-1]) # Return Kevin
# print(friends[-3]) # Return Peanut
# print(friends[2]) # Return Helen

friends[0] = "Anna"
print(friends) # Return ['Anna', 'Peanut', 'Helen', 'Kevin']

amount = len(friends)
print(amount) # Return 4

friends.insert(1,"Jen")
print(friends) # Return ['Anna', 'Jen', 'Peanut', 'Helen', 'Kevin']

# a = friends.pop()
# print(a) # Return Kevin

friends.pop()
print(friends) # Return ['Anna', 'Jen', 'Peanut', 'Helen']

# Cach1 xóa 1 gtri trong list
# friends.remove("Peanut")
# print(friends) # Return ['Anna', 'Jen', 'Helen']
# Cach2 xóa 1 gtri trong list

del friends[1]
print(friends) # Return ['Anna', 'Peanut', 'Helen']

friends.extend(["Peanut"])
print(friends) #Return ['Anna', 'Peanut', 'Helen', 'Peanut']
# Ta thấy ở đây giá trị "Peanut" có trùng lặp tại vì list có được trùng lặp giá trị còn set nó mới không cho trùng lặp

 
numbers = [12, 0.5, -26, 37, -100, 89]
max_value = max(numbers)
print(max_value) # Return 89

min_value = min(numbers)
print(min_value) # Return -100



###################################################################################
# LIST PHẦN 2
"""
+ list trong list
+ copy list
+ list slicing

"""
# List trong List
#               0            1            2
friends = [["Bob", 23], ["Peanut", 36], ["Peter", 50]]
print(type(friends)) # Return <class 'list'>
print(type(friends[0])) # Return <class 'list'>

print(friends[0][-1]) # Return 23
print(friends[0][0])  # Return Bob
print(friends[1][1])  # Return 36
print(friends[2][-2]) # Return Peter 

# Copy List
lst1 = [1, 3, 2]
lst2 = lst1

# is (nó kiểm tra vị trí id trong bộ nhớ có bằng nhau hay không)
print (id(lst1), id(lst2)) # Return 2242906149248 2242906149248
print(lst1 is lst2) # Return True  coi nhu la lst1 va lst2 la nhu nhau vì địa chỉ của lst1 và lst2 là giống nhau
print(lst1 == lst2) # Return True  coi nhu la lst1 va lst2 la nhu nhau

# nhưng nếu ta làm ntn
lst1 = [1, 3, 2]
lst2 = lst1.copy()

# is (nó kiểm tra vị trí id trong bộ nhớ có bằng nhau hay không)
print(id(lst1), id(lst2)) # Return 2007663499456   2007667043904
print(lst1 is lst2) # Return False  do tao dùng hàm copy nên địa chỉ ip của lst1 khác lst2
print(lst1 == lst2) # Return True  coi nhu la lst1 va lst2 la nhu nhau 
"""
Tóm lại == là nó so sánh về mặt giá trị
        is là nó so sánh về mặt địa chỉ
"""

# List Slicing là lấy ra 1 phần từ trong list ban đầu kiểu như cái bánh cắt ra thành nhiều phần mà ta chỉ lấy 1 phần
# List slicing --> new list

#   0   1   2   3    4 
a = [1, 3, 10, 100, 45]
#         a[start:stop:step]
new_lst = a[0:2:1] # nó bắt đầu chạy từ 0 đến 2 nhưng nó không có lấy 2 ( 0 vs 2 là vị trí index ) còn 1 đó là step (bước nhảy) và 1 là mặc định

print(new_lst is a) # Return False
print(new_lst) # Return [1, 3]

new_list = a[1:4] # ta có thể bỏ số 1 đi tại số 1 là step mặc định rồi 
print(new_list is a) # Return False
print(new_list) # Return [3, 10, 100]

new_list = a[1:] 
print(new_list is a) # Return False
print(new_list) # Return [3, 10, 100, 45]

new_list = a[:] # [:] coi như là bản copy tại return giá trị lại là như nhau
print(new_list is a) # Return False
print(new_list) # Return [1, 3, 10, 100, 45]

# H ta muon lay list no dao nguoc thi ta lam
#   0   1   2   3    4   index
a = [1, 3, 10, 100, 45]

new_list = a[::-1] # do step = -1 nen no se di lui lai
print(new_list) #Return [45, 100, 10, 3, 1]

new_list = a[3:0:-1] # do step = -1 nen no se di lui lai
print(new_list) #Return [100, 10, 3]
"""
Nhung cai hay thuong dung
+ [1:-1] -> loại bỏ 2 cái ở đầu mút
+ [::-1] -> đảo ngược lại danh sách ( ta chỉ cần thay đổi step = -1 là ok )
+ [1:]   -> lấy từ 1 đến hết
"""
