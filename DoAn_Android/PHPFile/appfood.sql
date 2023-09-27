-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2022 lúc 07:32 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(12, 29, 10, 'Bún bò Huế chay', 25000, 2),
(13, 29, 4, 'Cơm tấm đặc biệt', 35000, 11),
(14, 30, 7, 'Nước ép cam', 15000, 1),
(15, 31, 9, 'Cơm gà xối mỡ', 30000, 1),
(16, 32, 2, 'Cơm tấm sườn trứng', 27000, 3),
(17, 32, 7, 'Nước ép cam', 15000, 1),
(18, 33, 8, 'Nước ép chanh', 15000, 1),
(19, 34, 5, 'Khoai tây chiên', 15000, 184),
(20, 35, 7, 'Nước ép cam', 15000, 2),
(21, 36, 9, 'Cơm gà xối mỡ', 30000, 10),
(22, 36, 8, 'Nước ép chanh', 15000, 10),
(23, 37, 1, 'Cơm tấm sườn', 25000, 10),
(24, 37, 6, 'Phô mai que', 15000, 1),
(25, 39, 11, 'Chả giò chay', 20000, 5),
(26, 40, 2, 'Cơm tấm sườn trứng', 27000, 1),
(27, 41, 11, 'Chả giò chay', 20000, 14),
(28, 42, 12, 'Gà rán', 30000, 15),
(29, 42, 7, 'Nước ép cam', 15000, 10),
(30, 42, 8, 'Nước ép chanh', 15000, 5),
(31, 43, 10, 'Bún bò Huế chay', 25000, 10),
(32, 44, 12, 'Gà rán', 30000, 6),
(33, 45, 11, 'Chả giò chay', 20000, 1),
(34, 45, 8, 'Nước ép chanh', 15000, 1),
(35, 46, 5, 'Khoai tây chiên', 15000, 1),
(36, 46, 4, 'Cơm tấm đặc biệt', 35000, 1),
(37, 46, 9, 'Cơm gà xối mỡ', 30000, 1),
(38, 46, 12, 'Gà rán', 30000, 15),
(39, 47, 10, 'Bún bò Huế chay', 25000, 5),
(40, 47, 8, 'Nước ép chanh', 15000, 2),
(41, 47, 5, 'Khoai tây chiên', 15000, 3),
(42, 47, 7, 'Nước ép cam', 15000, 7),
(43, 47, 11, 'Chả giò chay', 20000, 4),
(44, 48, 4, 'Cơm tấm đặc biệt', 35000, 1),
(45, 49, 7, 'Nước ép cam', 15000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `hinhdanhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Món chính', 'https://beautyinvietnam.vn/wp-content/uploads/2021/12/top-cac-mon-an-yeu-thich-tai-VN-01.png'),
(2, 'Ăn vặt', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2020/11/do-an-vat-han-quoc.jpg'),
(3, 'Đồ uống', 'https://blog.beemart.vn/wp-content/uploads/2017/05/cac-loai-do-uong-hot-nhat-mua-he-1234.jpg'),
(4, 'Món chay', 'https://cdn.daotaobeptruong.vn/wp-content/uploads/2019/10/canh-nam-hat-sen-mon-chay-ngon-de-lam.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`) VALUES
(45, 'chu doan duc', '123@gmail.com', '123', 35000, '123'),
(46, 'Duc201', 'chudoanduc123@gmail.cm', '0908048272', 530000, 'nhanh nhe'),
(47, 'DoanDuc', '2000003917@gmail.com', '0123456789', 385000, 'Nguyentatthanh'),
(48, 'duc', 'duc@gmai.com', '0939999999', 35000, 'cho 5p'),
(49, 'doanduc', 'doanduc@gmail.com', '0918273645', 30000, '1 ly nhieu duong, 1 ly it duong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `hinhmon` varchar(255) NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Cơm tấm sườn', 'https://img-global.cpcdn.com/recipes/49876fe80303b991/680x482cq70/c%C6%A1m-t%E1%BA%A5m-s%C6%B0%E1%BB%9Dn-recipe-main-photo.jpg', 25000, 'Cơm tấm sườn siu ngon có cơm và miếng sườn.'),
(2, 1, 'Cơm tấm sườn trứng', 'https://channel.mediacdn.vn/thumb_w/640/prupload/879/2018/10/img20181031164337363.jpg', 27000, 'Cơm tấm có cơm, miếng sườn và có thêm miếng trứng.'),
(3, 1, 'Cơm tấm sườn bì chả', 'https://beautyinvietnam.vn/wp-content/uploads/2021/12/top-cac-mon-an-yeu-thich-tai-VN-01.png', 32000, 'Cơm tấm có cơm, miếng sường, cộng thêm bì và miếng chả siu thơm ngon.'),
(4, 1, 'Cơm tấm đặc biệt', 'https://statics.vinpearl.com/com-tam-ngon-o-sai-gon-0_1630562640.jpg', 35000, 'Cơm tấm đặc biệt có cơm và đầy đủ topping trứng, bì, chả siu thum ngon.'),
(5, 2, 'Khoai tây chiên', 'https://i.ndtvimg.com/i/2015-11/french-fries-625_625x350_61446325913.jpg', 15000, 'Khoai tây chiên giá kiểu Pháp giòn rụm màu vàng.'),
(6, 2, 'Phô mai que', 'https://cdn.shopify.com/s/files/1/0617/2497/files/fba9d5ae37d3dd37378106fe5aa1d357.jpg?v=1592534909', 15000, 'Phô mai que kéo sợi dai dai kèm tương ớt cay cay.'),
(7, 3, 'Nước ép cam', 'https://cope-cdnmed.agilecontent.com/resources/jpg/6/7/1593198983076.jpg', 15000, 'Nước cam chua ngon không quá chua nhưng ngon.'),
(8, 3, 'Nước ép chanh', 'https://image3.tienphong.vn/665x449/Uploaded/2020/rkznae/2020_11_26/vi_sao_ban_nen_uong_nuoc_chanh_hang_ngay_dac_biet_trong_mua_dich1580802869_mgnn.jpg', 15000, 'Chúng tôi gọi nó là Lemonade vì nó là nước chanh.'),
(9, 1, 'Cơm gà xối mỡ', 'https://bazantravel.com/cdn/medias/uploads/78/78876-60791265_144936746636954_6153101288902582280_n.jpg', 30000, 'Đĩa cơm gà bày ra đĩa trông bắt mắt với phần cơm vừa đủ ăn lưng bụng, thịt gà trộn bày lên trên, trang trí thêm ít rau răm và hành tây thái mỏng cùng muối tiêu bột. Cơm gà ăn kèm với ớt tương làm tại nhà, cay đậm đà thì quả thực là đáo khẩu. Chén canh cải nấu với gừng tươi và gỏi đu đủ, cà rốt thái sợi mỏng là những thành phần hỗ trợ tuyệt vời làm tôn thêm hương vị đĩa cơm gà.\r\nNhịp sống phố cổ khiến ta muốn thưởng thức buổi trưa thong thả và khoan thai. Gắp miếng thịt gà được trộn vừa miệng và cảm nhận hạt cơm mềm dẻo đang tan dần trong miệng thì quả thực ấn tượng khó phai.'),
(10, 4, 'Bún bò Huế chay', 'https://cdn.tgdd.vn/2021/02/CookProduct/1111-1200x676-3.jpg', 25000, 'Món bún bò Huế chay đặc trưng bởi nước dùng thơm cay mùi sa tế sả băm, cùng vị ngọt tự nhiên của các loại rau củ. Nhân nấm thơm mềm, đậu hũ chiên giòn mềm, đậu hũ ky giòn tan, thêm chả chay dai dai thật hấp dẫn.'),
(11, 4, 'Chả giò chay', 'https://cdn.daynauan.info.vn/wp-content/uploads/2019/10/cha-gio-chay-la-mon-an-tot-cho-suc-khoe.jpg', 20000, 'Ăn chay giúp tâm hồn thanh tịnh, tĩnh tâm và cũng tốt cho sức khỏe hơn. Mặc dù chế độ ăn chay loại trừ hoàn toàn các thực phẩm có nguồn gốc từ động vật, nhưng các món chay vẫn phải đảm bảo đầy đủ chất dinh dưỡng cần thiết và được chế biến sáng tạo để luôn thơm ngon và hấp dẫn.\r\n\r\nChả giò chay là một trong các món ăn vừa ngon miệng, vừa bổ dưỡng giúp gia đình bạn thay đổi khẩu vị trong những ngày ăn chay thanh tịnh. Với cách làm chả giò chay, bạn có thể chế biến thành món ăn nhẹ hoặc ăn kèm với bún như bữa ăn chính, cuốn với rau sống, chấm kèm với nước tương cay hay nước mắm chua ngọt cũng rất cuốn hút.'),
(12, 2, 'Gà rán', 'https://cdn.tgdd.vn/Files/2019/05/31/1170182/cach-lam-ga-chien-bot-gion-tan-voi-bot-chien-gion-aji-quick-202107171416301335.jpg', 30000, 'KFC xuất hiện lần đầu ở Việt Nam vào năm 1997, khi mà khái niệm “fast food\" - thức ăn nhanh còn vô cùng xa lạ ở nước mình. Từ việc thua lỗ liên tục suốt 7 năm đầu tiên đặt chân khai phá thị trường, hiện nay KFC đã vươn vai trở thành 1 trong 2 ông lớn giữ thị phần cao nhất trong ngành kinh doanh đồ ăn nhanh ở xứ sở hơn 90 triệu dân này.\r\n\r\nCó thể nói, KFC không chỉ mang đến một lựa chọn thực phẩm mới cho người Việt, nó còn góp phần tạo nên một thói quen ăn uống mới cho chúng ta. Không quá khi nói, đối với một bộ phận giới trẻ hiện nay, fast food không còn đơn thuần chỉ là thức ăn, mà hơn thế, nó dường như đã trở thành thị hiếu, thành nếp sống của một thế hệ kế thừa năng động.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
