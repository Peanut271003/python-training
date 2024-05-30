-- CÁCH TẠO CƠ SỞ DỮ LIỆU TRONG SQL SERVER
-- CÚ PHÁP
	-- CREATE DATABASE <database_name>;

-- VD tạo một DATABASE 
CREATE DATABASE NVDB1
ON
(	NAME = 'nvdb_data',  
	FILENAME = 'D:\DATASQL\nvdb_data.MDF',
	SIZE = 10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB)
LOG ON 
(	NAME = 'nvdb_log',  
	FILENAME = 'D:\DATASQL\nvdb_log.LDF',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB);












