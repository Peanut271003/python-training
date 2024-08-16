def draw_christmas_tree(height):
  for i in range(height):
    print(' ' * (height - i - 1) + '*' * (2 * i + 1))
  print(' ' * (height - 1) + '*')
  print(' ' * (height - 1) + '*')

height = 10  # Điều chỉnh độ cao của cây thông
draw_christmas_tree(height)