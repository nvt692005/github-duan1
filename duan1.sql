CREATE DATABASE duan1;
-- Tạo bảng KhachHang
CREATE TABLE KhachHang (
    Id_Kh INT PRIMARY KEY,
    HoTen NVARCHAR(50),
    SDT VARCHAR(15),
    DiaChi NVARCHAR(100),
    Quan_Huyen NVARCHAR(50),
    ThanhPho NVARCHAR(50)
);

-- Tạo bảng DanhMuc
CREATE TABLE DanhMuc (
    Id_DM INT PRIMARY KEY,
    Ten_DM NVARCHAR(50)
);

-- Tạo bảng SanPham
CREATE TABLE SanPham (
    Id_SP INT PRIMARY KEY,
    TenSP NVARCHAR(50),
    Id_DM INT,
    Gia DECIMAL(10, 2),
    GiaGoc DECIMAL(10, 2),
    MotaSP NVARCHAR(700),
    GiamGia INT(10),
    LuotXem INT(10),
    NgayDang TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    NgayCapNhat TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Id_DM) REFERENCES DanhMuc(Id_DM)
);

-- Tạo bảng SizeGiay
CREATE TABLE SizeGiay (
    Id_Size INT PRIMARY KEY,
    Size INT NOT NULL UNIQUE
);

-- Tạo bảng trung gian SanPham_Size
CREATE TABLE SanPham_Size (
    Id_SP INT,
    Id_Size INT,
    SoLuong INT,
    PRIMARY KEY (Id_SP, Id_Size),
    FOREIGN KEY (Id_SP) REFERENCES SanPham(Id_SP),
    FOREIGN KEY (Id_Size) REFERENCES SizeGiay(Id_Size)
);

-- Tạo bảng HinhAnh
CREATE TABLE HinhAnh (
    Id_Hinh INT PRIMARY KEY,
    Id_SP INT,
    Path NVARCHAR(255),
    FOREIGN KEY (Id_SP) REFERENCES SanPham(Id_SP)
);

-- Tạo bảng DonHang
CREATE TABLE DonHang (
    Id_DH INT PRIMARY KEY,
    Id_Kh INT,
    HoTen NVARCHAR(50),
    SDT VARCHAR(15),
    DiaChi NVARCHAR(100),
    Quan_Huyen NVARCHAR(50),
    ThanhPho NVARCHAR(50),
    ThanhTien DECIMAL(10, 2),
    FOREIGN KEY (Id_Kh) REFERENCES KhachHang(Id_Kh)
);

-- Tạo bảng ChiTiet
CREATE TABLE ChiTiet (
    Id_DH INT,
    Id_SP INT,
    SoLuong INT,
    Gia DECIMAL(10, 2),
    PRIMARY KEY (Id_DH, Id_SP),
    FOREIGN KEY (Id_DH) REFERENCES DonHang(Id_DH),
    FOREIGN KEY (Id_SP) REFERENCES SanPham(Id_SP)
);

-- Tạo bảng ThanhToan
CREATE TABLE ThanhToan (
    Id_TT INT PRIMARY KEY,
    PhuongThuc NVARCHAR(50),
    TrangThai NVARCHAR(50),
    Id_DH INT,
    FOREIGN KEY (Id_DH) REFERENCES DonHang(Id_DH)
);

-- Thêm dữ liệu mẫu vào DanhMuc
INSERT INTO DanhMuc (Id_DM, Ten_DM) VALUES

(1, 'Giày Nike'),
(2, 'Giày Adidas'),
(3, 'Giày Converse'),

-- Thêm dữ liệu mẫu vào SizeGiay
INSERT INTO SizeGiay (Id_Size, Size) VALUES
(1, 38),
(2, 39),
(3, 40),
(4, 41),
(5, 42),
(6, 43);

INSERT INTO SanPham (Id_SP, TenSP, Id_DM, GiaGoc, Gia, GiamGia, LuotXem, MotaSP) VALUES
-- SP giam gia
(1, 'Giày Nike Air Jordan 1 Low ''Aluminum'' Ice Blue Like Auth', 1, 1800000 , 840000, 53,10, 'Giày Nike Air Jordan 1 Low ''Aluminum'' Ice Blue với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 1 Low ''Aluminum'' Ice Blue Like Auth tại TyHi Sneaker (hàng chuẩn bản xịn nhất thị trường).'),
(2, 'Giày Air Force One All White Like Auth 2023', 2, 1800000, 900000, 50,8, 'Giày Air Force One All White với màu full trắng cùng thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích (đặc biệt là các bạn học sinh do một số trường học yêu cầu mang giày trắng). Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Force One All White tại TyHi Sneaker (bản siêu cấp da bò nhăn xịn nhất thị trường).'),
(3, 'Giày Nike Air Force 1 ''White Black''', 1, 1500000, 750000, 50,12, 'Giày Nike Air Force 1 ''White Black'' với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.'),
(4, 'Giày Adidas Pureboost 22 xanh navy Best Quality', 2, 1800000, 820000, 54,11, 'Giày chạy bộ địa hình Nike Pegasus Trail.'),
(5, 'Giày Converse Unisex Chuck 70 Plus', 3, 950000, 380000, 60,15, 'Giày Converse Unisex Chuck 70 Plus với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Converse Unisex Chuck 70 Plus tại TyHi Sneaker (bản đẹp nhất thị trường).'),

