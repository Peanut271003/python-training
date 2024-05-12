  -- ALIAS CÁC CỘT

      -- SELECT column_name AS alias_name
 
      -- FROM table_name;
      -- Đặt tên thay thế cho các cột 
      -- Giúp cho việc đọc và hiểu câu lệnh SQL dễ dàng hơn 

  -- ALIAS TÊN BẢNG

     -- SELECT coloumn_name(s)

     -- FROM table_name AS alias_name;
     -- Đặt tên thay thế cho các bảng 
     -- Giúp cho việc đọc và hiểu câu lệnh SQL dễ dang hơn


-- Viết câu lệnh SQL lấy "CompanyName" và đặt tên thay thế
-- là "Tên Công ty"; "PostalCode" và đặt tên thay thế là 
-- "Mã bưu điện"
SELECT [CompanyName] AS [Tên Công ty],
		[PostalCode] AS "Mã bưu điện",
		[City] [Thành phố]
-- Ta có thể thấy dấu [] tương ứng như sử dụng dấu ngoặc" "
-- và chữ AS không xài, máy nó cũng tự hiểu là mình dùng 
-- để thay tên như ở dòng thứ 3 [City], nhưng chúng ta vẫn
-- dụng thắng AS nhé!
FROM [dbo].[Customers];

-- Viết câu lệnh ra "LastName" và đặt tên thay thế là
-- "Họ"; "FirstName" và đặt tên thay thế là "Tên"
SELECT [LastName] AS [Họ],
		"FirstName" AS "Tên"
FROM [dbo].[Employees];

-- Viết câu lệnh SQL lấy ra 15 dòng đầu tiên tất cả
-- các cột trong bảng Orders, đặt tên thay thế cho bảng
-- Orders là "o"
SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o];


-- Viết câu lệnh SQL lấy ra các cột và đặt tên thay thế như sau:
-- ProductName => Tên sản phẩm
-- SupplierID => Mã nhà cung cấp
-- CategoryID => Mã thể loại 
-- Và đặt tên thay thế cho bảng Product là "P", sử dụng 
-- tên thay thế khi truy vấn các cột bên trên 
-- Và chỉ lấy ra 5 sản phẩm đầu tiên trong bảng
SELECT TOP 5 [P].[ProductName] AS "Tên sản phẩm",
		[p].[SupplierID] AS "Mã nhà cung cấp", 
		[p].[CategoryID] AS "Mã thể loại"
FROM [dbo].[Products] AS [P];