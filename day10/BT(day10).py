# Baitap 
# 1. Đếm số chẵn và lẽ trong đoạn [0, 1000] theo 2 cách: thông thường và list comprehension
# Cách 1: thông thường
Odd = Even = 0
for x in range(0, 1001):
    if x % 2 == 0:
        Even += 1
    else:
        Odd += 1

print(f"Số chẵn có trong đoạn [0, 1000] là: {Even}")
print(f"Số lẻ có trong đoạn [0, 1000] là: {Odd}")
# Return: Số chẵn có trong đoạn [0, 1000] là: 501
# Return: Số lẻ có trong đoạn [0, 1000] là: 500

# Cách 2: list comprehension 
Even = sum([1 for n in range(0, 1001) if n % 2 == 0])
Odd = sum([1 for n in range(0, 1001) if n % 2 != 0])
print("Số chẵn có trong đoạn [0, 1000] là:", Even)
print("Số lẻ có trong đoạn [0, 1000] là:", Odd)
# Return: Số chẵn có trong đoạn [0, 1000] là: 501
# Return: Số lẻ có trong đoạn [0, 1000] là: 500



# 2. Nhập vào một danh sách những số nguyên và hiển thị gấp đôi của các số trong danh sách sử dụng list comprehension
lst = [int(x) for x in input("Nhập vào danh sách các số nguyên:\n").split()]

new_lst = [x*2 for x in lst]
print(new_lst)
# Return: [4, 10, 16, 22, 28, 34, 42]



# 3. Cho dict như sau:
people = {
    "Emma": 71, 
    "Jack": 45, 
    "Amy": 15, 
    "Ben": 29
}

# 3.1 In ra người già nhất ( cần học kĩ tư duy này)
max_age = max(people.values())

for name, age in people.items():
    if max_age == age:
        print(f"Người già nhất: {name}")
        break 

# Return: Người già nhất: Emma


# 3.2 Tạo ra một dict mới dựa vào people dict với tuổi của mỗi người tăng gấp đôi
import json
people = {
    "Emma": 71, 
    "Jack": 45, 
    "Amy": 15, 
    "Ben": 29
}

new_dict_people = {
    name: age * 2 for name, age in people.items()
}
print(f"new_dict_people = {json.dumps(new_dict_people,indent=4)}")
# Return: 
# new_dict_people = {
#     "Emma": 142,
#     "Jack": 90,
#     "Amy": 30,
#     "Ben": 58
# }


# 3.3 In ra enumerate các key trong people dict
people = {
    "Emma": 71, 
    "Jack": 45, 
    "Amy": 15, 
    "Ben": 29
}

print(list(enumerate(people)))
# Return: [(0, 'Emma'), (1, 'Jack'), (2, 'Amy'), (3, 'Ben')]



# 3.4 Sử dụng hàm dict để biến enumerate trên trở thành dict
import json
people = {
    "Emma": 71, 
    "Jack": 45, 
    "Amy": 15, 
    "Ben": 29
}

new_dict = dict(enumerate(people))
print(json.dumps(new_dict,indent=4))
# Return: 
# {
#     "0": "Emma",
#     "1": "Jack",
#     "2": "Amy",
#     "3": "Ben"
# }


# 4. Sử dụng zip function để tạo 2 lists sau trở thành một dict:
import json
fruits = ["banana", "apple", "kiwi", "mango", "cherry", "orange"]
amounts = [12, 34, 90, 100, 300, 45, 60, 70, 678]

print("dict =", json.dumps(dict(zip(fruits, amounts)),indent= 4))
# Return: 
# dict = {
#     "banana": 12,
#     "apple": 34,
#     "kiwi": 90,
#     "mango": 100,
#     "cherry": 300,
#     "orange": 45
# }




