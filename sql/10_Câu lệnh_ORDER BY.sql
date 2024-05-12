    -- CÂU LỆNH ORDER BY
	  -- SELECT Column1, Column2, ...
	  -- FROM table_name
	  -- ORDER BY Column1, Column2, ... ASC|DESC;

	  -- ASC: sắp xếp tăng dần (mặc định nếu không ghi) -- ascending 
	  -- DESC: sắp xếp giảm dần. -- descending
	  -- LƯU Ý Phải viết câu lệnh theo thứ tự từ 
	  -- SELECT => FROM => ORDER BY (KHÔNG ĐƯỢC THAY ĐỔI)

-- Bạn hãy liệt kê tất cả các nhà cung cấp theo thứ tự tên 
-- đơn vị (CompanyName) từ A-Z
SELECT *
FROM [dbo].[Suppliers] 
ORDER BY [CompanyName] ASC;

 
-- Bạn hãy liệt kê tất cả các sản phẩm theo thứ tự giá giảm dần.
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC;

-- Hãy liệt kê tất cả các nhân viên theo thứ tự họ 
-- và tên đệm A-Z
-- Không dùng ASC|DESC

SELECT * 
FROM [dbo].[Employees]
ORDER BY [LastName] ASC,[FirstName] ASC;

-- Háy lấy ra một sản phẩm có số lượng
-- bán cao nhất từ bảng [Order Details]
-- Không được dùng hàm MAX
SELECT TOP 1 *
FROM [dbo].[Order Details] AS [O]
ORDER BY [Quantity] DESC;

SELECT *
FROM [dbo].[Order Details] AS [O]
ORDER BY [Quantity] DESC;

-- Hãy liệt kê tất cả các đơn đặt hàng 
-- (OrderID) trong bảng Orders theo thứ tự giảm dần
-- của ngày đặt hàng (OrderDate)
SELECT [OrderID]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC;

-- Hãy liệt kê tên, đơn giá, số lượng trong kho (UnitsInStock)
-- của tất cả các sản phẩm trong bảng Products, theo thứ tự 
-- dần của UnitsInStock.
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM [dbo].[Products]
ORDER BY [UnitsInStock] DESC;