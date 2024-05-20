--WINDOWS FUNCTIONS
--CAC LOAI WINDOWS FUNCTIONS
	--Aggregate Functions: Duoc su dung de thuc hien tinh toan tong hop nhu SUM, AVG, COUNT tren mot window.
	--Ranking Functions: Duoc su dung de xep hang cac dong du lieu trong mot window, vi du: ROW_NUMBER, RANK, DENSE_RANK.
	--Anlaytic Functions: Cho phep thuc hien tinh toan tren cac dong du lieu trong window va tra ve ket qua cho moi dong 
	-- ma khong lam thay doi kich thuoc cua ket qua vi du: LAG, LEAD, FIRST_VALUE, LAST_VALUE.

-- CU PHAP CO BAN
-- FUNCTION_NAME(expression) OVER(
	-- [PARTITION BY partition_expression, ...]     -- PARTITION la mot phan nho (phan vung)
	-- [ORDER BY sort_expression [ASC | DESC], ...]
	-- [ROWS BETWEEN frame_specification]
	-- )
-- XEP HANG SAN PHAM THEO GIA GIAM DAN TREN TOAN BO TABLE 
SELECT 
	[ProductID],
	[ProductName],
	[CategoryID],
	[UnitPrice],
	RANK() OVER (ORDER BY [UnitPrice] DESC) AS Ranking  -- day la cach viet 1 window functions
FROM [dbo].[Products] -- run dc 78 rows nhung luu y la xep hang o day co bi trung xep hang nen so sau do no tu dong nhay xuong vd 15 15 xong xuong 17
-- nay la [CategoryID] chua co phan vung ma no chi sap xep theo thu hang cua UnitPrice

----------------------------------------------------------------

SELECT 
	[ProductID],
	[ProductName],
	[CategoryID],
	[UnitPrice],
	RANK() OVER (PARTITION BY [CategoryID] ORDER BY [UnitPrice] DESC) AS Ranking  -- day la cach viet 1 window functions
FROM [dbo].[Products]; -- cung ra 78 rows nhung ma no phan vung theo [CategoryID] sap xep theo thu hang cua tung ma [CategoryID]

-- VD3 
-- TAO RA MOT BANG SINH VIEN
CREATE TABLE [sinh_vien] (
		[ma_sinh_vien] INT PRIMARY KEY,
		[ho_ten] NVARCHAR(255),
		[diem_trung_binh] DECIMAL(3,2),
		[ma_lop_hoc] INT 
);

-- chen 20 dong du lieu thuc te vao bang
INSERT INTO [sinh_vien] ([ma_sinh_vien],[ho_ten],[diem_trung_binh],[ma_lop_hoc])
VALUES 
		(1,N'Nguyễn Văn A', 3.75, 101),
		(2,N'Trần Thị B', 3.88, 102),
		(3,N'Phạm Văn C', 3.75, 101),
		(4,N'Huỳnh Thị D', 3.92, 103),
		(5,N'Lê Văn E', 3.60, 102),
		(6,N'Ngô Thị F', 3.78, 101),
		(7,N'Trịnh Văn G', 3.65, 102),
		(8,N'Võ Thị H', 3.80, 103),
		(9,N'Đặng Văn I', 3.55,101),
		(10,N'Hoàng Thị K', 3.95, 102),
		(11,N'Mai Thị L', 3.70, 103),
		(12,N'Lý Thị M', 3.62, 101),
		(13,N'Chu Thị N', 3.85,102),
		(14,N'Đỗ Thị P', 3.58,103),
		(15,N'Dương Văn Q', 3.72, 101),
		(16,N'Lâm Thị R', 3.85,102),
		(17,N'Nguyễn Văn S', 3.68, 101),
		(18,N'Nguyễn Thị T', 3.75, 103),
		(19,N'Nguyễn Văn U', 3.93, 102),
		(20,N'Nguyễn Thị V', 3.67, 101);

-- XEP HANG SINH VIEN TOAN TRUONG DUA TREN DIEM TRUNG BINH GIAM DAN
SELECT *,
		RANK() OVER (ORDER BY [diem_trung_binh] DESC) AS RANKING
FROM [dbo].[sinh_vien];

-- XEP HANG SINH VIEN TRONG LOP 101 DUA TREN DIEM TRUNG BINH GIAM DAN

SELECT *,
		RANK() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS Ranking
FROM[dbo].[sinh_vien] S
WHERE S.[ma_lop_hoc] = 101;

-- XEP HANG SINH VIEN TUNG LOP DUA TREN DIEM TRUNG BINH GIAM DAN

SELECT *,
		RANK() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS "XEP HANG"
FROM [dbo].[sinh_vien] S;

-- XEP HANG SINH VIEN TRONG LOP 102 DUA TREN DIEM TRUNG BINH GIAM DAN

SELECT *,
		RANK() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS Ranking
FROM[dbo].[sinh_vien] S
WHERE S.[ma_lop_hoc] = 102;


-- XEP HANG SINH VIEN TRONG LOP 102 DUA TREN DIEM TRUNG BINH GIAM DAN, KHONG NHAY XEP HANG
-- TA DUNG HAM DENSE_RANK
SELECT *,
		RANK() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS Ranking
FROM[dbo].[sinh_vien] S
WHERE S.[ma_lop_hoc] = 102;
-- RA DC 7ROWS NHUNG RANKING OF NO LA 1,2,3,4,4,6,7
-- VAY H TA MUON KHONG DC NHAY HANG PHAI DUNG HAM DENSE_RANK

SELECT *,
		DENSE_RANK() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS Ranking
FROM[dbo].[sinh_vien] S
WHERE S.[ma_lop_hoc] = 102;
-- KQ VAN LA 7 ROWS NHUNG RANKING OF NO LA 1,2,3,4,4,5,6


-- XEP HANG SINH VIEN TRONG LOP 102 DUA TREN DIEM TRUNG BINH GIAM DAN, KHONG BI TRUNG HANG
-- TA DUNG HAM ROW_NUMBER
SELECT *,
		ROW_NUMBER() OVER(PARTITION BY S.[ma_lop_hoc] ORDER BY S.[diem_trung_binh] DESC) AS Ranking
FROM[dbo].[sinh_vien] S
WHERE S.[ma_lop_hoc] = 102;
-- KQ VAN LA 7 ROWS NHUNG RANKING CUA NO LA 1,2,3,4,5,6,7


