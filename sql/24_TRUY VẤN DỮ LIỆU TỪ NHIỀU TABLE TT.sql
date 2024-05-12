-- BÀI TẬP 1
-- Từ bảng Products và Categories, hãy tìm các sản phẩm thuộc danh 
-- mục 'Seafood' (Đồ hải sản) in ra các thông tin sau đây: 
  -- Mã thể loại
  -- Tên thể loại 
  -- Mã sản phẩm
  -- Tên sản phẩm
SELECT  C.CategoryID,
		C.CategoryName,
		P.ProductID,
		P.ProductName
FROM [dbo].[Products] AS P, [dbo].[Categories] AS C
WHERE P.CategoryID = C.CategoryID AND C.CategoryName = 'Seafood';

-- BÀI TẬP 2
-- Từ bảng Products và Suppliers, hãy tìm các sản phẩm thuộc được 
-- cung cấp từ nước 'Germany' (Đức):
  -- Mã nhà cung cấp
  -- Quốc gia
  -- Mã sản phẩm
  -- Têm sản phẩm
SELECT  S.SupplierID,
		S.Country,
		P.ProductID,
		P.ProductName
FROM [dbo].[Products] AS P, [dbo].[Suppliers] AS S
WHERE P.SupplierID = S.SupplierID AND S.Country = 'Germany';


-- BÀI TẬP 3
-- Từ 3 bảng Orders, Customers và Shippers hãy in ra các thông tin sau đây:
  -- Mã đơn hàng 
  -- Tên khách hàng
  -- Tên công ty vận chuyển 
  -- Và chỉ in ra các đơn hàng của khách hàng đến từ thành phố 'London'
SELECT    O.OrderID,
			C.ContactName,
			S.CompanyName
FROM [dbo].[Orders] AS O, [dbo].[Customers] AS C,[dbo].[Shippers] AS S
WHERE O.ShipVia = S.ShipperID AND O.CustomerID = C.CustomerID 
		AND C.City = 'London';
 

-- BÀI TẬP 4
-- Từ 3 bảng Orders, Customers và Shippers hãy in ra các thông tin sau đây:
   -- Mã đơn hàng
   -- Tên khách hàng
   -- Tên công ty vận chuyển
   -- Ngày yêu cầu chuyển hàng
   -- Ngày giao hàng
   -- Và chỉ in ra các đơn hàng bị giao muộn hơn qui định 
   -- ( RequiredDate < ShippedDate)
SELECT  O.OrderID,
		C.ContactName,
		S.CompanyName,
		O.RequiredDate,
		O.ShippedDate
FROM [dbo].[Orders] AS O, [dbo].[Customers] AS C,[dbo].[Shippers] AS S
WHERE   O.ShipVia = S.ShipperID AND O.CustomerID = C.CustomerID
		AND O.RequiredDate < O.ShippedDate;


-- EXERCISE
  -- Give these shipcountries for which customers don't come from
-- the United States.
  -- Select only this countries which is over than 100 orders 
  -- Display Shipcountry and Number of orders 
  -- From 3 table: Orders, Customers and Shippers
-- Result: (122, Germany)
SELECT  O.ShipCountry,
		COUNT(O.OrderID) AS [Total Orders]
FROM [dbo].[Orders] AS O, [dbo].[Customers] AS C,[dbo].[Shippers] AS S
WHERE   O.ShipVia = S.ShipperID AND O.CustomerID = C.CustomerID
		AND O.ShipCountry <> 'USA'
GROUP BY  O.ShipCountry
HAVING COUNT(O.OrderID) > 100;


		