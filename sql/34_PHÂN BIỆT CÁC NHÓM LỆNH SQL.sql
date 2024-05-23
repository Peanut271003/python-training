﻿-- PHÂN BIỆT CÁC NHÓM LỆNH SQL

-- SQL LÀ GÌ? 
-- SQL là một ngôn ngữ lập trình được sử dụng dễ thao tác với dữ liệu
-- trong cơ sở dữ liệu quan hệ. SQL được sử dụng để tạo, truy vấn, thay đổi
-- và xóa dữ liệu trong cơ sở dữ liệu.


-- SQL có thể được chia thành bốn nhóm chính bao gồm:
	-- DML(Data Manipulation Language): Câc câu lệnh DML được sử dụng để thao tác
	-- với dữ liệu trong cơ sở dữ liệu, bao gồm các câu lệnh chèn, cập nhật, xóa và truy vấn

	-- DDL(Data Definition Language): Các câu lệnh DDL được sử dụng để định nghĩa 
	-- cấu trúc của cơ sở dữ liệu, bao gồm các bảng, cột, chỉ mục và ràng buộc

	-- DCL(Data Control Language): Các câu lệnh DCL được sử dụng để kiểm soát quyền 
	-- truy cập vào cơ sở dữ liệu, bao gồm các câu lệnh cấp phép và thu hồi quyền

	-- TCL(Transaction Control Language): Các câu lệnh TCL được sử dụng để quản lý các 
	-- giao dịch trong cơ sở dữ liệu, bao gồm các câu lệnh bắt đầu, xác nhận và hoàn tác giao dịch 


-- DML 

-- CÁC CÂU LỆNH DML ĐƯỢC SỬ DỤNG ĐỂ THAO TÁC VỚI DỮ LIỆU TRONG CƠ SỞ DỮ LIỆU.
-- CÁC CÂU LỆNH DML THƯỜNG ĐƯỢC SỬ DỤNG ĐỂ THÊM, CẬP NHẬT, XÓA HOẶC TRUY VẤN DỮ LIỆU
	-- INSERT INTO: Chèn dữ liệu vào một bảng 
	-- UPDATE: Cập nhật dữ liệu trong một bảng 
	-- DELETE: Xóa dữ liệu từ một bảng
	-- SELECT: Truy vấn dữ liệu từ một hoặc nhiều bảng

--DDL

-- Các câu lệnh DDL được sử dụng để định nghĩa cấu trúc của cơ sở dữ liệu.
-- Các câu lệnh DDL thường được sử dụng khi tạo cơ sở dữ liệu mới hoặc khi thay đổi cấu trúc của cơ sở dữ liệu
	-- CREATE TABLE: Tạo một bảng mới
	-- ALTER TABLE: Thêm, xóa hoặc sửa đổi các cột trong bảng.
	-- DROP TABLE: Xóa một bảng
	-- CREATE INDEX: Tạo một chỉ mục cho một cột hoặc một tập hợp các cột.
	-- DROP INDEX: Xóa một chỉ mục
	-- CREATE CONSTRAINT: Tạo một ràng buộc cho một cột hoặc tập hợp các cột
	-- DROP CONSTRAINT: Xóa một ràng buộc
	
-- DCL 

-- Các câu lệnh DCL được sử dụng để kiểm soát quyền truy cập vào cơ sở dữ liệu.
-- Các câu lệnh DCL thường được sử dụng để cấp quyền truy cập cho người dùng hoặc thu hồi quyền truy cập
	-- GRANT: Cấp quyền truy cập cho người dùng
	-- REVOKE: Thu hồi quyền truy cập cho người dùng

-- TCL

-- Các câu lệnh TCL được sử dụng để quản lý các giao dịch trong cơ sở dữ liệu.
-- Các câu lệnh TCL thường được sử dụng để đảm bảo tính toàn vẹn dữ liệu trong trường hợp xảy ra lỗi
	-- BEGIN TRANSACTION: Bắt đầu một giao dịch
	-- COMMIT TRANSACTION: Xác nhận một giao dịch
	-- ROLLBACK TRANSACTION: Hoàn tác một giao dịch 




