-- CÚ PHÁP TẠO TABLE MỚI
-- CREATE TABLE table_name
-- ( column_name_1 COLUMN TYPE [OTHER CONSTRAINTS],
-- column_name_2 COLUMN TYPE [OTHER CONSTRAINTS], 
-- ...
-- column_name_n COLUMN TYPE [OTHER CONSTRAINTS])

-- CREATE TABLE [tên bảng] (
-- [tên cột] [kiểu dữ kiệu] [khóa chính] [khóa ngoại] [số lượng kí tự] [kiểu dữ liệu] [null] [kiểu ràng buộc],
-- [tên cột] [kiểu dữ kiệu] [khóa chính] [khóa ngoại] [số lượng kí tự] [kiểu dữ liệu] [null] [kiểu ràng buộc],
-- ...

-- Trong đó:
-- Tên bảng: Tên của bảng mới được tạo
-- Tên cột: Tên của cột trong bảng
-- Kiểu dữ liệu: Kiểu dữ liệu của cột
-- Khóa chính: Cột được chọn làm khóa chính của bảng
-- Khóa ngoại: Cột tham chiếu đến khóa chính của một bảng khác
-- Số lượng ký tự: Số lượng ký tự tối đa của cột
-- Null: Giá trị của cột có thể là null hay không
-- Kiểu ràng buộc: Ràng buộc áp dụng cho cột 

------------------------------------------------------------------------------------------

-- VD1 
-- Câu lệnh này sẽ tạo bảng mới có tên NhanVien với các cột sau:
-- + MaNV: Kiểu dữ liệu INT, khóa chính, không thể chứa giá trị null.
-- + HoTen: Kiểu dữ liệu VARCHAR(50), không thể chứa giá trị null.
-- + Phai: Kiểu dữ liệu VARCHAR (10).
-- + NgaySinh: Kiểu dữ liệu Date.
-- + DiaChi: Kiểu dữ liệu VARCHAR(255).
-- + SĐT: Kiểu dữ liệu VARCHAR(10).
CREATE TABLE [NhanVien] (
	[MaNV] INT NOT NULL PRIMARY KEY,
	[HoTen] VARCHAR(50) NOT NULL,
	[Phai] VARCHAR(10),
	[NgaySinh] DATE,
	[DiaChi] VARCHAR(255), 
	[SDT] VARCHAR(10),
);

-- Một số lưu ý khi tạo TABLE 
-- + Tên bảng phải bắt đầu bằng một ký tự chữ cái và không được chứa các ký tự đặc biệt.
-- + Tên cột phải bắt đầu bằng một ký tự chữ cái hoặc số và không được chứa các ký tựu đặc biệt.
-- + Kiểu dữ liệu của cột phải được xác định rõ ràng.
-- + Khóa chính của bảng phải là duy nhất.
-- + Khóa ngoại của bảng phải tham chiếu đến khóa chính của một bảng khác.

-- CONSTRAINTS - Các lệnh bổ sung khi tạo bảng:(các ràng buộc)
-- + IDENTITY: Tạo cột tự tăng.
-- + IDENTITY(seed, increment): Tạo cột tự tăng với giá trị seed và increment).
-- + DEFAULT: Thiết lập giá trị mặc định cho cột.
-- + CHECK: Thiết lập ràng buộc kiểm tra cho cột.
-- + UNIQUE: Thiết lập ràng buộc duy nhất cho cột.


