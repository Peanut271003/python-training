# Baitap
#1. Định nghĩa 4 hàm add, subtract, divide, multiply (+, -, /, *). Mỗi hàm nhận vào hai tham số thực hiện lần lượt các phép toán cộng, trừ, chia, nhân. Lưu ý hàm nên trả về thay vì in ra.

""" ### Tao ham """
# Ham add
def add(x, y):
    return x + y

# Ham subtract
def subtract(x, y):
    return x - y

# Ham divide
def divide(x, y):
    if y == 0:
        print("ZeroDivisionError: division by zero")
    return x / y

# Ham multiply
def multiply(x, y):
    return x * y

""" Goi ham(chay ham) """
x = eval(input(f"Nhap vao gia tri cua x = "))
y = eval(input(f"Nhap vao gia tri cau y = "))

# Trả về kết quả của hàm add và gán vào một biến
total = add(x, y)
print(total)

# Trả về kết quả của hàm subtract và gán vào một biến
sub = subtract(x, y)
print(sub)

# Trả về kết quả của hàm divide và gán vào một biến
div = divide(x, y)
print(div)

# Trả về kết quả của hàm multiply và gán vào một biến
mul = multiply(x, y)
print(mul)

# 2.Định nghĩa một hàm được gọi là print_show_info nhận vào một tham số duy nhất đó là một dict, lúc gọi thì sử dụng dict như sau:

tv_show = {
    "title": "Breaking Bad",
    "seasons": 5,
    "initial_release": 2008
}

# Hàm nên in ra một chuỗi có định dạng như sau:
# Breaking Bad (2008) - 5 seasons

""" Tao ham """
def print_show_info(tv_show):
    print(f"{tv_show["title"]} ({tv_show["initial_release"]}) - {tv_show["seasons"]} seasons")


""" Goi ham """
info = {
    "title": "Breaking Bad",
    "seasons": 5,
    "initial_release": 2008
}

print_show_info(info)

# Return: Breaking Bad (2008) - 5 seasons


# 2.Định nghĩa một hàm được gọi là print_show_data nhận vào một tham số duy nhất đó là một dict, lúc gọi thì sử dụng dict như sau:

tv_show = {
    "title": "Dragon",
    "seasons": 3,
    "year": 2008,
    "actor": "Peanut"
}

# Hàm nên in ra một chuỗi có định dạng như sau:
# Peanut [Dragon] - 3 (2008)

def print_show_data(tv_show):
    print(f"{tv_show["actor"]} [{tv_show["title"]}] - {tv_show["seasons"]} ({tv_show["year"]}) ")

data = {
    "title": "Dragon",
    "seasons": 3,
    "year": 2008,
    "actor": "Peanut"
}
print_show_data(data)

    