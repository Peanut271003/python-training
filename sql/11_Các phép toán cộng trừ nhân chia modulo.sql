-- Các phép toán + - * / % (chia lấy dư)
  -- Với phép toán + thì là Add

  -- Với phép toán - thì là Subtract

  -- Với phép toán * thì là Multiply

  -- Với phép toán / thì là Divide

  -- Với phwps toán % thì là Modulo (chia lấy phần dư) VD 5%2 = 1

-- Tính số lượng sản phẩm còn lại trong kho (UnitsInStock)
-- sau khi bán hết các sản phẩm đã được đặt hàng (UnitsOnOder)
-- StockRemaining = UnitsInStock - UnitsOnOrder
SELECT  [ProductID],
		[ProductName],
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsInStock]-[UnitsOnOrder]) AS StockRemaining
FROM [dbo].[Products];

-- Tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm 
-- trong bảng Order Details
-- OrderDetailValue = UnitPrice x Quantity
SELECT  [ProductID],
		[UnitPrice],
		[Quantity], 
		([UnitPrice]*[Quantity]) AS OrderDetailValue
FROM [dbo].[Order Details];

-- Tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight)
-- trung bình của các đơn hàng trong bảng Orders 
-- so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
-- FreightRatio = AVG(Freight)/MAX(Freight)
SELECT 
	AVG([Freight])/MAX([Freight]) AS FreightRatio
FROM[dbo].[Orders];
-- (Lưu ý không lấy đc giá trị (cột) thêm vào mà chỉ tính được phép tính này thôi


-- Hãy liệt kê danh sách các sản phẩm, và giá (UnitPrice)
-- của từng sản phẩm sẽ được giảm đi 10%
  -- Cách 1: dùng phép nhân + Phép chia
  -- Cách 2: chỉ được dùng phép nhân

-- Cách 1
SELECT  [ProductName],
		[UnitPrice] AS [Giá gốc],
		[UnitPrice]*90/100 AS [Giá giảm 10%]
FROM [dbo].[Products];

-- Cách 2
SELECT  [ProductName],
		[UnitPrice] AS [Giá gốc],
		[UnitPrice] * 0.9 AS [Giá giảm 10%]
FROM [dbo].[Products];