-- Tạo Table Khách hàng 
CREATE TABLE KhachHang(
	MAKH INT IDENTITY (100, 5) NOT NULL PRIMARY KEY,
	TenKH VARCHAR(50) NOT NULL, 
	DiaChi VARCHAR(255),
	SDT VARCHAR(10) CHECK(SDT LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
	
);
CREATE TABLE KhachHang_1(
	MaKH INT IDENTITY(100,5) NOT NULL PRIMARY KEY, 
	TenKH VARCHAR(50) NOT NULL,
	DiaChi VARCHAR(255), 
	SDT VARCHAR(10) CHECK (LEN(SDT) = 10 AND PATINDEX('%[^0-9]%', SDT) = 0)
);

-- CÚ PHÁP THAY ĐỔI CẤU TRÚC TABLE

-- ALTER TABLE table_name
-- ADD column_name datatype;      thêm cột

-- ALTER TABLE table_name
-- DROP COLUMN column_name;			xóa đi cột


-- ALTER TABLE table_name
-- RENAME COLUMN old_name to new_name;		thay đổi tên của cột

-- ALTER TABLE table_name
-- ALTER COLUMN column_name datatype;		thay đổi data của cái cột(nhớ nhập kiểu dữ liệu mới)
-- khi dùng sql thì sẽ dùng ALTER nhưng mà sử dụng cơ sở quản lý dữ liệu khác thì sử dụng MODIFY

	-- ALTER TABLE [tên bảng] 
	--[thêm | sửa đổi | xóa] [tên cột]
	--[kiểu dữ liệu] [khóa chính] [khóa ngoại] [số lượng ký tự] [NULL] [kiểu ràng buộc]


-- VD1
-- Thêm cột Email vào bảng NhanVien với kiểu dữ liệu VARCHAR(100):
ALTER TABLE NhanVien
ADD Email VARCHAR(100);

-- THAY ĐỔI VARCHAR CỦA HoTen từ 50 thành 100
ALTER TABLE NhanVien
ALTER COLUMN HoTen VARCHAR(100);

--  Chỉnh ngày sinh sao cho nó không được vượt quá ngày hiện tại
ALTER TABLE NhanVien
ADD CONSTRAINT NgaySinhCheck CHECK(NgaySinh <= GETDATE());


-- CU PHÁP XÓA TABLE
-- Cú pháp xóa dữ liệu trong Table - Cú pháp này sẽ xóa tất cả dữ liệu trong bảng, nhưng không xóa cấu trúc của bảng.
-- TRUNCATE TABLE [tên bảng];

-- Cú pháp xóa Table - Cú pháp này sẽ xóa hoàn toàn bảng, bao gồm cả cấu trúc và dữ liệu.
-- DROP TABLE [tên bảng];


-- vd xóa dữ liệu trong bảng NhanVien
TRUNCATE TABLE NhanVien;

-- Muốn xóa luôn bảng NhanVien thì 
DROP TABLE NhanVien;

-- BÀI TẬP TỔNG HỢP
-- YÊU CẦU 1: Tạo bảng SinhVien với các cột sau:
	-- MaSV: Kiểu dữ liệu INT, khóa chính, không thể chứa giá trị null.
	-- HoTen: Kiểu dữ liệu VARCHAR(50), không thể chứa giá trị null.
	-- Lop: Kiểu dữ liệu VARCHAR(20).
	-- Nganh: Kiểu dữ liệu VARCHAR(20).
	-- DiemTB: Kiểu dữ liệu FLOAT
-- 2: Thêm cột Email vào bảng SinhVien với kiểu dữ liệu VARCHAR(100)
-- 3: Sửa đổi kiểu dữ liệu của cột DiemTB trong bảng SinhVien thành kiểu dữ liệu DECIMAL(2,1)
-- 4: Xóa cột Nganh khỏi bảng SinhVien 
-- 5: Thêm ràng buộc kiểm tra cho cột DiemTB trong bảng SinhVien để giá trị phải lớn hơn hoặc bằng 0 và bé hơn bằng 10
-- 6: Thêm ràng buộc duy nhất cho cột MaSV trong bảng SinhVien
-- 7: Thêm dữ liệu vào bảng SinhVien với một số thông tin thủ công
-- 8: Xóa dữ liệu trong bảng SinhVien
-- 9: Xóa bảng SinhVien
-- 10: Tạo lại bảng SinhVien với cấu trúc ban đầu


-- Yêu cầu 1
CREATE TABLE SinhVien(
	MaSV INT NOT NULL PRIMARY KEY,
	HoTen VARCHAR(50) NOT NULL,
	Lop VARCHAR(20),
	Nganh VARCHAR(20),
	DiemTB FLOAT
);

-- YEU CAU 2
-- Thêm cột Email vào bảng SinhVien với kiểu dữ liệu VARCHAR(100)
ALTER TABLE SinhVien
ADD Email VARCHAR(100);

-- YEU CAU 3
-- Sửa đổi kiểu dữ liệu của cột DiemTB trong bảng SinhVien thành kiểu dữ liệu DECIMAL(2,1)
ALTER TABLE SinhVien
ALTER COLUMN DiemTB DECIMAL(2,1);

-- YEU CAU 4
-- Xóa cột Nganh khỏi bảng SinhVien 
ALTER TABLE SinhVien
DROP COLUMN Nganh;

-- YEU CAU 5
-- Thêm ràng buộc kiểm tra cho cột DiemTB trong bảng SinhVien để giá trị phải lớn hơn hoặc bằng 0 và bé hơn bằng 10
ALTER TABLE SinhVien
ADD CONSTRAINT DiemTBCheck CHECK(DiemTB BETWEEN 0 AND 10);

-- YEU CAU 6 
-- Thêm ràng buộc duy nhất cho cột MaSV trong bảng SinhVien
ALTER TABLE SinhVien
ADD CONSTRAINT MaSVUnique UNIQUE(MaSV);  -- unique la rang buoc tren gia tri duy nhat tren column, co nghia la cac dong du lieu khong duoc co gia tri trung nhau o column do

-- YEU CAU 7
-- Thêm dữ liệu vào bảng SinhVien với một số thông tin thủ công

-- YEU CAU 8
-- Xóa dữ liệu trong bảng SinhVien
TRUNCATE TABLE SinhVien;

--  YEU CAU 9
--  Xóa bảng SinhVien
DROP TABLE SinhVien;

-- YEU CAU 10
--  Tạo lại bảng SinhVien với cấu trúc ban đầu
CREATE TABLE SinhVien(
	MaSV INT NOT NULL PRIMARY KEY,
	HoTen VARCHAR(50) NOT NULL,
	Lop VARCHAR(20),
	Nganh VARCHAR(20),
	DiemTB FLOAT
);







