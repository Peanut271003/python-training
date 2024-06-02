-- UPDATE_ CÂU LỆNH CẬP NHẬT DỮ LIỆU 
-- CÚ PHÁP
	-- UPDATE table_name
	-- SET column1 = value1, column2 = value2, ... 
	-- WHERE condition;


-- TA TAO RA MOT BANG KHACH HANG MOI DE THUC HANH
SELECT * 
INTO KHACHHANG_NEW
FROM KhachHang;

-- CAP NHAT THONG TIN CUA 1 KHACH HANG TRONG BANG KHACHHANG_NEW 
-- CAP NHAT DIA CHI CUA KHACH HANG AA ban dau la 'tan phu' => cap nhat la '456/5 Ma Lo, Binh Hung Hoa A, Binh Tan, TP.HCM'
UPDATE KHACHHANG_NEW
SET [DiaChi] = '456/5 Ma Lo, Binh Hung Hoa A, Binh Tan, TP.HCM'
WHERE TenKH = 'AA';
-- SAU khi ta run cau lenh nay thi dia chi cua khach hang AA da thay doi, chung ta co the 
-- edit top 200 Rows cua 2 bang KhachHang va KHACHHANG_NEW de so sanh


-- vd cap nhat thong tin dia chi va sdt cua khach hang A1
-- ta cap nhat thong tin nhu sau dia chi 'tan phu'->'1/16 Huynh Thien Loc, Luy Ban Bich Street, Tan Phu, TP.HCM'
-- ta cap nhat sdt nhu sau '0389686120'->'0976104575'
UPDATE KHACHHANG_NEW
SET DiaChi = '1/16 Huynh Thien Loc, Luy Ban Bich Street, Tan Phu, TP.HCM',
	SDT = '0976104575'
WHERE TenKH = 'A1';
-- sau khi run cau lenh nay chung ta so sanh no voi table KhachHang la ta se thay no thay doi duoc thong tin cua khach hang A1





