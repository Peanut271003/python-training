# Baitap1 
# Cho hai tập hợp (set)

art_students = {"John", "Max", "Anna", "Bob", "Obito"}
math_students = {"Max", "Mery", "David", "Anna", "Naruto", "John"}

# Tìm những người bạn học cả vẽ lẫn toán
a = art_students.intersection(math_students)
print(a)                            # Return {'Anna', 'John', 'Max'}
print(art_students & math_students) # Return {'Anna', 'John', 'Max'}


# Tìm những người bạn học vẽ nhưng không học toán
b = art_students.difference(math_students)
print(b)                            # Return {'Bob', 'Obito'}
print(art_students - math_students) # Return {'Bob', 'Obito'}


# Tìm những người bạn học toán nhưng không học vẽ
c = math_students.difference(art_students)
print(c)                            # Return {'David', 'Mery', 'Naruto'}
print(math_students - art_students) # Return {'David', 'Mery', 'Naruto'}


# Tìm những người bạn học vẽ hay toán không phải cả hai
d = math_students.symmetric_difference(art_students)
print(d)                            # Return {'Mery', 'Naruto', 'David', 'Obito', 'Bob'}
print(math_students ^ art_students) # Return {'Mery', 'Naruto', 'David', 'Obito', 'Bob'}


# Tìm tất cả những người bạn
e = math_students.union(art_students)
print(e)                            # Return {'David', 'Obito', 'Bob', 'John', 'Mery', 'Anna', 'Naruto', 'Max'}
print(math_students | art_students) # Return {'Bob', 'Anna', 'Mery', 'Naruto', 'Obito', 'Max', 'David', 'John'}



#Baitap2
# Cho dict sau:
album_info = {
    "album_name": "The Dark Side of the Moon", 
    "band": "Pink Floyd", 
    "release_year": 1973,
    "track_list": [
        "Speak to Me",
        "Breathe", 
        "On the Run", 
        "Time", 
        "The Great Gig in the Sky",
        "Money"
        "Us and Them",
        "Any Colour You Like",
        "Brain Damage", 
        "Eclipse"
    ]
}

# Yeu cau
# 1. Lấy ra các gtri của các key sau: album_ name, release_year bằng hai cách
# Cach 1
album_name = album_info.get("album_name")
release_year = album_info.get("release_year")

print(f"Lấy ra giá trị của key album_name\t: {album_name}")      # Return: Lấy ra giá trị của key album_name    : The Dark Side of the Moon
print(f"Lấy ra giá trị của key release_year\t: {release_year}")  # Return: Lấy ra giá trị của key release_year	: 1973

# Cach 2
album_name2 = album_info["album_name"]
release_year2 = album_info["release_year"]

print("Lay ra gia tri cua key album_name\t: ", album_name2)        # Return: Lay ra gia tri cua key album_name	:  The Dark Side of the Moon
print("Lay ra gia tri cua key release_year\t: ", release_year2)    # Return: Lay ra gia tri cua key release_year:  1973


# 2. Thay đổi giá trị của các key: release_year từ 1973 thành 1971
import json 
album_info.update(release_year = 1971)
print(json.dumps(album_info, indent= 4))
# Return 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1971,
#     "track_list": [
#         "Speak to Me",
#         "Breathe",
#         "On the Run",
#         "Time",
#         "The Great Gig in the Sky",
#         "MoneyUs and Them",
#         "Any Colour You Like",
#         "Brain Damage",
#         "Eclipse"
#     ]
# }

# Hoac co the lam bang cach nay, ta tu che la release_year tu 1971 thanh 1975
album_info ["release_year"] = 1975
print(json.dumps(album_info, indent = 4))
# Return 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1975,
#     "track_list": [
#         "Speak to Me",
#         "Breathe",
#         "On the Run",
#         "Time",
#         "The Great Gig in the Sky",
#         "MoneyUs and Them",
#         "Any Colour You Like",
#         "Brain Damage",
#         "Eclipse"
#     ]
# }


# 3. Xóa phần tử với key là track_list
""" del album_info["track_list"]
print(json.dumps(album_info, indent = 4)) """
# Return 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1975
# }

# hoac ta co the dung ham pop(lay gia tri cua cai key do), con popitem(la lay ca key va ca gia tri cua key)
a = album_info.pop("track_list")

print(a)  # Return ['Speak to Me', 'Breathe', 'On the Run', 'Time', 'The Great Gig in the Sky', 'MoneyUs and Them', 'Any Colour You Like', 'Brain Damage', 'Eclipse']
print(json.dumps(album_info, indent = 4))
# Return 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1975
# }


# 4. Thêm một key mới là amount = 2000 bằng hai cách
# Cach1
album_info ["amount1"] = 2000
print(json.dumps(album_info, indent = 4))
# Return: 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1975,
#     "amount1": 2000
# }

# Cach2
album_info.update(amount2 = 2000)
print(json.dumps(album_info, indent = 4))
# Return 
# {
#     "album_name": "The Dark Side of the Moon",
#     "band": "Pink Floyd",
#     "release_year": 1975,
#     "amount1": 2000,
#     "amount2": 2000
# }

# 5. Làm trống dict: album_info 
album_info.clear()
print(album_info)  # Return {}