   -- TÌM GIÁ TRỊ NHỎ NHẤT
	  -- SELECT MIN(Column_name)

	  -- FROM table_name;

	-- Tìm ra giá trị nhỏ nhất của một cột.
	-- Có thể kết hợp với ALIAS để thay đổi tên cột.

   -- TÌM GIÁ TRỊ LỚN NHẤT
	  -- SELECT MAX(Column_name)

	  -- FROM table_name;

	-- Tìm ra giá trị lớn nhất của một cột.
	-- Có thể kết hợp với ALIAS để thay đổi tên cột.


-- Viết câu lệnh SQL tìm giá thấp nhất của các sản phẩm
-- trong bảng Products.
SELECT MIN([UnitPrice]) AS [MINPrice]
FROM [dbo].[Products];

-- Viết câu lệnh lấy ra ngày đặt hàng gần đây nhất 
-- từ bảng Orders.
SELECT MAX([OrderDate]) AS [Ngày đặt hàng nhất]
FROM [dbo].[Orders];


-- Viết câu lệnh SQL tìm số lượng hàng tốt kho 
-- (UnitsInStock) lớn nhất.
SELECT MAX([UnitsInStock]) AS [MAXUnitsInStock]
FROM [dbo].[Products];


-- Hãy cho biết ngày sinh của nhân viên có tuổi đời lớn nhất công ty
-- Gợi ý: ai có ngày sinh càng nhỏ thì người đó càng lớn tuổi.
SELECT MIN([BirthDate]) AS [MIN BIRTHDAY]
FROM [dbo].[Employees];


