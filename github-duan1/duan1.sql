-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3366
-- Thời gian đã tạo: Th12 03, 2024 lúc 06:56 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `ngaydang` date NOT NULL,
  `nguoidang` varchar(100) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `tieude`, `noidung`, `ngaydang`, `nguoidang`, `thumbnail`) VALUES
(1, 'Giày siêu cấp là giày gì? Tại sao lại gọi là giày siêu cấp?', '<p class=\"title-content\"><span>Giày siêu cấp</span> là một phân khúc đặc biệt trong thị trường giày thể thao, thu hút sự quan tâm lớn từ đông đảo người tiêu dùng, đặc biệt là giới trẻ. Các sản phẩm trong dòng này được chế tác với sự tỉ mỉ, tinh xảo, dựa trên quy trình sản xuất từ các thương hiệu giày danh tiếng trên toàn cầu. Điều này đảm bảo rằng chất lượng của chúng không thua kém gì so với những sản phẩm chính hãng. Bạn có thắc mắc về giày siêu cấp là gì và muốn biết nơi nào cung cấp sản phẩm chất lượng cho cả nam và nữ? Hãy cùng Tyhi Sneaker khám phá bài viết để tìm hiểu thêm thông tin chi tiết.</p>\r\n\r\n<h2 class=\"title\">Khái niệm giày siêu cấp là gì?</h2>\r\n\r\n<p class=\"title-content\">Giày siêu cấp là một thuật ngữ thường được sử dụng để chỉ các sản phẩm giày thể thao được chế tạo với chất liệu và công nghệ cao cấp, thường được lấy cảm hứng từ các phiên bản gốc của các thương hiệu nổi tiếng như Nike, Adidas, Balenciaga, và nhiều thương hiệu khác. Các đôi giày siêu cấp được sản xuất với sự tỉ mỉ, tinh xảo để đảm bảo chất lượng và hình thức gần như tương đương với sản phẩm chính hãng, nhưng thường được bán với giá cạnh tranh hơn so với phiên bản gốc.</p>\r\n\r\n<img src=\"public/img/giay-sieu-cap-la-gi.jpg\" alt=\"Giày siêu cấp\">\r\n\r\n<h2 class=\"title\">Tại sao lại gọi là giày siêu cấp?</h2>\r\n\r\n<p class=\"title-content\">Giày được gọi là “siêu cấp” vì thuật ngữ này thường được sử dụng để miêu tả các sản phẩm giày thể thao có chất lượng và thiết kế cao cấp, thường được sản xuất bằng các công nghệ và vật liệu tốt nhất có sẵn. Tên gọi này phản ánh sự sang trọng và đẳng cấp của những đôi giày này trong thị trường giày dép. Đồng thời, việc sử dụng từ “siêu” cũng ám chỉ sự vượt trội và ưu việt của sản phẩm so với các loại giày thể thao thông thường.</p>\r\n\r\n<img src=\"public/img/sneaker-sieu-cap.jpg\" alt=\"sneaker\">\r\n\r\n<p class=\"title-content\">Hiện nay, giày fake siêu cấp đang trở nên ngày càng phổ biến và tập trung chủ yếu vào các thương hiệu xa xỉ nổi tiếng như Nike Rep 11, Adidas Replica, McQueen Rep, LV Like Auth và nhiều thương hiệu khác. Những đôi giày này được chế tạo với chất lượng cao, từ kiểu dáng cho đến chất liệu đều mô phỏng gần như hoàn hảo các sản phẩm chính hãng, nhằm thu hút những tín đồ thời trang muốn sở hữu những thiết kế đẳng cấp nhưng không muốn chi trả một khoản tiền lớn. Phân khúc giày fake siêu cấp có thể được xem như một phần của thị trường thời trang cao cấp trong ngành giày thể thao, mang đến cơ hội cho người tiêu dùng sở hữu những mẫu sneaker thiết kế và chất lượng gần giống với sản phẩm chính hãng từ các thương hiệu danh tiếng, nhưng với mức giá phải chăng hơn rất nhiều. Điều này không chỉ giúp họ thỏa mãn đam mê thời trang mà còn tiết kiệm được chi phí đáng kể.</p>\r\n', '2024-05-15', 'NTD SNK', 'anhbiapost1.jpg'),
(2, 'Đánh giá giày Jordan 1 Zoom Air PSG Paris Saint', '<p class=\"title-content>Chắc hẳn các bạn trẻ và đặc biệt là những bạn yêu thích bóng rổ thì sẽ không thể bỏ qua những đôi giày thể thao của nhà Nike Jordan đúng không nào. Và đương nhiên là không thể không biết đội bóng rổ chuyên nghiệp của Pháp – Paris Saint Germain nhỉ. Mới đây nhà Nike Jordan đã kết hợp cùng với đội bóng rổ này cho ra mắt một siêu phẩm mang tên của đội là Jordan 1 Paris Saint Germain cực kì hot.</p>\r\n\r\n<h2 class=\"title\">Chọn mua giày Nike Air Jordan 1 Zoom Air PSG Paris Saint-Germain ở đâu?</h2>\r\n\r\n<p class=\"title-content\">Với một đôi giày đánh giá sự collab giữa hai ông lớn như vậy và thiết kế vô cùng đặc biệt, mới lạ như Jordan 1 Paris Saint Germain thì giá cả của những đôi này sẽ không hề thấp. Việc tìm mua được giày chính hãng của vô cùng khó.\r\n\r\nChính vì vậy nhu cầu tìm mua những đôi jordan PSG rep 1:1 là vô cùng nhiều. Nếu bạn đang tìm cho mình chỗ mua giày replica thì hãy đến ngay với five steps nhé!\r\n\r\n</p>\r\n\r\n<img src=\"public/img/post2.1.jpg\" alt=\"Giày siêu cấp\">\r\n<h2 class=\"title\">Tại sao lại gọi là giày siêu cấp?</h2>\r\n\r\n<p class=\"title-content\">Những đôi giày tại five steps luôn được đảm bảo về chất lượng, giống với hàng chính hãng đến 90% lận đó nha. Ngoài ra thì khi mua giày ở five steps các bạn có thể tiết kiệm cho mình từ 10% đến 30% so với khi mua ở các shop giày khác đấy. Vậy thì còn chần chừ gì nữa mà không đến ngay với five steps nào.</p>', '2024-06-01', 'NTD SNK', 'post2.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet`
--

CREATE TABLE `chitiet` (
  `Id_DH` int(11) NOT NULL,
  `Id_SP` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet`
--

INSERT INTO `chitiet` (`Id_DH`, `Id_SP`, `SoLuong`, `Gia`) VALUES
(1, 1, 1, 850000.00),
(1, 3, 1, 650000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `Id_DM` int(11) NOT NULL,
  `Ten_DM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`Id_DM`, `Ten_DM`) VALUES
(1, 'Giày Nike'),
(2, 'Giày Adidas'),
(3, 'Giày Converse');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `Id_DH` int(11) NOT NULL,
  `Id_Kh` int(11) DEFAULT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Quan_Huyen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ThanhPho` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ThanhTien` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`Id_DH`, `Id_Kh`, `HoTen`, `SDT`, `DiaChi`, `Quan_Huyen`, `ThanhPho`, `ThanhTien`) VALUES
