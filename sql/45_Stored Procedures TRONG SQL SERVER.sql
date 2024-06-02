-- Stored procedure la gi 
-- Stored procedure la tap hop mot hoac nhieu cau lenh T-SQL thanh mot nhom don vi xu ly logic va duoc luu tru tren Database Server 
-- Khi một câu lệnh gọi chạy stored procedure lần đầu tiên thì SQL SERVER sẽ chạy nó và lưu trữ vào bộ nhớ đệm, gọi là plan cache, những lần tiếp theo 
-- SQL SERVER sẽ sử dụng lại plan cache nên sẽ cho tốc độ xử lý tối ưu

-- Stored procedure rất tiện lợi cho người quản trị database (DBA), nó giúp DBA tạo ra những nhóm câu lệnh và gửi đến một bộ phận khác mà họ sẽ không cần 
-- quan tâm đến nội dung bên trong stored procedure có gì, họ chỉ quan tâm đến tham số đầu ra và đầu vào



-- CÚ PHÁP
-- CREATE PROCEDURE [database_name].[schema_name].[procedure_name]
--(
--	[parameter_1] [datatype] [, paramter_2] [datatype] ...
--)
-- AS 
-- BEGIN
--	[statements]
-- END


-- vd1
-- Tao mot stored procedure de lay thong tin ve san pham dua tren ten san pham duoc cung cap
CREATE PROCEDURE GetProductByName
	@ProductName NVARCHAR(100)
AS 
BEGIN 
	SELECT ProductName, UnitPrice, UnitsInStock
	FROM Products
	WHERE ProductName = @ProductName
END

-- Su dung:
EXEC GetProductByName @	ProcductName ='Chai'

-- tao mot stored procedure de lay thong tin ve khach hang dua tren dia chi duoc cung cap
CREATE PROCEDURE GetAdress
	@DiaChi NVARCHAR(100)
AS
BEGIN
	SELECT *
	FROM [dbo].[KHACHHANG_NEW] KN
	WHERE KN.DiaChi = @DiaChi
END

EXEC GetAdress @DiaChi = 'HCM' 
EXEC GetAdress @DiaChi = 'Ha Noi' 

-- Tao ra stored procedure de tinh tong doanh so ban hang 
-- cua mot nhan vien dua tren EmployeeID
CREATE PROCEDURE GetEmployeeSalesTotal
	@EmployeeID INT
AS
BEGIN
	SELECT SUM(UnitPrice * Quantity) as TotalSales
	FROM Orders O 
	JOIN Orders Details OD ON OD.OrderID = O.OrderID
	WHERE EmployeeID = @EmployeeID
END



-- Tao mot stored procedure de them moi khach hang vao bang KhachHang_NEW
CREATE PROCEDURE AddCustomer1
	@TenKH NVARCHAR(20),
	@DiaChi NVARCHAR(30),
	@SDT NVARCHAR(10)
AS
BEGIN
	INSERT INTO [dbo].[KHACHHANG_NEW] ([TenKH],[DiaChi],[SDT])
	VALUES (UPPER(@TenKH), @DiaChi,@SDT) -- UPPER O DAY TUC LA NO VIET HOA HET CAC CHU CUA KHACH HANG MOI TA THEM VAO
END

EXEC AddCustomer1 @TenKH = 'MinhQuoc',@DiaChi = 'Luy Ban Bich, Tan Phu',@SDT ='0778083964'
EXEC AddCustomer1 @TenKH = 'TuanVu',@DiaChi = 'TruongChinh, Tan Phu',@SDT ='0458932701'

-- Tao  mot stored procedure de cap nhat gia cho mot san pham cu the
CREATE PROCEDURE IncreasePrice
	@ProductID INT,
	@PriceIncrease DECIMAL(10,2)
AS
BEGIN
	UPDATE [Products] 
	SET UnitPrice = UnitPrice + @PriceIncrease
	WHERE ProducrID = @ProductID
END

EXEC IncreasePrice @ProductID =1, @PriceIncrease = 100;


