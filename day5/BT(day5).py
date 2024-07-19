# Baitap1

friends = ["Jen", "Jack", "Kenny", "Jelly", "Bob", "Henry", "Anne"]

# a, Lấy ra 4 người bạn đầu tiên trong friends
print(f"Lấy ra 4 người bạn đầu tiên trong friends: {friends[:4]}")
""" Return: ['Jen', 'Jack', 'Kenny', 'Jelly'] """

# b, Lấy ra 4 người bạn cuối trong friends
print(f"Lấy ra 4 người bạn cuối cùng trong friends: {friends[-4:]}")
""" Return: ['Jelly', 'Bob', 'Henry', 'Anne'] """

# c, Đảo ngược danh sách friends 
print(f"Đảo ngược danh sách friends: {friends[::-1]}")
""" Return: ['Anne', 'Henry', 'Bob', 'Jelly', 'Kenny', 'Jack', 'Jen'] """

# d, Lấy ra những người bạn từ vị trí 1 đến hết
print(f"Lấy ra những người bạn từ vị trí 1 đến hết: {friends[1:]}")
""" Return: ['Jack', 'Kenny', 'Jelly', 'Bob', 'Henry', 'Anne'] """

# e, Copy danh sách ban đầu thành một danh sách mới
new_friends = friends[:]
print(f"Copy danh sách ban đầu thành một danh sách mới: {new_friends}")
""" Return: ['Jen', 'Jack', 'Kenny', 'Jelly', 'Bob', 'Henry', 'Anne'] """

# f, Lấy ra những người bạn từ vị trí số 2 đến sát cuối
print(f"Lấy ra những người bạn từ vị trí số 2 đến sát cuối: {friends[2:-1]}")
""" Return: ['Kenny', 'Jelly', 'Bob', 'Henry'] """

#Baitap2
# Cho danh sách các sinh viên chứa thông tin của mỗi sinh viên [id, tên, tuổi] nhu sau:
students = [["SV001", "Bob", 23], 
            ["SV002", "Kenny", 34], 
            ["SV003", "Henry", 45]]

# a, Lấy ra thông tin của sinh viên thứ nhất và in ra định dạng "ID: {id}, name:{name} - age: (age)"
print(f"Lấy ra thông tin của sinh viên thứ nhất: ID:{students[0][0]}, name:{students[0][1]} - age:{students[0][2]}")
""" Return: ID:SV001, name:Bob - age:23 """

# b, Lấy ra tuổi của sinh viên thứ hai
print(f"Thông tin của sinh viên thứ 2: {students[1]}")
print(f"Lấy ra tuổi của sinh viên thứ hai: {students[1][2]}")
""" Return: Thông tin của sinh viên thứ 2: ['SV002', 'Kenny', 34]
            Lấy ra tuổi của sinh viên thứ hai: 34 
"""

# c, Lấy ra thông tin hai sinh viên cuối cùng 
print(f"Lấy ra thông tin hai sinh viên cuối cùng:{students[-2:]} ")
""" Return: [['SV002', 'Kenny', 34], 
             ['SV003', 'Henry', 45]] """

# d, Lấy ra id của sinh viên thứ 3
print(f"Thông tin của sinh viên thứ 3: {students[2]}")
print(f"Lấy ra id của sinh viên thứ ba: {students[-1][0]}")
""" Return: Thông tin của sinh viên thứ 3: ['SV003', 'Henry', 45]
            Lấy ra id của sinh viên thứ ba: SV003 
"""
