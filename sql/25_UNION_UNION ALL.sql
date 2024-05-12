-- UNION / UNION ALL   -   KẾT HỢP CÁC KẾT QUẢ

-- TRUY VẤN I
 -- Từ bảng Order Details hãy liệt kê các đơn hàng có Unit Price nằm
 -- trong phạm vi từ 100 đến 200
 -- I - 22 rows
SELECT OD.OrderID
FROM [dbo].[Order Details] AS OD
WHERE  OD.UnitPrice BETWEEN   100 AND 200;

-- TRUY VẤN II
 -- Đưa ra các đơn đặt hàng có Quantity bắng 10 hoặc 20
 -- II -  433 rows
 SELECT OD.OrderID
FROM [dbo].[Order Details] AS OD
WHERE  OD.Quantity IN(10,20); 

-- TRUY VẤN III
 -- Từ bảng Order Details hãy liệt kê các đơn hàng có Unit Price nằm
 -- trong phạm vi từ 100 đến 200 VÀ đơn hàng phải có Quantity bằng
 -- 10 hoặc 20
 -- III = I AND II  -  7 rows
SELECT OD.OrderID
FROM [dbo].[Order Details] AS OD
WHERE   OD.UnitPrice BETWEEN   100 AND 200
		AND OD.Quantity IN(10,20);

-- TRUY VẤN IV
 -- Từ bảng Order Details hãy liệt kê các đơn hàng có Unit Price nằm
 -- trong phạm vi từ 100 đến 200 HOẶC(OR) đơn hàng phải có Quantity
 -- bằng 10 hoặc 20
 -- IV = I OR II  -  448 rows
SELECT OD.OrderID
FROM [dbo].[Order Details] AS OD
WHERE   OD.UnitPrice BETWEEN   100 AND 200
		OR OD.Quantity IN(10,20);

-- TRUY VẤN V
 --Từ bảng Order Details hãy liệt kê các đơn hàng có Unit Price nằm
 -- trong phạm vi từ 100 đến 200 HOẶC(OR) đơn hàng phải có Quantity
 -- bằng 10 hoặc 20, có sử dụng DISTINCT (LẤY RA DỮ LIỆU KHÔNG TRÙNG LẶP NHAU)
 -- V = IV + DISTINCT  -  360 rows
SELECT DISTINCT OD.OrderID
FROM [dbo].[Order Details] AS OD
WHERE   OD.UnitPrice BETWEEN   100 AND 200
		OR OD.Quantity IN(10,20);


-- CÂU LỆNH UNION 
  -- SELECT Column_name(s) FROM table 1

  -- UNION 

  -- SELECT Column_name(s) FROM table 2;
-- Được sử dụng để kết hợp tập kết quả của hai hoặc nhiều câu lệnh
-- Mỗi câu lệnh bên trong phải có cùng số lượng cột
-- Các cột cũng phải có kiểu dữ liệu tương tự 
-- Các cột trong mỗi câu lệnh cũng phải theo cùng thứ tự


-- CÂU LỆNH UNION ALL
  -- SELECT Column_name(s) FROM table 1

  -- UNION ALL 

  -- SELECT Column_name(s) FROM table 2;
-- Được sử dụng để kết hợp tập kết quả của hai hoặc nhiều câu lệnh
-- Mỗi câu lệnh bên trong phải có cùng số lượng cột
-- Các cột cũng phải có kiểu dữ liệu tương tự 
-- Các cột trong mỗi câu lệnh cũng phải theo cùng thứ tự
-- CHO PHÉP CÁC GIÁ TRỊ BỊ LẶP LẠI



-- VD1 - UNION
  -- Thực hiện lại truy vấn số V, sử dụng câu lệnh UNION
  -- RESULT - 360 rows
SELECT OD.OrderID FROM [dbo].[Order Details] AS OD WHERE  OD.UnitPrice BETWEEN 100 AND 200
UNION
SELECT OD.OrderID  FROM [dbo].[Order Details] AS OD WHERE OD.Quantity IN(10,20);

-- VD2 - UNION ALL
  -- Thực hiện lại truy vấn số V, sử dụng câu lệnh UNION ALL
  -- RESULT - 455 rows
SELECT OD.OrderID FROM [dbo].[Order Details] AS OD WHERE  OD.UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT OD.OrderID  FROM [dbo].[Order Details] AS OD WHERE OD.Quantity IN(10,20);
-- LƯU Ý UNION ALL NÓ SẼ LẤY LUÔN CẢ GIÁ TRỊ BỊ TRÙNG LẶP TỨC LÀ LẤY I + II


-- VD3 
-- Hãy liệt kê toàn bộ  quốc gia  trong 2 Tables 
-- Suppliers và Customers với 2 tình huống sử dụng UNION và UNION ALL
SELECT	DISTINCT C.Country FROM [dbo].[Customers] AS C
UNION
SELECT  DISTINCT S.Country	FROM [dbo].[Suppliers]	AS S;

SELECT	 DISTINCT C.Country FROM [dbo].[Customers] AS C
UNION ALL
SELECT   DISTINCT S.Country	FROM [dbo].[Suppliers]	AS S;


-- VD4 
SELECT C.City,C.Country FROM [dbo].[Customers] AS C  WHERE C.Country LIKE 'U%'
UNION
SELECT S.City,S.Country  FROM [dbo].[Suppliers] AS S WHERE S.City = 'London'
UNION
SELECT O.ShipCity, O.ShipCountry FROM [dbo].[Orders] AS O WHERE O.ShipCountry = 'USA';
