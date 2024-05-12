-- CÂU LỆNH JOIN  -  INNER JOIN HOẶC JOIN - Ý NGHĨA LÀ PHẦN GIAO NHAU (PHẦN CHUNG) CỦA 2 TẬP HỢP HAY LÀ 2 BẢNG
-- TRẢ VỀ TẤT CẢ CÁC HÀNG KHI CÓ ÍT NHẤT MỘT GIÁ TRỊ Ở CẢ HAI BẢNG

-- INNER JOIN
  -- SELECT Column_name(s)

  -- FROM table1

  -- INNER JOIN table2

  -- ON table1.column_name = table2.column_name;
-- Trả về tất cả các hàng khi có ít nhất một giá trị ở cả hai bảng 

-- VD1 SỬ DỤNG INNER JOIN
--  Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
  -- Mã thể loại
  -- Tên thể loại
  -- Mã sản phẩm
  -- Tên sản phẩm

-- CÁCH 1 LÀM THEO CÁCH KẾT NỐI NHIỀU TABLE VS NHAU
SELECT  C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Products] AS P, [dbo].[Categories] AS C
WHERE P.CategoryID = C.CategoryID;
-- CÁCH 2 DÙNG INNER JOIN
SELECT C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Categories] AS C
JOIN  [dbo].[Products] AS P
ON  P.CategoryID = C.CategoryID;
-- HOẶC
SELECT C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM  [dbo].[Products] AS P
JOIN  [dbo].[Categories] AS C
ON  P.CategoryID = C.CategoryID;
-- ==> NÊN TA THẤY LẤY BẢNG NÀO TRC CX DC (FROM BẢNG NÀO TRC CX DC)


-- VD2 SỬ DỤNG INNER JOIN
-- Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
  -- Mã thể loại
  -- Tên thể loại
  -- Số lượng sản phẩm
-- CÁCH 1 DÙNG KẾT HỢP NHIỀU BẢNG
SELECT  C.CategoryID,
		C.CategoryName,
		COUNT(P.ProductID) AS [TotalProducts]
FROM [dbo].[Products] AS P, [dbo].[Categories] AS C
WHERE P.CategoryID = C.CategoryID
GROUP BY C.CategoryID,C.CategoryName;
-- CÁCH 2 DÙNG INNER JOIN
SELECT  C.CategoryID,
		C.CategoryName,
		COUNT(P.ProductID) AS [TotalProducts]
FROM [dbo].[Products] AS P
JOIN [dbo].[Categories] AS C
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID,C.CategoryName;


-- VD3 SỬ DỤNG INNER JOIN
-- Từ 3 bảng Orders, Customers và Shippers hãy in ra các thông tin sau đây:
  -- Mã đơn hàng
  -- Tên công ty khách hàng
SELECT O.OrderID, C.CompanyName
FROM [dbo].[Orders] AS O
JOIN [dbo].[Customers] AS C
ON O.CustomerID = C.CustomerID;



-- CÂU LỆNH LEFT JOIN  -  LEFT OUTER JOIN (HOẶC LEFT JOIN)
-- Trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều 
-- kiện từ bảng bên phải

-- LEFT JOIN 
  -- SELECT Column_name(s)

  -- FROM talble1

  -- LEFT JOIN table2

  -- ON table1.column_name = table2.column_name;
-- Trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều 
-- kiện từ bảng bên phải

-- Thêm các loại sản phẩm mới vào bảng Categories:
  -- Asian Food
  -- Vietnamese Food
-- Ta muốn thêm thì click chuột phải vào table dbo.Categories sau đó chọn
-- Edit top 200 Rows, riêng thằng categoryID mình không thể thêm đc chỉ thêm đc những cột sau nó

-- VD4 SỬ DỤNG INNER JOIN, LEFT JOIN
-- Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây
  -- Mã thể loại 
  -- Tên thể loại
  -- Tên sản phẩm
-- DÙNG INNER JOIN
SELECT C.CategoryID, C.CategoryName, P.ProductName
FROM [dbo].[Categories] AS C
JOIN [dbo].[Products] AS P
ON P.CategoryID = C.CategoryID;
-- DÙNG LEFT JOIN
SELECT C.CategoryID, C.CategoryName, P.ProductName
FROM  [dbo].[Categories] AS C
LEFT JOIN [dbo].[Products] AS P
ON P.CategoryID = C.CategoryID;


