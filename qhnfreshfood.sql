-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2022 lúc 05:37 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qhnfreshfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `HinhAnh`) VALUES
(1, 'img/banners/banner1.jpg'),
(2, 'img/banners/cover-beef.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(1, 1, 1, 150000),
(2, 1, 2, 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Thịt & cá nhập khẩu'),
(2, 'Thực phẩm'),
(3, 'Sốt và gia vị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(255) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `PhuongThucTT` varchar(255) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(2, 1, '2022-11-30 15:08:48', 'Dau Nam', '0912345678', 'Hà Nội', '', 300000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(255) NOT NULL,
  `LoaiKM` varchar(255) NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Giảm giá 30%', 'Discout', 30, '2022-11-28 16:24:51', 1),
(2, 'Không', '', 0, '2022-11-30 08:42:42', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `Mota` varchar(255) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(3, 'Thịt bò tươi', '', '', 1),
(4, 'Cá ngừ phi lê', '', '', 1),
(5, 'Thịt cừu', '', '', 1),
(6, 'Thủy hải sản', '', '', 1),
(7, 'Thịt bò đông lạnh', '', '', 1),
(8, 'Cá hồi', '', '', 1),
(9, 'Cá trích', '', '', 1),
(10, 'Sốt gia vị Âu Mỹ', '', '', 3),
(11, 'Sốt gia vị Hàn Quốc', '', '', 3),
(12, 'Sốt gia vị Nhật Bản', '', '', 3),
(13, 'Hoa quả nhập khẩu', '', '', 2),
(14, 'Bánh kẹo & Bơ sữa', '', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(255) NOT NULL,
  `SDT` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'Dau', 'Nam', 'Nam', '0912345678', 'dhn@gmail.com', 'Hà Nội', 'DauNam', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(255) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Admin', 'Quản trị viên'),
(2, 'Personnel', 'Nhân viên'),
(3, 'Customer', 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL,
  `HinhAnh1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaKM` int(11) NOT NULL,
  `XuatXu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `XuatXu`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(1, 7, 1, 'Thịt ba chỉ bò Mỹ', 150000, 10, 'img/products/shutterstock_558053905-min.jpg', 'img/products/1.jpg', 'img/products/shutterstock_558053905-min (1).jpg', 2, 'Mỹ', 0, 0, 1, '<p>Thịt ba chỉ bò nhập trực tiếp từ Mỹ. Đảm bảo độ tươi ngon</p>', 2022),
(5, 6, 1, 'Tôm Hùm', 1100000, 20, 'img/products/tom-hum.jpg', '/img/products/tom-hum2.jpg', 'img/products/tom-hum.jpg', 2, 'Việt Nam', 0, 0, 1, '', 2022),
(6, 6, 1, 'Ghẹ lột Phú Quốc', 600000, 60, 'img/products/ghe-lot.jpg', '/img/products/ghe-lot2.jpg', 'img/products/1-ghe-lot.jpg', 2, 'Việt Nam', 0, 0, 1, '<h5 style=\"text-align: justify; \"><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 12pt; font-family: Nunito;\" times=\"\" new=\"\" roman\",serif;=\"\" mso-fareast-font-family:\"times=\"\" roman\";color:#444444;border:none=\"\" windowtext=\"\" 1.0pt;=\"\" mso-border-alt:none=\"\" 0in;padding:0in\"=\"\">QHNFreshFood</span></b><span style=\"font-size:12.0pt;mso-bidi-font-size:14.0pt;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" mso-fareast-font-family:\"times=\"\" roman\";color:#444444\"=\"\"><span style=\"font-family: Nunito;\"> không chỉ là đặc\r\nsản rất ngon mà còn tốt cho sức khỏe. Ghẹ vừa lột xong được cấp đông luôn rồi\r\nchuyển từ Phú Quốc về Chợ Sạch phục vụ khách hàng tại Hà Nội.</span><b><span style=\"border:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;\r\npadding:0in\"> </span></b><span style=\"font-family: Nunito;\">Hiện tại sản phẩm đang được bán với</span><b><span style=\"border: 1pt none windowtext; padding: 0in; font-family: Nunito;\"> Giá 600k/kg.</span></b></span><span style=\"font-size: 12pt; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\"><o:p></o:p></span></p></h5>', 2022),
(7, 3, 1, 'Sách bò tươi sạch', 300000, 20, 'img/products/sach-bo1.jpg', 'img/products/Sach_bo.jpg', 'img/products/sach-bo-sach.jpg', 2, 'Việt Nam', 0, 0, 1, '<p><span style=\"-webkit-font-smoothing: antialiased; font-weight: 700; border: none; font-size: 15px; line-height: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: Inter, \"Segoe UI\", Roboto, -apple-system, BlinkMacSystemFont, sans-serif;\">Sách bò</span><span style=\"color: rgb(68, 68, 68); font-family: Inter, \"Segoe UI\", Roboto, -apple-system, BlinkMacSystemFont, sans-serif; font-size: 15px;\"> hay dạ dày bò được chế biến thành rất nhiều món ăn thường ngày . Sách thường được xuất mày râu hiện trong các bữa nhậu của đấng . Quý khách có thể đặt mua tại QHNFreshFood với </span><span style=\"-webkit-font-smoothing: antialiased; font-weight: 700; border: none; font-size: 15px; line-height: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: Inter, \"Segoe UI\", Roboto, -apple-system, BlinkMacSystemFont, sans-serif;\">Giá Bán : 280k/kg</span><br></p>', 2022),
(8, 11, 3, 'Tiêu đen xay nguyên chất Chungjungone 50g', 65000, 20, 'img/products/bot-tieu-den-chungjungone-50g.jpg', 'img/products/tieuden.jpg', 'img/products/tieu-den.jpg', 2, 'Hàn Quốc', 0, 0, 0, '<p><span style=\"color: rgb(97, 97, 97); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Ubuntu, \"Helvetica Neue\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; font-size: 13px;\">Đây là một loại gia vị vô cùng phổ biến trên thế giới, có hương vị thơm, cay nồng giúp cho món ăn trở nên đậm đà hơn bao giờ hết. </span><span style=\"color: rgb(97, 97, 97); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Ubuntu, \"Helvetica Neue\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; font-size: 13px;\">Không cay như ớt hay gây kích thích mạnh như mù tạt, hạt tiêu đen mang lại vị cay thơm dịu, vừa ăn nhưng lại dễ lan tỏa, góp phần làm tăng thêm độ ngon cho món ăn, có thể dùng được cho nhiều món kho, xào, canh, súp,...</span><br></p>', 2022),
(9, 11, 3, 'Sốt ướp sườn bò BBQ Chungjungone 10kg', 725000, 20, 'img/products/nuoc-uot-suon-bo-hq.jpg', '', '', 1, 'Hàn Quốc', 0, 0, 0, '', 2022),
(10, 11, 3, 'Bột gia vị nấu tteokbokki Chungwoo 35g', 18000, 20, 'img/products/bot-gia-vi-tteokbokki-Chungwoo-35g.jpg', 'img/products/gia-vi-tteokebooki.jpg', '', 2, 'Hàn Quốc', 0, 0, 1, '', 2022),
(11, 12, 3, 'Gia vị rắc cơm rau củ và cá hồi Tanaka 33g', 65000, 20, 'img/products/Gia-vi-rac-com-rau-cu-va-ca-hoi-Tanaka-33g.jpg', '', '', 2, 'Nhật Bản', 0, 0, 1, '', 2022),
(12, 11, 3, 'Combo gia vị nấu món Hàn cơ bản Singsong', 348000, 20, 'img/products/combo-gia-vi-nau-mon-Han-co-ban-singsong.jpg', '', '', 2, 'Hàn Quốc', 0, 0, 0, '', 2022),
(13, 11, 3, 'Giấm táo Chungjungone Hàn Quốc 500ml', 35000, 15, 'img/products/giam-tao-chungjungone-500ml.jpg', '', '', 1, 'Hàn Quốc', 0, 0, 0, '', 2022),
(14, 12, 3, 'Giấm Sushi Bin Otafuku Nhật Bản-300ml', 12000, 15, 'img/products/Giam-sushi-bin-otafuku-300ml.jpg', '', '', 2, 'Nhật Bản', 0, 0, 0, '', 2022),
(15, 12, 3, 'TSUNO SHOKUHIN- Dầu gạo cao cấp 1500gr', 270000, 15, 'img/products/tsuno-shokuhin-dau-gao-cao-cap-1500gr.jpg', '', '', 2, 'Nhật Bản', 0, 0, 0, '', 2022),
(16, 12, 3, 'AJINOMOTO- Hạt nêm vị món ăn Trung Hoa 50g', 65000, 20, 'img/products/hat-nem.jpg', '', '', 2, 'Nhật Bản', 0, 0, 0, '', 2022),
(17, 12, 3, 'YOUKI- Gia vị nêm cốt xương gà và heo 300g', 209000, 20, 'img/products/youki-gia-vi-nem-cot-xuong-ga-va-heo-dang-set-300g.jpg', '', '', 2, 'Nhật Bản', 0, 0, 0, '', 2022),
(18, 10, 3, 'Sốt thịt nướng BBQ - Hunt\'s (Hunt\'s Original BBQ Sauce)', 50000, 20, 'img/products/Sot-thit-nuong-BBQ.jpg', '', '', 2, 'Mỹ', 0, 0, 1, '', 2022),
(19, 10, 3, 'Tương cà chua Heinz tomato ketchup', 35000, 20, 'img/products/tuong-ca-heinz.jpg', '', '', 2, 'Mỹ', 0, 0, 0, '', 2022),
(20, 10, 3, 'Nước sốt cà chua Hunt\'s Four Cheese', 42000, 20, 'img/products/nuoc-sot-ca-chua-hunt\'s.jpg', 'img/products/Sot-Ca-Chua-Hunt’s-Four-Cheese-Hop.jpg', '', 2, 'Mỹ', 0, 0, 1, '', 2022),
(21, 10, 3, ' Sốt cà chua Hunts pho mát và tỏi', 36000, 20, 'img/products/sot-hunts-pho-mat-va-toi.jpg', '', '', 2, 'Mỹ', 0, 0, 0, '', 2022),
(23, 13, 2, 'Lê Nam Phi', 68000, 30, 'img/products/le-nam-phi.jpg', 'img/products/le-nam-phi-18.jpg', '', 2, 'Nam Phi', 0, 0, 1, '', 2022),
(24, 13, 2, ' Táo Kiku New Zealand', 56000, 25, 'img/products/taokiku1.jpg', 'img/products/tao-kiku-.jpg', '', 2, 'New Zealand', 0, 0, 1, '', 2022),
(25, 13, 2, 'Nho xanh Mỹ', 80000, 32, 'img/products/nho-xanh-my.jpg', 'img/products/nho-xanh-my1.jpg', '', 2, 'Mỹ', 0, 0, 1, '', 2022),
(26, 13, 2, ' Cam vàng Úc', 50000, 20, 'img/products/cam-vang-uc.jpg', 'img/products/cam-uc.jpg', '', 2, 'Úc', 0, 0, 1, '', 2022),
(27, 13, 2, ' Táo Envy 24', 54000, 30, 'img/products/tao-envy.jpg', '', '', 2, 'Mỹ', 0, 0, 0, '', 2022),
(28, 9, 1, 'Cá trích ép trứng', 110000, 20, 'img/products/ca-trich-ep-trung-kanzunoko-nishin.jpg', '', '', 2, 'Nhật Bản', 0, 0, 0, '', 2022),
(29, 14, 2, 'Bánh Mon Gouter', 58000, 20, 'img/products/banh-mon-gouter.jpg', '', '', 2, 'Pháp', 0, 0, 0, '', 2022),
(30, 8, 1, 'Cá hồi tươi Nauy phi lê', 120000, 15, 'img/products/ca-hoi-phi-le-tuoi.jpg', '', '', 2, 'Nauy', 0, 0, 0, '', 2022),
(31, 8, 1, ' Cá hồi tươi nguyên con', 260000, 15, 'img/products/ca-hoi-tuou-nguyen-con.jpg', '', '', 2, 'Nauy', 0, 0, 0, '', 2022),
(32, 4, 1, 'Cá ngừ đông lạnh', 150000, 25, 'img/products/ca-ngu-dong-lanh.jpg', '', '', 2, 'Việt Nam', 0, 0, 0, '', 2022),
(33, 5, 1, 'Sườn Cừu có xương đông lạnh', 13000, 20, 'img/products/suon-cuu-co-xuong-dong-lanh.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022),
(34, 5, 1, 'Đùi cừu có xương đông lạnh', 190000, 20, 'img/products/dui-cuu-co-xuong.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022),
(35, 5, 1, 'Đùi cừu không xương đông lạnh', 15000, 20, 'img/products/dui-cuu-khong-xuong-dong-lanh.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022),
(36, 7, 1, 'Dẻ sườn bò đông lạnh', 80000, 20, 'img/products/de-suon-bo-my-dong-lanh.jpg', '', '', 2, 'Mỹ', 0, 0, 0, '', 2022),
(37, 3, 1, 'Thịt Mông bò không xương', 120000, 20, 'img/products/mong-bo-uc-tuoi.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022),
(38, 3, 1, 'Thăn nội bò không xương', 120000, 15, 'img/products/than-noi-bo-uc-khong-xuong-uop-lanh.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022),
(39, 3, 1, 'Thăn ngoại bòc không xương', 110000, 30, 'img/products/than-ngoai-bo-uc-tuoi.jpg', '', '', 2, 'Úc', 0, 0, 0, '', 2022);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaND` (`MaND`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`),
  ADD KEY `MaLSP` (`MaLSP`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaKM` (`MaKM`),
  ADD KEY `MaLSP` (`MaLSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