(1, 1, 'Nguyen Van A', '0123456789', '123 Đường A', 'Quận 1', 'Hồ Chí Minh', 1600000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `Id_Hinh` int(11) NOT NULL,
  `Id_SP` int(11) DEFAULT NULL,
  `Path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`Id_Hinh`, `Id_SP`, `Path`) VALUES
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
(20, 20, 'giay-converse-1970s.webp'),
(21, 21, 'giay-nike-air-force-1-valentines-2024-best-quality.jpg'),
(22, 22, 'giay-af1-x-louis-vuitton-white-green.jpeg'),
(23, 23, 'giay-nike-air-jordan-1-x-union-retro-high-black-toe-like-auth.jpg'),
(24, 24, 'giay-jordan-1-retro-high-og-palomino-mens-dz5485-020.jpg'),
(25, 25, 'giay-nike-air-force-1-low-07-what-the-nyc-2019.jpg'),
(26, 26, 'giay-adidas-samba-white-pink-sakura-white-pink.png'),
(27, 27, 'giay-chay-bo-adidas-eqt-bost-2023-do-den-likeauth.jpg'),
(28, 28, 'giay-chay-bo-adidas-eqt-bost-2023-cam-trang-likeauth.jpg'),
(29, 29, 'adidas-centennial-85-low-scarlet-1.jpg'),
(30, 30, 'giay-adidas-alphabounce-instinct-m-turquoise-rep-1-1-8.jpeg'),
(31, 31, 'c4803a1a-ae9f-4919-89ab-109cd4cd55e6071758bd58416dfa7b61099da6f4ecd1.webp'),
(32, 32, 'giay-converse-run-star-hike-hi-jw-anderson-black-dep-chat.jpeg'),
(33, 33, 'giay-converse-chuck-taylor-1970-parchment-low-top-rep-1-1.jpg'),
(34, 34, 'Converse-trang-kem-co-cao-1970s.webp'),
(35, 35, 'giay-giay-converse-run-star-hike-low-white-trang-co-thap-12-1.jpg'),
(36, 1, 'giay-nike-air-jordan-1-low-aluminum-ice-blue-like-auth-6.jpeg'),
(37, 1, 'giay-nike-air-jordan-1-low-aluminum-ice-blue-like-auth-7.jpeg'),
(38, 1, 'giay-nike-air-jordan-1-low-aluminum-ice-blue-like-auth-1.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `Id_Kh` int(11) NOT NULL,
  `Id_Nd` int(11) NOT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Quan_Huyen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ThanhPho` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`Id_Kh`, `Id_Nd`, `HoTen`, `SDT`, `DiaChi`, `Quan_Huyen`, `ThanhPho`) VALUES
