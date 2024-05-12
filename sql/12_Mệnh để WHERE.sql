   -- MỆNH ĐỀ WHERE
     -- SELECT Column1, Column2, ...
	 -- FROM table_name
	 -- WHERE condition;
-- Mệnh đề WHERE được sử dụng để lọc các bản ghi
-- Nó được sử dụng để chỉ trích xuất những bản ghi đáp ứng một điều kiện cụ thể.

-- CÁC PHÉP SO SÁNH
   -- =   SO SÁNH BĂNG
   -- >   lỚN HƠN
   -- <	  BÉ HƠN
   -- >=  LỚN HƠN HOẶC BẰNG
   -- <=  BÉ HƠN HOẶC BẰNG
   -- <>  KHÁC


-- bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London
SELECT *
FROM[dbo].[Employees]
WHERE [City] ='London'
ORDER BY [LastName] ASC;

-- Bạn hãy liệt kê tất cả các đơn hàng bị giao muộn, biết
-- rằng ngày cần phải giao hàng là RequiredDate, ngày giao
-- hàng thực tế là ShippedDate.
SELECT  [OrderID],
		[RequiredDate],
		[ShippedDate]
FROM[dbo].[Orders]
WHERE [ShippedDate]>[RequiredDate];
-- Đém số lượng đơn hàng giao trễ
SELECT  COUNT(*) AS [SỐ ĐƠN GIAO HÀNG TRỄ]
FROM[dbo].[Orders]
WHERE [ShippedDate]>[RequiredDate];

-- Lấy ra tất cả các đơn hàng chi tiết
-- được giảm giá nhiều hơn 10% (DISCOUNT > 0.1)
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount] > 0.1;


-- Hãy liệt kê tất cả các đơn hàng được gửi đến
-- quốc gia là "France"
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'France';


-- Hãy liệt kê các sản phẩm có số lượng hàng
-- trong kho (UnitsInStock) lớn hơn 20 
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] >20;


-- Hãy liệt kê các sản phẩm có số lượng hàng
-- tồn kho (UnitsInStock - UnitsOnOrder) lớn hơn 50, sắp xếp 
-- theo ProductName từ A-Z
SELECT *,
		([UnitsInStock] - [UnitsOnOrder]) AS [Hàng tồn kho]
FROM [dbo].[Products]
WHERE ([UnitsInStock] - [UnitsOnOrder]) > 50
ORDER BY [ProductName] ASC;