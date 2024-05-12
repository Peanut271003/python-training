-- Viết câu lệnh SQL lấy ra tên các quốc gia
-- khác nhau từ bảng khách hàng 
SELECT DISTINCT [Country]
FROM [dbo].[Customers];
-- Viết câu lệnh SQL lấy ra tên các mã số bưu điện
-- (PostalCode) khác nhau từ bảng Nhà cung cấp - Suppliers
SELECT DISTINCT [PostalCode]
FROM [dbo].[Suppliers];
-- Viết câu lệnh SQL lấy ra các dữ liệu khác nhau về họ 
-- của nhân viên (LastName) và cách gọi danh hiệu lịch 
-- sự (Title Of Courtesy) của nhân viên từ bảng Employees
SELECT DISTINCT [LastName], [TitleOfCourtesy]
FROM [dbo].[Employees];
-- Viết câu lệnh SQL lấy ra mã đơn vị vận chuyển (ShipVia)
-- khác nhau của các đơn hàng - Orders 
SELECT DISTINCT [ShipVia]
FROM [dbo].[Orders];

