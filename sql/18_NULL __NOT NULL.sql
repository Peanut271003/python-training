  -- IS NULL, IS NOT NULL  -  KIỂM TRA GIÁ TRỊ NULL
    -- IS NULL
	 -- SELECT Column_name(s)

	 -- FROM table_name

	 -- WHERE Column_name IS NULL;
-- Giá trị của column bị NULL

    -- IS NOT NULL
	 -- SELECT Column_name(s)

	 -- FROM table_name

	 -- WHERE column_name IS NOT NULL;
-- Giá trị của column khác NULL

-- Lấy ra tất cả các đơn hàng chưa được giao hàng
-- (ShippedDate ==> NULL)

SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

-- Lấy danh sách các khách hàng có khu vực (Region) không bị NULL
SELECT *
FROM [dbo].[Customers]
WHERE [Region] IS NOT NULL;

-- Lấy danh sách các khách hàng không có tên công ty (CompanyName)
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL;

-- Hãy lấy ra tất cả các đơn hàng chưa được giao hàng và có khu vực
-- giao hàng (ShipRegion) không bị NULL
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL AND [ShipRegion] IS NOT NULL;
