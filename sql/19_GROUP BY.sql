  -- GROUP BY  -  NHÓM CÁC DÒNG DỮ LIỆU VỚI NHAU
     -- SELECT Column_name(s)

	 -- FROM table_name

	 -- WHERE condition

	 -- GROUP BY column_name(s)
	 
	 -- ORDER BY column_name(s);
-- Dùng để nhóm các dòng dữ liệu có cùng giá trị
-- Thường được dùng với các hàm: COUNT(), MAX(), MIN(), SUM(), AVG()


-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng?
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];


-- Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung
-- cấp sản phẩm
SELECT [SupplierID], AVG([UnitPrice]) AS [AVGPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID];


-- Hãy cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong
-- kho (UnitsOnStock)?

-- Này là SUM có điều kiện nên ta dùng thêm group by
SELECT [CategoryID], SUM([UnitsInStock]) AS "Total UnitsInStock"
FROM [dbo].[Products]
GROUP BY [CategoryID];

-- Này là SUM không có điều kiện, nó chỉ tính tổng của 
-- UnitsInStock không phân chia ra từng mã ==> nên kết quả chạy 
-- ra là Total UnitsInStock là 3119
SELECT  SUM([UnitsInStock]) AS "Total UnitsInStock"
FROM [dbo].[Products]


-- Hãy cho biết giá vận chuyển thấp nhất và lớn nhất của các đơn 
-- hàng theo từng thành phố và quốc gia khác nhau
SELECT	[ShipCountry],[ShipCity],
			MIN([Freight]) AS [MINFreight],
			MAX([Freight]) AS [MAXFreight]
FROM [dbo].[Orders]
GROUP BY [ShipCountry],[ShipCity]
ORDER BY [ShipCountry] ASC;

-- Bài tập 1
-- Hãy thống kê số lượng nhân viên theo từng quốc gia khác nhau
SELECT [Country],COUNT([EmployeeID]) AS "Số lượng nhân viên"
FROM [dbo].[Employees]
GROUP BY [Country];
