# Baitap1 

# Cho 1 list chứa các tuple như sau:
friends = [("Bob", "Male"), ("Anna", "Female"), ("Max", "Male")]

# a, Cho biết chiều dài của friends
print(f"Chiều dài của {friends} là {len(friends)}")  
# Return Chiều dài của [('Bob', 'Male'), ('Anna', 'Female'), ('Max', 'Male')] là 3


# b, Lấy ra phần tử đầu, cuối và giữa và kiểm tra kiểu của chúng
first = friends[0]
mid = friends[1]
last = friends[-1]

print(f"Phần tử đầu: {first}")  # Return Phần tử đầu: ('Bob', 'Male')
print(f"Phần tử giữa: {mid}")   # Return Phần tử giữa: ('Anna', 'Female')
print(f"Phần tử cuối: {last}")  # Return Phần tử cuối: ('Max', 'Male')

print(type(first))  # Return <class 'tuple'>
print(type(mid))  # Return <class 'tuple'>
print(type(last))  # Return <class 'tuple'>


# c, Nhập vào tên(name) và giới tính(gender) của một người bạn sau đó append vào friends tuple gồm hai giá trị (name, gender)
friends_name = input("Nhập vào tên người bạn\t: ")
gender = input("Nhập vào giới tính\t: ")
#friends.append((friends_name, gender)) Cách này cũng đc mà ta nên làm thêm biến cho nó dễ hơh ta làm như sau:

friends_tuple = (friends_name, gender)
friends.append(friends_tuple)
print(friends)


print('***************************************************************************************************************************')


# Baitap2 

# Tạo một set trống có tên set là set_a
set_a = set()

# a, Thêm "Anna" vào set_a
set_a.add("Anna")
print(set_a, "\n")  # Return {'Anna'}    ***Luu y cai "\n" la no xuong dong(kieu cach dong)

# b, Thêm một tuple ("Kenny", "Jen", "Danny")
set_a.update(("Kenny", "Jen", "Danny"))
print(set_a)  # Return {'Jen', 'Danny', 'Kenny', 'Anna'}

# c, In ra set_a và tính chiều dài của nó
print(f"In ra set_a\t\t: {set_a}")          # Return In ra set_a			: {'Jen', 'Kenny', 'Anna', 'Danny'}
len_set_a = len(set_a)
# print("Chiều dài của set_a:", len_set_a)
print(f"Chiều dài của set_a\t: {len_set_a}")  # Return Chiều dài của set_a	: 4

# d, Xóa "Jen" ra khỏi set_a
set_a.remove("Jen")
print(set_a)  # Return {'Danny', 'Kenny', 'Anna'}

# e, Xóa tất cả các giá trị từ set_a
set_a.clear()
print(set_a) # set()
