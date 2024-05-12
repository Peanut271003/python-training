  -- TOÁN TỬ AND - VÀ
    -- SELECT Column1, Column2, ...

	-- FROM table_name

    -- WHERE condition1 AND condition2 AND condition3;
-- Hiện thị một bản ghi nếu tất cả các điều kiện được 
-- phân tách bằng AND đều có giá trị TRUE


  -- TOÁN TỬ OR - HOẶC
    -- SELECT Column1, Column2, ...

	-- FROM table_name

	-- WHERE condition1 OR condition2 OR condition3;
-- Hiển thị một bản ghi nếu có ít nhất 1 điều kiên được 
-- phân tách bằng OR có giá trị TRUE


  -- TOÁN TỬ NOT - PHỦ ĐỊNH
    -- SELECT Column1, Column2, ...

	-- FROM table_name

	-- WHERE NOT condition;
-- HIện thị một bản ghi nếu điều kiện có giá trị không đúng - FALSE


-- Bạn hãy liệt kê tất cả các sản phẩm có số lượng trong
-- kho (UnitsInStock) thuộc khoảng nhỏ hơn 50 hoặc 
-- lớn hơn 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] <50 OR [UnitsInStock]>100;

-- Bạn hãy liệt kê tất cả các đơn hàng được giao đến Brazil,
-- đã bị giao muộn, biết rằng ngày cần phải giao hàng là
-- RequiredDate, ngày giao hàng thực tế là ShippedDate
SELECT *
FROM [dbo].[Orders]
WHERE	[ShipCountry] = 'Brazil' AND 
		[ShippedDate]>[RequiredDate];

-- Lấy ra tất cả các sản phẩm có giá dưới 100$ và mã thể 
-- loại khác 1.
-- LƯU Ý: dùng NOT
 
 -- Cách 1: Làm bth không dùng NOT
 SELECT * 
 FROM [dbo].[Products]
 WHERE [UnitPrice] <100 AND [CategoryID] <> 1;
-- Cách 2: Làm dùng NOT
SELECT *
FROM [dbo].[Products]
WHERE NOT ([UnitPrice] >100  OR [CategoryID] = 1);


-- BAI TÂP 1: Hãy liệt kê tất cả các đơn hàng có giá vận chuyển Freight
-- trong khoảng [50,100] đô la.
SELECT *
FROM [dbo].[Orders]
WHERE [Freight]>=50 AND [Freight] <=100;


-- BAI TAP 2: Hãy liệt kê các sản phẩm có số lượng hàng trong
-- kho (UnitsInStock) lớn hơn 20 và số lượng hàng trong đơn
-- hàng (UnitsOnOrder) nhỏ hơn 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock]>20 AND [UnitsOnOrder] <20;



