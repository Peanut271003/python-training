-- VIEW TRONG DATABASE
-- VIEW LA GI?
	-- DATABASE VIEW la su trinh bay data theo y muon duoc trich xuat tu mot hoac nhieu table/view khac.
	-- View khong luu data nen no con duoc biet den voi cai ten "bảng ảo"

	-- Cac thao tac select, insert, update, va delete voi view tuong tu nhu table binh thuong
	-- Vi khong luu data nen tat ca nhung thao tac duoc thuc hien tren view thi deu duoc phan anh den base table ma duoc trich xuat du lieu


-- Cu phap 
-- Syntax for SQL Server and Azure SQL Database

--	CREATE [ OR ALTER ] VIEW [ schema_name . ] view_name [ (column [,...n] ) ]
	--[ WITH <view_attribute> [ ,...n] ]
	--AS select_statement
	--[ WITH CHECK OPTION ]
	--[ ; ]

	--<view_attribute> ::=
	--{
	--	[ ENCRYPTION ]
	--	[ SHEMABINDING ]
	--	[ VIEW_METADATA ]
	--}

-- CON DAY LA CU PHAP DOI VOI SQL SERVER 
	--CREATE VIEW view_name AS
	--SELECT column1, column2, ...
	--FROM table_name
	--WHERE condition;


-- TẠO VIEW
CREATE VIEW ThongKeKhachHang AS
SELECT [MAKH],[TenKH],[DiaChi]
FROM[dbo].[KHACHHANG_NEW]

-- TRUY VẤN ĐẾN VIEW
SELECT * 
FROM [dbo].[ThongKeKhachHang]
