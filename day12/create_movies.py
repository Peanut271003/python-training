""" Công việc của bạn là tạo ra một ứng dụng lưu trữ những bộ phim mà cho phép người dùng quản lý bộ sưu tập các bộ phim của họ và tìm bất kỳ bộ phim nào họ muốn """
USER_MENU = """ Nhập
a - Thêm một bộ phim mới
l - Hiện thị danh sách phim 
s - Tìm một bộ phim
x - Xóa phim theo tên
u - Cập nhật thông tin
q - Thoát
Lựa chọn của bạn: """

# Định nghĩa cấu trúc dữ liệu lưu trữ các bộ phim
# list[dict]: mỗi bộ phim(movie) là 1 dictionary nằm trong danh sách movies 
movies = []

# Kiểm tra các bộ phim duy nhất
prev = set()


""" Định nghĩa cấc hàm xử lý """
# Thêm một bộ phim mới
def add_movie():
    # Nhập thông tin bộ phim
    name = input("Nhập vào tên bộ phim\t\t: ")

    while name in prev:
        print("Bộ phim đã bị trùng! Yêu cầu nhập lại!")
        name = input("Nhập vào tên bộ phim\t\t: ")
    director = input("Nhập vào tên đạo diễn\t\t: ")
    main_actor =  input("Nhập vào tên diễn viên chính\t:")
    year = input("Nhập vào năm phát hành\t\t: ")


    # Tạo một bộ phim (dict)
    movie = {
        'name': name,
        'director': director,
        'main_actor': main_actor,
        'year': year
    }

    # Thêm vào danh sách
    movies.append(movie)
    prev.add(name)

# Hiện thi thông tin chi tiết
def show_movie(movie):
    movie_name = movie["name"]
    movie_director = movie["director"]
    movie_main_actor = movie["main_actor"]
    movie_year = movie["year"]

    print(f"Tên\t\t: {movie_name}")
    print(f"Đạo diễn\t: {movie_director}")
    print(f"Diễn viên chính\t: {movie_main_actor}")
    print(f"Năm phát hành\t: {movie_year}")

# Hiện thị các bộ phim
def show_movies():
    if movies:
        for idx, movie in enumerate(movies, start=1):
            print("Thông Tin Bộ Phim", idx)
            show_movie(movie)
    else:
        print("Danh sách phim trống")

# Tìm kiếm phim theo tên
def search_movie():
    if movies:
        movie_name = input("Nhập vào tên bộ phim: ")

        for idx, movie in enumerate(movies, start=1):
            if movie["name"] == movie_name:
                print("Thông Tin Bộ Phim", idx)
                show_movie(movie)
                break
        else:
            print("Không tìm thấy bộ phim có tên là:", movie_name)
    else:
        print("Danh sách phim trống!")

# Xóa phim theo tên
def remove_movie():
    if movies:
        movie_name = input("Nhập vào tên bộ phim: ") 
        for idx, movie in enumerate(movies, start=0):
            if movie["name"] == movie_name:
                del movies[idx]
                print("Đã xóa bộ phim thành công!")
                break
        else:
            print("Không tìm thấy bộ phim có tên là:", movie_name)
    else:
        print("Danh sách phim trống!")
    
# Cập nhật thông tin 
def update_movie():
    if movies:
        movie_name = input("Nhập vào tên bộ phim\t\t: ")
        
        founds = [
            idx 
            for idx, movie in enumerate(movies, start=0) 
            if movie["name"] == movie_name
        ]

        if founds:
            position = founds[0] 

            movies[position]["director"] = input("Nhập vào tên đạo diễn\t\t: ")
            movies[position]["main_actor"] = input("Nhập vào tên diễn viên chính\t: ")
            movies[position]["year"] = input("Nhập vào năm phát hành\t\t: ")

            print("Cập nhật bộ phim thành công!")
        else:
            print("Không có bộ phim tên là:", movie_name)
    else:
        print("Danh sách phim trống!")

# Nhập sự lựa chọn của người dùng
user_choice = input(USER_MENU)

# Định nghĩa 1 dictionary dùng để lưu các option ứng với hành động
operations = {
    "a": add_movie,
    "l": show_movies,
    "s": search_movie,
    "u": update_movie,
    "x": remove_movie,
}

# Chọn nhiều option cho đến khi thoát
while user_choice != "q":
    # Kiểm tra lựa chọn có nằm trong dict( operations ) hay không?
    # Nếu có thì gọi hàm, còn không có thì in ra "Lựa chọn này không hợp lệ. Vui lòng nhập lại"
    if user_choice in operations:
        operation = operations[user_choice]
        operation()
    else:
        print("Lựa chọn này không hợp lệ. Vui lòng nhập lại")
    # Nhập sự lựa chọn của người dùng
    user_choice = input(USER_MENU)



