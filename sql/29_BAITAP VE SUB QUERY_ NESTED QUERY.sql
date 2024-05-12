-- LIỆT KÊ CÁC ĐƠN HÀNG CÓ NGÀY ĐẶT HÀNG GẦN NHẤT
SELECT MAX(O.OrderDate)
FROM [dbo].[Orders] O; -- ĐÂY CHỈ LÀ CHẠY RA NGÀY ĐẶT HÀNG GẦN NHẤT

SELECT * 
FROM[dbo].[Orders] O
WHERE O.OrderDate = (
			SELECT MAX(O.OrderDate)
			FROM [dbo].[Orders] O
);  -- 4 ROWS

-- LIỆT KÊ TẤT CẢ SẢN PHẨM (PRODUCTNAME)
-- MÀ KHÔNG CÓ ĐƠN ĐẶT HÀNG NÀO ĐẶT MUA CHÚNG.
SELECT *
FROM [dbo].[Products] P
WHERE P.ProductID NOT IN (
			SELECT DISTINCT [ProductID]
			FROM [dbo].[Order Details] OD
); -- 1 ROWS

-- LẤY THÔNG TIN VỀ CÁC ĐƠN HÀNG, VÀ TÊN CÁC SẢN PHẨM
-- THUỘC CÁC ĐƠN HÀNG CHƯA ĐƯỢC GIAO CHO KHÁCH
SELECT [OrderID]
FROM [dbo].[Orders] O
WHERE O.ShippedDate IS NULL; -- 21 ROWS NÀY LÀ ĐƠN HÀNG CHƯA CÓ NGÀY GIAO HÀNG

SELECT  P.ProductName, O.OrderID
FROM [dbo].[Orders] O
INNER JOIN [dbo].[Order Details] OD
ON OD.OrderID = O.OrderID
INNER JOIN [dbo].[Products] P
ON P.ProductID = OD.ProductID
WHERE O.OrderID IN (
			SELECT [OrderID]
			FROM [dbo].[Orders] O
			WHERE O.ShippedDate IS NULL  -- RUN ĐOẠN SELECT NÀY ĐƯỢC 21 ROWS
);  -- 73 ROWS

-- LẤY THÔNG TIN VỀ CÁC SẢN PHẨM CÓ SỐ LƯỢNG TỒN KHO ÍT HƠN 
-- SỐ LƯỢNG TỒN TRUNG BÌNH CỦA TẤT CẢ CÁC SẢN PHẨM
SELECT AVG(P.UnitsInStock) AS [avgUnitsInStock]
FROM [dbo].[Products] P
-- RUN ĐC avgUnitsInStock LÀ 39

SELECT P.*
FROM [dbo].[Products] P
WHERE P.UnitsInStock < (
				SELECT AVG(P.UnitsInStock) AS [avgUnitsInStock]
				FROM [dbo].[Products] P
); -- 50 ROWS


-- LẤY THÔNG TIN VỀ CÁC KHÁCH HÀNG CÓ TỔNG GIÁ TRỊ ĐƠN HÀNG LƠN NHẤT

SELECT MAX( OD.Quantity*OD.UnitPrice) AS [SUM]
FROM[dbo].[Order Details] OD 

-- GIÁ TRỊ MAX LÀ 15810

SELECT C.*,OD.UnitPrice*OD.Quantity AS [SUMOrderID max]
FROM [dbo].[Order Details] OD 
JOIN [dbo].[Orders] O
ON O.OrderID = OD.OrderID
JOIN [dbo].[Customers]  C
ON O.CustomerID = C.CustomerID
WHERE OD.Quantity*OD.UnitPrice = (
					SELECT  MAX( OD.Quantity*OD.UnitPrice) AS [SUMOrderID max]
					FROM[dbo].[Order Details] OD
					
);
-- RUN RA ĐƯỢC 2 KHÁCH HÀNG CÓ TỔNG GIÁ TRỊ ĐƠN HÀNG LỚN NHẤT LÀ 15810