(1, 1, 'Nguyễn Văn A', '0987654321', '123 Đường Lý Tự Trọng', 'Quận 1', 'TP Hồ Chí Minh'),
(2, 2, 'Trần Thị B', '0901234567', '456 Đường Nguyễn Trãi', 'Quận 5', 'TP Hồ Chí Minh'),
(3, 3, 'Lê Văn C', '0912345678', '789 Đường Hùng Vương', 'Quận 10', 'TP Đà Nẵng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `Id_Nd` int(11) NOT NULL,
  `TaiKhoan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MatKhau` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `VaiTro` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`Id_Nd`, `TaiKhoan`, `MatKhau`, `Email`, `NgayTao`, `VaiTro`) VALUES
(1, 'user1', 'hashed_password_1', 'user1@gmail.com', '2024-11-27 10:44:04', 0),
(2, 'user2', 'hashed_password_2', 'user2@gmail.com', '2024-11-27 10:44:04', 0),
(3, 'user3', 'hashed_password_3', 'user3@yahoo.com', '2024-11-27 10:44:04', 0),
(4, 'lethibcc', '$2y$10$CH0rkuBKEK6P8eJ2VYovuOhLnTqLZn.luXG69yEuh6aTl8iFjhYpW', 'nguyendung2k50@gmail.com', '2024-11-27 10:45:14', 0),
(5, 'admin', 'adminpass123', 'dungbededam@gmail.com', '2024-11-27 10:50:14', 1),
(6, 'lethibcc12312', '$2y$10$iHbTagB0PW49VyRMxb7Pi.VOpJzS/fcFYUDhEFItVsG9oiodRxfA.', 'dungbededam222@gmail.com', '2024-11-29 00:11:01', 0),
(7, 'thien', '$2y$10$iX7rW9VjtoaH.KX3fjVkmO2IUlohfSWhs1cFl1Ke5bNalL0RFMyNq', 'nvt692005@gmail.com', '2024-12-01 18:46:07', 0),
(8, 'thien12', '$2y$10$S08GDbfamF5ekGk2BGFnSOn4ydNBaWRxNmNpoilktcc8W6VUpH60C', 'nvt69200522@gmail.com', '2024-12-03 00:34:25', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `Id_SP` int(11) NOT NULL,
  `TenSP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Id_DM` int(11) DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL,
  `GiaGoc` decimal(10,2) DEFAULT NULL,
  `MotaSP` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GiamGia` int(10) DEFAULT NULL,
  `LuotXem` int(10) DEFAULT NULL,
  `NgayDang` timestamp NOT NULL DEFAULT current_timestamp(),
  `NgayCapNhat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`Id_SP`, `TenSP`, `Id_DM`, `Gia`, `GiaGoc`, `MotaSP`, `GiamGia`, `LuotXem`, `NgayDang`, `NgayCapNhat`) VALUES
