-- SUB QUERY / NESTED QUERY   -   TRUY VẤN CON/TRUY VẤN LỒNG NHAU
-- GIỚI THIỆU VỀ SUB QUERY 
  -- Subquery (câu truy vấn con) trong SQL là một truy vấn SELECT 
  -- được viết bên trong một truy vấn SELECT, UPDATE, INSERT, DELETE khác
  
  -- Subquery hoạt động như một bảng ảo tạm thời, nó được sử dụng để 
  -- trích xuất thông tin từ các bảng hoặc tập dữ liệu khác trong cùng
  -- một câu truy vấn


-- Liệt kê ra toàn bộ sản phẩm
SELECT P.[ProductID], P.ProductName, P.UnitPrice
FROM [dbo].[Products] P;

-- Tìm giá trung bình của các sản phẩm
SELECT AVG(P.UnitPrice) AS [avgUnitPrice]
FROM [dbo].[Products] P
-- kq avgUnitPrice = 28.4962

-- Lọc những sản phẩm có giá > giá trung bình
SELECT P.[ProductID], P.ProductName, P.UnitPrice
FROM [dbo].[Products] P
WHERE P.UnitPrice > 28.4962;  -- KQ 26 ROWS
-- LƯU Ý CON SỐ 28.4692 LÀ DO TA TÍNH ĐC HÀM TRUNG BÌNH Ở TRÊN NÊN CÓ ĐC 
-- CON SỐ ĐÓ, THẾ NHƯNG NHỠ ĐÂU MAI HOẶC MỐT LẠI THÊM SẢN PHẨM MỚI VÀO
-- => THÊM GIÁ SẢN PHẨM MỚI VÀO => LÀM CHO GIÁ TRỊ TRUNG BÌNH NÀY BỊ THAY 
-- ĐỔI NÊN CÁCH LÀM NÀY KHÔNG TỐI ƯU NÊN CHÚNG TA PHẢI SỬ DỤNG SUBQUERY
-- ĐỂ NÓ CHÍNH XÁC VÀ TỐI ƯU HƠN CHO DÙ TA CÓ XÓA HAY THÊM GIÁ SẢN PHẨM VÀO

-- ĐÂY LÀ CÁCH LÀM KHI THÊM SUBQUERY
SELECT P.[ProductID], P.ProductName, P.UnitPrice
FROM [dbo].[Products] P
WHERE   P.UnitPrice > (
		SELECT AVG(P.UnitPrice) AS [avgUnitPrice]
		FROM [dbo].[Products] P
);    -- KQ 26 ROWS
-- LƯU Ý SUBQUERY PHẢI CHO NÓ NĂM TRONG CẶP NGOẶC ĐƠN ()


-- Lọc ra những khách hàng có số đơn hàng > 10

-- ĐÂY LÀ CÁCH LÀM BTH KO DÙNG SUBQUERY
SELECT C.CustomerID, C.CompanyName, COUNT(O.OrderID) AS [TotalOrders]
FROM [dbo].[Customers] C
LEFT JOIN [dbo].[Orders] O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CompanyName  -- 92 rows (CHỈ CHẠY ĐẾN DÒNG NÀY)
HAVING COUNT(O.OrderID) > 10;  -- 28 rows

-- SUBQUERY
SELECT [CustomerID]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 10; -- RUN CÂU NÀY THÌ ĐÂY LÀ TOÀN BỘ MÃ KHÁCH HÀNG 
							  -- CÓ SÓ LƯỢNG > 10
SELECT *
FROM [dbo].[Customers]
WHERE [CustomerID] IN (
                        SELECT [CustomerID]
                        FROM [dbo].[Orders]
                        GROUP BY [CustomerID]
                        HAVING COUNT([OrderID]) > 10
);  -- 28 ROWS


-- Tính tổng tiền cho từng đơn hàng
SELECT O.*, (
			  SELECT SUM(OD.Quantity*OD.UnitPrice) 
			  FROM [dbo].[Order Details] OD
			  WHERE O.OrderID = OD.OrderID
			 ) AS [Total]
FROM [dbo].[Orders] O;  -- 830 rows


-- Lọc ra tên sản phẩm và tổng số đơn hàng của sản phẩm
SELECT P.ProductID, P.ProductName, (
		SELECT COUNT(OD.OrderID)
		FROM[dbo].[Order Details] OD
		WHERE OD.ProductID = P.ProductID
) AS [TotalOrders]
FROM [dbo].[Products] P; -- 78 rows
-- khi run đoạn code này ta ra đc 3 cột đó là ProductID, ProductName, TotalOrders
-- Vậy nếu ta có thể ra 2 cột (ProductName, TotalOrders) đk ? => có thể lấy đc nha
SELECT ProductName,TotalOrders
FROM 
	(SELECT P.ProductID, P.ProductName, (
			SELECT COUNT(OD.OrderID)
			FROM[dbo].[Order Details] OD
			WHERE OD.ProductID = P.ProductID
		) AS [TotalOrders]
	FROM [dbo].[Products] P) AS Temp;
	 