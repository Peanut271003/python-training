# sorted => new list
lst = [4, 3, 2, 10]

new_lst = sorted(lst)
print(new_lst)  # Return [2, 3, 4, 10]

new_lst = sorted(lst, reverse=True)
print(new_lst)  # Return [10, 4, 3, 2]


# ord
char = "a"
char1 = "A"
print("ASCII Code:", ord(char))
# Return ASCII Code: 97
print("ASCII Code:", ord(char1))
# Return ASCII Code: 65


# chr
ascii_code = 97
print(chr(ascii_code)) 
# Return: a
ascii_code = 65
print(chr(ascii_code)) 
# Return: A


# list
s = "abcd"
print(list(s))
# Return ['a', 'b', 'c', 'd']

""" lst = list(map(eval, input().split()))

print(lst)  """
# Khi ta nhap vao 4    7,8 8 9
# Return [4, (7, 8), 8, 9]


# divmod 
print(divmod(4, 3))  
# Return (1, 1)
      # (nay la ket qua(4/3), con nay la phan du)

tup = divmod(11, 3)  # 11//3 = 3 , 11 % 3 = 2
print(tup)
# Return (3, 2)
# Hoac ta co the hieu no hon
thuong, phan_du = divmod(11, 3)
print(thuong) # Return 3
print(phan_du) # Return 2


# bin()
int_number = 10
""" 
012345
0b1010
"""
binary_string = bin(int_number)
print(binary_string) # Return: 0b1010
# H ta muon bo 0b thi ta lam nhu sau
print(binary_string[2:])       # Return: 1010
print(format(int_number, "b")) # Return: 1010
print(f"{int_number:b}")       # Return: 1010



