-- ÔN TẬP CÁC CÂU LỆNH JOIN

-- BÀI TẬP 1 (INNER JOIN)
-- Liệt kê tên sản phẩm và tên nhà cung cấp của các sản phẩm đã được 
-- đặt hàng trong bảng "Order Details". Sử dụng INNER JOIN để kết hợp
-- bảng "Order Details" với các bảng liên quan để lấy thông tin sản phẩm 
-- và nhà cung cấp

SELECT DISTINCT OD.ProductID, P.ProductName, S.CompanyName
FROM [dbo].[Order Details] OD
JOIN [dbo].[Products] P
ON P.ProductID = OD.ProductID
JOIN [dbo].[Suppliers] S
ON P.SupplierID = S.SupplierID;
-- LƯU Ý DÙNG JOIN BAO NHIÊU LẦN CX ĐC HẾT


-- BÀI TẬP 2 (LEFT JOIN)
-- Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng 
-- trong bảng "Orders". Bao gồm cả các đơn hàng không có nhân viên phụ 
-- trách. Sử dụng LEFT JOIN để kết hợp bảng "Orders" với bảng "Employees"
-- để lấy thông tin về khách hàng và nhân viên phụ trách

SELECT O.OrderID,E.FirstName,E.LastName, C.ContactName,C.CompanyName
FROM  [dbo].[Orders] O 
LEFT JOIN  [dbo].[Employees] E
ON E.EmployeeID = O.EmployeeID
LEFT JOIN [dbo].[Customers] C
ON C.CustomerID	= O.CustomerID;


-- BÀI TẬP 3 (RIGHT JOIN)
-- Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng 
-- trong bảng "Orders". Bao gồm cả các khách hàng không có đơn hàng.
-- Sử dụng RIGHT JOIN để kết hợp bảng "Orders" với bảng "Customers" để 
-- lấy thông tin về khách hàng và nhân viên phụ trách



SELECT O.OrderID,C.CompanyName, E.FirstName, E.LastName  --1
FROM [dbo].[Orders] O
RIGHT JOIN [dbo].[Employees] E
ON E.EmployeeID = O.EmployeeID
RIGHT JOIN [dbo].[Customers] C
ON C.CustomerID = O.CustomerID;

SELECT O.OrderID,C.CompanyName, E.FirstName, E.LastName   --2
FROM [dbo].[Orders] O
RIGHT JOIN [dbo].[Customers] C
ON C.CustomerID = O.CustomerID
RIGHT JOIN [dbo].[Employees] E
ON E.EmployeeID = O.EmployeeID;
-- ==> TỪ 2 THẰNG TRÊN TA CÓ NHẬN XÉT NHƯ SAU : 
  -- NẾU THÊM NHIỀU LEFT, RIGHT JOIN ĐI NỮA  THÌ NẾU MÀ DÙNG RIGHT 
  -- THÌ NÓ SẼ TRẢ VỀ CÁI THẰNG RIGHT( MÀ MÌNH THỂM CUỐI CÙNG)
  -- NHƯ THẰNG (--1) NÓ SẼ TRẢ VỀ RIGHT JOIN [dbo].[Customers] C NÊN CHO RA 833 ROWS
  -- CÒN THẰNG (--2) NÓ SẼ TRẢ VỀ RIGHT JOIN [dbo].[Employees] E NÊN CHO RA 830 ROWS

  -- CÒN THẰNG LEFT NÓ SẼ TRẢ VỀ THẰNG FROM MẶC DÙ VIẾT THÊM NHIỀU THẰNG LEFT ĐI CHĂNG NỮA
  -- SAU ĐÂY TA LẤY VD CHO LEFT LUÔN
SELECT O.OrderID,C.CompanyName, E.FirstName, E.LastName 
FROM [dbo].[Customers] C
LEFT JOIN  [dbo].[Orders] O
ON  C.CustomerID = O.CustomerID
LEFT JOIN  [dbo].[Employees] E
ON E.EmployeeID = O.EmployeeID;
 -- ==> ĐÓ TA CÓ THỂ THẤY LÀ KHI CHẠY THẰNG LEFT NÓ SẼ TRẢ VỀ THẰNG 
 -- FROM NÊN KẾT QUẢ LÀ 833 ROWS NHƯ THẰNG RIGHT (--1)


-- BÀI TẬP 4 (FULL JOIN)
-- Liệt kê tên danh mục và tên nhà cung cấp của các sản phẩm trong bảng
-- "Products". Bao gồm cả các danh mục và nhà cung cấp không có sản phẩm.
-- Sử dụng FULL JOIN để lấy thông tin về danh mục và nhà cung cấp

SELECT P.ProductID, P.ProductName, S.CompanyName, C.CategoryName
FROM [dbo].[Products] P
FULL JOIN [dbo].[Suppliers] S
ON S.SupplierID = P.SupplierID
FULL JOIN [dbo].[Categories] C
ON  C.CategoryID = P.CategoryID;


-- BÀI TẬP 5 (INNER JOIN)
-- Liệt kê tên khách hàng và tên sản phẩm đã được đặt hàng trong bảng
-- "Order" và "Order Detail". Sử dụng INNER JOIN để kết hợp bảng
-- "Order" và "Order Detail" để lấy thông tin khách hàng và sản phẩm 
-- đã được đặt hàng

SELECT   P.ProductName, C.ContactName
FROM [dbo].[Orders] O
JOIN [dbo].[Order Details] OD
ON OD.OrderID = O.OrderID
JOIN [dbo].[Customers] C
ON C.CustomerID = O.CustomerID
JOIN [dbo].[Products] P
ON P.ProductID = OD.ProductID;
-- KQ 2155 ROWS

-- BÀI TẬP 6 (FULL JOIN)
-- Liệt kê tên nhân viên và tên khách hàng của các đơn hàng trong bảng
-- "Orders". Bao gồm cả các đơn hàng không có nhân viên hoặc khách hàng
-- tương ứng. Sử dụng FULL JOIN để kết hợp bảng "Orders" với bảng
-- "Employees" và "Customers" để lấy thông tin về nhân viên và khách 
-- hàng

SELECT E.LastName, E.FirstName, C.ContactName
FROM [dbo].[Orders] O
FULL JOIN [dbo].[Employees] E
ON O.EmployeeID = E.EmployeeID
FULL JOIN [dbo].[Customers] C
ON C.CustomerID = O.CustomerID
-- KQ 833 ROWS

