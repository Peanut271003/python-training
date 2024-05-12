-- Viết câu lệnh SQL lấy ra tên của tất cả sản phẩm
SELECT [ProductName]
FROM [dbo].[Products];

-- Viết câu lệnh SQL lấy ra tên sản phẩm,
-- giá bán trên mỗi đơn vị, số lượng sản phẩm trên đơn vị 
SELECT[ProductName],[UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products];
-- Viết câu lệnh SQL lấy ra tên khách hàng và 
-- quốc gia của các khách hàng đó
SELECT [ContactName],[Country]
FROM[dbo].[Customers];
-- Viết câu lệnh SQL lấy ra tất cả dữ liệu từ bảng Products
SELECT *
FROM [dbo].[Products];
-- Viết câu lệnh SQL lấy ra tên công ty và số điện thoại của tất cả các nhà cung cấp hàng
SELECT [CompanyName], [Phone]
FROM [dbo].[Suppliers];
--