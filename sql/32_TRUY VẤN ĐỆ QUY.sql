-- TRUY VAN DE QUY SU DUNG CTE
-- CU PHAP
	-- WITH CTE_name (column1, column2, ...) AS (
		
		-- SELECT ...
		-- FROM ...
		-- WHERE ... 
		             -- phan truoc UNION ALL duoc goi la phan init
					 --(du lieu dau vao)
		-- UNION ALL
					 -- phan sau UNION ALL duoc goi la de quy, 
					 -- 2 thang ket noi voi nhau nho UNION ALL
		-- SELECT
		-- FROM
		-- JOIN CTE_name ON ...
	--)
	-- SELECT ...
	-- FROM CTE_name

-- TRUY VAN DE QUY FIBO
WITH fibo(prev_n, n) AS (
	-- KHOI TAO
	SELECT
			0 AS prev_n,
			1 AS n

	UNION ALL
	-- DE QUY
	SELECT
			n AS prev_n,
			prev_n+n AS n
	FROM fibo
)
SELECT * FROM fibo
OPTION (MAXRECURSION 10);
-- Sn= S(n-1)+ S(n-2)
-- 0 1 1 2 3 5 8 ....(DAY SO FIBO)



-- CACH 1 
-- GIAI THUA
WITH giaiThua(prev_n, n) AS (
	-- KHOI TAO
	SELECT
			1 AS prev_n,
			1 AS n

	UNION ALL
	-- DE QUY
	SELECT
			prev_n + 1 AS prev_n,
			(prev_n + 1)*n AS n
	FROM giaiThua
)
SELECT * FROM giaiThua
OPTION (MAXRECURSION 10);

-- CACH 2 (THAY THE BIEN CHO DE HIEU)
 WITH giaiThua(STT, n)AS (
		SELECT
			1 AS STT,
			1 AS n
		UNION ALL
		SELECT 
			STT + 1 AS STT,
			(STT + 1)*n AS n
		FROM giaiThua
 )
 SELECT *
 FROM giaiThua
 OPTION (MAXRECURSION 10);



---- CHAY FIBO

WITH fibo(prev_n, n ) AS (
		SELECT
			0 AS prev_n,
			1 AS n
		UNION ALL
		SELECT 
			n AS prev_n,
			prev_n + n AS n
		FROM fibo

)
SELECT *
FROM fibo
OPTION (MAXRECURSION 30);



-- SỬ DỤNG TRUY VẤN ĐỆ QUY ĐỂ TẠO MỘT CÂY CẤU TRÚC QUẢN LÝ CỦA 
-- NHÂN VIÊN TRONG BẢNG "EMPLOYEES". TRONG ĐÓ "ReportsTo" CHỈ 
-- LÀ MÃ CỦA NGƯỜI QUẢN LÝ

 DECLARE @employeeId int   -- khai báo biến employeeId 
 SET @employeeId = 2;      -- CON SO NAY CHUNG TA CO THE BAT KI

 WITH e_cte as(
	-- khoi tao
		SELECT  E.[EmployeeID],
				E.[FirstName] + ' ' + E.[LastName] AS NAME,
				E.[ReportsTo] AS ManagerId,
				0 AS Level
		FROM [dbo].[Employees] E
		WHERE E.EmployeeID = @employeeId
		UNION ALL
	-- de quy
		SELECT 
				E1.[EmployeeID],
				E1.[FirstName] + ' ' + E1.[LastName] AS NAME,
				E1.[ReportsTo] AS MangaerId,
				Level + 1 AS Level 
		FROM [dbo].[Employees] E1
		JOIN e_cte ON E1.ReportsTo = e_cte.EmployeeID
 )
 SELECT *
 FROM e_cte
 OPTION (MAXRECURSION 500);
 -- RUN DC 9 ROWS 
 


 -- KHI NÀO CẦN SỬ DỤNG TRUY VẤN ĐỆ QUY?

	-- Cây/phân cấp dữ liệu: Truy vấn đệ quy thường được sử dụng khi bạn làm việc với dữ liệu
	-- có cấu trúc cây hoặc phân cấp, ví dụ như cây hệ thống thư mục, cấu trúc tổ chức công ty,
	-- hoặc danh sách sản phẩm có danh mục con.

	-- Duyệt đồ thị: Truy vấn đệ quy cũng hữu ích khi bạn cần duyệt qua các mối quan hệ đồ thị 
	-- như mối quan hệ bạn bè trong mạng xã hội.

	-- Tìm kiếm đường đi: Nếu bạn cần tìm kiếm các đường đi, ví dụ như đường đi ngắn nhất
	-- giữa hai điểm trong cùng một mạng lưới.

	-- Tạo danh sách hoặc báo cáo có tính đệ quy: Truy vấn đệ quy có thể được sử dụng để xây 
	-- dựng danh sách theo các quy tắc phức tạp hoặc tạo báo cáo có cấu trúc phức tạp.
