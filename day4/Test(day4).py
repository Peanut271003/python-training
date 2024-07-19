print(7//2)
# Này là khi ta muốn print cái list nó chạy xuống hàng như thế này thì ta dùng pprint
from pprint import pprint
movies = ["Titanic", 
          "Gone with the wind", 
          "The Godfather",
          "Star Wars",
          "Bảy Viên Ngọc Rồng 123456788999899",
          "abcgdjdkdkdkdkdkdkdkdkdkdkdkdkdkdk"]
pprint(movies)#Return['Titanic',
                    # 'Gone with the wind',
                    # 'The Godfather',
                    # 'Star Wars',
                    # 'Bảy Viên Ngọc Rồng 123456788999899',
                    # 'abcgdjdkdkdkdkdkdkdkdkdkdkdkdkdkdk']
