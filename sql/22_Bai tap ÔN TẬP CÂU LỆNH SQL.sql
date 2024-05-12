-- BÀI TẬP ÔN TẬP

-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng,
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần
SELECT  [CustomerID],
		COUNT([OrderID]) AS [Total Orders]
FROM  [dbo].[Orders]

GROUP BY  [CustomerID]
HAVING COUNT([OrderID])>20
ORDER BY COUNT([OrderID]) DESC;

-- Hãy lọc ra các nhân viên (EmployeeID) có tổng số đơn hàng lớn 
-- hơn hoặc bằng 100, sắp xếp theo tổng số đơn hàng giảm dần
SELECT  [EmployeeID],
		COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]

GROUP BY  [EmployeeID]
HAVING COUNT([OrderID]) >=100
ORDER BY COUNT([OrderID]) DESC;

-- Hãy cho biết những thể loại nào (CategoryID) có số sản phẩm
-- khác nhau lớn hơn 11
SELECT  [CategoryID],
		COUNT([ProductID]) AS [TotalProducts]
FROM [dbo].[Products]

GROUP BY[CategoryID]
HAVING COUNT([ProductID]) > 11;

-- Hãy cho biết những quốc gia nào có nhiều hơn 7 đơn hàng
SELECT [ShipCountry],
       COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]

GROUP BY [ShipCountry]
HAVING  COUNT([OrderID]) > 7;

