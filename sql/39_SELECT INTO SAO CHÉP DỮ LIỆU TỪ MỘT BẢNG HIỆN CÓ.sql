-- SELECT INTO (SAO CHÉP DỮ LIỆU TỪ MỘT BẢNG HIỆN CÓ)
-- Ý NGHĨA
-- Câu lệnh SELECT INTO trong SQL được sử dụng để tạo một bảng mới và sao chép dữ liệu từ một bảng hiện có vào bảng mới này
-- Nó thường được sử dụng để tạo bảng tạm thời hoặc sao luu dữ liệu từ một bảng hiện có để thực hiện các phân tích hoặc thao tác dữ liệu khác
-- Câu lệnh SELECT INTO cũng có thể sử dụng để chọn một phần tử dữ liệu từ bảng nguồn và chèn nó vào bảng mới

-- CÚ PHÁP

-- SELECT *
-- INTO newtable [IN externaldb]
-- FROM oldtable
-- WHERE condition; -- ko co where thi no lay het con co where thi no lay theo dieu kiem where


-- SELECT column1, column2, column3, ...
-- INTO newtable [IN externaldb]
-- FROM oldtable
-- WHERE conditon;


-- tao ra bang moi voi cac san pham co gia tri >50
SELECT * 
INTO HighvalueProducts 
FROM Products
WHERE [UnitPrice] >50;

-- Khi chung ta run thi no se cho ra mot cai bang HighvalueProducts co nhung gia tri > 50, no that su luu tru tren o cung chu khong phai la luu tam thoi nhu cai thang cte


----------------------------------------------------------------------------

-- Lưu ý 
	-- Khi tạo bảng tạm thời: SELECT INTO thường được sử dụng để tạo bảng tạm thời để lưu trữ 
	-- kết quả truy vấn hoặc tạo các bảng chứa dữ liệu cần phân tích mà không cần thay đổi bảng nguồn.

	-- Sao lưu dữ liệu: Bạn có thể sử dụng SELECT INTO để sao lưu dữ liệu từ bảng gốc vào bảng tạm thời để tránh mất dữ liệu trong quá trình thực hiện các thao tác.
	
	-- Trích xuất dữ liệu: Khi bạn cần trích xuất một phần hoặc toàn bộ dữ liệu từ bảng gốc để thực hiện xử lý dữ liệu khác mà không ảnh hưởng đến dữ liệu gốc.
	 
	-- Tạo tổng hợp dữ liệu: Đôi khi bạn có thể sử dụng SELECT INTO để tạo bảng mới chứa kết quả tổng hợp hoặc kết quả của các thao tác xử lý dữ liệu



