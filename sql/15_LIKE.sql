    -- TOÁN TỬ LIKE  -  LỌC DỮ LIỆU TRONG CHUỖI
	  -- SELECT Column1, Column2, ...

	  -- FROM table_name

	  -- WHERE ColumnN LIKE pattern;
-- Có hai ký tự đại diện thường được sử dụng cùng với LIKE;
 -- Dấu phần trăm (%) đại diện cho không, một hoặc nhiều ký tự 
 -- Dấu gạch dưới (_) đại diện cho một ký tự đơn

-- Hãy lọc ra tất cả các khách hàng đến từ các quốc gia 
-- (Country) bắt đầu bằng chữ 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';


-- Hãy lấy danh sách các đơn đặt hàng được gửi đến 
-- các thành phố có chứa chữ 'a'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%';


-- Hãy lọc ra tất cá các đơn hàng với điều kiện:
  -- ShipCountry LIKE 'U_'
  -- ShipCountry LIKE 'U%'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_';

-------------------------------------------------

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%';

-- Hãy lấy ra tất cả các nhà cung cấp hàng có chữ 'b' trong 
-- tên của công ty
SELECT *
FROM  [dbo].[Suppliers]
WHERE [CompanyName] LIKE '%b%';


	  