-- LƯU Ý HÀM LEFT JOIN NÓ SẼ TRẢ VỀ GTRI TỪ FROM NÊN TA MUỐN NÓ TRẢ VỀ Ô BÊN TRÁI THÌ ĐỂ THẰNG ĐÓ Ở FROM

-- THÊM SỐ LƯỢNG SẢN PHẨM
SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS [TotalProducts]
FROM  [dbo].[Categories] AS C
LEFT JOIN [dbo].[Products] AS P
ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID, C.CategoryName;


-- CÂU LỆNH RIGHT JOIN  -  RIGHT OUTER JOIN (HOẶC RIGHT JOIN)
-- Trả lại tất cả các hàng từ bảng bên phải, và các dòng đúng với điều 
-- kiện từ bảng bên trái

-- RIGHT JOIN 
  -- SELECT Column_name(s)

  -- FROM talble1

  -- RIGHT JOIN table2

  -- ON table1.column_name = table2.column_name;
-- Trả lại tất cả các hàng từ bảng bên phải, và các dòng đúng với điều 
-- kiện từ bảng bên trái

-- Thêm một công ty mới vào bảng Customer ví dụ như là công ty Peanut.vn

-- VD5 TỪ 2 BẢNG ORDERS VÀ CUSTOMERS
-- Sử dụng RIGHT JOIN, HÃY IN RA CÁC THÔNG TIN SAU ĐÂY:
   -- Mã đơn hàng
   -- Tên công ty khách hàng
SELECT O.OrderID, C.CompanyName
FROM [dbo].[Orders] AS O
RIGHT JOIN [dbo].[Customers] AS C
ON C.CustomerID = O.CustomerID;


SELECT O.OrderID, C.CompanyName
FROM [dbo].[Customers] AS C
LEFT JOIN [dbo].[Orders] AS O
ON C.CustomerID = O.CustomerID;
-- ==> CHẠY 2 THẰNG LEFT AND RIGHT Ở VD5 TA CÓ THỂ HIỂU ĐC RẰNG
-- KHI MÀ BẢNG NÀO MÀ MÌNH CHỈNH (THÊM VÀO) THÌ NẾU MÀ DÙNG 
-- LEFT THÌ CHO BẢNG (THAY ĐỔI) Ở FROM (TABLE1) KHI CHẠY NÓ SẼ TRẢ LEFT
-- RIGHT THÌ CHO BẢNG (THAY ĐỔI) Ở RIGHT JOIN (TABLE2) KHI CHẠY NÓ SẼ TRẢ VỀ TABLE2 (RIGHT)


-- CÁC CÂU LỆNH FULL JOIN  -  FULL OUTER JOIN (HOẶC FULL JOIN)
-- TRẢ VỀ TẤT CẢ CÁC DÒNG ĐÚNG VỚI 1 TRONG CÁC BẢNG

-- FULL JOIN
  -- SELECT Column_name(s)
   
  -- FROM table1

  -- FULL JOIN table 2

  -- ON table1.column_name = table2.column_name

  -- WHERE condition;
-- Trả về tất cả các dòng đúng với 1 trong các bảng

-- VD6 SỬ DỤNG FULL JOIN 
-- Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
  -- Mã thể loại
  -- Tên thể loại
  -- Mã sản phẩm
  -- Tên sản phẩm
-- NÀY LÀ DÙNG INNER JOIN  -  77 ROWS
SELECT C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Categories] AS C
JOIN  [dbo].[Products] AS P
ON  P.CategoryID = C.CategoryID;
-- NÀY LÀ DÙNG LEFT JOIN  -- 79 ROWS DO NÓ LẤY THÊM
-- 2 LOẠI CATEGORIES Ở TABLE1 DO TA MỚI THÊM VÀO
SELECT C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Categories] AS C
LEFT JOIN  [dbo].[Products] AS P
ON  P.CategoryID = C.CategoryID;
-- NÀY LÀ DÙNG FULL JOIN  -  80 ROWS DO NÓ LẤY TẤT CẢ TỪ 2 TABLE 
SELECT C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Categories] AS C
FULL JOIN  [dbo].[Products] AS P
ON  P.CategoryID = C.CategoryID;


