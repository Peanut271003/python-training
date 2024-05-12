-- DAY, MONTH, YEAR 
    -- HÀM DAY
     -- SELECT DAY('2023-08-25') ...
	 --  ==> 25
-- LẤY RA DỮ LIỆU NGÀY
   
   -- HÀM MONTH
    -- SELECT MONTH('2023-08-25') ...
	--  ==>  08
-- LẤY RA DỮ LIỆU THÁNG

   -- HÀM YEAR
    -- SELECT YEAR('2023-08-25') ...
	--  ==> 2023
-- LẤY RA DỮ LIỆU NĂM


-- Tính số lượng đơn đặt hàng trong năm 1997 của từng khách hàng?
SELECT  [CustomerID], 
		COUNT([OrderID]) AS [TotalOrders],
		YEAR ([OrderDate]) AS [YEAR]
FROM [dbo].[Orders]
WHERE YEAR ([OrderDate]) = 1997
GROUP BY [CustomerID],YEAR ([OrderDate]);

-- Hãy lọc ra các đơn hàng được đặt vào tháng 5 năm 1997
SELECT *
FROM [dbo].[Orders]
WHERE MONTH ([OrderDate]) = 5 AND YEAR ([OrderDate]) = 1997;

--Tính số lượng đơn đặt hàng vào tháng 5 năm 1997 của từng khách hàng?
SELECT  [CustomerID], 
		COUNT([OrderDate]) AS [TotalOrders],
		MONTH([OrderDate]) AS [MONTH],
		YEAR([OrderDate]) AS [MONTH]
FROM [dbo].[Orders]
WHERE MONTH([OrderDate]) = 5 AND YEAR([OrderDate]) = 1997
GROUP BY [CustomerID],MONTH([OrderDate]),YEAR([OrderDate]);


-- Lấy danh sách các đơn đặt hàng được đặt vào 
-- ngày 4 tháng 9 năm 1996

-- CÁCH 1
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] = '1996-09-04';

-- CÁCH 2
SELECT *
FROM [dbo].[Orders]
WHERE DAY([OrderDate]) = 4 AND MONTH([OrderDate]) = 9 AND YEAR([OrderDate]) = 1996;

-- Lấy danh sách khách hàng đặt hàng trong năm 1998
-- và số đơn hàng mỗi tháng, sắp xếp tháng tăng dần
SELECT  [CustomerID],
		MONTH([OrderDate]) AS [MONTH],
		COUNT(*) AS "SỐ ĐƠN ĐẶT HÀNG"
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1998
GROUP BY  [CustomerID],MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC, [CustomerID] ASC;

-- Hãy lọc ra các đơn đặt hàng đã được giao vào tháng 5
-- và sắp xếp tăng dần theo năm
SELECT *, YEAR([OrderDate]) AS [YEAR]
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) =5
ORDER BY YEAR([ShippedDate]) ASC;
-----------------------------
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) =5
ORDER BY YEAR([ShippedDate]) ASC;