-- Sản phẩm thuộc danh mục 1 (Giày Nike)
(6, 'Giày Nike Air Force 1 LV White Brown 2024 Like Auth', 1, 1500000 , 850000, 43,51, 'Giày Nike Air Force 1 LV White Brown 2024 Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Force 1 LV White Brown 2024 Like Auth tại TyHi Sneaker (hàng chuẩn likeuauth, bản xịn nhất thị trường, đế Air 100%).'),
(7, 'Giày Nike Air Force 1 07 Low Dark Grey Metallic Gold', 1, 1600000, 820000, 49,52, 'Giày Nike Air Force 1 07 Low Dark Grey Metallic Gold là phiên bản độc lạ hiện nay ở Việt Nam ít ai có. Shop nhập về được số lượng ít, giá cực tốt cho mọi người trải nghiệm. Đôi giày Nike Air Force 1 07 Low Dark Grey Metallic Gold mang đậm phong cách và tính biểu tượng của dòng sản phẩm Air Force 1. Đây là một trong những phiên bản được thiết kế cực kỳ ấn tượng từ Nike.'),
(8, 'Giày Nike Air Jordan 4 Retro ''Seafoam'' AQ9129-103 Like Auth', 1, 2500000,65, 1400000, 44, 'Giày Nike Air Jordan 4 Retro ''Seafoam'' AQ9129-103 Like Auth là một phiên bản đặc biệt trong dòng sản phẩm Air Jordan, với thiết kế táo bạo và tinh tế. Màu sắc Seafoam độc đáo và chất liệu da cao cấp kết hợp với công nghệ Air Sole tạo nên đôi giày không chỉ thể thao mà còn là biểu tượng thời trang, phù hợp với người yêu phong cách cá tính và chất lượng. Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 4 Retro ''Seafoam'' AQ9129-103 Like Auth tại TyHi Sneaker (hàng chuẩn like auth đế phát sáng, bản xịn nhất thị trường):'),
(9, 'Giày Nike Air Jordan 4 Retro Kaws Like Auth', 1, 3500000, 2200000, 37,70, 'Giày Nike Air Jordan 4 Retro Kaws Like Auth là một phiên bản đặc biệt trong dòng sản phẩm Air Jordan, hợp tác giữa Nike và nghệ sĩ Kaws. Được ra mắt vào năm 2017, đôi giày này nhanh chóng trở thành điểm nhấn đáng chú ý trong thế giới sneaker. Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày tại TyHi Sneaker (hàng chuẩn like auth đế phát sáng, bản xịn nhất thị trường).'),
(10, 'Giày Air Jordan 1 Low Alternate Bred Toe Like Auth', 1, 1600000, 850000, 47,38, 'Giày Air Jordan 1 Low Alternate Bred Toe Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phối đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Jordan 1 Low Alternate Bred Toe Like Auth tại TyHi Sneaker (hàng chuẩn Like Auth bản xịn nhất thị trường).'),

-- Sản phẩm thuộc danh mục 2 (Giày Adidas)
(11, 'Giày Adidas Samba Human Race x Pharrell Aluminium White Like Auth', 2, 1300000 , 750000, 42,58, 'Giày Adidas Samba Human Race x Pharrell Aluminium White Like Auth là một trong những mẫu giày đang khuấy đảo hiện nay với gam màu trắng nhôm hiện đại cùng thiết kế bắt mắt, mẫu giày này không chỉ thu thú giới trẻ mà còn khiến những người đam mê thời trang không rời mắt.'),
(12, 'Giày Adidas Samba OG x CDG Heart Valentines Like Auth', 2, 1200000, 750000, 38,89, 'Giày Adidas Samba OG x CDG Heart Valentines Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.'),
(13, 'Giày Adidas Samba OG White Equipment Orange Like Auth', 2, 1200000, 780000, 30,87, 'Giày Adidas Samba OG White Equipment Orange Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.'),
(14, 'Giày Adidas Samba OG Custom For Summer Like Auth', 2, 1600000, 880000, 40,78, 'Giày Adidas Samba OG Custom For Summer Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.'),
(15, 'Giày Adidas Yeezy Boost 350 V2 ''Tail Light'' FX9017 Like Auth', 2, 1800000, 920000, 49,65, 'Giày Adidas Yeezy Boost 350 V2 ''Tail Light'' FX9017 Like Auth tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.'),

