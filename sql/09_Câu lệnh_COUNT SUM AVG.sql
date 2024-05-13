  -- ĐẾM SỐ LƯỢNG - COUNT()
    -- SELECT COUNT(Column_name)
    -- FROM table_name;

  -- Đếm số lượng dữ liệu (khác NULL) trong một cột.
  -- Sử dụng COUNT(*) khi muốn đếm số lượng bản ghi.


  -- ĐẾM SỐ LƯỢNG - SUM()
    -- SELECT SUM(Column_name)
	  -- FROM table_name;

-- Tính tổng giá trị của một cột. 
-- Nếu bất kỳ giá trị trong cột là NULL, kết quả của hàm
-- SUM sẽ là NULL.


  -- ĐẾM SỐ LƯỢNG - AVG()
    -- SELECT AVG(Column_name)
	  -- FROM table_name;
-- Tính giá trị trung bình cho một cột.
-- Nếu tất cả các giá trị trong cột là NULL, kết quả của hàm AVG sẽ là NULL.
-- Nếu chỉ một vài giá trị là NULL, AVG sẽ bỏ qua các giá trị NULL và tính trung bình cho các giá trị khác 

-- Hãy đếm số lượng khách hàng có trong bảng (Customers).
SELECT COUNT(*) AS [NumberOfCustomers]
FROM [dbo].[Customers];
-- hoặc có thể viết như này
SELECT COUNT([CustomerID]) AS [NumberOfCustomers]
FROM [dbo].[Customers];


-- Tính tổng số tiền vận chuyển (Freight) của tất cả các đơn đặt hàng
SELECT SUM([Freight]) AS [SUMFreight]
FROM [dbo].[Orders];


-- Tính trung bình số lượng đặt hàng (Quantity) của tất cả
-- các sản phẩm trong bảng [Order Details].
SELECT AVG([Quantity]) AS [AvgQuantity]
FROM [dbo].[Order Details];


-- Đếm số lượng, tính tổng số lượng hàng trong kho và 
-- trung bình giá của các sản phẩm có trong bảng Product.
SELECT  COUNT([UnitsInStock]) AS [NumberOfProducts],
		SUM([UnitsInStock]) AS [TotalUnitsInStock],
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];


-- Hãy đếm số lượng đơn hàng từ bảng (Order) với 2 cách:
-- Cách 1: dùng dấu *
-- Cách 2: dùng mã đơn hàng
SELECT COUNT(*) AS [Số lượng đơn hàng]
FROM [dbo].[Orders];
-- CÁCH 2
SELECT COUNT([OrderID]) AS [Số lượng đơn hàng]
FROM [dbo].[Orders];


-- Từ bảng [Order Details] hãy tính trung bình cho cột UnitPrice
-- và tổng cho cột Quantity.
SELECT  AVG([UnitPrice]) AS [AvgUnitPrice],
		SUM([Quantity]) AS [TotalQuantity]
FROM [dbo].[Order Details];