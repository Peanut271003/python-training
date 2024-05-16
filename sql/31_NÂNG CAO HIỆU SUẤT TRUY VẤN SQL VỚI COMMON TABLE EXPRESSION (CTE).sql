WITH short_e AS (
	SELECT [EmployeeID], [LastName],[FirstName]
	FROM [dbo].[Employees]
)
SELECT * FROM short_e;


-- Lay thong tin ve cac san pham (Products) co cung the loai voi mot
-- san pham cu the

-- SU DUNG SUB QUERY
SELECT ProductName, CategoryID
FROM Products
WHERE CategoryID = (
		SELECT CategoryID
		FROM Products 
		WHERE ProductName = 'Product_Name' --- vd ta lay ten 'Chai' co san trong bang Products
);

SELECT ProductName, CategoryID
FROM Products
WHERE CategoryID = (
		SELECT CategoryID
		FROM Products 
		WHERE ProductName = 'Chai' --- vd ta lay ten 'Chai' co san trong bang Products
); -- khi run ta duoc 12 rows

-- SU DUNG QUERY JOIN
SELECT P.ProductName, P.CategoryID
FROM [dbo].[Products] P
RIGHT JOIN (
		SELECT CategoryID
		FROM [dbo].[Products]
		WHERE ProductName = 'Chai'
) AS SUBQUERY
ON P.CategoryID = SUBQUERY.CategoryID;
-- RUN KET QUA NO CUNG RA DC 12 ROWS


-- SU DUNG CTE
WITH ProductCategory AS (
			SELECT CategoryID
			FROM[dbo].[Products]
			WHERE ProductName = 'Chai' 
)
SELECT P.ProductName, P.CategoryID
FROM[dbo].[Products] P
JOIN  ProductCategory AS PC
ON PC.CategoryID = P.CategoryID;
-- KHI RUN CX RA DUOC 12 ROWS


-- VD2 LAY THONG TIN VE DON HANG (ORDER) CUNG VOI TONG GIA TRI
-- DON HANG VA TY LE GIUA TONG GIA TRI VA PHI GIAO HANG (FREIGHT)
 
-- DUNG SUB QUERY
SELECT  O.OrderID,
		O.OrderDate,
		O.Freight,
		(SELECT SUM(OD.Quantity*OD.UnitPrice) 
		 FROM [dbo].[Order Details] OD
		 WHERE OD.OrderID = O.OrderID
) AS [TotalPrice], -- NAY LA LAY RA TotalPrice
		(SELECT SUM(OD.Quantity*OD.UnitPrice) 
		 FROM [dbo].[Order Details] OD
		 WHERE OD.OrderID = O.OrderID
)/O.Freight AS RATIO -- NAY LA LAY RA RATIO (TY LE GIUA TONG GIA TRI VA PHI GIAO HANG (FREIGHT))
FROM [dbo].[Orders] O;
-- RUN RA DUOC 830 ROWS, KHÔNG NÊN DÙNG CACASH NÀY VÌ CHÚNG TA ĐÃ LẶP
-- LẠI CODE 1 LẦN RỒI, LÀM HIỆU SUẤT RẤT LÀ CHẬM, GIẢM TỐC ĐỘ CHẠY 
-- CHƯƠNG TRÌNH ==> VÀ KHI VIẾT SUB QUERY TRONG SELECT LÀ HIỆU SUẤT 
-- HOẠT ĐỘNG CỰC KỲ TỆ LUÔN (RẤT CHẬM), NÊN CHÚNG TA NÊN SỬ DỤNG CTE
-- TRONG TRƯỜNG HỢP NÀY 

-- DUNG CTE
WITH OrderTotal AS(
		SELECT OD.OrderID, SUM(OD.Quantity*OD.UnitPrice) AS [TotalPrice]
		FROM [dbo].[Order Details] OD
		GROUP BY OD.OrderID
)
SELECT  O.OrderID,
		O.OrderDate,
		O.Freight,
		OT.[TotalPrice], 
		OT.[TotalPrice]/O.Freight AS RATIO
FROM [dbo].[Orders] O
JOIN OrderTotal AS OT
ON OT.OrderID = O.OrderID
-- RUN CUNG RA 830 ROWS NHUNG KO BI LAP CODE, TOC DO NHANH HON SUB QUERY
-- LUU Y: 
	-- KHI DUNG CTE THI ĐẦU TIÊN PHẢI CÓ WITH SAU ĐÓ PHẢI CÓ SELECT
	-- KHÔNG THỂ NÀO CHẠY THẰNG WITH MỘT MÌNH ĐƯỢC, NẾU CHẠY NÓ SẼ BÁO LỖI
	-- NÊN CẦN PHẢI CÓ CẢ SELECT NỮA
-- LUU Ý 2: 
	-- CHÚNG TA CÓ THỂ TẠO  RẤT NHIỀU CTE MÀ CHỈ CẦN NGĂN CÁCH CHÚNG
	-- VƠI NHAU BẰNG DẤU PHẨY, XONG SAU ĐÓ CŨNG BẮT BUỘC PHẢI CÓ SELECT

-- BAI TAP 1
	-- SỬ DỤNG CTE ĐỂ TÍNH TỔNG DOANH SỐ BÁN HÀNG CHO TỪNG SẢN PHẨM
	-- TỪ HAI BẢNG 'Order Details' và 'Products' trong cơ sở dữ liệu NorthWind
-- CTE
WITH SalesPerProduct  AS (
		SELECT OD.ProductID, SUM(OD.Quantity*OD.UnitPrice) AS "TotalSales"
		FROM [dbo].[Order Details] OD
		GROUP BY OD.ProductID
)
SELECT  P.ProductID,
		P.ProductName, 
		SPP.TotalSales
FROM [dbo].[Products] P
JOIN SalesPerProduct SPP
ON SPP.ProductID = P.ProductID;
-- RUN DUOC 77 ROWS 
-----------------------------------------------------------
-- BAI TAP 2 VS BAI TAP 3 THẤY NÓ CẤN CẤN


-- BAI TAP 2
	-- SỬ DỤNG CTE ĐỂ TÍNH TOÁN TỔNG DOANH SỐ BÁN HÀNG THEO TỪNG
	-- KHÁCH HÀNG VÀ SAU ĐÓ SẮP XẾP DANH SÁCH KHÁCH HÀNG THEO TỔNG 
	-- DOANH SỐ GIẢM DẦN
--
WITH SalesPerCustomer  AS (
		SELECT OD.OrderID, SUM(OD.Quantity*OD.UnitPrice) AS "TotalOrders"
		FROM [dbo].[Order Details] OD
		GROUP BY OD.OrderID
)
SELECT DISTINCT  O.OrderID,
		O.CustomerID, 
		SPC.TotalOrders
FROM [dbo].[Orders] O
JOIN SalesPerCustomer SPC
ON SPC.OrderID = O.OrderID
ORDER BY "TotalOrders" DESC;
-- RUN DUOC 830 ROWS

-- BAI TAP 3
	-- SỬ DỤNG CTE TÍNH TỔNG DOANH SỐ BÁN HÀNG THEO NĂM TỪ BẢNG
	-- "Orders" và "Order Details"
--
WITH SalesPerProduct  AS (
			SELECT OD.OrderID, SUM(OD.Quantity*OD.UnitPrice) AS "TotalSales"
			FROM [dbo].[Order Details] OD
			GROUP BY OD.OrderID
)

SELECT  O.OrderID,
		YEAR(O.OrderDate) AS "YEAR",
		"TotalSales"
FROM [dbo].[Orders] O
JOIN SalesPerProduct SPP
ON SPP.OrderID = O.OrderID;

