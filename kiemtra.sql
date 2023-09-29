create database sanpham
use sanpham
go
CREATE TABLE Sanpham (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Ten NVARCHAR(255),
	Mota NVARCHAR(255),
	Soluongtonkho NVARCHAR(255),
    gia DECIMAL(10, 2),
	Donvitinh NVARCHAR(255),
);
SET IDENTITY_INSERT Sanpham ON 
INSERT INTO Sanpham (ID, Ten, Mota, Soluongtonkho,gia,Donvitinh)
VALUES (1, 'sp1', 'sp dat', '2',2,'cai');

CREATE PROCEDURE Addsanpham
    @Ten NVARCHAR(255),
	@Mota NVARCHAR(255),
	@Soluongtonkho NVARCHAR(255),
    @gia DECIMAL(10, 2),
    @Donvitinh NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO Sanpham (Ten, Mota,Soluongtonkho,gia, Donvitinh)
    VALUES (@Ten, @Mota, @Soluongtonkho,@gia,@Donvitinh)
END;

CREATE PROCEDURE listsanpham
AS
BEGIN
    SELECT * FROM   Sanpham;
END;

CREATE PROCEDURE Updatesanpham
 @ID INT,
   @Ten NVARCHAR(255),
	@Mota NVARCHAR(255),
	@Soluongtonkho NVARCHAR(255),
    @gia DECIMAL(10, 2),
    @Donvitinh NVARCHAR(MAX)
AS
BEGIN
    UPDATE Sanpham
    SET Ten = @Ten, Mota = @Mota, Soluongtonkho = @Soluongtonkho,gia =@gia,Donvitinh = @Donvitinh
    WHERE ID = @ID;
END;

create procedure Deleltesanpham
@ID INT,
   @Ten NVARCHAR(255),
	@Mota NVARCHAR(255),
	@Soluongtonkho NVARCHAR(255),
    @gia DECIMAL(10, 2),
    @Donvitinh NVARCHAR(MAX)
AS
BEGIN
	DELETE Sanpham



