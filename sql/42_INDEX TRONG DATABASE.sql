--INDEX DATABASE LA GI?
	--Index là một cấu trúc dữ liệu được dùng để định vị và truy cập nhanh nhất vào dữ liệu trong các bảng database
	--Index là một cách tối ưu hiệu suất truy vấn database bằng việc giảm lượng truy cập vào bộ nhớ khi thực hiện truy vấn
-- Tóm lại Index database là gì?
	-- Nói đơn giản, index trỏ tới địa chỉ dữ liệu trong một bảng, giống như 
	-- MỤC LỤC của một cuốn sách (Gồm tên đề mục và số trang), nó giúp truy vấn trở nên nhanh chóng như việc bạn xem mục lục và tìm đúng trang cần đọc 

-- Các kiểu index 
	-- Hash index 
		-- Hash index mạnh mẽ khi thực hiện các phép truy vấn với toán tử = hay <> (IN, NOT IN) (có thể nhanh hơn cả B-tree)
		-- Tuy nhiên lại không hữu ích khi gặp các trường truy vấn với điều kiện như >, <, like
		-- Không thể tối ưu hóa toán tử ORDER BY bằng việc sử dụng Hash index bởi vì nó không thể tìm kiếm được phần tử tiếp theo trong Order 
	-- B-Tree
		-- Dữ liệu index trong B-Tree được tổ chức và lưu trữ theo dạng cây (tree):
			-- Root node - node đầu tiên đứng vị trí cao nhất trong cây
			-- Child nodes - nodes con được trỏ từ Parent nodes (vị trí cao hơn)
			-- Parent nodes - nodes cha trong cây mà có trỏ sang các Child nodes 
			-- Leaf notes - nodes lá, không trỏ đến bất kì nodes nào khác, có vị trí thấp nhất trong nhánh của cây
			-- Interal nodes - tất cả các nodes không phải là nodes lá
			-- External nodes - tên gọi khác của nodes lá
		-- B-Tree index được sử dụng trong các biểu thức so sánh dạng: =, >, >=, <, <=, BETWEEN và LIKE
		-- B-Tree index được sử dụng cho những column trong bảng khi muốn tìm kiếm 1 giá trị nằm trong khoảng nào đó


-- CÚ PHÁP
	-- CREATE INDEX index_name
	-- ON table_name (column1, column2, ...);    đa phần là dùng thằng này nhiều hơn

	-- CREATE UNIQUE INDEX index_name 
	-- ON table_name (column1, column2, ...);     -- giá trị trong cột này không được trùng lặp








		






