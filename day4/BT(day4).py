# 1. Tạo một movies list chứa tên các bộ phim đã xem
movies = ["Titanic", 
          "Gone with the wind", 
          "The Godfather",
          "Star Wars",
          "Bảy Viên Ngọc Rồng"]
print("Câu 1")
print(movies)

# 2. Sử dụng hàm input để nhập vào một bộ phim khác không có trong movies list
new_movies = input("Nhập vào một bộ phim mới: ")
print("Câu 2")
print(new_movies)

# 3. Thêm bộ phim vừa nhập vào cuối của danh sách movies
movies.append(new_movies)
print("Câu 3")
print(movies)

# 4. In ra bộ phim đầu tiên, cuối cùng và ở giữa movies list
print("Câu 4")
print("Bộ phim đầu tiên:", movies[0])
print("Bộ phim cuối cùng:", movies[-1])
count = len(movies)
print("Bộ phim ở giữa:", movies[count//2])

# 5. Tính tổng bộ phim có trong movies
amount = len(movies)
print("Câu 5")
# print("Tổng bộ phim có trong movies", "=", amount)
print(f"Tổng bộ phim có trong movies = {amount}")

# 6. Xóa bộ phim đầu và cuối trong movies
print("Câu 6")
# movies.remove("Titanic") # Cách 1
movies.remove(movies[0])   # Cách 2
print("Xóa bộ phim đầu:", movies)
movies.remove(movies[-1])
print("Xóa bộ phim cuối:", movies)

# 7. Lấy ra và xóa bộ phim cuối cùng trong movies
a = movies.pop()
print("Câu 7")
print("Bộ phim cuối cùng: ", a) 
print(movies)

# 8. Chèn một bộ phim bất kỳ vào đầu danh sách movies
movies.insert(0,"One Piece")
print("Câu 8")
print(movies)

# 9. Đếm số bộ phim có tiêu đề là "One Piece"
Count_One_Piece = movies.count("One Piece")
print("Câu 9")
print("Số bộ phim có tiêu đề là One Piece =", Count_One_Piece)

# 10. Tìm vị trí của bộ phim có tên là "gió"
# index_of_gio = movies.index("gió")
print("Câu 10")
# print(index_of_gio) # Return ValueError: 'gió' is not in list
# Vậy ta thử tìm vị trí của One Piece xem (câu hỏi ngoài)
index_of_One_Piece = movies.index("One Piece")
print(index_of_One_Piece) # Return 0

# 11. Thêm một danh sách bộ phim khác vào cuối danh sách movies ban đầu (nhớ là dùng hàm extend)
movies.extend(["Tây du kí", " Thủy Hử", "3Q Củ Hành"])
print("Câu 11")
print(movies)

# 12. Xóa tất cả các bộ phim có trong danh sách (nhớ là ta dùng hàm clear)
movies.clear()
print('Câu 12')
print("Danh sách bộ phim hiện có:", movies)


# Lưu ý khi mà có một chuỗi dài ta muốn in nó ra theo list như này ta phải import pprint
from pprint import pprint
movies = ["Titanic", 
          "Gone with the wind", 
          "The Godfather",
          "Star Wars",
          "Bảy Viên Ngọc Rồng 123456788999899",
          "abcgdjdkdkdkdkdkdkdkdkdkdkdkdkdkdk"]
pprint(movies) 
# Return ['Titanic',
        # 'Gone with the wind',
        # 'The Godfather',
        # 'Star Wars',
        # 'Bảy Viên Ngọc Rồng 123456788999899',
        # 'abcgdjdkdkdkdkdkdkdkdkdkdkdkdkdkdk']
