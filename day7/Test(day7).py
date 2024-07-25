""" friends = [("hai","male"), ("ngoc","female"),("huy", "male")]
print(type(friends), "\n")
### Lưu ý cái "\n" là nó cách hàng(xuống dòng) """

a = 0
lst = list(map(eval, input("Nhap vao he so a, b, c:").split()))
print(lst)
# Return 
# Nhap vao he so a, b, c: a 1 2 3
# [0, 1, 2, 3]
# Return 
# Nhap vao he so a, b, c: 1 3.45 6         677 4.5 -7.68
# [1, 3.45, 6, 677, 4.5, -7.68] 
