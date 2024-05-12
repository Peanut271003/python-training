-- Câu Lệnh SELECT TOP
-- SELECT TOP number / percent column_name(s)

-- FROM table_name

-- WHERE condition;

-- Câu lệnh dùng để giới hạn số lượng dòng (hoặc %) được trả về
-- khi gọi lệnh SELECT.

-- Viết câu lệnh SQL lấy ra 05 dòng đầu tiên trong bảng Customers 
SELECT TOP 5 *
FROM [dbo].[Customers];

-- Viết câu lệnh SQL lấy ra 30% nhân viên của công ty hiện tại
SELECT TOP 30 PERCENT *
FROM [dbo].[Employees];

-- Viết câu lệnh SQL lấy ra các mã khách hàng trong bảng đơn hàng 
-- với qui định là mã khách hàng không được trùng lặp,
-- chỉ lấy 5 dòng dữ liệu đầu tiên
SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders];

-- Viết câu lệnh SQL lấy ra các sản phẩm có mã thể loại không bị trùng lặp,
-- và chỉ lấy 3 dòng đầu tiên
SELECT DISTINCT TOP 3 [CategoryID]
FROM [dbo].[Products];