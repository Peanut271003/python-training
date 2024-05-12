  -- TRUY VẤN DỮ LIỆU TỪ NHIỀU BẢNG
   
-- Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
  -- Mã thể loại
  -- Tên thể loại
  -- Mã sản phẩm
  -- Tên sản phẩm
SELECT  C.[CategoryID], C.[CategoryName], 
		P.[ProductID], P.[ProductName]
FROM [dbo].[Products] AS P, [dbo].[Categories] AS C
WHERE C.[CategoryID] = P.[CategoryID]; -- (NÀY LÀ LẤY 2 CÁI DỮ LIỆU LIÊN KẾT VỚI NHAU QUA 2 BẢNG (COI SƠ ĐỒ ERD BÊN WORD LÀ HIỂU))


-- Từ bảng Employees và Orders, hãy in ra các thông tin sau đây:
  -- Mã nhân viên 
  -- Tên nhân viên
  -- Số lượng đơn hàng mà nhân viên đã bán được
SELECT  E.EmployeeID,
		E.FirstName,
		E.LastName,
		COUNT(O.[OrderID]) AS [TotalOrders]
FROM [dbo].[Employees] AS E,[dbo].[Orders] AS O
WHERE  E.EmployeeID = O.EmployeeID
GROUP BY  E.EmployeeID,E.FirstName,E.LastName;

-- Từ bảng Customers và Orders, hãy in ra các thông tin sau đây:
  -- Mã số khách hàng
  -- Tên công ty
  -- Tên liên hệ
  -- Số lượng đơn hàng đã mua
  -- Với điều kiện quốc gia của khách hàng là UK
SELECT  C.CustomerID,	
		C.CompanyName,
		C.ContactName, C.Country,
		COUNT(O.[OrderID]) AS [TotalOrders]
FROM [dbo].[Customers] AS C, [dbo].[Orders] AS O
WHERE  C.CustomerID = O.CustomerID AND C.Country = 'UK'
GROUP BY C.CustomerID,C.CompanyName,C.ContactName,C.Country;

-- Từ bảng Orders và Shippers, hãy in ra các thông tin sau đây:
  -- Mã nhà vận chuyển 
  -- Tên công ty vận chuyển
  -- Tổng số tiền được vận chuyển (SUM Freight)
  -- Và in ra màn hình theo thứ tự sắp xếp tổng số tiền vận chuyển
  -- giảm dần
SELECT  S.ShipperID,
		S.CompanyName,
		SUM(O.[Freight]) AS [TotalFreight]
FROM [dbo].[Orders] AS O, [dbo].[Shippers] AS S
WHERE S.ShipperID = O.ShipVia
GROUP BY  S.ShipperID, S.CompanyName
ORDER BY  SUM(O.[Freight]) DESC;

-- Từ bảng Products và Suppliers, hãy in ra các thông tin sau đây:
  -- Mã nhà cung cấp
  -- Tên công ty
  -- Tổng số các sản phẩm khác nhau đã cung cấp
  -- Và chỉ in ra màn hình duy nhất 1 nhà cung cấp có số lượng sản
  -- phẩm khác nhau nhiều nhất
SELECT  TOP 1  S.SupplierID,
		S.CompanyName,
		COUNT(P.[ProductID]) AS [TotalProducts]
FROM [dbo].[Products] AS P, [dbo].[Suppliers] AS S
WHERE S.SupplierID = P.SupplierID  -- MUỐN VIẾT NHANH HƠN( MỞ GỢI Ý) TA NHẤN NÚT CTRL SPACE
GROUP BY S.SupplierID, S.CompanyName
ORDER BY COUNT(P.[ProductID]) DESC;


-- Từ bảng Orders và Order Details, hãy in ra các thông tin sau đây:
  -- Mã đơn hàng
  -- Tổng số tiền sản phẩm của đơn hàng đó
SELECT  O.OrderID, 
		SUM(OD.[UnitPrice]*OD.[Quantity]) AS [SUM MONEY]
FROM [dbo].[Orders] AS O, [dbo].[Order Details] AS OD
WHERE O.OrderID = OD.OrderID 
GROUP BY  O.OrderID;
-- BÀI NÀY HAY NÊN COI KĨ, CHỈ LẤY ĐC O.ORDERID, NẾU MÀ LẤY THẰNG 
-- UNITPRICE VÀ QUANTITY THÌ NÓ SẼ KHÔNG TÍNH SUM GỘP 1 MÃ ĐC, VD 
-- SAU SẼ MINH CHỨNG KHI RUN KẾT QUÁ NÓ KHÁC

-- BÀI NÀY LÀ CÓ THÊM CẢ QUANTITY VÀ UNITPRICE
SELECT  O.OrderID,
		OD.Quantity,
		OD.UnitPrice,
		SUM(OD.Quantity*OD.UnitPrice) AS [Total]
FROM [dbo].[Orders] AS O,[dbo].[Order Details] AS OD
WHERE O.OrderID = OD.OrderID
GROUP BY  O.OrderID,OD.Quantity,OD.UnitPrice;
-- ==> ĐÓ CHÚNG TA CÓ THỂ THẤY 2 KẾT QUẢ KHÁC NHAU MÀ CÁCH LÀM ĐẦU 
-- TIÊN LÀ ĐÚNG, CÒN CÁCH LÀM THỨ 2 KHÔNG ĐẠT YÊU CẦU CỦA ĐỀ BÀI CHỨ KHÔNG PHẢI LÀ SAI


-- Từ 3 bảng Order Details, Orders và Emloyees hãy in ra các thông 
-- tin sau đây:
  -- Mã đơn hàng
  -- Tên nhân viên
  -- Tổng số tiền sản phẩm của đơn hàng
SELECT  O.OrderID, 
		E.FirstName,
		E.LastName,
		SUM( OD.Quantity*OD.UnitPrice) AS [TotalMoney]
FROM [dbo].[Orders] AS O, [dbo].[Order Details] AS OD, [dbo].[Employees] AS E
WHERE O.OrderID= OD.OrderID AND E.EmployeeID =O.EmployeeID
GROUP BY  O.OrderID, E.FirstName, E.LastName;

