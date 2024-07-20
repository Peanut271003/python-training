"""
+ set
+ tuple 
"""
# tuple là một bộ giá trị, là một cấu trúc dữ liệu, có thứ tự, có thể chứa phần tử trùng lặp, và được tạo bởi ngoặc tròn()
# set là đc tạo bởi dấu ngoặc nhọn, không chứa phần tử trùng lặp, set không có thứ tự

tup1 = 1, 2, 3
tup2 = (1, 2, 3)
tup3 = 1,
tup4 = (2,)
print(type(tup1)) # Return <class 'tuple'>
print(type(tup2)) # Return <class 'tuple'>
print(type(tup3)) # Return <class 'tuple'>
print(type(tup4)) # Return <class 'tuple'>
print(tup1[0]) # Return 1    ta có thể thấy tuple cx như list nhưng có vài điểm khác nhau
print(tup1[-1]) # Return 3

# tup1[0] = 1000   
                #    ^^^
                # TypeError: 'tuple' object does not support item assignment
                # Ta có thể thấy được là tuple không thể thay đổi giá trị được
# Nhưng ta có thể update thêm vào cuối danh sách (tuple) chứ không thể thay đổi giá trị đc
tup1 += (4,)
print(tup1) # Return (1, 2, 3, 4)
tup1 += (5, 6, 7, 9, 1)
print(tup1) # Return (1, 2, 3, 4, 5, 6, 7, 9, 1)


# set là 1 cấu trúc dữ liệu nó dùng để lưu trữ nhiều gtri trong 1 biến duy nhất, và giá trị không được trùng lặp, không sắp xếp
set1 = set()  # này là set trống
print(len(set1)) # Return 0

set1.add(1)
set1.add(1)
print(set1) # Return {1}
            # ta thấy ta add thêm thằng 1 tới 2 lần mà return chỉ là {1} chứng tỏ là nó không lấy giá trị trùng lặp 

set1.update([2, 3, 4, 5])
print(set1) # Return {1, 2, 3, 4, 5}

set1.remove(1)
print(set1) # Return {2, 3, 4, 5}

set2 = set1.copy()
print(set2 is set1) # Return False hai thằng này khác nhau về id
print(set2 == set1) # Return True hai thằng này giống nhau về giá trị kiểu nó copy mà

set1.clear()
print(set1)  # Return set()   set trống do clear hết rồi

set1 = {1, 2, 3, 4}

# set1.add([1, 2, 3, 4])

print(type(set1))
print(set1)  # Return TypeError: unhashable type: 'list'   là cái add list đó có thể thay đổi nên nó không nhận, chỉ khi nào thêm vào các giá trị mà không thể thay đổi thì nó mới nhận (đối với hàm set nó là như vậy)

# vd ta thêm cái chuỗi vô thì nó lại đc tại chuỗi là một cái j đó bất biến không thể thay đổi
set1 = {1, 2, 3, 4}

set1.add("Peanut")
print(type(set1)) # Return <class 'set'>
print(set1) # Return {1, 2, 3, 4, 'Peanut'}  ta có thể thấy được là khi add mà dạng chuỗi (str) thì set nó lại chấp nhận nhưng đối với list thì nó lại không cho phép

# tại sao nói set không có thứ tự vì nó không có giống list vs tuple đều có thứ tự
# Có thứ tự tức là khi ta dùng index thì nó cho ra kết quả, còn set thì nó không có đc 
set2 = {0, 1, 2, 3, 4, 5}
# print(set2[0])  # Return TypeError: 'set' object is not subscriptable  tức là nó không có thứ tự nên ta dò tìm vị trí [0] không thể ra đc kết quả

# set2.remove(1000) # Return KeyError: 1000  tức là 1000 nó không phải là giá trị bên trong set2 nên không thể remove được

set2.pop()

print(set2) # Return {1, 2, 3, 4, 5}  nó sẽ xóa đi 1 gtri bất kì trong set tại ở set 2 có ít giá trị nên nó xóa thằng đầu tiên chứ theo quy luật là nó sẽ xóa ngẫu nhiên giá trị trong set

# còn đối với trường hợp set trống mà ta dùng hàm pop 
# pop(...) unbound builtins.set method
#     Remove and return an arbitrary set element.
#     Raises KeyError if the set is empty.  tức là nó báo lỗi (KeyError) nếu mà cái set trống

# set3 = {}
# set3.pop()

# print(set3)  # Return TypeError: pop expected at least 1 argument, got 0.  Tức là nó báo lỗi (KeyError) nếu mà cái set trống nên set cần phải có ít nhất 1 giá trị 



















