   -- TOÁN TỬ BETWEEN
     -- SELECT Column_name(s)

	 -- FROM table_name

	 -- WHERE Column_name BETWEEN value1 AND value2;
-- Toán tử BETWEEN chọn các giá trị trong một phạm vi nhất
-- định, các giá trị có thể là số, văn bản hoặc ngày tháng.

-- Toán tử BETWEEN bao gồm: giá trị bắt đầu và kết thúc


-- Lấy danh sách các sản phẩm có giá bán trong khoảng
-- 10 đến 20 đô la.
SELECT  [ProductID],
		[ProductName],
		[UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN  10 AND 20;

---------

SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN  10 AND 20;
 
-- Lấy danh sách các đơn đặt hàng được đặt trong khoảng
-- thời gian từ ngày 1996-07-01 đến ngày 1996-07-31
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Tính tổng số tiền vận chuyển (Freight) của các đơn
-- đặt hàng được đặt trong khoảng thời gian
-- từ ngày 1996-07-01 đến ngày 1996-07-31
SELECT SUM([Freight]) AS [TỔNG TIỀN VẬN CHUYỂN]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Lấy danh sách các đơn đặt hàng có ngày đặt hàng trong
-- khoảng từ ngày 1/1/1997 đến ngày 31/12/1997 và được 
-- vận chuyển bằng đường tàu thủy (ShipVia = 3)
SELECT *
FROM [dbo].[Orders]
WHERE   [ShipVia] =3 AND 
		[OrderDate] BETWEEN '1997-01-01'  AND '1997-12-31';

-------------------------------------------------------------------------

SELECT *
FROM [dbo].[Orders]
WHERE   [OrderDate] BETWEEN '1997-01-01'  AND '1997-12-31'  AND [ShipVia] =3 ;