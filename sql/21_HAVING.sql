 -- HAVING - LỌC DỮ LIỆU SAU GROUP BY
   -- HAVING
     -- SELECT Column_name(s)

     -- FROM table_name

     -- WHERE condition

     -- GROUP BY Column_name(s)

     -- HAVING condition

     -- ORDER BY Column_name(s);
-- Lọc dữ liệu sau GROUP BY 
-- LƯU Ý: hàm HAVING cx coi như là WHERE đều là hàm điều kiện
-- nhưng khác ở chỗ là hàm HAVING chỉ lấy điều kiện của mấy hàm như
-- MIN(),MAX(),AVG(),COUNT(),SUM(),còn không phải mấy cái này thì là điều kiện của hàm WHERE 

-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần
SELECT  [CustomerID], 
		COUNT([OrderID]) AS [TotalOrders]		 
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID])> 20
ORDER BY COUNT([OrderID]) DESC;

-- Hãy lọc ra những nhà cung cấp sản phẩm có tổng số lượng hàng 
-- trong kho (UnitsInStock) lớn hơn 30 và có trung bình đơn giá
-- (UnitPrice) có giá trị dưới 50
SELECT  [SupplierID],
		SUM([UnitsInStock]) AS [Total UnitsInStock],
		AVG([UnitPrice]) AS [AVG UnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock]) > 30 AND AVG([UnitPrice]) < 50;


-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, 
-- trong nửa năm sau của năm 1996, sắp xếp theo tháng tăng dần,
-- tổng tiền vận chuyển lớn hơn 1000$
SELECT MONTH([ShippedDate]) AS [MONTH],
		SUM([Freight]) AS [Total Freight]
FROM [dbo].[Orders]
WHERE [ShippedDate] BETWEEN '1996-07-01'AND'1996-12-31'
GROUP BY MONTH([ShippedDate])
HAVING SUM([Freight])>1000
ORDER BY MONTH([ShippedDate]) ASC;

-- Hãy lọc ra những thành phố có số lượng đơn hàng > 16 và sắp 
-- xếp theo tổng số lượng giảm dần
SELECT  [ShipCity],
		COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]

GROUP BY  [ShipCity]
HAVING COUNT([OrderID])>16
ORDER BY COUNT([OrderID]) DESC;

