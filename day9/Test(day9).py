""" Ta có 1 vd hay về for else
TH1: Khi for else có break
TH2: Khi for else không có break """

# TH1: For Else có break
for i in range(1, 23):
    if i % 2 == 0:
        break

    print(i, end=' ')
else:
    print("Success")
# Return: 1
# Ta có thể hiểu là khi i = 1(start), 1 % 2 không bằng 0 -> nó print() ra 1, sau đó i = 2 -> 2 % 2 bằng 0 (True) thì  nó run break và kêt thúc khỏi vòng lặp (không chạy thằng else) và nó chỉ in ra 1 giá trị là 1
""" Nên ta có thể lưu ý là khi có for else mà còn có cả break(đứng trc else) thì thằng else sẽ không bao h đc chạy cả bởi vì thằng break là nó thoát ra khỏi vòng lặp đó. Còn trường hợp mà thằng else nó đứng trc break thì thằng else nó vẫn được thực thi như bình thường."""


# TH2: For Else không có break
for i in range(1, 23):
    print(i, end=' ')
else: 
    print("Success")
# Return: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 Success
# Ta hiểu ở đây là khi i = 1(start), sau đó nó chạy thằng print() và in ra 1 -> nó cứ chạy thế đến i = 22 (i=23 nó không có lấy, nó như kiểu list slicing chỉ lấy từ start đến giá trị trc stop và không lấy giá trị stop). Sau khi nó chạy xong thằng range() rồi nó mới bắt đầu chạy thằng else và nó in ra thêm success.


# Ta có thể vd hay hơn để hiểu rõ:
for a in range(1, 23):
    if a % 2 == 0:
        continue

    print(a, end=' ')
else:
    print("Success")
# Return: 1 3 5 7 9 11 13 15 17 19 21 Success
# Ta có thể hiểu là khi a = 1(start), 1 % 2 không bằng 0(False) thì nó sẽ print ra là 1 -> sau đó i = 2 thì 2 % 2 thì bằng 0(True) nên nó run continue rồi nhảy qua i = 3(vì continue nghĩa là bỏ qua các câu lệnh bên dưới nó và chuyển qua 1 lần lặp mới) và cứ như thế cho đến khi a = 22. Sau khi chạy xong cái thằng range thì nó mới bắt đầu chạy cái thằng else và in ra thêm giá trị Success.

""" Qua đó ta có thể thấy được là chỉ có thằng break them vào thì khi đó thằng else sẽ không đc chạy như vd ở trên, còn cái thằng continue thì nó vẫn chạy đc thằng else """