-- Sản phẩm thuộc danh mục 3 (Giày Converse)
(16, 'Giày Converse Chuck Taylor All Star 1970s Hi Top Siêu Cấp', 3, 960000 , 550000, 43,56, 'Giày Converse Run Star Hike High ''White'' Trắng cổ cao , với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Run Star Hike High ''White'' Trắng cổ cao, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).'),
(17, 'Giày Converse Run Star Hike High ''White'' Trắng cổ cao', 3, 990000, 750000, 24,23, 'Giày Air Force One All White với màu full trắng cùng thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích (đặc biệt là các bạn học sinh do một số trường học yêu cầu mang giày trắng). Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Force One All White tại TyHi Sneaker (bản siêu cấp da bò nhăn xịn nhất thị trường).'),
(18, 'Giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ Cao', 3, 1400000,14, 980000, 30, 'Giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ cao với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ cao, tại TyHi Sneaker (hàng chuẩn rep 1:1, bản xịn nhất thị trường).'),
(19, 'Giày Converse Run Star Motion', 3, 1000000, 730000, 27,98, 'Giày Converse Run Star Motion với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Converse Run Star Motion 1:1 tại TyHi Sneaker (hàng chuẩn 1:1, bản Trung bản xịn nhất thị trường đừng so sánh giá với hàng xấu).'),
(20, 'Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp', 3, 750000, 550000, 27,75, 'Giày Converse Chuck Taylor All Star 1970s Low Top với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp tại TyHi Sneaker (hàng Trung chuẩn Siêu cấp, bản xịn nhất thị trường).');


-- Thêm dữ liệu mẫu vào SanPham_Size
INSERT INTO SanPham_Size (Id_SP, Id_Size, SoLuong) VALUES
(1, 5, 12),
(1, 4, 8),
(2, 6, 10),
(2, 5, 7),
(3, 3, 5),
(3, 2, 3);

-- Thêm dữ liệu mẫu vào HinhAnh
INSERT INTO HinhAnh (Id_Hinh, Id_SP, Path) VALUES
(1, 1, 'giay-nike-air-jordan-1-low-aluminum-ice-blue-like-auth.jpg'),
(2, 2, 'giay-air-force-one-all-white-like-auth.jpg'),
(3, 3, 'giay-nike-air-force-1-white-black.jpg'),
(4, 4, 'pure22-xanh-navy-removebg-preview.png'),
(5, 5, 'converse-unisex-chuck-70-plus.jpg'),

(6, 6, 'giay-nike-air-force-1-lv-white-brown-2024-like-auth-removebg-preview.png'),
(7, 7, 'giay-nike-air-force-1-07-low-dark-grey-metallic-gold-5.jpeg'),
(8, 8, 'giay-nike-air-jordan-4-retro-seafoam-aq9129-103-like-auth.jpg'),
(9, 9, 'giay-nike-air-jordan-4-retro-kaws-like-auth-9999.jpg'),
(10, 10, 'giay-air-jordan-1-low-alternate-bred-toe-like-auth.jpg'),

(11, 11, 'giay-adidas-samba-humanrace-full-trang-like-auth-7-1.png'),
(12, 12, 'giay-adidas-samba-og-x-cdg-heart-valentines-like-auth.jpg'),
(13, 13, 'giay-adidas-samba-og-white-equipment-orange-like-auth.jpg'),
(14, 14, 'giay-adidas-samba-og-custom-for-summer-like-auth-3.jpeg'),
(15, 15, 'giay-adidas-yeezy-boost-350-v2-tail-light-fx9017-like-auth.jpg'),

(16, 16, 'giay-converse-chuck-taylor-all-star-1970s-hi-top-sieu-cap.jpg'),
(17, 17, 'giay-converse-run-star-hike-high-white-trang-co-cao-4.jpg'),
(18, 18, 'giay-converse-chuck-taylor-all-star-1970s-white-high-trang-co-cao-1.jpg'),
(19, 19, 'converse-run-star-motion.jpg'),
(20, 20, 'giay-converse-1970s.webp');


-- Thêm dữ liệu mẫu vào KhachHang
INSERT INTO KhachHang (Id_Kh, HoTen, SDT, DiaChi, Quan_Huyen, ThanhPho) VALUES
(1, 'Nguyen Van A', '0123456789', '123 Đường A', 'Quận 1', 'Hồ Chí Minh'),
(2, 'Le Thi B', '0987654321', '456 Đường B', 'Quận 2', 'Hà Nội'),
(3, 'Tran Van C', '0933456789', '789 Đường C', 'Quận 3', 'Đà Nẵng'),
(4, 'Pham Thi D', '0945678901', '123 Đường D', 'Quận 4', 'Cần Thơ');


-- Thêm dữ liệu mẫu vào DonHang
INSERT INTO DonHang (Id_DH, Id_Kh, HoTen, SDT, DiaChi, Quan_Huyen, ThanhPho, ThanhTien) VALUES
(1, 1, 'Nguyen Van A', '0123456789', '123 Đường A', 'Quận 1', 'Hồ Chí Minh', 1600000);

-- Thêm dữ liệu mẫu vào ChiTiet
INSERT INTO ChiTiet (Id_DH, Id_SP, SoLuong, Gia) VALUES
(1, 1, 1, 850000),
(1, 3, 1, 650000);

-- Thêm dữ liệu mẫu vào ThanhToan
INSERT INTO ThanhToan (Id_TT, PhuongThuc, TrangThai, Id_DH) VALUES
(1, 'Chuyển khoản', 'Hoàn thành', 1);
