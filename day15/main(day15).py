""" Có 2 cách đọc file CSV """
# Cách 1 dùng vong lặp for qua iterator, ta sử dụng 1 cú pháp mới đề đọc ghi file: with
# Cái with này sẽ tự động đóng file cho chúng ta, chúng ta không cần sử dụng phương thức file.close() nữa - cái này là kiểu đóng file bằng tay, còn with là đóng file tự động 

""" with open("topSubscribed.csv", mode="r", encoding="utf8") as file:
    for line in file:
        print(line.strip()) # strip() là xóa đi 1 hàng xuống dòng khi mà ta in ra, tại vì khi ta dùng print thì nó đã tự động xuống dòng rồi """
    

# Cách 2 để đọc 1 file CSV -> thành list[dict]
import csv
import json

with open("topSubscribed.csv", mode="r", encoding="utf8") as file:
    csv_file = csv.DictReader(file)
    print(json.dumps(list(csv_file),indent=4))  # list[dict]
    # return trả về 1 list[dict]
#[  ...
#    {
#         "Rank": "999",
#         "Youtube Channel": "Painzeiro",
#         "Subscribers": "11,400,000",
#         "Video Views": "2,143,444,281",
#         "Video Count": "946",
#         "Category": "People & Blogs",
#         "Started": "2015"
#     },
#     {
#         "Rank": "1000",
#         "Youtube Channel": "Oum Walid",
#         "Subscribers": "11,400,000",
#         "Video Views": "2,480,064,722",
#         "Video Count": "1,598",
#         "Category": "People & Blogs",
#         "Started": "2015"
#     }
# ]

# Hoặc là ta có thể ghi như sau
""" with open("topSubscribed.csv", mode="r", encoding="utf8") as file:
    csv_file = csv.DictReader(file)
    lst = list(csv_file) # list[dict]
    for item in lst:
        print(item) """



""" H ta muốn ghi dữ liệu vào file CSV thì làm như sau """
import csv

header = ["id", "name", "age"]
students = ["SV001", "Peter", 24]


with open("test1.csv", mode= "w", newline='') as file:  # Cái newline ='' tức là newline bằng rỗng thì khi nó nó sẽ không xuống dòng nữa khi mà ta in ra, còn khi mà ra không có newline='' thì sau khi in nó sẽ xuống dòng. Ta có thể test thử là sẽ hiểu vấn đề 
    csv_writer = csv.writer(file)
    csv_writer.writerow(header)
    csv_writer.writerow(students)

""" mode= r+  tức là vừa đọc vừa ghi"""




"""  """