(1, 'Giày Nike Air Jordan 1 Low \"Aluminum Ice\" Blue Like Auth', 1, 840000.00, 1800000.00, 'Giày Nike Air Jordan 1 Low \'Aluminum\' Ice Blue với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 1 Low \'Aluminum\' Ice Blue Like Auth tại TyHi Sneaker (hàng chuẩn bản xịn nhất thị trường).', 53, 10, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(2, 'Giày Air Force One All White Like Auth 2023', 2, 900000.00, 1800000.00, 'Giày Air Force One All White với màu full trắng cùng thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích (đặc biệt là các bạn học sinh do một số trường học yêu cầu mang giày trắng). Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Force One All White tại TyHi Sneaker (bản siêu cấp da bò nhăn xịn nhất thị trường).', 50, 8, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(3, 'Giày Nike Air Force 1 \'White Black\'', 1, 750000.00, 1500000.00, 'Giày Nike Air Force 1 \'White Black\' với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', 50, 12, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(4, 'Giày Adidas Pureboost 22 xanh navy Best Quality', 2, 820000.00, 1800000.00, 'Giày chạy bộ địa hình Nike Pegasus Trail.', 54, 11, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(5, 'Giày Converse Unisex Chuck 70 Plus', 3, 380000.00, 950000.00, 'Giày Converse Unisex Chuck 70 Plus với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Converse Unisex Chuck 70 Plus tại TyHi Sneaker (bản đẹp nhất thị trường).', 60, 15, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(6, 'Giày Nike Air Force 1 LV White Brown 2024 Like Auth', 1, 850000.00, 1500000.00, 'Giày Nike Air Force 1 LV White Brown 2024 Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Force 1 LV White Brown 2024 Like Auth tại TyHi Sneaker (hàng chuẩn likeuauth, bản xịn nhất thị trường, đế Air 100%).', 43, 51, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(7, 'Giày Nike Air Force 1 07 Low Dark Grey Metallic Gold', 1, 820000.00, 1600000.00, 'Giày Nike Air Force 1 07 Low Dark Grey Metallic Gold là phiên bản độc lạ hiện nay ở Việt Nam ít ai có. Shop nhập về được số lượng ít, giá cực tốt cho mọi người trải nghiệm. Đôi giày Nike Air Force 1 07 Low Dark Grey Metallic Gold mang đậm phong cách và tính biểu tượng của dòng sản phẩm Air Force 1. Đây là một trong những phiên bản được thiết kế cực kỳ ấn tượng từ Nike.', 49, 52, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(8, 'Giày Nike Air Jordan 4 Retro \'Seafoam\' AQ9129-103 Like Auth', 1, 1400000.00, 2500000.00, 'Giày Nike Air Jordan 4 Retro \'Seafoam\' AQ9129-103 Like Auth là một phiên bản đặc biệt trong dòng sản phẩm Air Jordan, với thiết kế táo bạo và tinh tế. Màu sắc Seafoam độc đáo và chất liệu da cao cấp kết hợp với công nghệ Air Sole tạo nên đôi giày không chỉ thể thao mà còn là biểu tượng thời trang, phù hợp với người yêu phong cách cá tính và chất lượng. Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 4 Retro \'Seafoam\' AQ9129-103 Like Auth tại TyHi Sneaker (hàng chuẩn like auth đế phát sáng, bản xịn nhất thị trường):', 65, 44, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(9, 'Giày Nike Air Jordan 4 Retro Kaws Like Auth', 1, 2200000.00, 3500000.00, 'Giày Nike Air Jordan 4 Retro Kaws Like Auth là một phiên bản đặc biệt trong dòng sản phẩm Air Jordan, hợp tác giữa Nike và nghệ sĩ Kaws. Được ra mắt vào năm 2017, đôi giày này nhanh chóng trở thành điểm nhấn đáng chú ý trong thế giới sneaker. Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày tại TyHi Sneaker (hàng chuẩn like auth đế phát sáng, bản xịn nhất thị trường).', 37, 70, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(10, 'Giày Air Jordan 1 Low Alternate Bred Toe Like Auth', 1, 850000.00, 1600000.00, 'Giày Air Jordan 1 Low Alternate Bred Toe Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phối đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Jordan 1 Low Alternate Bred Toe Like Auth tại TyHi Sneaker (hàng chuẩn Like Auth bản xịn nhất thị trường).', 47, 38, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(11, 'Giày Adidas Samba Human Race x Pharrell Aluminium White Like Auth', 2, 750000.00, 1300000.00, 'Giày Adidas Samba Human Race x Pharrell Aluminium White Like Auth là một trong những mẫu giày đang khuấy đảo hiện nay với gam màu trắng nhôm hiện đại cùng thiết kế bắt mắt, mẫu giày này không chỉ thu thú giới trẻ mà còn khiến những người đam mê thời trang không rời mắt.', 42, 58, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(12, 'Giày Adidas Samba OG x CDG Heart Valentines Like Auth', 2, 750000.00, 1200000.00, 'Giày Adidas Samba OG x CDG Heart Valentines Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', 38, 89, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(13, 'Giày Adidas Samba OG White Equipment Orange Like Auth', 2, 780000.00, 1200000.00, 'Giày Adidas Samba OG White Equipment Orange Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', 30, 87, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(14, 'Giày Adidas Samba OG Custom For Summer Like Auth', 2, 880000.00, 1600000.00, 'Giày Adidas Samba OG Custom For Summer Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', 40, 78, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(15, 'Giày Adidas Yeezy Boost 350 V2 \'Tail Light\' FX9017 Like Auth', 2, 920000.00, 1800000.00, 'Giày Adidas Yeezy Boost 350 V2 \'Tail Light\' FX9017 Like Auth tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', 49, 65, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(16, 'Giày Converse Chuck Taylor All Star 1970s Hi Top Siêu Cấp', 3, 550000.00, 960000.00, 'Giày Converse Run Star Hike High \'White\' Trắng cổ cao , với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Run Star Hike High \'White\' Trắng cổ cao, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 43, 56, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(17, 'Giày Converse Run Star Hike High \'White\' Trắng cổ cao', 3, 750000.00, 990000.00, 'Giày Air Force One All White với màu full trắng cùng thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích (đặc biệt là các bạn học sinh do một số trường học yêu cầu mang giày trắng). Và nếu bạn cũng là một người đam mê dòng sneaker trắng thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Air Force One All White tại TyHi Sneaker (bản siêu cấp da bò nhăn xịn nhất thị trường).', 24, 23, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(18, 'Giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ Cao', 3, 980000.00, 1400000.00, 'Giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ cao với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Chuck Taylor All Star 1970s White – High Trắng Cổ cao, tại TyHi Sneaker (hàng chuẩn rep 1:1, bản xịn nhất thị trường).', 14, 30, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(19, 'Giày Converse Run Star Motion', 3, 730000.00, 1000000.00, 'Giày Converse Run Star Motion với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Converse Run Star Motion 1:1 tại TyHi Sneaker (hàng chuẩn 1:1, bản Trung bản xịn nhất thị trường đừng so sánh giá với hàng xấu).', 27, 98, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(20, 'Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp', 3, 550000.00, 750000.00, 'Giày Converse Chuck Taylor All Star 1970s Low Top với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích. Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp tại TyHi Sneaker (hàng Trung chuẩn Siêu cấp, bản xịn nhất thị trường).', 27, 75, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(21, 'Giày Nike Air Force 1 Valentine’s 2024 Best Quality', 1, 920000.00, 2000000.00, 'Giày Nike Air Force 1 Valentine’s 2024 Best Quality là phiên bản danh riêng cho tình nhân trong dịp Valentine 2024 của AF1.', 54, 32, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(22, 'Giày AF1 x Louis Vuitton White Green', 1, 820000.00, 1600000.00, 'Giày AF1 x Louis Vuitton White Green là phiên bản độc lạ hiện nay ở Việt Nam ít ai có. Shop nhập về được số lượng ít, giá cực tốt cho mọi người trải nghiệm.', 49, 25, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(23, 'Giày Nike Air Jordan 1 x Union Retro High ‘Black Toe’ Like Auth', 1, 1500000.00, 3200000.00, 'Giày Nike Air Jordan 1 x Union Retro High ‘Black Toe’ Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 1 x Union Retro High ‘Black Toe’ Like Auth tại TyHi Sneaker (hàng chuẩn Like Auth bản xịn nhất thị trường).', 53, 30, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(24, 'Giày Nike Air Jordan 1 Retro High OG ‘Palomino’ Like Auth', 1, 1350000.00, 3000000.00, 'Giày Nike Air Jordan 1 Retro High OG ‘Palomino’ Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Jordan 1 Retro High OG ‘Palomino’ Like Auth tại TyHi Sneaker (hàng chuẩn Like Auth bản xịn nhất thị trường).', 55, 24, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(25, 'Giày Nike Air Force 1 Low ’07 What The NYC 2019', 1, 820000.00, 1600000.00, 'Giày Nike Air Force 1 Low ’07 What The NYC 2019 là phiên bản độc lạ hiện nay ở Việt Nam ít ai có. Shop nhập về được số lượng ít, giá cực tốt cho mọi người trả nghiệm.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Air Force 1 Low ’07 What The NYC 2019 tại TyHi Sneaker (hàng chuẩn bản xịn nhất thị trường).', 49, 67, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(26, 'Giày Adidas Samba OG Cherry Blossom Like Auth', 2, 750000.00, 1300000.00, 'Giày Adidas Samba OG Cherry Blossom Like Auth hiện đang là tâm điểm gây chú ý với giới trẻ đặc biệt đối với các tín đồ thời trang nữ. Với thiết kế tinh tế, sự kết hợp hài hòa giữa màu sắc và chất liêu, đôi giày này không chỉ là phụ kiện thời trang mà còn là biểu tượng của sự trẻ trung và năng động.', 42, 48, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(27, 'Giày Chạy Bộ Adidas EQT Bost 2023 Đỏ Đen LikeAuth', 2, 1100000.00, 1800000.00, 'Giày Chạy Bộ Adidas EQT Bost 2023 Đỏ Đen LikeAuth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Bảng nâng cấp 2023 Boost nén cực êm, đi như trên mây nên rất phù hợp cho các bạn thích sự thoải mái, nhẹ nhàng, chạy bộ thì không thể bỏ lỡ mẫu này được.Dưới đây là một số hình ảnh của đôi Giày Chạy Bộ Adidas EQT Bost 2023 Đỏ Đen LikeAuth tại TyHi Sneaker (hàng chuẩn bản xịn nhất thị trường).', 39, 70, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(28, 'Giày Chạy Bộ Adidas EQT Bost 2023 Cam Trắng LikeAuth', 2, 1100000.00, 1800000.00, 'Giày Chạy Bộ Adidas EQT Bost 2023 Cam Trắng LikeAuth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Bảng nâng cấp 2023 Boost nén cực êm, đi như trên mây nên rất phù hợp cho các bạn thích sự thoải mái, nhẹ nhàng, chạy bộ thì không thể bỏ lỡ mẫu này được.Dưới đây là một số hình ảnh của đôi Giày Chạy Bộ Adidas EQT Bost 2023 Cam Trắng LikeAuth tại TyHi Sneaker (hàng chuẩn bản xịn nhất thị trường).', 39, 100, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(29, 'Giày Adidas Centennial 85 Low #Scarlet Siêu Cấp', 2, 820000.00, 1700000.00, 'Giày Adidas Centennial 85 Low #Scarlet với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Adidas Centennial 85 Low #Scarlet, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 52, 46, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(30, 'Giày Adidas Alphabounce Instinct M Turquoise Rep 1:1', 2, 830000.00, 1700000.00, 'Giày Adidas Alphabounce Instinct M Turquoise với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Adidas Alphabounce Instinct M Turquoise Rep 1:1, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 51, 60, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(31, 'GIÀY CONVERSE RUNSTAR MOTION LIGHT TWIN SC', 3, 820000.00, 1400000.00, 'GIÀY CONVERSE RUNSTAR MOTION LIGHT TWIN với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày CV RUNSTAR MOTION LIGHT TWIN SC, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 41, 40, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(32, 'Giày Converse Run Star Hike Hi JW Anderson Black', 3, 780000.00, 1200000.00, 'Giày Converse Run Star Hike Hi JW Anderson Black với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Run Star Hike Hi JW Anderson Black, tại TyHi Sneaker (hàng chuẩn siêu cấp bản xịn nhất thị trường).', 35, 30, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(33, 'Giày Converse Chuck Taylor 1970 Parchment Low Top Rep 1:1', 3, 480000.00, 950000.00, 'Giày Converse Chuck Taylor 1970 Parchment Low Top với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày CONVERSE 1970s KEM CỔ THẤP, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 49, 30, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(34, 'Giày Converse Chuck Taylor All Star 1970s Hi Top Rep 1:1', 3, 480000.00, 950000.00, 'Giày Converse Chuck Taylor All Star 1970s Hi Top với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày CONVERSE 1970s KEM CỔ CAO, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', 49, 10, '2024-12-03 00:26:57', '2024-12-03 00:26:57'),
(35, 'Giày Giày Converse Run Star Hike Low White Trắng cổ thấp', 3, 870000.00, 1700000.00, 'Giày Giày Converse Run Star Hike Low ‘White’ Trắng cổ thấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Run Star Hike Low White Trắng cổ thấp, tại TyHi Sneaker (hàng chuẩn rep 1:1, bản xịn nhất thị trường.)', 49, 43, '2024-12-03 00:26:57', '2024-12-03 00:26:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_size`
--

CREATE TABLE `sanpham_size` (
  `Id_SP` int(11) NOT NULL,
  `Id_Size` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_size`
--

INSERT INTO `sanpham_size` (`Id_SP`, `Id_Size`, `SoLuong`) VALUES
(1, 3, 10),
(1, 4, 8),
(1, 5, 12),
(2, 4, 6),
(2, 5, 7),
(2, 6, 10),
(3, 1, 8),
(3, 2, 3),
(3, 3, 5),
(4, 2, 6),
(4, 4, 11),
(4, 5, 12),
(5, 1, 9),
(5, 5, 10),
(5, 6, 14),
(6, 2, 18),
(6, 3, 12),
(6, 5, 10),
(7, 1, 15),
(7, 3, 6),
(7, 4, 8),
(8, 2, 10),
(8, 4, 9),
(8, 6, 13),
(9, 1, 10),
(9, 3, 8),
(9, 5, 7),
(10, 2, 12),
(10, 5, 11),
(10, 6, 9),
(11, 1, 13),
(11, 4, 10),
(11, 5, 9),
(12, 3, 15),
(12, 4, 7),
(12, 6, 8),
(13, 1, 12),
(13, 2, 9),
(13, 5, 10),
(14, 2, 6),
(14, 4, 8),
(14, 6, 11),
(15, 1, 10),
(15, 2, 7),
(15, 5, 9),
(16, 3, 12),
(16, 5, 8),
(16, 6, 10),
(17, 2, 5),
(17, 3, 9),
(17, 4, 7),
(18, 1, 11),
(18, 5, 6),
(18, 6, 12),
(19, 1, 10),
(19, 2, 8),
(19, 4, 9),
(20, 3, 12),
(20, 5, 13),
(20, 6, 7),
(21, 1, 9),
(21, 2, 11),
(21, 5, 10),
(22, 3, 7),
(22, 4, 10),
(22, 6, 8),
(23, 2, 10),
(23, 4, 9),
(23, 5, 12),
(24, 1, 6),
(24, 2, 12),
(24, 3, 8),
(25, 1, 9),
(25, 5, 8),
(25, 6, 10),
(26, 4, 7),
(26, 5, 12),
(26, 6, 9),
(27, 1, 10),
(27, 2, 7),
(27, 3, 11),
(28, 4, 8),
(28, 5, 9),
(28, 6, 10),
(29, 1, 8),
(29, 2, 11),
(29, 3, 9),
(30, 2, 13),
(30, 4, 9),
(30, 5, 6),
(31, 1, 10),
(31, 2, 6),
(31, 5, 7),
(32, 3, 8),
(32, 5, 10),
(32, 6, 14),
(33, 1, 12),
(33, 4, 8),
(33, 6, 10),
(34, 2, 9),
(34, 3, 10),
(34, 6, 12),
(35, 1, 10),
(35, 2, 8),
(35, 5, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizegiay`
--

CREATE TABLE `sizegiay` (
  `Id_Size` int(11) NOT NULL,
  `Size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizegiay`
--

INSERT INTO `sizegiay` (`Id_Size`, `Size`) VALUES
(1, 38),
(2, 39),
(3, 40),
(4, 41),
(5, 42),
(6, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `Id_TT` int(11) NOT NULL,
  `PhuongThuc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TrangThai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Id_DH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`Id_TT`, `PhuongThuc`, `TrangThai`, `Id_DH`) VALUES
(1, 'Chuyển khoản', 'Hoàn thành', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD PRIMARY KEY (`Id_DH`,`Id_SP`),
  ADD KEY `Id_SP` (`Id_SP`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`Id_DM`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`Id_DH`),
  ADD KEY `Id_Kh` (`Id_Kh`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`Id_Hinh`),
  ADD KEY `Id_SP` (`Id_SP`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Id_Kh`),
  ADD KEY `Id_Nd` (`Id_Nd`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`Id_Nd`),
  ADD UNIQUE KEY `TaiKhoan` (`TaiKhoan`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id_SP`),
  ADD KEY `Id_DM` (`Id_DM`);

--
-- Chỉ mục cho bảng `sanpham_size`
--
ALTER TABLE `sanpham_size`
  ADD PRIMARY KEY (`Id_SP`,`Id_Size`),
  ADD KEY `Id_Size` (`Id_Size`);

--
-- Chỉ mục cho bảng `sizegiay`
--
ALTER TABLE `sizegiay`
  ADD PRIMARY KEY (`Id_Size`),
  ADD UNIQUE KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`Id_TT`),
  ADD KEY `Id_DH` (`Id_DH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Id_Kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `Id_Nd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet`
--
ALTER TABLE `chitiet`
  ADD CONSTRAINT `chitiet_ibfk_1` FOREIGN KEY (`Id_DH`) REFERENCES `donhang` (`Id_DH`),
  ADD CONSTRAINT `chitiet_ibfk_2` FOREIGN KEY (`Id_SP`) REFERENCES `sanpham` (`Id_SP`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`Id_Kh`) REFERENCES `khachhang` (`Id_Kh`);

--
-- Các ràng buộc cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_ibfk_1` FOREIGN KEY (`Id_SP`) REFERENCES `sanpham` (`Id_SP`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`Id_Nd`) REFERENCES `nguoidung` (`Id_Nd`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`Id_DM`) REFERENCES `danhmuc` (`Id_DM`);

--
-- Các ràng buộc cho bảng `sanpham_size`
--
ALTER TABLE `sanpham_size`
  ADD CONSTRAINT `sanpham_size_ibfk_1` FOREIGN KEY (`Id_SP`) REFERENCES `sanpham` (`Id_SP`),
  ADD CONSTRAINT `sanpham_size_ibfk_2` FOREIGN KEY (`Id_Size`) REFERENCES `sizegiay` (`Id_Size`);

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`Id_DH`) REFERENCES `donhang` (`Id_DH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
