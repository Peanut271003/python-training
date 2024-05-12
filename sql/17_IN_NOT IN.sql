  -- IN / NOT IN  -  TÌM KIẾM GIÁ TRỊ TRONG DANH SÁCH
    
	-- IN
	  -- SELECT Column_name(s)

	  -- FROM table_name

	  -- WHERE Column_name IN (value1, value2, ...);
-- Có ý nghĩa tương tự như OR.
-- Cho phép kiểm tra với nhiều giá trị cùng lúc

    -- NOT IN
	  -- SELECT Column_name(s)

	  -- FROM table_name

	  -- WHERE Column_năm NOT IN (value1, value2, ...); 
-- Giá trị của Column khác với giá trị đã được chỉ định.

-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
  -- a, Đơn hàng được giao đến Germany, UK, Brazil
  -- b, Đơn hàng được giao đến các quốc gia khác Germany, UK,Brazil.

--a, CÁCH 1 DÙNG IN
 SELECT *
 FROM[dbo].[Orders]
 WHERE [ShipCountry] IN ('Germany', 'UK', 'Brazil');
 --a, CÁCH 2 DÙNG OR
 SELECT *
 FROM[dbo].[Orders]
 WHERE [ShipCountry] ='Germany' OR [ShipCountry] = 'UK' OR [ShipCountry] = 'Brazil';

--b,
SELECT *
FROM[dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany', 'UK', 'Brazil');

-- Lấy ra các sản phẩm có mã thể loại khác với 2,3 và 4
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID] NOT IN (2,3,4);

-- Hãy lấy ra tất cả các khách hàng đến từ các thành phố sau đây:
-- Berlin, London, Warszawa 
SELECT *
FROM [dbo].[Customers]
WHERE [City] IN ('Berlin', 'London', 'Warszawa');


