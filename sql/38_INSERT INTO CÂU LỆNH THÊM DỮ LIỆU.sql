-- INSERT INTO (cÂU LỆNH THÊM DỮ LIỆU)
-- cú pháp

-- INDERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

-- INSERT INTO table_name 
-- VALUES (value1, value2, value3, ...)

--- Them mot khach hang moi 
INSERT INTO [dbo].[KhachHang]([TenKH],[DiaChi],[SDT])
VALUES ('AA','tanphu','0389686130');

-- them nhieu khach hang moi cung luc
INSERT INTO [dbo].[KhachHang]([TenKH],[DiaChi],[SDT])
VALUES  ('A1','tanphu','0389686120'),
		('A2','binhtan','0389686140'),
		('A3','taythanh','0389686150'),
		('A4','binhhunghoa','0389686160'),
		('A5','thuthiem','0389686170');
