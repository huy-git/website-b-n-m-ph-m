-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2021 lúc 02:19 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_22_075634_create_tbl_admin_table', 1),
(5, '2021_04_01_133148_create_tbl_product', 2),
(6, '2021_04_02_013123_create_tbl_category_product', 3),
(7, '2021_04_03_013317_create_tbl_brand_product', 4),
(8, '2021_04_03_022906_create_tbl_products', 5),
(9, '2021_04_10_144337_create_tbl_customer', 6),
(10, '2021_04_19_134719_create_tbl_shpping', 7),
(11, '2021_04_22_123438_tbl_payment', 8),
(12, '2021_04_22_123509_tbl_order', 8),
(13, '2021_04_22_123605_tbl_order_details', 8),
(14, '2021_04_22_124707_tbl_order', 9),
(15, '2021_04_22_124828_tbl_order_details', 10),
(16, '2021_05_20_062751_create_tbl_news', 11),
(17, '2021_05_20_063638_create_tbl_news', 12),
(18, '2021_05_25_133828_create_order_models_table', 13),
(19, '2021_06_15_021112_create_tbl_bill', 13),
(20, '2021_06_15_021401_create_tbl_bill_details', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_models`
--

CREATE TABLE `order_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Nam Mit', '0367725188', '2021-03-21 17:00:00', '2021-03-21 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `bill_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill`
--

INSERT INTO `tbl_bill` (`bill_id`, `admin_id`, `bill_total`, `created_at`, `updated_at`) VALUES
(26, 1, 96750000, '2021-06-16 03:14:45', NULL),
(27, 1, 96750000, '2021-06-16 03:15:04', NULL),
(28, 1, 7830000, '2021-06-18 07:12:26', NULL),
(29, 1, 3510000, '2021-06-25 03:49:03', NULL),
(30, 1, 0, '2021-06-25 03:49:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill_details`
--

CREATE TABLE `tbl_bill_details` (
  `bill_details_id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill_details`
--

INSERT INTO `tbl_bill_details` (`bill_details_id`, `bill_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(29, 26, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', 855000, 50, '2021-06-16 03:14:46', NULL),
(30, 26, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', 1080000, 50, '2021-06-16 03:14:46', NULL),
(31, 27, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', 855000, 50, '2021-06-16 03:15:04', NULL),
(32, 27, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', 1080000, 50, '2021-06-16 03:15:04', NULL),
(33, 28, 72, 'Kem Massage lộc nhung Whoo Nok Yong', 1170000, 5, '2021-06-18 07:12:27', NULL),
(34, 28, 67, 'Nước hoa hồng Whoo tái sinh Radiant Rejuvenating Balancer', 1980000, 1, '2021-06-18 07:12:27', NULL),
(35, 29, 72, 'Kem Massage lộc nhung Whoo Nok Yong', 1170000, 1, '2021-06-25 03:49:03', NULL),
(36, 29, 71, 'Sữa dưỡng tái sinh Ohui Thefirst 150ml', 2340000, 1, '2021-06-25 03:49:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(2, 'Sebamed', 'Không', 0, '2021-04-06 15:25:25', NULL),
(3, 'Shiseido', 'Không', 0, '2021-04-06 15:25:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_parent` int(11) NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_parent`, `category_status`, `created_at`, `updated_at`) VALUES
(10, 'Ohui', 'Không', 0, 0, '2021-04-13 14:02:04', '2021-04-13 14:02:04'),
(11, 'Whoo', 'Không', 0, 0, '2021-04-13 14:29:57', '2021-04-13 14:29:57'),
(12, 'Ohui Thefirst Tái Sinh', 'Không', 10, 0, '2021-04-13 14:31:01', '2021-04-13 14:31:01'),
(13, 'Whoo Dưỡng Ẩm', 'Không', 11, 0, '2021-04-13 14:34:23', '2021-04-13 14:34:23'),
(18, 'Thực Phẩm Chức Năng', 'Không', 0, 0, '2021-04-26 01:40:04', '2021-04-26 01:40:04'),
(33, 'Su:m37', '<p>Không</p>', 0, 0, '2021-05-13 02:31:53', '2021-05-12 19:31:53'),
(37, 'Su:m37 Tái Sinh', '<p>Không</p>', 33, 0, '2021-05-21 01:57:03', '2021-05-20 18:57:03'),
(58, 'Ohui Dưỡng Ẩm', '<p>Không</p>', 10, 0, '2021-06-18 01:39:59', '2021-06-18 01:39:59'),
(59, 'Whoo Make Up', '<p>Không</p>', 11, 0, '2021-06-18 01:51:21', '2021-06-18 01:51:21'),
(60, 'Whoo Tái Sinh', '<p>Không</p>', 11, 0, '2021-06-18 02:13:37', '2021-06-18 02:13:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(3, 'Nam Mít', 'Ngocnam@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0367725188', NULL, NULL),
(7, 'Ngoc Nam', 'NamMit@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0367725188', NULL, NULL),
(8, 'Vân Anh', 'Vanh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0367725188', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `news_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_name`, `news_image`, `news_content`, `created_at`, `updated_at`) VALUES
(7, 'DA DẦU CÓ CẦN DƯỠNG ẨM?', '83-1589966184-myphamohui-lgvina62.png', '<p>Whoo Gongjinhyang Soo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi nhận thấy tín hiệu thiếu ẩm và mất nước, làn da bạn sẽ càng tiết dầu nhiều hơn bình thường để cân bằng lại độ ẩm, dẫn đến tình trạng nhờn bóng, xỉn màu.</p>\r\n\r\n<p>Đã đến lúc tìm kiếm sản phẩm chân ái cho làn da dầu, hỗn hợp từ dòng dưỡng ẩm đông y hoàng cung Gongjinhyang Soo mới.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.abaha.vn/photos/resized/x/83-1589965999-myphamohui-lgvina.png\" /></p>\r\n\r\n<p>💦&nbsp;Nước cân bằng cấp nước giúp hạ nhiệt cho da, ngăn chặn sự bốc hơi của các nhân tố bổ sung độ ẩm, tạo môi trường lý tưởng để hấp thụ dưỡng chất.<br />\r\n✨Sữa dưỡng chứa các phân tử siêu nhỏ khiến sản phẩm thấm nhanh và sâu, cho kết thúc ráo thoáng, không bết dính trên da mà vẫn đủ ẩm, mềm mượt.<br />\r\nChiết xuất từ tim sen đem lại khả năng chống oxy hóa tuyệt vời, giữ cho làn da luôn tươi mát, đầy sinh khí.</p>', '2021-05-20 07:14:14', NULL),
(8, 'Công bố sản phẩm mới Ohui tháng 1 năm 2021', '83-1618807421-myphamohui-lgvina72.png', '<p><strong>Công ty TNHH Mỹ phẩm LG-Vina xin gửi đến khách hàng</strong>&nbsp;<strong>Thông báo sản phẩm mới Ohui</strong></p>\r\n\r\n<p><strong>O HUI Ultimate Cover Longwear Foundation Set</strong></p>\r\n\r\n<p><strong>Thông tin chị tiết về sản phẩm :</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://img.abaha.vn/photos/resized/x/83-1618806185-myphamohui-lgvina.png\" style=\"float:left\" /></strong></p>', '2021-05-20 07:17:54', '2021-05-20 08:36:29'),
(9, 'SIÊU PHẨM MỚI: KEM NỀN DẠNG THỎI OHUI ULTIMATE COVER STICK FOUNDATION', '83-1611317370-myphamohui-lgvina84.png', '<p>Đột phá mới tích hợp kem nền và cọ tán trên cùng một sản phẩm, biến hoá lớp nền lì-mịn tự nhiên cùng chỉ số chống nắng SPF50+/PA+++ trong tích tắc chỉ với 3 thao tác: xoay – kéo – tán hứa hẹn sẽ là trợ thủ quyền năng có mặt trong túi xách của mọi cô nàng!</p>\r\n\r\n<p>Sở hữu làn da hoàn hảo rạng rỡ suốt ngày dài chưa bao giờ tiện dụng đến thế với ULTIMATE COVER STICK FOUNDATION:</p>\r\n\r\n<p><img alt=\"✔️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" />Hạt phấn đa kích thước dễ dàng len lỏi và lấp đầy mọi khuyết điểm trên da cho hiệu năng siêu che phủ, kết hợp cùng công thức chống kết dính Sticky Free™ kiểm soát nhờn vượt trội.</p>\r\n\r\n<p><img alt=\"✔️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" />Nước chiết xuất hoa Lily nhẹ nhàng cấp ẩm, dưỡng sáng và chống oxi hoá.</p>\r\n\r\n<p><img alt=\"✔️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" />Tổ hợp cân bằng tối ưu giữa hạt phấn và dầu nhẹ cho cảm giác thoáng mịn nhẹ tênh nhưng vẫn bám bền ấn tượng.</p>\r\n\r\n<p><img alt=\"✔️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/2714.png\" />Lông cọ làm từ sợi Microfiber an toàn tuyệt đối cùng thiết kế đầu cọ gợn sóng giúp che phủ trọn vẹn đến từng ngóc ngách như vùng cánh mũi, đuôi mắt.</p>\r\n\r\n<p>Siêu phẩm kem nền dạng thỏi Ultimate Cover Stick Foundation hiện đã lên kệ tại các hệ thống cửa hàng OHUI với 2 tone màu chuẩn Châu Á cho nàng lựa chọn:</p>\r\n\r\n<p>#01: Milk Beige</p>\r\n\r\n<p>#02: Honey Beige</p>', '2021-05-20 07:19:41', NULL),
(10, 'DA NHẠY CẢM THÌ CÓ DÙNG ĐƯỢC SECRET KHÔNG?', '83-1574758841-myphamohui-lgvina95.png', '<p>&nbsp;“Da mình nhạy cảm thì có dùng được Secret không?”</p>\r\n\r\n<p>Nhận được nhiều thắc mắc của các nàng về việc Secret sẽ hiệu quả cho những làn da nào, su:m37° rất tự hào trả lời rằng Secret “dễ chiều” cho hầu hết mọi làn da. Đặc biệt, Secret sẽ là nốt nhạc đồng điệu cho:</p>\r\n\r\n<p>&nbsp;Da nhạy cảm khó chiều<br />\r\nNếu bạn sở hữu một nàng da đỏng đảnh, “khó ở” trước thay đổi của thời tiết và dễ kích ứng với các mỹ phẩm thông thường thì Secret sẽ là một lựa chọn hoàn hảo. Với công thức lên men lành tính, Secret không chỉ xoa dịu làn da dị ứng nhờ lợi khuẩn mà còn củng cố hàng rào bảo vệ da để tự “cân” hết các tác động có hại bên ngoài.</p>\r\n\r\n<p>Da chênh vênh tuổi 25<br />\r\nLàn da lưng chừng đôi mươi đã thấp thoáng dấu hiệu mệt mỏi, khô sạm sau những ngày làm việc căng thẳng, thức khuya hay những rối loạn tiềm ẩn bên trong. Nếu có những ngày bạn bỗng thấy làn da trở nên xuống sắc, vài chiếc thâm mụn khó ưa mãi không hết thì cũng đừng lo lắng, vì Secret sẽ là người bạn đồng hành thông thái đánh thức sức mạnh nội tại, hoá giải mọi ưu phiền cho da, để hành trình 25 trở nên thật nhẹ nhàng và thư thái.</p>\r\n\r\n<p>Da đẹp bẩm sinh nên phải giữ gìn<br />\r\nNhững làn da “nhà người ta” vốn khoẻ mạnh và rạng rỡ, cũng vì vậy càng phải cẩn trọng trong việc chăm sóc. Secret với hàm lượng dưỡng chất vượt trội và tác động kép nuôi dưỡng sâu - giúp da trở nên căng mượt, mịn màng hơn, duy trì vẻ khoẻ đẹp, trẻ trung và làm chậm bước tiến của thời gian trên da.</p>', '2021-05-20 07:21:24', NULL),
(11, 'Xác thực chính hãng nguồn gốc các sản phẩm Ohui', '83-1580794352-myphamohui-lgvina12.png', '<p>Xác thực chính hãng nguồn gốc các sản phẩm Ohui chính hãng</p>\r\n\r\n<p>Nhằm mục đích bảo vệ người tiêu dùng, CÔNG TY TNHH MỸ PHẨM LG VINA – đơn vị nhập khẩu chính thức nhãn hàng mỹ phẩm OHUI từ tập đoàn LG Household &amp; Health Care Hàn Quốc sẽ thay thế tem chống hàng giả cũ bằng tem chống hàng giả mới HiddenTag kể từ ngày 01/08/2019.</p>\r\n\r\n<p>HiddenTag là giải pháp xác thực hàng chính hãng bằng công nghệ tiên tiến nhất hiện nay và là loại tem đầu tiên áp dụng kỹ thuật thủy phân số (digital watermarking). Bằng cách nhúng các dữ liệu khác nhau vào từng con tem, HiddenTag mang những thông tin duy nhất, xác định chính xác danh tính cho từng sản phẩm và chỉ có thể quét được bằng ứng dụng HiddenTag.<br />\r\nSau khi quét mã tem, người tiêu dùng được kết nối trực tiếp với trang thông tin sản phẩm. Tại đây, khách hàng có thể xác thực ngay sản phẩm là hàng chính hãng hay không.</p>\r\n\r\n<p>Để đảm bảo bảo quyền lợi của mình, khách hàng có quyền từ chối mua những sản phẩm không có tem HiddenTag, hoặc khiếu nại ngay với bên bán hàng nếu không truy xuất được nguồn gốc sản phẩm thông qua ứng dụng. Công ty cam kết chất lượng sản phẩm tốt nhất theo hệ thống quản lý tiên tiến nhất, cùng chế độ bảo hành, đổi trả sản phẩm do lỗi sản xuất, cũng như luôn cải tiến và cập nhật xu hướng mới nhất, đáp ứng nhu cầu làm đẹp ngày càng nâng cao của người tiêu dùng.</p>\r\n\r\n<p>Hướng dẫn cài đặt và sử dụng ứng dụng HiddenTag:</p>', '2021-05-20 07:22:01', NULL),
(12, 'Tặng ngay combo 5 gói mặt nạ thải độc Su:m37', '83-1595936336-myphamohui-lgvina99.png', '<p>Khuyến mại siêu hot:</p>\r\n\r\n<p><br />\r\nTặng ngay combo 5 gói mặt nạ thải độc Su:m37 khi mua hàng&nbsp;😍</p>\r\n\r\n<p>- Thời gian áp dụng:</p>\r\n\r\n<p>Từ ngày 28/7/2020 đến ngày 31/08/2020</p>\r\n\r\n<p>- Điều kiện áp dụng:</p>\r\n\r\n<p>Với mỗi đơn hàng trị giá trên 500.000 vnd, khách hàng được tặng ngay combo 5 gói mặt nạ thải độc Su:m37 trị giá 200.000 vnd<br />\r\nChương trình áp dụng khi khách mua hàng tại:<br />\r\n👉&nbsp;<a href=\"https://www.facebook.com/MyphamOhuiLGvina/?__tn__=K-R-R-R&amp;eid=ARDHSNg1jJOevSTC6kdTgmSSMVEZGrQU0-s4l0FdYLcEmFarvspgySk53HHZ6J92ILeCA6jvkMC0MplZ&amp;fref=mentions&amp;__xts__%5B0%5D=68.ARCVhFnSP7r5YjcTu9I-MmY_GnoWTRpjfR-SLmV03E7R1WZz77YvVmYeXzOwTJt8D578nIwnAc7OyTl26JY1y1vibLBQXv9dR6Lou0usJtKnGyf1qOt2MHDhQP6YkFCFQMYICLPsSrWRmfrNDdITsf0t47bUZsVY5t99NvrwoNNR9wVoaeQ34lggd21gd_CDQc-2xqXqRKd2f5eM1EyDdJ9eTr9Fb9rVV5czYpmIk890N7959uSp9kAyvLhTOxyoi6uolWQEzYc2Wm6F-mJSntEpfo35gLLfbNDTby7ogu6h0H-afxEgOW4csz1g8QQON3PW\">https://www.facebook.com/MyphamOhuiLGvina/</a><br />\r\n👉&nbsp;<a href=\"http://ohuivina.com/?fbclid=IwAR1BhR6vfGBU6-iNf7VWe6BgCBc6_6QGRNu9F1G-U53CrN1PWdq0ZM4Cbk4\" rel=\"noopener nofollow\" target=\"_blank\">http://ohuivina.com</a><br />\r\n👉&nbsp;Trên app MYOHUI</p>\r\n\r\n<p>📌&nbsp;Công dụng mặt nạ thải độc Su:m37 Bright Award Bubble De Mask Black :</p>\r\n\r\n<p>- Mặt nạ 5 trong 1: dưỡng trắng, làm sạch sâu lỗ chân lông, làm mượt da,se khích lo chân lông,đào thải độc tố<br />\r\n- Khi bôi lên da mask thải độc sẽ giải phóng oxy vào sâu trong da, giúp thải độc tố, làm sạch lỗ chân lông, giúp da sáng mịn hơn, phục hồi làn da ở trạng thái tốt nhất.<br />\r\nloại bỏ các tế bào chết, bã nhờn, mụn đầu đen, mụn cám ở vùng mũi hiệu quả.</p>\r\n\r\n<p>☑️&nbsp;Hướng dẫn sử dụng sản phẩm:<br />\r\n- Tuần sử dụng 2-3 lần<br />\r\n- Rửa sạch mặt bằng sữa rửa mặt rồi lau bằng khăn bông sạch.<br />\r\n- Tiếp tục bôi một lượng mỏng sản phẩm lên da, tránh vùng mắt. sau thời gian từ 10 – 15 giây, mặt nạ bong bóng sẽ hình thành.<br />\r\n- Giữ nguyên mặt nạ trong khoảng 10 – 15 phút massa lại 1lần<br />\r\n- Sau đó Rửa sạch mặt bằng nước sạch</p>', '2021-05-20 07:23:06', NULL),
(13, 'Ohui chính thức ra mắt dòng son lì mới THE FIRST GENITURE LIPSTICK1', '83-1574738403-myphamohui-lgvina84.png', '<p>THE FIRST GENITURE LIPSTICK – Tuyệt phẩm cho đôi môi</p>\r\n\r\n<p>Một làn môi căng mềm, quyến rũ với sắc màu nổi bật luôn là điều mà các quý cô ao ước. Hiểu được mong muốn về một thỏi son chuẩn sắc nhưng vẫn ẩm mượt và dịu dàng trên môi, OHUI mang đến cho bạn dòng son cao cấp: The First Geniture Lipstick – tuyệt phẩm đánh thức vẻ đẹp thanh xuân bừng sáng. Thời thượng với những gam màu đỏ, hồng và cam coral, The First Geniture Lipstick hội tụ 3 đặc điểm cho một đôi môi hoàn hảo say đắm mọi&nbsp;ánh nhìn:<br />\r\n+ Hạt màu bắt sáng rực rỡ<br />\r\n+ Kết cấu đầu son độc đáo<br />\r\n+ Hiệu năng dưỡng môi cao cấp với thành phần Hoa mẫu đơn cùng Công nghệ Fitting Oil lưu giữ sắc son ấn tượng</p>\r\n\r\n<p>Vẫn là bạn nhưng với phiên bản rạng ngời hơn khiến người đối diện phải lưu luyến, bạn đã sẵn sàng trải nghiệm cùng The First Geniture Lipstick chưa?</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.tickid.vn/photos/resized/x/73-1574741992-myohui.png\" /></p>', '2021-05-20 07:24:12', '2021-06-25 02:11:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(32, 7, 36, 40, '9,675,000.00', 0, '2021-05-23 07:18:35', '2021-05-23 07:18:35'),
(33, 7, 37, 41, '11,700,000.00', 0, '2021-05-23 07:19:10', '2021-05-23 07:19:10'),
(34, 7, 38, 42, '3,105,000.00', 0, '2021-04-20 07:21:44', '2021-04-20 07:21:44'),
(35, 3, 39, 43, '5,400,000.00', 0, '2021-05-23 09:41:29', '2021-05-23 09:41:29'),
(36, 7, 40, 44, '1,080,000.00', 2, '2021-05-26 14:04:23', '2021-05-26 14:04:23'),
(37, 7, 41, 45, '7,875,000.00', 1, '2021-05-31 17:00:00', '2021-05-31 17:00:00'),
(38, 7, 42, 46, '3,105,000.00', 1, '2021-06-01 08:41:18', '2021-06-01 08:41:18'),
(39, 7, 43, 47, '9,450,000.00', 1, '2021-06-01 14:03:06', '2021-06-01 14:03:06'),
(40, 3, 44, 48, '4,500,000.00', 1, '2021-06-02 00:27:37', '2021-06-02 00:27:37'),
(41, 3, 45, 49, '45,051,000.00', 0, '2021-06-02 02:36:16', '2021-06-02 02:36:16'),
(42, 7, 46, 50, '4,275,000.00', 1, '2021-06-11 14:30:58', '2021-06-11 14:30:58'),
(43, 7, 47, 51, '1,935,000.00', 1, '2021-06-15 07:46:34', '2021-06-15 07:46:34'),
(44, 7, 48, 52, '4,275,000.00', 1, '2021-06-15 09:09:57', '2021-06-15 09:09:57'),
(45, 7, 50, 53, '3,420,000.00', 1, '2021-06-15 09:11:22', '2021-06-15 09:11:22'),
(46, 7, 51, 54, '4,170,000.00', 1, '2021-06-18 07:08:26', '2021-06-18 07:08:26'),
(47, 7, 52, 55, '4,680,000.00', 1, '2021-06-24 02:20:01', '2021-06-24 02:20:01'),
(48, 7, 53, 56, '3,000,000.00', 1, '2021-06-25 03:47:26', '2021-06-25 03:47:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(40, 32, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '855000', 5, '2021-05-23 07:18:36', NULL),
(41, 32, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', '1080000', 5, '2021-05-23 07:18:36', NULL),
(42, 33, 42, 'Set dưỡng ẩm whoo hồng gongjinhyang soo vital hydrating 2PCS special set', '2340000', 5, '2021-05-23 07:19:10', NULL),
(43, 34, 45, 'Mascara Ohui Proof - All', '621000', 5, '2021-05-23 07:21:44', NULL),
(44, 35, 40, 'Phấn nước dành cho da nhờn Su:m37 Air Rising TF Glow Cover Metal Cushion SPF50+/PA+++', '1080000', 5, '2021-05-23 09:41:29', NULL),
(45, 36, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', '1080000', 1, '2021-05-26 14:04:23', NULL),
(46, 37, 18, 'Set sữa rửa mặt Ohui Thefirst tái sinh', '1575000', 5, '2021-06-01 08:18:03', NULL),
(47, 38, 45, 'Mascara Ohui Proof - All', '621000', 5, '2021-06-01 08:41:18', NULL),
(48, 39, 20, 'Nước hoa hồng tái sinh Ohui Thefirst', '1890000', 5, '2021-06-01 14:03:07', NULL),
(49, 40, 44, 'Kem lót nâng tông Ohui Makeup Ultimate Brightening Lavender Primer SPF20/PA++', '900000', 5, '2021-06-02 00:27:37', NULL),
(50, 41, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', '1080000', 2, '2021-06-02 02:36:16', NULL),
(51, 41, 10, 'Kem chống nắng Ohui dành cho da bị sạm đen Day Shield Perfect Sun Black SPF50+', '600000', 1, '2021-06-02 02:36:16', NULL),
(52, 41, 44, 'Kem lót nâng tông Ohui Makeup Ultimate Brightening Lavender Primer SPF20/PA++', '900000', 1, '2021-06-02 02:36:16', NULL),
(53, 41, 21, 'Set nước sữa tái sinh Ohui thefirst', '37800000', 1, '2021-06-02 02:36:16', NULL),
(54, 41, 45, 'Mascara Ohui Proof - All', '621000', 1, '2021-06-02 02:36:16', NULL),
(55, 41, 27, 'Set tinh chất Ohui xanh Prime Advancer Ampoule Serum phiên bản 90ml', '2970000', 1, '2021-06-02 02:36:16', NULL),
(56, 42, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '855000', 5, '2021-06-11 14:30:58', NULL),
(57, 43, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '855000', 1, '2021-06-15 07:46:34', NULL),
(58, 43, 46, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', '1080000', 1, '2021-06-15 07:46:34', NULL),
(59, 44, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '855000', 5, '2021-06-15 09:09:57', NULL),
(60, 45, 47, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '855000', 4, '2021-06-15 09:11:22', NULL),
(61, 46, 72, 'Kem Massage lộc nhung Whoo Nok Yong', '1170000', 1, '2021-06-18 07:08:26', NULL),
(62, 46, 10, 'Kem chống nắng Ohui dành cho da bị sạm đen Day Shield Perfect Sun Black SPF50+', '600000', 5, '2021-06-18 07:08:26', NULL),
(63, 47, 72, 'Kem Massage lộc nhung Whoo Nok Yong', '1170000', 4, '2021-06-24 02:20:01', NULL),
(64, 48, 10, 'Kem chống nắng Ohui dành cho da bị sạm đen Day Shield Perfect Sun Black SPF50+', '600000', 5, '2021-06-25 03:47:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(40, '2', '1', NULL, NULL),
(41, '2', '1', NULL, NULL),
(42, '2', '1', NULL, NULL),
(43, '2', '1', NULL, NULL),
(44, '2', '1', NULL, NULL),
(45, '2', '1', NULL, NULL),
(46, '2', '1', NULL, NULL),
(47, '2', '1', NULL, NULL),
(48, '2', '1', NULL, NULL),
(49, '2', '1', NULL, NULL),
(50, '2', '1', NULL, NULL),
(51, '2', '1', NULL, NULL),
(52, '2', '1', NULL, NULL),
(53, '2', '1', NULL, NULL),
(54, '2', '1', NULL, NULL),
(55, '2', '1', NULL, NULL),
(56, '2', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_quantity`, `product_status`, `created_at`, `updated_at`) VALUES
(10, 10, 3, 'Kem chống nắng Ohui dành cho da bị sạm đen Day Shield Perfect Sun Black SPF50+', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nKem Chống nắng Ohui dành cho da dễ bị sạm đen Day Shield Perfect Sun Black SPF 50+/PA+++<br />\r\nVừa có khả năng dưỡng trắng da, vừa trang điểm nhẹ và nâng tông da.</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nKem Chống nắng Ohui dành cho da dễ bị sạm đen Day Shield Perfect Sun Black SPF 50+/PA+++<br />\r\nVừa có khả năng dưỡng trắng da, vừa trang điểm nhẹ và nâng tông da.<br />\r\n<br />\r\nDay Shield Perfect Sun Black SPF 50+/PA+++&nbsp;hiệu quả cao chống lại tia tử ngoại UVA, UVB, mạnh mẽ vượt trội. đồng thời có thể sử dụng như kem lót trang điểm<br />\r\n<br />\r\nSau khi sử dụng, làn da sẽ có cảm giác rất sảng khoái và tươi mát suốt cả ngày dài mà không hề dính rít khó chịu.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Cách sử dụng:</strong><br />\r\nSau khi sử dụng lớp dưỡng, lấy một lượng vừa đủ thoa đều lên mặt theo chiều cấu tạo da.</span></p>', 600000, '73-1573210435-myohui57.png', 40, 0, NULL, '2021-05-21 02:05:40'),
(11, 10, 2, 'Kem bôi chống nắng', '<p>fd</p>', '<p>sad</p>', 600000, '73-1574152859-myohui23.png', 50, 0, NULL, '2021-05-20 03:37:06'),
(12, 10, 3, 'Son dưỡng môi với màu sắc trong suốt Ohui Lip Tint Balm', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 5g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Thỏi son dưỡng môi Ohui Lip Tint Balm có hình dáng vuông thời trang, với màu sắc trong suốt cho hiệu quả bảo vệ và bổ sung độ ẩm cho đôi môi dễ bị khô trong suốt cả ngày, giúp thể hiện màu sắc đôi môi bóng mượt tự nhiên.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Việc dưỡng da, chăm sóc da là cần thiết. Bên cạnh đó, việc chăm sóc môi cũng quan trọng không kém. Giúp cho khuôn mặt được chăm sóc toàn</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 5g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Thỏi son dưỡng môi Ohui Lip Tint Balm có hình dáng vuông thời trang, với màu sắc trong suốt cho hiệu quả bảo vệ và bổ sung độ ẩm cho đôi môi dễ bị khô trong suốt cả ngày, giúp thể hiện màu sắc đôi môi bóng mượt tự nhiên.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Việc dưỡng da, chăm sóc da là cần thiết. Bên cạnh đó, việc chăm sóc môi cũng quan trọng không kém. Giúp cho khuôn mặt được chăm sóc toàn diện.&nbsp;Son dưỡng môi Ohui Lip Tint Balm sẽ giúp vẻ đẹp bạn được chăm sóc.</span></p>', 600000, '73-1573637136-myohui59.png', 49, 0, NULL, '2021-05-21 02:06:32'),
(13, 13, 3, 'Son bóng', '<p>jkhguriorwe</p>', '<p>jkhguriorwe</p>', 412000, '73-1573640831-myohui18.png', 50, 0, NULL, '2021-05-20 03:37:22'),
(14, 11, 3, 'Kem bôi da', '<p>cccc</p>', '<p>cccc</p>', 4120000, '73-1573461432-myohui30.png', 50, 0, NULL, '2021-05-20 03:37:30'),
(15, 10, 2, 'Kem trắng da', '<p>csd</p>', '<p>sd</p>', 1300000, '83-1574768095-myphamohui-lgvina7.png', 50, 0, NULL, '2021-05-20 03:37:57'),
(17, 10, 2, 'Kem bôi dưỡng da', '<p>Kem dưỡng da</p>', '<p>Kem dưỡng da</p>', 5000000, '83-1587707764-myphamohui-lgvina7.png', 50, 0, NULL, '2021-05-20 03:37:48'),
(18, 12, 3, 'Set sữa rửa mặt Ohui Thefirst tái sinh', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Bộ sản phẩm gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Sữa rửa mặt OHUI The First Geniture Foam Cleanser 200ml</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Tinh chất OHUI The First Geniture Cell Source 22ml</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Sữa rửa mặt OHUI The First Geniture Foam Cleanser 80ml Bộ sản phẩm thuộc dòng tái tạo da The First, sử dụng công nghệ nuôi dưỡng tế bào mầm mang lại sự tái sinh làn da khỏe mạnh và trẻ trung do Viện nghiên cứu tế bào mầm CHA cung cấp độc quyền cho LG Household &amp; Healthcare.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">1. Sữa rửa mặt OHUI The First Geniture Foam Cleanser Công nghệ Dual Effect Foam boosting với 2 loại dưỡng chất đặc biệt giúp tạo bọt mềm mịn xốp và dày nhìu hơn các loại sữa rửa mặt thông thường khác. Công nghệ Micella giúp giảm kích ứng da, loại bỏ bã nhờn và mang lại làn da mềm mại, mịn màng hơn.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p><span style=\"font-size:14px\"><strong>Bộ sản phẩm gồm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Sữa rửa mặt OHUI The First Geniture Foam Cleanser 200ml</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Tinh chất OHUI The First Geniture Cell Source 22ml</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Sữa rửa mặt OHUI The First Geniture Foam Cleanser 80ml Bộ sản phẩm thuộc dòng tái tạo da The First, sử dụng công nghệ nuôi dưỡng tế bào mầm mang lại sự tái sinh làn da khỏe mạnh và trẻ trung do Viện nghiên cứu tế bào mầm CHA cung cấp độc quyền cho LG Household &amp; Healthcare.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">1. Sữa rửa mặt OHUI The First Geniture Foam Cleanser Công nghệ Dual Effect Foam boosting với 2 loại dưỡng chất đặc biệt giúp tạo bọt mềm mịn xốp và dày nhìu hơn các loại sữa rửa mặt thông thường khác. Công nghệ Micella giúp giảm kích ứng da, loại bỏ bã nhờn và mang lại làn da mềm mại, mịn màng hơn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Công dụng:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Chứa thành phần tính năng của Kem tái sinh và Sữa dưỡng The First giàu dưỡng chất giúp cho da mềm mượt sạch láng mịn với độ tạo lớp bọt phong phú</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Làm sạch bụi bẩn, sạch lớp trang điểm và kem chống nắng. - Loại bỏ lớp sừng già tích tụ dưới da, làm mềm da ngay sau khi dùng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Tăng khả năng kháng viêm cho da, ngăn ngừa mụn, mẩn ngứa cho da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Tăng cường màng chắn bảo vệ da , bổ sung ẩm, dưỡng tái sinh, chống lão hoá da - Sản phẩm lành tính dành cho mọi loại kể cả làn da nhạy cảm nhất</span></p>\r\n\r\n<p><span style=\"font-size:14px\">2. Tinh chất OHUI The First Geniture Cell Source Tinh chất Ohui The First Cell Essential Source chứa 90,3% Cell SourceTM, giúp da thẩm thấu tốt hơn các thành phần dưỡng chất do đó giúp phục hồi da tốt hơn. Đồng thời tăng cường khả năng hấp thu cho các bước dưỡng tiếp theo. Dung dịch lỏng và trong suốt, không dính mang lại cảm giác rất mượt và mịn, thẩm thấu rất nhanh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng bộ sản phẩm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Lấy một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt với nước. Thoa bọt toàn bộ khuôn mặt và nhẹ nhàng massage để làm sạch bụi bẩn. Sau bước làm sạch da, bước dùng nước hoa hồng cân bằng độ pH, lấy một lượng vừa đủ tinh chất vào lòng bàn tay hoặc bông tẩy trang. Sau đó thoa đều lên toàn bộ mặt và massage theo chiều cấu tạo da. Xuất Xứ &amp; Hạn Sử Dụng: Xuất xứ thương hiệu: Hàn Quốc Nơi sản xuất: Hàn Quốc Hạn sử dụng: 3 năm kể từ ngày sản xuất (thông tin được in trên bao bì)</span></p>', 1575000, '83-1586773435-myphamohui-lgvina76.png', 45, 0, NULL, '2021-06-17 03:06:40'),
(19, 10, 2, 'Nước Hoa Hồng Ohui Prime Advancer Skin Softener 150ml', '<p>Nước cân bằng da Prime Advancer Skin Softener với các phân tử tinh chất đậm đặc trong suốt giúp trải đều và thẩm thấu nhẹ nhàng dưỡng chất vào sâu trong da, giúp mang lại làn da ẩm mịn, chắc khỏe mà không hề bết dính, giúp làn da đạt được trạng thái lý tưởng trước khi bắt đầu chu trình chăm sóc toàn diện, cải thiện nếp nhăn cho làn da.</p>', '<p>Nước cân bằng da Prime Advancer Skin Softener với các phân tử tinh chất đậm đặc trong suốt giúp trải đều và thẩm thấu nhẹ nhàng dưỡng chất vào sâu trong da, giúp mang lại làn da ẩm mịn, chắc khỏe mà không hề bết dính, giúp làn da đạt được trạng thái lý tưởng trước khi bắt đầu chu trình chăm sóc toàn diện, cải thiện nếp nhăn cho làn da.</p>', 1350000, '73-1572863519-myohui51.png', 50, 0, NULL, '2021-05-20 03:38:13'),
(20, 12, 3, 'Nước hoa hồng tái sinh Ohui Thefirst', '<p><span style=\"font-size:14px\">Nước hoa hồng Ohui The First Skin Softener làm mềm da giàu dưỡng chất, nhẹ nhàng thẩm thấu sâu nhằm duy trì sự cân bằng cho làn da ngay sau khi rửa mặt. Sản phẩm cải tiến tốt, cung cấp dung dịch nuôi dưỡng và bảo vệ tế bào mầm.</span></p>', '<p><span style=\"font-size:14px\">Nước hoa hồng Ohui The First Skin Softener làm mềm da giàu dưỡng chất, nhẹ nhàng thẩm thấu sâu nhằm duy trì sự cân bằng cho làn da ngay sau khi rửa mặt. Sản phẩm cải tiến tốt, cung cấp dung dịch nuôi dưỡng và bảo vệ tế bào mầm.</span></p>', 1890000, '73-1572602872-myohui40.png', 45, 0, NULL, '2021-05-20 03:36:51'),
(21, 12, 3, 'Set nước sữa tái sinh Ohui thefirst', '<p>SET TÁI SINH THE FIRST 8SP MỚI NHẤT VỪA CẬP BẾN Ạ - Thức khuya, bụi bẩn khiến da bị mụn - Da không đều màu do vết thâm mụn, sạm nám tàn nhang, điều trị laser... - Các tổn thương do môi trường - Lỗ chân lông rộng</p>', '<p>SET TÁI SINH THE FIRST 8SP MỚI NHẤT VỪA CẬP BẾN Ạ - Thức khuya, bụi bẩn khiến da bị mụn - Da không đều màu do vết thâm mụn, sạm nám tàn nhang, điều trị laser... - Các tổn thương do môi trường - Lỗ chân lông rộng</p>', 37800000, '83-1574919130-myphamohui-lgvina76.png', 50, 0, NULL, '2021-05-20 03:36:39'),
(22, 11, 3, 'Mặt lạ dưỡng da', '<p>Mặt lạ dưỡng da</p>', '<p>Mặt lạ dưỡng da</p>', 3000000, '73-1572847971-myohui41.png', 50, 0, NULL, '2021-05-20 03:36:06'),
(26, 33, 3, 'Sữa rửa mặt dạng Gel Su:m37 Skin Saver Essential Cleansing Foam', '<p><span style=\"font-size:14px\"><strong>DUNG TÍCH: 250ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Su:m37 Skin Saver Essential Cleansing Foam làm sạch bụi bẩn và bã nhờn từ sâu trong lỗ chân mà không gây kích ứng cho da. Sản phẩm được tạo ra từ quá trình lên men tự nhiên. Giúp làm sạch sâu bên trong lỗ chân lông và loại bỏ các tạp chất bã nhờn, ngăn ngừa da bị khô.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Su:m37 không chứa hương liệu nhân tạo. Không chứa chất tạo màu và chất bảo quản. Dòng sản phẩm phù hợp với cả các làn da nhạy</span></p>', '<p><span style=\"font-size:14px\"><strong>DUNG TÍCH: 250ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Su:m37 Skin Saver Essential Cleansing Foam làm sạch bụi bẩn và bã nhờn từ sâu trong lỗ chân mà không gây kích ứng cho da. Sản phẩm được tạo ra từ quá trình lên men tự nhiên. Giúp làm sạch sâu bên trong lỗ chân lông và loại bỏ các tạp chất bã nhờn, ngăn ngừa da bị khô.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Su:m37 không chứa hương liệu nhân tạo. Không chứa chất tạo màu và chất bảo quản. Dòng sản phẩm phù hợp với cả các làn da nhạy</span></p>', 3000000, '73-1574152859-myohui95.png', 50, 0, NULL, NULL),
(27, 10, 2, 'Set tinh chất Ohui xanh Prime Advancer Ampoule Serum phiên bản 90ml', '<p><span style=\"font-size:14px\">Set tinh chất ohui Xanh-Tinh chất thần thánh serum Ohui mới chống lão hóa da, chống nhăn, giúp da căng bóng mịn màng</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Chỉ cần 1 bước cơ bản mà cải thiện được nhiều vấn đề của làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Da trắng sáng mờ thâm nám, se lỗ chân lông và chống lão hoá.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">SẢN PHẨM ĐA CHỨC NĂNG:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">☑️ Làm mềm, dưỡng ẩm và trắng da</span></p>\r\n\r\n<p><span style=\"font-size:14px\">☑️ Trẻ hoá da, chống lão hoá</span></p>', '<p><span style=\"font-size:14px\">Set tinh chất ohui Xanh-Tinh chất thần thánh serum Ohui mới chống lão hóa da, chống nhăn, giúp da căng bóng mịn màng</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Chỉ cần 1 bước cơ bản mà cải thiện được nhiều vấn đề của làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Da trắng sáng mờ thâm nám, se lỗ chân lông và chống lão hoá.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">SẢN PHẨM ĐA CHỨC NĂNG:</span></p>\r\n\r\n<p><span style=\"font-size:14px\">☑️ Làm mềm, dưỡng ẩm và trắng da</span></p>\r\n\r\n<p><span style=\"font-size:14px\">☑️ Trẻ hoá da, chống lão hoá</span></p>', 2970000, '83-1576146597-myphamohui-lgvina67.png', 50, 0, NULL, '2021-05-20 03:35:54'),
(35, 11, 3, 'Set dưỡng ẩm whoo hồng gongjinhyang soo vital hydrating 2PCS special set', '<p><span style=\"font-size:14px\">SET WHOO HỒNG - HYDRATING ĐẦY ĐỦ CÁC SP TỪ SỮA RỬA MẶT, NƯỚC HOA HỒNG, DƯỠNG NGÀY, DƯỠNG ĐÊM<br />\r\n<img alt=\"💫\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ted/1/16/1f4ab.png\" />&nbsp;Bộ sản phẩm dưỡng ẩm và làm trắng da Whoo hydrating có khả năng cung cấp nước siêu việt đồng thời bổ sung dưỡng chất cho da trắng sáng từ trong ra ngoài. Nhờ đó, bạn sẽ có được làn da trắng hồng bật tone, săn chắc mịn màng và láng mượt hơn bao giờ hết. Hơn nữa, set dưỡng da đặc biệt này còn giúp tăng khả năng đàn hồi và tái tạo da, giúp da căng mịn,</span></p>', '<p><span style=\"font-size:14px\">SET WHOO HỒNG - HYDRATING ĐẦY ĐỦ CÁC SP TỪ SỮA RỬA MẶT, NƯỚC HOA HỒNG, DƯỠNG NGÀY, DƯỠNG ĐÊM<br />\r\n<img alt=\"💫\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ted/1/16/1f4ab.png\" />&nbsp;Bộ sản phẩm dưỡng ẩm và làm trắng da Whoo hydrating có khả năng cung cấp nước siêu việt đồng thời bổ sung dưỡng chất cho da trắng sáng từ trong ra ngoài. Nhờ đó, bạn sẽ có được làn da trắng hồng bật tone, săn chắc mịn màng và láng mượt hơn bao giờ hết. Hơn nữa, set dưỡng da đặc biệt này còn giúp tăng khả năng đàn hồi và tái tạo da, giúp da căng mịn,</span></p>', 2340000, '83-1591788607-myphamohui-lgvina83.png', 50, 0, NULL, NULL),
(36, 13, 3, 'Sữa dưỡng giúp bổ sung ẩm siêu mượt  Essential Nourishing Emulsion', '<p><span style=\"font-size:14px\"><strong>Dung tích: 110ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohui.net.vn/\"><strong>Tổng quan mỹ phẩm whoo</strong></a><br />\r\nSữa dưỡng da&nbsp;<strong>Essential Nourishing Emulsion</strong>&nbsp;Đông Y với hương thơm tao nhã làm tăng khả năng bổ sung ẩm cho làn da bóng mượt săn chắc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Thành phần:</strong><br />\r\nCống thần đơn (cân bằng khí huyết), Thiên môn đông (làn da trong suốt). Đông trùng hạ thảo làm da bóng mượt</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 110ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohui.net.vn/\"><strong>Tổng quan mỹ phẩm whoo</strong></a><br />\r\nSữa dưỡng da&nbsp;<strong>Essential Nourishing Emulsion</strong>&nbsp;Đông Y với hương thơm tao nhã làm tăng khả năng bổ sung ẩm cho làn da bóng mượt săn chắc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Thành phần:</strong><br />\r\nCống thần đơn (cân bằng khí huyết), Thiên môn đông (làn da trong suốt). Đông trùng hạ thảo làm da bóng mượt</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Đặc trưng:</strong><br />\r\n* Tăng khả năng giữ ẩm thông qua sự gia tăng khả năng sinh trưởng của da.<br />\r\n* Có thành phần Đông trùng hạ thảo được lên men thành thể cứng<br />\r\n* Cảm giác sử dụng mềm mát như nước<br />\r\n* Hiệu quả sẽ phát huy cao hơn khi sử dụng cho vùng cổ.<br />\r\n* Hương thơm thanh tao, tao nhã của thuỵ hương.</span></p>', 1395000, '73-1573210446-myohui71.png', 50, 0, NULL, NULL),
(37, 37, 3, 'Kem dưỡng tái tạo da LosecSuma Elixir Cream', '<p><span style=\"font-size:14px\"><strong>&nbsp;Thể tích: 60ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nKem dưỡng&nbsp;Sum37 Losec Summa Elixir Cream&nbsp;có chứa hàm lượng dinh dưỡng cao thu được từ quá trình lên men tự nhiên của 10 loài cây bằng cách sử dụng phương pháp lên men của đế quốc La Mã. kem có kết cấu texture dai, mềm nhưng dễ thấm, hình thành lớp màng bảo vệ giúp khóa ẩm và duy trì làn da sáng, mềm mịn.</span></p>', '<p><span style=\"font-size:14px\"><strong>&nbsp;Thể tích: 60ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nKem dưỡng&nbsp;Sum37 Losec Summa Elixir Cream&nbsp;có chứa hàm lượng dinh dưỡng cao thu được từ quá trình lên men tự nhiên của 10 loài cây bằng cách sử dụng phương pháp lên men của đế quốc La Mã. kem có kết cấu texture dai, mềm nhưng dễ thấm, hình thành lớp màng bảo vệ giúp khóa ẩm và duy trì làn da sáng, mềm mịn.<br />\r\n<br />\r\nKem dưỡng&nbsp;Sum37 Losec Summa Elixir Cream&nbsp;tái sinh da, ngăn ngừa lão hóa sâu, hồi sinh vẻ đẹp của làn da:&nbsp;là dòng&nbsp;sản phẩm có chứa các thành phần được sản xuất bằng cách lên men dựa trên sự tái diễn của các phương pháp được sử dụng bởi các hoàng đế của đế chế La Mã sẽ giúp bạn có làn da khỏe mạnh và lí tưởng. các thành phần được tạo ra bởi quá trình lên men tự nhiên lâu dài giúp tăng cường sức khỏe làn da từ nền tảng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng:</strong><br />\r\nDùng&nbsp;vào bước cuối cùng của quá trình chăm sóc da.</span></p>', 6750000, '73-1573726328-myohui68.png', 50, 0, NULL, NULL),
(38, 37, 3, 'Sữa rửa mặt tái sinh Sum37 Losec Summa Elixir Foam Cleanser chứa vàng', '<p><a href=\"http://ohuixachtay.com.vn/\" style=\"font-size: 14px;\"><strong>Tổng quan mỹ phẩm Ohui</strong></a></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Su:M37 Losec Summa Elixir Foam Cleanser làm sạch bụi bẩn và bã nhờn từ sâu trong lỗ chân lông mà không gây kích ứng cho làn da mẫn cảm. Sản phẩm chứa chiết xuất vàng được tạo ra từ một quá trình lên men và chứa độ ẩm cần thiết với các thành phần đặc biệt phù hợp với cơ chế tự nhiên của da, giữ cho da ẩm lâu, mềm mại sau khi rửa mặt.</span></p>', '<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nSữa rửa mặt Su:M37 Losec Summa Elixir Foam Cleanser làm sạch bụi bẩn và bã nhờn từ sâu trong lỗ chân lông mà không gây kích ứng cho làn da mẫn cảm. Sản phẩm chứa chiết xuất vàng được tạo ra từ một quá trình lên men và chứa độ ẩm cần thiết với các thành phần đặc biệt phù hợp với cơ chế tự nhiên của da, giữ cho da ẩm lâu, mềm mại sau khi rửa mặt.<br />\r\n<br />\r\n<strong>Công dụng sản phẩm:</strong><br />\r\nLàm sạch bụi bẩn, sạch lớp trang điểm và kem chống nắng.<br />\r\nLoại bỏ lớp sừng già tích tụ dưới da, làm mềm da ngay sau khi dùng.<br />\r\nTăng khả năng kháng viêm cho da, ngăn ngừa mụn, mẩn ngứa cho da.<br />\r\nTăng cường khả năng sản sinh collagen.<br />\r\nDưỡng tái sinh, chống lão hoá da.</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng:</strong><br />\r\nLàm ướt da mặt, lấy một lượng sữa rửa mặt vừa đủ cho vào lòng bàn tay, tạo bọt và massage nhẹ nhàng sau đó rửa sạch với nước.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Thể tích: 180 ml</strong></span></p>', 1395000, '73-1572677279-myohui29.png', 50, 0, NULL, '2021-05-19 09:04:59'),
(39, 37, 3, 'Nước hoa hồng tái sinh Sum37 Losec Summa Elixir Skin Softener', '<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nNước hoa hồng Sum37 Losec Summa Elixir Skin Softener có chứa các thành phần dinh dưỡng lên men sản xuất từ 10 loại cây dựa trên các phương pháp được sử dụng bởi các hoàng đế của đế chế La Mã. Nước hoa hồng này tập trung dưỡng chất giúp bạn duy trì làn da sạch, cấp ẩm cho da và cân bằng giữa dầu và ẩm trên da.&nbsp;</span></p>', '<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nNước hoa hồng Sum37 Losec Summa Elixir Skin Softener có chứa các thành phần dinh dưỡng lên men sản xuất từ 10 loại cây dựa trên các phương pháp được sử dụng bởi các hoàng đế của đế chế La Mã. Nước hoa hồng này tập trung dưỡng chất giúp bạn duy trì làn da sạch, cấp ẩm cho da và cân bằng giữa dầu và ẩm trên da.&nbsp;<br />\r\nNước hoa hồng&nbsp;Sum37 Losec Summa Elixir Skin Softener&nbsp;bổ sung ẩm. Su:m37 Losec&nbsp;tái sinh da, ngăn ngừa lão hóa sâu, hồi sinh vẻ đẹp của làn da:&nbsp;là dòng&nbsp;sản phẩm có chứa các thành phần được sản xuất bằng cách lên men dựa trên sự tái diễn của các phương pháp được sử dụng bởi các hoàng đế của đế chế La Mã sẽ giúp bạn có làn da khỏe mạnh và lí tưởng. các thành phần được tạo ra bởi quá trình lên men tự nhiên lâu dài giúp tăng cường sức khỏe làn da từ nền tảng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng:</strong><br />\r\nSử dụng đầu tiên trong quá trình chăm sóc da cơ bản, đều đặn hàng ngày sáng và tối sau khi đã rửa mặt sạch với sữa rửa mặt. Thấm vào miếng bông gòn rồi lau nhẹ và đều khắp mặt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Thể tích: 150ml</strong></span></p>', 1980000, '73-1572670357-myohui55.png', 50, 0, NULL, '2021-06-17 03:10:53'),
(40, 33, 3, 'Phấn nước dành cho da nhờn Su:m37 Air Rising TF Glow Cover Metal Cushion SPF50+/PA+++', '<p><span style=\"font-size:14px\"><strong>Dung tích: 15g+15g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phấn nước cho da nhờn Su:m37 Air Rising TF Glow Cover Metal Cushion SPF50+++ với hạt phấn Elastic Cover Powder giúp che phủ kỹ trên bề mặt da, cho lớp nền sáng bóng không khuyết điểm cùng cảm giác ẩm mịn cùng độ chống nắng cao.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Su:m37 Air Rising là dòng trang điểm mang đến lớp trang điểm rạng rỡ, mỏng nhẹ, mượt mà tự nhiên, đầy sinh khí. Công thức không phấn hoạt</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 15g+15g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phấn nước cho da nhờn Su:m37 Air Rising TF Glow Cover Metal Cushion SPF50+++ với hạt phấn Elastic Cover Powder giúp che phủ kỹ trên bề mặt da, cho lớp nền sáng bóng không khuyết điểm cùng cảm giác ẩm mịn cùng độ chống nắng cao.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Su:m37 Air Rising là dòng trang điểm mang đến lớp trang điểm rạng rỡ, mỏng nhẹ, mượt mà tự nhiên, đầy sinh khí. Công thức không phấn hoạt thạch, không kích ứng da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">– Phấn nước được đặt dưới một lớp metal trắng bóng. Chỉ cần ấn nhẹ, sản phẩm sẽ tự động trồi lên. Rất hiện đại và tiết kiệm. Mặt kính bên trong là điểm cộng trong thiết kế.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">– Kết cấu phấn nước rất đặc biệt. Không quá lỏng như kem nền truyền thống nhưng lại không dày, bở như phấn nền</span></p>\r\n\r\n<p><span style=\"font-size:14px\">– Bông phấn mềm dễ dàn trải.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">– Che phủ tự nhiên, mang lại làn da mịn màng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">– Độ chống nắng cao SPF50/PA+++</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Đối Tượng:</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">– Khách hàng da nhờn và có nhiều khuyết điểm</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Hướng dẫn sử dụng :</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Dùng bông phấn ấn vào để thấm kem rồi thoa đều lên mặt.</span></p>', 1080000, '73-1574136313-myohui85.png', 45, 0, NULL, '2021-05-23 07:14:14'),
(41, 11, 3, 'Kem lót Whoo Gongjinghyang Mi Velvet Primer Base', '<p><span style=\"font-size:14px\"><strong>Kem lót Whoo Gongjinghyang: Mi Velvet Primer Base&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem lót mới nhất của Whoo được cty cho ra mắt từ tháng 7/2020 với các thành phần Đông y cung đình nhằm tạo ra 1 lớp “màng mỏng” giúp bảo vệ da tối ưu cũng như cho bạn lớp makeup mềm mịn, tươi tắn &amp; bền màu hơn phiên bản cũ!</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vỏ hộp được thiết kế theo phong cách mới rất đẹp &amp; sang trọng như bản chất vốn có của Whoo!</span></p>', '<p><span style=\"font-size:14px\"><strong>Kem lót Whoo Gongjinghyang: Mi Velvet Primer Base&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem lót mới nhất của Whoo được cty cho ra mắt từ tháng 7/2020 với các thành phần Đông y cung đình nhằm tạo ra 1 lớp “màng mỏng” giúp bảo vệ da tối ưu cũng như cho bạn lớp makeup mềm mịn, tươi tắn &amp; bền màu hơn phiên bản cũ!</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vỏ hộp được thiết kế theo phong cách mới rất đẹp &amp; sang trọng như bản chất vốn có của Whoo!</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Dung tích:</strong>&nbsp;40ml.</span></p>', 1170000, '83-1618649799-myphamohui-lgvina87.png', 50, 0, NULL, '2021-05-23 07:14:01'),
(42, 11, 3, 'Set dưỡng ẩm whoo hồng gongjinhyang soo vital hydrating 2PCS special set', '<p><span style=\"font-size:14px\">SET WHOO HỒNG - HYDRATING ĐẦY ĐỦ CÁC SP TỪ SỮA RỬA MẶT, NƯỚC HOA HỒNG, DƯỠNG NGÀY, DƯỠNG ĐÊM<br />\r\n<img alt=\"💫\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ted/1/16/1f4ab.png\" />&nbsp;Bộ sản phẩm dưỡng ẩm và làm trắng da Whoo hydrating có khả năng cung cấp nước siêu việt đồng thời bổ sung dưỡng chất cho da trắng sáng từ trong ra ngoài. Nhờ đó, bạn sẽ có được làn da trắng hồng bật tone, săn chắc mịn màng và láng mượt hơn bao giờ hết. Hơn nữa, set dưỡng da đặc biệt này còn giúp tăng khả năng đàn hồi và tái tạo da, giúp da căng mịn,</span></p>', '<p><span style=\"font-size:14px\">SET WHOO HỒNG - HYDRATING ĐẦY ĐỦ CÁC SP TỪ SỮA RỬA MẶT, NƯỚC HOA HỒNG, DƯỠNG NGÀY, DƯỠNG ĐÊM<br />\r\n<img alt=\"💫\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ted/1/16/1f4ab.png\" />Bộ sản phẩm dưỡng ẩm và làm trắng da Whoo hydrating có khả năng cung cấp nước siêu việt đồng thời bổ sung dưỡng chất cho da trắng sáng từ trong ra ngoài. Nhờ đó, bạn sẽ có được làn da trắng hồng bật tone, săn chắc mịn màng và láng mượt hơn bao giờ hết. Hơn nữa, set dưỡng da đặc biệt này còn giúp tăng khả năng đàn hồi và tái tạo da, giúp da căng mịn, giảm sự xuất hiện nếp nhăn và ngăn chặn quá trình lão hóa.<br />\r\nSet Whoo hồng SIÊU DƯỠNG CHO MÙA XUÂN HÈ ạ. Yêu quá các chị ơi. Da hỗn Hợp dầu nhờn Mụn chị em không lo nữa nhé. Dùng set này da đẹp miễn chê luôn !<br />\r\n<br />\r\nDa đủ nước Căng mọng và Sẽ tự Mịn màng và tươi sáng ko còn đen xạm ko đều màu. Độc tố đc thanh lọc, giảm mụn nhọt&nbsp; và dầu nhờn đc kiểm soát , thu nhỏ&nbsp;&nbsp;lỗ chân lông n và làm sạch mụn đầu đen.<br />\r\nBỘ SẢN PHẨM BAO GỒM:<br />\r\n1. Nước hoa hồng 150ml<br />\r\n2. Sữa dưỡng 110ml<br />\r\n3. Nước hoa hồng 20ml<br />\r\n4. Sữa dưỡng 20ml</span></p>', 2340000, '83-1591788607-myphamohui-lgvina52.png', 50, 0, NULL, '2021-05-23 07:14:08'),
(44, 10, 3, 'Kem lót nâng tông Ohui Makeup Ultimate Brightening Lavender Primer SPF20/PA++', '<p><span style=\"font-size:14px\">Kem lót nâng tông&nbsp;<strong>Ohui Makeup Ultimate Brightening Lavender Primer SPF20/PA++&nbsp; :</strong>&nbsp;Kem lót nâng&nbsp;tông chiết xuất từ hoa oải hương giúp làn da xỉn màu trơt nên tươi sáng , đều màu và mịn màng .&nbsp;Dành cho làn da tối màu có sắc&nbsp;tố tối màu , da vàng , da sạm , da thiếu sức sống .&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Công dụng :&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Che khuyết điểm tốt, nâng tông tự nhiên</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kiểm soát dầu thừa</span></p>', '<p><span style=\"font-size:14px\">Kem lót nâng tông&nbsp;<strong>Ohui Makeup Ultimate Brightening Lavender Primer SPF20/PA++&nbsp; :</strong>&nbsp;Kem lót nâng&nbsp;tông chiết xuất từ hoa oải hương giúp làn da xỉn màu trơt nên tươi sáng , đều màu và mịn màng .&nbsp;Dành cho làn da tối màu có sắc&nbsp;tố tối màu , da vàng , da sạm , da thiếu sức sống .&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Công dụng :&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Che khuyết điểm tốt, nâng tông tự nhiên</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kiểm soát dầu thừa</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Giữ lớp trang điểm luôn sáng đẹp và mịn màng, đầy sức sống</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cân bằng độ ẩm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Se khít lỗ chân lông nhẹ</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Bảo vệ da khỏi tác hại từ tia UV hay các lớp kem và phấn trang điểm phía bên trên.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Dung tích</strong>&nbsp;: 45ml&nbsp;</span></p>', 900000, '83-1618642699-myphamohui-lgvina31.png', 45, 0, '2021-05-19 09:03:02', NULL),
(45, 10, 3, 'Mascara Ohui Proof - All', '<p><span style=\"font-size:14px\"><strong>Mascara Ohui Proof - All</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Với sự thiết kế đầu chải của mascara cong giúp chải mi nhanh hơn từ gốc tới ngọn. Hình dáng của mascara sang trọng, nhỏ gọn có thể dễ dàng sử dụng mọi lúc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sản phẩm được làm từ các loại protein và sáp ong. Kết hợp glycerin, dẫn chất của alcohol có tinh chất sáp và ester…. Giúp cho lông mi thêm sức quyến rũ.</span></p>', '<p><span style=\"font-size:14px\"><strong>Mascara Ohui Proof - All</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Với sự thiết kế đầu chải của mascara cong giúp chải mi nhanh hơn từ gốc tới ngọn. Hình dáng của mascara sang trọng, nhỏ gọn có thể dễ dàng sử dụng mọi lúc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sản phẩm được làm từ các loại protein và sáp ong. Kết hợp glycerin, dẫn chất của alcohol có tinh chất sáp và ester…. Giúp cho lông mi thêm sức quyến rũ.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đặc biệt, đây còn là một loại mascara không mùi, khác những loại mascara thông thường.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Mascara Proof All Volume của OHUI còn cung cấp dưỡng chất nuôi dưỡng lông mi dài thêm, khoẻ đẹp hơn.</span></p>', 621000, '83-1619498813-myphamohui-lgvina70.png', 35, 0, '2021-05-20 03:21:17', NULL),
(46, 10, 2, 'Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact', '<p><span style=\"font-size:14px\"><strong>Dung tích: 9g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Ngoài điểm mạnh giúp cải thiện tông da, chống nắng, chống lão hóa &nbsp;Ultimate Brightening Varnishing Pact còn có đặc tính kiềm dầu đáng nể, giữ lớp makeup luôn mịn màng, khô thoáng, hạn chế xuống tông da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nằm trong top các thương hiệu làm đẹp cao cấp Hàn Quốc, O HUI từ lâu</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 9g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Phấn nén dưỡng trắng chống lão hóa Ultimate Brightening Varnishing Pact</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Ngoài điểm mạnh giúp cải thiện tông da, chống nắng, chống lão hóa &nbsp;Ultimate Brightening Varnishing Pact còn có đặc tính kiềm dầu đáng nể, giữ lớp makeup luôn mịn màng, khô thoáng, hạn chế xuống tông da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nằm trong top các thương hiệu làm đẹp cao cấp Hàn Quốc, O HUI từ lâu đã chiếm trọn cảm tình của các quý cô sành điệu. Phái đẹp mê những sản phẩm makeup, dưỡng da có thiết kế sang chảnh bậc nhất của thương hiệu này với khả năng “biến hóa” vẻ đẹp làn da từng ngày.</span></p>', 1080000, '73-1573635248-myohui52.png', 150, 0, '2021-05-21 02:02:46', '2021-06-16 03:11:35'),
(47, 13, 3, 'Mặt nạ lột vàng whoo 24K nguyên chất UI Gold Peel Off Mask', '<p><span style=\"font-size:14px\"><strong>Thể tích: 80ml</strong><br />\r\n<a href=\"http://myphamohui.net.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\n<strong>Mặt nạ vàng 24k dạng gel lột Whoo UI Gold Peel off Mask</strong><br />\r\nGiới thiệu mặt nạ vàng 24k dạng gel lột đến từ thương hiệu mỹ phẩm nổi tiếng Hàn Quốc về chất lượng “Whoo” cho bạn điều kiện để chăm sóc da mặt mỗi ngày với mức chi phi hợp lý.</span></p>', '<p><span style=\"font-size:14px\"><strong>&nbsp;Thể tích: 80ml</strong><br />\r\n<a href=\"http://myphamohui.net.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\n<strong>Mặt nạ vàng 24k dạng gel lột Whoo UI Gold Peel off Mask</strong><br />\r\nGiới thiệu mặt nạ vàng 24k dạng gel lột đến từ thương hiệu mỹ phẩm nổi tiếng Hàn Quốc về chất lượng “Whoo” cho bạn điều kiện để chăm sóc da mặt mỗi ngày với mức chi phi hợp lý.<br />\r\n<br />\r\nWhoo UI: Gold Peel off Mask là mặt nạ dạng gel lột với chiết xuất từ vàng 24k nguyên chất và các thành phần đông dược Hoàng cung bí truyền, giúp làm sạch tế bào sừng chết, giúp da được thông thoáng, sáng trắng mịn màng và săn chắc. Mặt nạ Whoo UI: Gold Peel off Mask giúp loại bỏ mụn cám, mụn đầu đen và da chết, mang lại làn da sáng bóng ngay lần đắp đầu tiên mà không gây rát da.<br />\r\n<br />\r\n<strong>Công dụng:</strong><br />\r\n– Loại bỏ sạch hết những bụi bẩn còn dư trên mặt mà sữa rửa mặt không làm sạch được.<br />\r\n– Loại bỏ các tế bào chết còn dư trên bề mặt da.<br />\r\n– Hoàn toàn không tạo cảm giác khô, rát bỏng như các loại mặt nạ làm trắng khác.<br />\r\n– Cảm nhận tức thì làn da mềm mịn sáng hồng sau khi lột mặt nạ.<br />\r\n– Đặc biệt có chứa nhiều tinh chất dưỡng da trong đó có thành phần là vàng 24k giúp da bạn hấp thụ được các dưỡng chất trong quá trình thoa mặt nạ lên mặt cho đến khi các dưỡng chất này thẩm thấu hết vào da chỉ còn lại lớp mặt nạ khô thì bạn lột nhẹ mặt nạ từ dưới lên trên.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng:</strong><br />\r\n– Sau khi rửa mặt sạch bằng sữa rửa mặt, thoa một lớp mỏng nước hoa hồng trên da.<br />\r\n– Lấy ra một lượng sản phẩm vừa đủ, thoa đều lên mặt, tránh vùng mắt và môi. Nhẹ nhàng lột từ dưới lên sau khoảng từ 20-30 phút.</span></p>', 855000, '83-1574771117-myphamohui-lgvina87.png', 150, 0, '2021-05-21 02:08:16', '2021-06-16 03:08:07'),
(49, 58, 3, 'Set nước hoa hồng Ohui Miracle Moisture Skin Softener Moist', '<p><span style=\"font-size:14px\"><strong>Nước hoa hồng Ohui Miracle Moisture Skin Softener Moist</strong>&nbsp;&nbsp;dạng sữa dành cho da khô, yếu, mẫn cảm giúp làm dịu và cung cấp độ ẩm cho da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sản phẩm không gây kích ứng chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên giúp tăng cường hàng rào bổ sung độ ẩm cho làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Dung tích sản phẩm:</strong></u>&nbsp;150ml + 100ml&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Hướng dẫn sử dụng:</strong></u>&nbsp;Sáng và tối sau khi rửa mặt lấy một lượng vừa đủ</span></p>', '<p><span style=\"font-size:14px\"><strong>Nước hoa hồng Ohui Miracle Moisture Skin Softener Moist</strong>&nbsp;&nbsp;dạng sữa dành cho da khô, yếu, mẫn cảm giúp làm dịu và cung cấp độ ẩm cho da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sản phẩm không gây kích ứng chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên giúp tăng cường hàng rào bổ sung độ ẩm cho làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Dung tích sản phẩm:</strong></u>&nbsp;150ml + 100ml&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><u><strong>Hướng dẫn sử dụng:</strong></u>&nbsp;Sáng và tối sau khi rửa mặt lấy một lượng vừa đủ thoa đều lên toàn bộ gương mặt theo chiều cấu tạo của da.</span></p>', 1170000, 'anh118.png', 50, 0, '2021-06-18 01:45:04', '2021-06-18 01:45:25'),
(50, 58, 3, 'Sữa rửa mặt Ohui dưỡng ẩm Miracle moisture cleansing Foam', '<p><span style=\"font-size:14px\"><strong>Dung tích : 200ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Ohui Miracle Moisture Cleansing Foam giúp cung cấp độ ẩm, giữ da săn chắc và giúp da có độ đàn hồi cao, đồng thời phục hồi những vùng da bị hư tổn, chống mất nước làm khô da. Ngăn ngừa sự lão hóa cho làn da của bạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Làm sạch sâu các tế bào chết, tẩy sạch bụi bẩn trong lỗ chân lông giúp làn</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích : 200ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sữa rửa mặt Ohui Miracle Moisture Cleansing Foam giúp cung cấp độ ẩm, giữ da săn chắc và giúp da có độ đàn hồi cao, đồng thời phục hồi những vùng da bị hư tổn, chống mất nước làm khô da. Ngăn ngừa sự lão hóa cho làn da của bạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Làm sạch sâu các tế bào chết, tẩy sạch bụi bẩn trong lỗ chân lông giúp làn</span></p>', 675000, 'anh283.png', 50, 0, '2021-06-18 01:47:03', NULL),
(51, 58, 3, 'Nước hoa hồng Ohui bổ sung độ ẩm Miracle Moisture Skin Softener- Moist', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohuihanquoc.net.vn/\">Tổng quan mỹ phẩm Ohui</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nước hoa hồng Nước hoa hồng&nbsp;<a href=\"http://myphamohui.net.vn/\">Ohui Miracle Moisture Skin Softener Moist</a>&nbsp;không gây kích ứng chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên giúp tăng cường hàng rào bổ sung độ ẩm cho làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kết cấu chứa thành phần bổ sung độ ẩm phong phú, làm dịu làn da nhạy cảm do rửa mặt, mang lai nếp da mềm mại như voan.</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohuihanquoc.net.vn/\">Tổng quan mỹ phẩm Ohui</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nước hoa hồng Nước hoa hồng&nbsp;<a href=\"http://myphamohui.net.vn/\">Ohui Miracle Moisture Skin Softener Moist</a>&nbsp;không gây kích ứng chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên giúp tăng cường hàng rào bổ sung độ ẩm cho làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kết cấu chứa thành phần bổ sung độ ẩm phong phú, làm dịu làn da nhạy cảm do rửa mặt, mang lai nếp da mềm mại như voan.</span></p>', 810000, 'anh368.png', 50, 0, '2021-06-18 01:47:59', NULL),
(52, 58, 3, 'Kem dưỡng da ẩm Ohui Miracle Moisture Cream', '<p><span style=\"font-size:14px\"><strong>Dung tích : 50ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohuihanquoc.net.vn/\">Tổng quan mỹ phẩm Ohui</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem&nbsp;<a href=\"http://myphamohui.net.vn/\">Ohui</a>&nbsp;Miracle Moisture Cream bổ sung ẩm chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên ﻿giúp tăng cường sức mạnh cho hàng rào bổ sung ẩm bị thương tổn của làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Với kết cấu kem cho cảm giác mềm mại dài lâu và khả năng hấp thụ mạnh mẽ, dù thời gian trôi qua làn da vẫn ẩm mượt, Đồng thời chứa đựng dưỡng</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích : 50ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohuihanquoc.net.vn/\">Tổng quan mỹ phẩm Ohui</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem&nbsp;<a href=\"http://myphamohui.net.vn/\">Ohui</a>&nbsp;Miracle Moisture Cream bổ sung ẩm chứa thành phần Chiffon Ceramide đậm đặc có nguồn gốc từ thiên nhiên ﻿giúp tăng cường sức mạnh cho hàng rào bổ sung ẩm bị thương tổn của làn da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Với kết cấu kem cho cảm giác mềm mại dài lâu và khả năng hấp thụ mạnh mẽ, dù thời gian trôi qua làn da vẫn ẩm mượt, Đồng thời chứa đựng dưỡng</span></p>', 1350000, 'anh484.png', 50, 0, '2021-06-18 01:49:08', NULL),
(53, 58, 3, 'Tẩy trang dạng nước Ohui Miracle Moisture Cleansing Liquid', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml</strong>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nước tẩy trang dưỡng ẩm Ohui Miracle Moisture Cleansing Liquid không những giúp tẩy sạch lớp trang điểm, tẩy sạch các tế bào chết và các lớp sừng trên da. Đồng thời dòng sản phẩm này còn cung cấp độ ẩm, cân bằng độ PH và tái tạo làn da. Có khả năng gắn kết các tế bào sừng và protein trên da, tạo làn da căng mịn, rạng ngời. Được chiết xuất từ thành</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml</strong>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nước tẩy trang dưỡng ẩm Ohui Miracle Moisture Cleansing Liquid không những giúp tẩy sạch lớp trang điểm, tẩy sạch các tế bào chết và các lớp sừng trên da. Đồng thời dòng sản phẩm này còn cung cấp độ ẩm, cân bằng độ PH và tái tạo làn da. Có khả năng gắn kết các tế bào sừng và protein trên da, tạo làn da căng mịn, rạng ngời. Được chiết xuất từ thành</span></p>', 630000, 'anh559.png', 50, 0, '2021-06-18 01:50:27', NULL),
(54, 59, 3, 'Son Kem Mi Liquid Lip Rouge 6g', '<p><span style=\"font-size:14px\"><strong>Son Kem Mi Liquid Lip Rouge 6g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son kem cực bền mầu mang lại sắc môi rạng rỡ dầy sức sống căng dầy như ngậm nước và óng ánh như thủy tinh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Đặc&nbsp;Điểm&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>+ Dưỡng môi đông y</strong>: Cống thần bí đơn, tuần hoàn máu. làm sáng màu môi, loại bỏ độc tố , ngăn ngừa nếp nhăn và dưỡng ẩm môi giúp môi bóng khỏe</span></p>', '<p><span style=\"font-size:14px\"><strong>Son Kem Mi Liquid Lip Rouge 6g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son kem cực bền mầu mang lại sắc môi rạng rỡ dầy sức sống căng dầy như ngậm nước và óng ánh như thủy tinh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Đặc&nbsp;Điểm&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>+ Dưỡng môi đông y</strong>: Cống thần bí đơn, tuần hoàn máu. làm sáng màu môi, loại bỏ độc tố , ngăn ngừa nếp nhăn và dưỡng ẩm môi giúp môi bóng khỏe</span></p>', 882000, 'q199.png', 50, 0, '2021-06-18 01:52:11', NULL),
(55, 59, 3, 'Son nhung lì Whoo Velvet Lip Rouge Hoàng Cung', '<p><span style=\"font-size:14px\">The history of Whoo ra mắt TUYỆT PHẨM MỚI<br />\r\nDòng son Nhung Lì VELVET LIP ROUGE làm giàu thêm kho tàng điểm tô dung nhan từ Whoo với sắc son lộng lẫy, tông màu nổi bật sống động cùng chất son nhung lì thời thượng mang lại đôi môi nhung mềm quyến rũ đầy sức sống.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son Whoo Velvet Lip Rouge - SON WHOO HOÀNG CUNG CHUẨN LÌ SIÊU ĐẸP</span></p>', '<p><span style=\"font-size:14px\">The history of Whoo ra mắt TUYỆT PHẨM MỚI<br />\r\nDòng son Nhung Lì VELVET LIP ROUGE làm giàu thêm kho tàng điểm tô dung nhan từ Whoo với sắc son lộng lẫy, tông màu nổi bật sống động cùng chất son nhung lì thời thượng mang lại đôi môi nhung mềm quyến rũ đầy sức sống.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son Whoo Velvet Lip Rouge - SON WHOO HOÀNG CUNG CHUẨN LÌ SIÊU ĐẸP</span></p>', 882000, 'q277.png', 50, 0, '2021-06-18 01:53:02', NULL),
(56, 59, 3, 'Son Whoo Mi Luxury Lip Rouge', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 6g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mẫu&nbsp;<a href=\"http://ohuichinhhangvn.com/son-whoo-hoang-cung-luxury-lip-rouge-87728-1.html\">Son whoo Hoàng cung luxury Lip Rouge</a>&nbsp;mới ra mắt.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Thỏi này đúng chất \"vua chúa\" với thiết kế kiểu hoàng gia quý phái và sang trọng.<br />\r\n- Đây Là dòng Son chiết Xuất đông y HOÀN TOÀN K CÓ CHÌ, không&nbsp;độc hại, không&nbsp;gây thâm môi kể cả sử dụng cả ngày trong thời gian dài&nbsp;và độ dưỡng cao khiến cho đôi môi luôn mềm mại căng mọng hấp dẫn.</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 6g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mẫu&nbsp;<a href=\"http://ohuichinhhangvn.com/son-whoo-hoang-cung-luxury-lip-rouge-87728-1.html\">Son whoo Hoàng cung luxury Lip Rouge</a>&nbsp;mới ra mắt.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Thỏi này đúng chất \"vua chúa\" với thiết kế kiểu hoàng gia quý phái và sang trọng.<br />\r\n- Đây Là dòng Son chiết Xuất đông y HOÀN TOÀN K CÓ CHÌ, không&nbsp;độc hại, không&nbsp;gây thâm môi kể cả sử dụng cả ngày trong thời gian dài&nbsp;và độ dưỡng cao khiến cho đôi môi luôn mềm mại căng mọng hấp dẫn.<br />\r\nTrung hoa thuần khí đơn trong Whoo Mi Luxury Lipstick giúp cải thiện sắc môi u tối và cho màu sắc tự nhiên.<br />\r\nNgoài ra Yoonbigo còn giúp bổ sung độ ẩm, cải thiện sắc môi u tối và cho màu sắc tự nhiên, duy trì nếp môi láng mịn bao gồm: băng phong, cát cân, thược dược, cam thảo, hoàng kì, thăng mi, nhân sâm.</span></p>', 882000, 'q311.png', 50, 0, '2021-06-18 01:53:55', '2021-06-18 01:55:12'),
(57, 59, 3, 'Son dưỡng whoo Mi Glow lip Balm SPF10', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 3,3g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son dưỡng môi chống nắng Whoo Gongjinhyang Mi Glow Lip Balm SPF10 một sản phẩm dưỡng và kết hợp trang điểm. Với thành phần có nguồn gốc an toàn, sản phẩm phù hợp với nhiều đối tượng lứa tuổi khác nhau. Chỉ cần khách hàng có nhu cầu chăm sóc, bảo vệ đôi môi là đều có thể sử dụng sản phẩm này.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đặc biệt, vào thời điểm thời tiết hanh khô, việc dưỡng ẩm cho đôi môi là</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 3,3g</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son dưỡng môi chống nắng Whoo Gongjinhyang Mi Glow Lip Balm SPF10 một sản phẩm dưỡng và kết hợp trang điểm. Với thành phần có nguồn gốc an toàn, sản phẩm phù hợp với nhiều đối tượng lứa tuổi khác nhau. Chỉ cần khách hàng có nhu cầu chăm sóc, bảo vệ đôi môi là đều có thể sử dụng sản phẩm này.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đặc biệt, vào thời điểm thời tiết hanh khô, việc dưỡng ẩm cho đôi môi là điều mà lứa tuổi nào cũng muốn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Son dưỡng ẩm Hoàng cung Mi Glow Lip Balm có khả năng bổ sung ẩm và các dưỡng chất thiết yếu cho đôi môi, mang đến sự mềm mịn, căng mọng. Ngoài ra sản phẩm còn là lớp màng bảo vệ đôi môi khỏi những tác động xấu từ môi trường. Hạn chế tối đa dấu hiệu lão hóa trên đôi môi, nếp nhăn, vảy bong tróc đều được giải quyết nhanh chóng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Không chỉ là dưỡng môi, sản phẩm còn mang đến màu môi sáng hồng tự nhiên. Tạo nên sức quyến rũ tuyệt vời cho phái đẹp. Màu son hiện đại, trẻ trung hướng tới đa dạng đối tượng khách hàng.</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Ưu điểm của sản phẩm:</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Kết hợp 3 tính năng chỉ trong một sản phẩm: dưỡng ẩm, chống nắng và trang điểm. Thiết kế sản phẩm nhỏ gọn đầy tinh tế, tạo thuận lợi cho quá trình sử dụng và vận chuyển.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đặc biệt, sản phẩm có khả năng giữ ẩm, giữ màu lên tới 10 giờ. Điều mà ít sản phẩm trên thị trường hiện nay đạt được.</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Hướng dẫn sử dụng Son dưỡng môi chống nắng Whoo Gongjinhyang Mi Glow Lip Balm SPF10:</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Bước 1: Làm sạch môi trước khi sử dụng sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Bước 2: Vặn thân son để phần son màu nhô lên một mức vừa phải, tránh vặn son lên cao, dễ làm gãy son khi va chạm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Bước 3: Tô nhẹ son lên môi. Sau đó mím môi lại để màu son được trải đều và mịn hơn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Sản phẩm có 2 màu: Hồng (Pink) và Đỏ (Red)</strong></span></p>', 720000, 'q463.png', 50, 0, '2021-06-18 01:54:55', NULL);
INSERT INTO `tbl_products` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_quantity`, `product_status`, `created_at`, `updated_at`) VALUES
(58, 59, 3, 'Set kem trang điểm Hoàng Cung Whoo Mi Luxury BB Cream', '<p><span style=\"font-size:14px\">Set kem trang điểm Hoàng Cung&nbsp;<a href=\"https://www.facebook.com/hashtag/whoo_mi_luxury_bb_cream?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARBA-HPXanSTBUlJzYa0qoxsLOgs-vRcstxeaLaspIFP9S0a8NgBmKQqd1UjafOb7p24frhnuAVCyIT9KEkZWMF2Rqb_PGupUaqETJc0BF8lujvblmRR7yKSPauCvwRR3M_5fs5T5pwszv5uBVKZ246x_AePkfEI4yAsmtJpBzdnWTOQDkVjEZHMIrszAvOC2FpB_tkbDPSUAnVX6Bj3rCGNopRTYWOkpw72FqxD61dCyqPTRucKIimA1sYfx1MyTD1Xxf9zwuIKICePmS3BBJvbJ_kzfeVJnrqDiaEDQTY74w7zz55WtsvJveM2GQVXeDv7sXdjP-6K8De7qvHZpP4&amp;__tn__=%2ANK-R\">#Whoo_Mi_Luxury_BB_Cream</a></span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️Kem trang điểm tự nhiên giúp da bạn sáng trắng, hồng hào.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️BB Cream = kem lót + kem nền + che khuyết điểm + dưỡng ẩm+ chống nắng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️Không khó để bạn có thể tìm thấy những lời ca ngợi về vẻ đẹp tự nhiên, trong suốt, bóng khỏe, trang điểm mà như không trang điểm vì BB Cream thẩm thấu vào da bạn, tiệp với tông da bạn, cho da bạn vẻ đẹp tự nhiên,</span></p>', '<p><span style=\"font-size:14px\">Set kem trang điểm Hoàng Cung&nbsp;<a href=\"https://www.facebook.com/hashtag/whoo_mi_luxury_bb_cream?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARBA-HPXanSTBUlJzYa0qoxsLOgs-vRcstxeaLaspIFP9S0a8NgBmKQqd1UjafOb7p24frhnuAVCyIT9KEkZWMF2Rqb_PGupUaqETJc0BF8lujvblmRR7yKSPauCvwRR3M_5fs5T5pwszv5uBVKZ246x_AePkfEI4yAsmtJpBzdnWTOQDkVjEZHMIrszAvOC2FpB_tkbDPSUAnVX6Bj3rCGNopRTYWOkpw72FqxD61dCyqPTRucKIimA1sYfx1MyTD1Xxf9zwuIKICePmS3BBJvbJ_kzfeVJnrqDiaEDQTY74w7zz55WtsvJveM2GQVXeDv7sXdjP-6K8De7qvHZpP4&amp;__tn__=%2ANK-R\">#Whoo_Mi_Luxury_BB_Cream</a></span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️Kem trang điểm tự nhiên giúp da bạn sáng trắng, hồng hào.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️BB Cream = kem lót + kem nền + che khuyết điểm + dưỡng ẩm+ chống nắng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️Không khó để bạn có thể tìm thấy những lời ca ngợi về vẻ đẹp tự nhiên, trong suốt, bóng khỏe, trang điểm mà như không trang điểm vì BB Cream thẩm thấu vào da bạn, tiệp với tông da bạn, cho da bạn vẻ đẹp tự nhiên, thậm chí người khác đôi khi khó có thể nhận ra là bạn đang trang điểm.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️BB Cream hiện nay được sử dụng như một loại kem trang điểm hàng ngày, mang lại cho người sử dụng một vẻ đẹp tự nhiên, không như đang đeo trên mặt một lớp mặt nạ trang điểm, phù hợp với mọi loại da, đặc biệt là da nhạy cảm và bị mụn. BB Cream mang chức năng của các sản phẩm trang điểm và dưỡng da, bảo vệ da khỏi môi trường ô nhiễm, che phủ những vùng da có vấn đề đặc việt là vùng da có quầng thâm, mụn, sẹo, lỗ chân lông to, vết mẩn đỏ ...</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️BB cream vừa có dưỡng chất để được gọi là skincare, vừa có chức năng của một loại foundation thông thường, cung cấp độ che phủ khá cao để gọi nó là concealer như tên gọi của nó.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">▫️BB Cream còn có tác dụng trị mụn. Sử dụng BB Cream lâu dài thậm chí còn giúp cải thiện làn da, làm sáng tông màu da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Khách hàng rất lợi khi mua được tặng 2 cây son mini trị giá 600K</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp;Set đặc biệt gồm có</strong>:<br />\r\n▫️&nbsp;Kem BB Whoo Mi Luxury BB SPF20 trang điểm chống nắng - 45ml<br />\r\n▫️&nbsp;Son lì Hoàng cung màu đỏ cam<br />\r\n▫️&nbsp;Son bóng màu đỏ tươi</span></p>', 1125000, 'q545.png', 50, 0, '2021-06-18 01:56:09', NULL),
(59, 59, 3, 'Phấn nước trang điểm dưỡng trắng, chống nắng Mi Luxury Golden Cushion SPF50+/PA+++', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 15g + 15g (1 hộp + 1 lõi sơ cua)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohui.net.vn/\">Tổng quan</a>:&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Phấn nước trang điểm &nbsp;dưỡng trắng, chống nắng Mi Luxury Golden Cushion SPF50+/PA+++&nbsp;&nbsp;</strong>dưỡng trắng, cải thiện nếp nhăn, chống nắng với các thành phần Đông y giúp mang đến một làn da sáng và lộng lẫy nhờ các thành phần được thẩm thấu vào da ngay khi chạm vào. Sau khi dưỡng da, hãy thoa Luxury Golden Cushion và cảm nhận làn da ẩm mịn</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 15g + 15g (1 hộp + 1 lõi sơ cua)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohui.net.vn/\">Tổng quan</a>:&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Phấn nước trang điểm &nbsp;dưỡng trắng, chống nắng Mi Luxury Golden Cushion SPF50+/PA+++&nbsp;&nbsp;</strong>dưỡng trắng, cải thiện nếp nhăn, chống nắng với các thành phần Đông y giúp mang đến một làn da sáng và lộng lẫy nhờ các thành phần được thẩm thấu vào da ngay khi chạm vào. Sau khi dưỡng da, hãy thoa Luxury Golden Cushion và cảm nhận làn da ẩm mịn như vừa sử dụng dưỡng chất cùng với hiệu quả bám dính vượt trội.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Tính năng sản phẩm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Bước đột phá mới so với cushion đời trước là tính mỏng, mượt tự nhiên nhưng vẫn che được những khuyết điểm trên khuôn mặt tạo cho bạn một lớp trang điểm hoàn hảo.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Ưu điểm tiếp theo của Luxury Golden cushion là khả năng giữ ẩm tốt nên với mọi thời tiết thì làn da bạn vẫn mướt êm không có dấu hiệu của việc phai lớp trang điểm hoặc bị mốc khi mùa hanh khô tới. Các hạt nhũ ánh ngọc trai tạo hiệu ứng bắt sáng cho khuôn mặt giúp bạn nhẹ nhàng tỏa sáng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Thành phần dinh dưỡng có trong sản phẩm giúp chống lão hóa cho da, làm sáng da. Hơn nữa, sản phẩm có khả năng chống thấm nước cao, các bạn không cần lo lắng khi đi bơi hoặc vô tình gặp cơn mưa trên đường cũng không làm trôi lớp trang điểm đẹp trên khuôn mặt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Whoo đưa Gong JinhYang Mi Luxury Golden Cushion SPF50+/PA+++&nbsp;tự tin với độ chống nắng cao nên bạn không cần phải dùng thêm kem chống nắng nữa nhé.&nbsp;</span></p>', 1350000, 'c123.png', 50, 0, '2021-06-18 01:58:41', NULL),
(60, 59, 3, 'Set kem lót trang điểm Whoo Gongjinhyang Mi Essential Primer Base', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>SET KEM LÓT WHOO ĐÔNG Y HOÀNG CUNG.</strong><br />\r\n- Kem lót trang điểm Whoo Gongjinhyang Mi Essential Primer Base: 40ml<br />\r\nTặng kèm 2 son<br />\r\n- Son môi Whoo Gongjinhyang Mi Luxury Lip Rouge Royal Red ( màu 45 )<br />\r\n- Son dưỡng Whoo Gongjinhyang Mi Lip Balm red</span></p>', '<p><span style=\"font-size:14px\"><strong>SET KEM LÓT WHOO ĐÔNG Y HOÀNG CUNG.</strong><br />\r\n- Kem lót trang điểm Whoo Gongjinhyang Mi Essential Primer Base: 40ml<br />\r\nTặng kèm 2 son<br />\r\n- Son môi Whoo Gongjinhyang Mi Luxury Lip Rouge Royal Red ( màu 45 )<br />\r\n- Son dưỡng Whoo Gongjinhyang Mi Lip Balm red</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:14px\"><strong>CÔNG DỤNG</strong><br />\r\n- Whoo Essential Prime Base với độ bám tốt giúp che dấu các khuyết điểm tốt tạo tiền đề cho lớp make up hoàn hảo. Che dấu được các nếp nhăn nhỏ, lỗ chân lông to và khuyết điểm sẹo trên da. Đồng thời kem lót xanh Prime phù hợp với làn da dầu, nhờn, da thường.<br />\r\n- Mang đến cho bạn một tông màu da đồng đều. Kết hợp với màu son óng ánh. Cho lớp trang điểm đẹp và mịn màng<br />\r\n- Kem lót Whoo che phủ hoàn hảo các khuyết điểm trên khuôn mặt. Mang đến cho bạn một tông màu da đồng đều.<br />\r\n- Các thành phần thảo dược được chiết xuất từ thiên nhiên giúp làm dịu và mát da. Thân thiện với mọi làn da. Đồng thời, giải độc tố. Dưỡng da chống lại các tác động của môi trường<br />\r\n- Ngoài ra sản phẩm còn là lớp màng bảo vệ đôi môi khỏi những tác động xấu từ môi trường. Hạn chế tối đa dấu hiệu lão hóa trên đôi môi, nếp nhăn, vảy bong tróc đều được</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng:</strong><br />\r\nSau bước làm sạch da, lấy một lượng kem lót Kem lót trang điểm Whoo Gongjinhyang Mi Essential Makeup Base vừa đủ.<br />\r\nChấm đều lên các điểm trên khuôn mặt. Tán kem bằng bông/mút trang điểm đều lên da.</span></p>', 1170000, 'c297.png', 50, 0, '2021-06-18 02:00:11', '2021-06-18 02:00:24'),
(61, 33, 3, 'Kem dưỡng cấp nước Su:m37 Water Full Water Gel Cream', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng ẩm thường được sử dụng ở bước cuối cùng trong quy trình dưỡng da. Có rất nhiều loại kem dưỡng ẩm với chức năng khác nhau như: cấp nước, cấp ẩm, dưỡng trắng hay chống lão hoá. Tuỳ theo nhu cầu sử dụng mà bạn lựa chọn phù hợp để điều trị các vấn đề về da của mình.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng ẩm chống lão hoá nhờ các thành phần nghiên cứu đặc trị mà các chuyên gia nghiên cứu ra. Nước được đưa vào da và được giữ lại sâu</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng ẩm thường được sử dụng ở bước cuối cùng trong quy trình dưỡng da. Có rất nhiều loại kem dưỡng ẩm với chức năng khác nhau như: cấp nước, cấp ẩm, dưỡng trắng hay chống lão hoá. Tuỳ theo nhu cầu sử dụng mà bạn lựa chọn phù hợp để điều trị các vấn đề về da của mình.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng ẩm chống lão hoá nhờ các thành phần nghiên cứu đặc trị mà các chuyên gia nghiên cứu ra. Nước được đưa vào da và được giữ lại sâu trong các mô da.</span></p>\r\n\r\n<h2><span style=\"font-size:14px\">Giới thiệu:</span></h2>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng ẩm chống nhăn và lão hóa Su:m37 Water-full Timeless Water Gel Cream mang đến chất kem dưỡng dạng gel nhẹ rất phù hợp cho da thiếu nước vào mùa hè. Cùng với mùi thơm đặc trưng của sáp tre và hoa sen tây cực kỳ quyến rũ.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng nhanh chóng thẩm thấu vào da không để lại cảm giác bết dính. Cân bằng dầu trên da, đảm bảo độ mịn màng của da. Se khít lỗ chân lông và yên tâm ngồi điều hòa mà ko lo bị khô da.</span></p>', 1575000, 's170.png', 50, 0, '2021-06-18 02:01:58', NULL),
(62, 33, 3, 'Mặt nạ thải độc Su:m37 Bright Award Bubble De Mask Black', '<p><span style=\"font-size:14px\"><strong>Dung tích: 100ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mặt nạ thải độc Su:m37 Bright Award Bubble De Mask Black</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Giới thiệu:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguồn gốc của độc tố là các loại chất có hại như nước bị ô nhiễm, không khí ô nhiễm, các hóa chất từ dầu gội, xăng xe, khói bụi…mà chúng ta tiếp xúc hàng ngày. Ngày qua ngày dẫn đến tích tụ nhiều độc tố trên da. Nếu để lâu, các tác nhân này sẽ gây sạm đen, nổi mụn, nhăn nheo lão hóa</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 100ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mặt nạ thải độc Su:m37 Bright Award Bubble De Mask Black</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Giới thiệu:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Nguồn gốc của độc tố là các loại chất có hại như nước bị ô nhiễm, không khí ô nhiễm, các hóa chất từ dầu gội, xăng xe, khói bụi…mà chúng ta tiếp xúc hàng ngày. Ngày qua ngày dẫn đến tích tụ nhiều độc tố trên da. Nếu để lâu, các tác nhân này sẽ gây sạm đen, nổi mụn, nhăn nheo lão hóa sớm… Vì vậy quá trình thải độc cho da rất quan trọng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Công dụng: ( 4 trong 1)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Dưỡng trắng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Thải độc da qua lớp bọt mịn, làm sạch sâu lỗ chân lông.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+ Căng mềm mịn da và hồng hào.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">+<strong>&nbsp;</strong>Kiểm soát bã nhờn</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Loại mask tạo bọt thải độc sáng da của Su:m luôn đứng vị trí top sản phẩm bán chạy nhất của hãng, và đều có lý do của nó. Mask thải độc khi bôi lên da sẽ tạo bọt giải phóng oxygen vào trong da. Thấm sâu vào trong lỗ chân lông giúp đào thải chất bẩn ra ngoài. Làm cho làn da sáng hơn sau khi rửa sạch khỏi chất bọt mặt nạ.</span></p>', 990000, 's278.png', 50, 0, '2021-06-18 02:02:55', NULL),
(63, 33, 3, 'Kem dưỡng trắng Su:m37 White Award Ultimate Ampoule In Cream', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 45g</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong><br />\r\n<strong>Kem dưỡng trắng da&nbsp;<a href=\"http://ohui.net.vn/product/384/Kem-duong-trang-da-Sum37-White-Award-Ultimate-Whitening-Ampoule-in-Cream.html\">Su:m37</a>&nbsp;<a href=\"http://ohui.net.vn/product/384/Kem-duong-trang-da-Sum37-White-Award-Ultimate-Whitening-Ampoule-in-Cream.html\">White Award Ultimate Whitening Ampoule in Cream</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng&nbsp;trắng&nbsp;kết hợp với viên nang (capsule) chứa phức hợp đạm ngọc trai lên men cao nhất, cho sắc da sáng hơn gấp 2 lần và săn chắc từ</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung lượng: 45g</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong><br />\r\n<strong>Kem dưỡng trắng da&nbsp;<a href=\"http://ohui.net.vn/product/384/Kem-duong-trang-da-Sum37-White-Award-Ultimate-Whitening-Ampoule-in-Cream.html\">Su:m37</a>&nbsp;<a href=\"http://ohui.net.vn/product/384/Kem-duong-trang-da-Sum37-White-Award-Ultimate-Whitening-Ampoule-in-Cream.html\">White Award Ultimate Whitening Ampoule in Cream</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Kem dưỡng&nbsp;trắng&nbsp;kết hợp với viên nang (capsule) chứa phức hợp đạm ngọc trai lên men cao nhất, cho sắc da sáng hơn gấp 2 lần và săn chắc từ bên trong.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"http://ohui.net.vn/ctl/78/Sum-37-Duong-Trang-Da.html\"><strong>Su:m37&nbsp;</strong></a><a href=\"http://ohui.net.vn/ctl/78/Sum-37-Duong-Trang-Da.html\"><strong>White Award</strong></a>&nbsp;là dòng sản phẩm dưỡng trắng chứa phức hợp đạm ngọc trai lên men và thành phần độc quyền NAPS mang lại ánh sáng cho làn da, cải thiện làn da tối màu trở nên sáng trong và săn chắc.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Đặc Điểm:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;- Có hàm lượng protein ngọc trai vi mô lên men TM đậm đặc nhất và cho hiệu năng cao nhất dòng hàng White Award</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;- Thành phần bám dính tuyệt vời, thân thiện vượt trội với da</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;- Ứng dụng kỹ thuật độc quyền: Ampoul capsule chỉ tan chảy trong white Award cream</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;<br />\r\n<strong>Hướng dẫn sử dụng:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Trước khi sử dụng mở vỉ chứa đựng các viên nang tinh chất protein ngọc trai trộn vào hộp kem và khuấy đều 1 lần duy nhất cho các viên nang tan vào kem và sử dụng bình thường như các loại kem khác. dùng ở bước cuối cùng lấy lượng kem vừa đủ thoa lên các điểm trán, 2 gò má mũi, cằm rồi dàn trải đều ra khắp mặt.</span></p>\r\n\r\n<p>&nbsp;</p>', 2120000, 's363.png', 50, 0, '2021-06-18 02:04:27', NULL),
(64, 13, 3, 'Kem dưỡng da nâng cao độ đàn hồi, săn chắc Intensive Nutritive Cream', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohui.net.vn/\">Tổng quan mỹ phẩm whoo</a></strong><br />\r\n<strong>-&nbsp;&nbsp;</strong>Kem dưỡng Whoo vàng&nbsp;<strong>Intensive Nutritive Cream</strong>&nbsp;cô đặc tinh chất đông dược với hiệu năng của thành phần Cống thần đơn bí truyền trong cung và Đông trùng hạ thảo lên mem ở thể cứng được tối đa hoá giúp đem lại độ bóng mượt săn chắc cho da.<br />\r\n- Kem chăm sóc toàn mặt bổ sung ẩm và dưỡng chất từ sâu trong da giúp</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 50ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohui.net.vn/\">Tổng quan mỹ phẩm whoo</a></strong><br />\r\n<strong>-&nbsp;&nbsp;</strong>Kem dưỡng Whoo vàng&nbsp;<strong>Intensive Nutritive Cream</strong>&nbsp;cô đặc tinh chất đông dược với hiệu năng của thành phần Cống thần đơn bí truyền trong cung và Đông trùng hạ thảo lên mem ở thể cứng được tối đa hoá giúp đem lại độ bóng mượt săn chắc cho da.<br />\r\n- Kem chăm sóc toàn mặt bổ sung ẩm và dưỡng chất từ sâu trong da giúp nâng cao độ đàn hồi, trả lại các đường nét săn chắc cho khuôn mặt và đảm bảo độ ẩm mịn cho da<br />\r\n<strong>Đặc điểm:</strong><br />\r\nChứa thành phần bổ sung ẩm, cải thiện nếp nhăn, nâng cao độ đàn hồi cho da,&nbsp;&nbsp;tạo một lớp màng bảo vệ ngoài cùng cho làn da,&nbsp;hương thơm tao nhã giúp thư giãn tinh thần<br />\r\n<strong>Cách sử dụng:</strong><br />\r\nSau khi sử dụng kem mắt, lấy một lượng kem dưỡng toàn mặt vừa đủ chấm thành 5 điểm trên mặt và dàn trải đều trên bề mặt da Xoa 2 tay và áp vào da hoặc vỗ nhẹ các ngón tay theo chiều cấu tạo da để tăng độ thẩm thấu của sản phẩm</span></p>', 2880000, '127.png', 50, 0, '2021-06-18 02:06:57', NULL),
(65, 60, 3, 'Kem dưỡng tái sinh cao cấp Whoo Radiant Regenerating Cream', '<p><span style=\"font-size:14px\"><strong>Dung tích: 60ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Kem dưỡng Whoo tái sinh cao cấp Radiant Regenerating Cream bổ sung dưỡng chất bên trong và giúp sáng trắng bên ngoài làn da, mang lại hiệu quả đặc biệt cho làn da lão hoá. Đặc biệt sản phẩm Cream đem lại hiệu quả đặc biệt làm dịu nhẹ dòng chảy của sự lão hoá trên da và đem lại cảm giác sử dụng đáng kinh ngạc. Đó là khi thoa kem bạn cảm giác như tuyết</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 60ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohuixachtay.com.vn/\">Tổng quan</a>:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Kem dưỡng Whoo tái sinh cao cấp Radiant Regenerating Cream bổ sung dưỡng chất bên trong và giúp sáng trắng bên ngoài làn da, mang lại hiệu quả đặc biệt cho làn da lão hoá. Đặc biệt sản phẩm Cream đem lại hiệu quả đặc biệt làm dịu nhẹ dòng chảy của sự lão hoá trên da và đem lại cảm giác sử dụng đáng kinh ngạc. Đó là khi thoa kem bạn cảm giác như tuyết tan trên làn da của mình<br />\r\n- Cheongidan kết hợp với các thành phần cây hoàng kim, sâm núi ngọc châu và lộc nhung phần cốt giúp kiểm soát tận sâu bên trong da và đem lại ánh sáng tối ưu cho bề mặt da - Xoá mọi dấu vết thời gian và duy trì làn da trong sáng - Trải nghiệm Cheongidan bạn sẽ cảm nhận trọn vẹn nhất sự tươi sáng và tái sinh của làn da.</span></p>', 5850000, 'v65.png', 50, 0, '2021-06-18 02:14:52', NULL),
(66, 60, 3, 'Sữa rửa mặt tái sinh da Whoo Hwa Huyn Cleansing Foam', '<p><span style=\"font-size:14px\"><strong>Dung tích: 200ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohui.net.vn/\">Tổng quan</a>:&nbsp;</strong><br />\r\nSữa rửa mặt Whoo tái sinh Radiant Cleansing Foam cho da sáng mịn là sản phẩm sữa rửa mặt dưỡng cao cấp, không chỉ giúp làm da trắng mịn sạch mụn, mà còn tái sinh tận sâu bên trong mang lại làn da hồng hào, khỏe mạnh với các thành&nbsp;phần quý trong phương pháp Mỹ dung bí truyền của Từ Hy thái hậu, có tác dụng chống lão hóa và giảm mụn trên da như: sâm</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 200ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://ohui.net.vn/\">Tổng quan</a>:&nbsp;</strong><br />\r\nSữa rửa mặt Whoo tái sinh Radiant Cleansing Foam cho da sáng mịn là sản phẩm sữa rửa mặt dưỡng cao cấp, không chỉ giúp làm da trắng mịn sạch mụn, mà còn tái sinh tận sâu bên trong mang lại làn da hồng hào, khỏe mạnh với các thành&nbsp;phần quý trong phương pháp Mỹ dung bí truyền của Từ Hy thái hậu, có tác dụng chống lão hóa và giảm mụn trên da như: sâm núi, ngọc châu, lộc nhung, phấn cốt, và cây hoàng kim.</span></p>\r\n\r\n<p><strong style=\"font-size:14px\">Sản phẩm rất phù hợp với làn da mỏng manh nhạy cảm.</strong></p>', 1350000, 'vv29.png', 50, 0, '2021-06-18 02:15:54', NULL),
(67, 60, 3, 'Nước hoa hồng Whoo tái sinh Radiant Rejuvenating Balancer', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohui.net.vn/\">Tổng quan</a>:</strong><br />\r\nNước hoa hồng Whoo tái sinh Radiant Rejuvenating Balancer cô đặc được đun sôi ở nhiệt độ cao, giàu dưỡng chất mang lại ánh sáng tận sâu bên trong, cho làn da vẻ đẹp chống lại thời gian, cải thiện tình trạng khô da và sắc da.</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml.</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><a href=\"http://myphamohui.net.vn/\">Tổng quan</a>:</strong><br />\r\nNước hoa hồng Whoo tái sinh Radiant Rejuvenating Balancer cô đặc được đun sôi ở nhiệt độ cao, giàu dưỡng chất mang lại ánh sáng tận sâu bên trong, cho làn da vẻ đẹp chống lại thời gian, cải thiện tình trạng khô da và sắc da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Chi tiết về sản phẩm:</strong><br />\r\n-&nbsp; Đây là dòng sản phẩm tái sinh da Đông Y cao cấp, giúp tái sinh tận sâu bên trong và tươi sáng bên ngoài cho làn da, mang lại làn da hồng hào, khoẻ mạnh. Với những thành phần quý hiếm như:<br />\r\n- Thiên khí bí đơn phương pháp mỹ dung bí truyền của Từ Hy Thái Hậu gồm cây hoàng kim, sâm núi ngọc châu, lộc nhung phần cốt cộng thêm vào 26 thành phần bí quyết chi phối lục khí. Thiên khí bí đơn tác dụng làm da tươi sáng, bảo vệ da, tăng cường hệ miễn dịch, kháng viêm, chống ung thư và các bệnh về da. là loại cây bất tử \" sống ngàn năm, chết ngàn năm\"</span></p>\r\n\r\n<p><span style=\"font-size:14px\">- Sâm núi ngọc châu giúp bổ dưỡng cho da, tăng trưởng tế bào. là những hạt phát triển và bám trên rễ nhân sâm núi nhìn như viên ngọc, sâm núi có càng nhiều hạt càng quý - Lộc nhung phần cốt: Tạo huyết và tân dịch sâu trong da.<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Cách sử dụng :</strong><br />\r\nDùng miếng bông tẩy trang thấm qua nước lọc vắt ẩm sau đó đổ nước hoa hồng một lượng vừa đủ ra miếng bông trên rồi lau theo chiều cấu tạo da.</span></p>', 1980000, 'vvv44.png', 51, 0, '2021-06-18 02:16:53', NULL),
(68, 60, 3, 'Tinh chất vàng Whoo Cheogidan Radiant Regenerating Gold Concentrate', '<p><span style=\"font-size:14px\"><strong>Dung tích: 40ml</strong><br />\r\n<a href=\"http://myphamohui.net.vn/\"><strong>Tổng quan:</strong></a><br />\r\n- Tinh chất vàng Whoo Cheogidan Radiant Regenerating Gold Concentrate là sản phẩm mới mang tính chất đột phá của dòng Whoo tái sinh da cao cấp Cheongida&nbsp;Radiant, được coi là thần dược chữa trị nhiều vấn đề trên da như lỗ chân lông to, da nhạy cảm, ửng đỏ, da sạm màu và không đều</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích: 40ml</strong><br />\r\n<br />\r\n<a href=\"http://myphamohui.net.vn/\"><strong>Tổng quan:</strong></a><br />\r\n- Tinh chất vàng Whoo Cheogidan Radiant Regenerating Gold Concentrate là sản phẩm mới mang tính chất đột phá của dòng Whoo tái sinh da cao cấp Cheongida&nbsp;Radiant, được coi là thần dược chữa trị nhiều vấn đề trên da như lỗ chân lông to, da nhạy cảm, ửng đỏ, da sạm màu và không đều màu, mụn đỏ sưng tấy, ... Hiệu quả cảm nhận được rõ rệt chỉ ngay sau 1-2 lần sử dụng.&nbsp;<br />\r\n- Tinh chất vàng Whoo Cheogidan Radiant&nbsp;Regenerating Gold Concentrate&nbsp;được mệnh danh là \"thần dược\" dâng tặng cho làn da sức sống mạnh mẽ, đem lại sinh khí &amp; làn da sáng bóng, mịn mượt đáng ngạc nhiên chỉ sau lần sử dụng đầu tiên, thẩm thấu sâu và nhanh chỉ sau 3s sử dụng đầu tiên, có hiệu quả nhanh hơn bất kỳ loại kem dưỡng cao cấp nào khác.<br />\r\n- Được chiết xuất từ nhân sâm núi, vàng nguyên chất và nhiều thành phần đông y quý hiếm, sản phẩm giúp dưỡng phục hồi cho làn da hư tổn, giúp cải thiện da yếu, da hư tổn, da lão hóa cho bạn làn da sáng hồng căn mịn chỉ sau lần đầu sử dụng.<br />\r\n<strong>Hướng dẫn sử dụng:</strong>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Dùng sau khi rửa mặt sạch và thoa nước hoa hồng sau đó lấy lượng vừa đủ thoa lên mặt cho đến khi tinh chất thấm hết vào da.</span></p>', 6390000, 'vvvvv69.png', 50, 0, '2021-06-18 02:18:50', NULL),
(69, 60, 3, 'Mặt nạ vàng Cheongidan Radiant Regenerating Gold Concentrate Mask', '<p><span style=\"font-size:14px\"><strong>SET 30ml x 6 miếng</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Mặt nạ vàng Cheongidan Radiant Regenerating Gold Concentrate Mask - Mặt nạ tái sinh da cao cấp<br />\r\nChứa đựng trọn tinh hoa từ Tinh chất hoàng kim với thành phần từ sâm núi 36 năm tuổi từ nơi thung lũng cùng phân tử vàng 24K mang lại nguồn năng lượng dồi dào giúp giải độc &amp; thanh lọc, mang lại làn da trong suốt</span></p>', '<p><span style=\"font-size:14px\"><strong>SET 30ml x 6 miếng</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Mặt nạ vàng Cheongidan Radiant Regenerating Gold Concentrate Mask - Mặt nạ tái sinh da cao cấp<br />\r\nChứa đựng trọn tinh hoa từ Tinh chất hoàng kim với thành phần từ sâm núi 36 năm tuổi từ nơi thung lũng cùng phân tử vàng 24K mang lại nguồn năng lượng dồi dào giúp giải độc &amp; thanh lọc, mang lại làn da trong suốt láng mượt.&nbsp;</span></p>', 2970000, 'v161.png', 50, 0, '2021-06-18 02:21:18', NULL),
(70, 12, 3, 'TINH DẦU TÁI SINH NUÔI DƯỠNG TẾ BÀO MẦM THE FIRST GENITURE AMPOULE OIL 50ML', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>THE FIRST GENITURE AMPOULE OIL</strong><br />\r\n<strong>Thể tích:</strong>&nbsp;40ml<br />\r\n<strong>Dòng sản phẩm The First&nbsp;</strong>được chiết xuất kết hợp từ thành phần<strong>&nbsp;Hoa mẫu đơn</strong>: có tính chất tăng cường vi tuần hoàn, tác dụng chống oxy hóa &nbsp;tương tự như Vitamin E, giúp ngăn ngừa oxy hóa lipid trong tế bào biểu bì. Nhờ vậy chiết xuất hoa mẫu đơn sẽ giúp làm giảm các dấu hiệu lão hóa,</span></p>', '<p><span style=\"font-size:14px\"><strong>THE FIRST GENITURE AMPOULE OIL</strong><br />\r\n<strong>Thể tích:</strong>&nbsp;40ml<br />\r\n<strong>Dòng sản phẩm The First&nbsp;</strong>được chiết xuất kết hợp từ thành phần<strong>&nbsp;Hoa mẫu đơn</strong>: có tính chất tăng cường vi tuần hoàn, tác dụng chống oxy hóa &nbsp;tương tự như Vitamin E, giúp ngăn ngừa oxy hóa lipid trong tế bào biểu bì. Nhờ vậy chiết xuất hoa mẫu đơn sẽ giúp làm giảm các dấu hiệu lão hóa, giảm nếp nhăn trên khuôn mặt, sửa chữa và phục hồi các tế bào, làm mềm và làm trắng da.<br />\r\nĐặc biệt, sự kết hợp tối ưu với&nbsp;<strong>công nghệ tế bào gốc EGF/hGF™</strong>&nbsp;được cấp bằng sáng chế công nghệ tế bào gốc từ viện nghiên cứu toàn cầu nổi tiếng thế giới CHA Biotech thúc đẩy tế bào da hấp thụ chất dinh dưỡng giúp đẩy nhanh sự phát triển của tế bào trên da, giúp bảo vệ da khỏi các tác động từ bên ngoài, cải thiện độ đàn hồi của da như collagen và elastin, dưỡng ẩm làm da mềm mịn, làm trẻ hoá da, tái tạo tế bào chống lão hóa. Hơn hết, &nbsp;sản phẩm còn hỗ trợ việc điều trị nám, vết thâm sau mụn, làm da sáng hơn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Tinh dầu tái sinh tế bào mầm, nuôi dưỡng tế bào mầm, giúp tăng cường độ đàn hồi và săn chắc cho làn da&nbsp;<strong>The First Geniture Ampoule Oil&nbsp;</strong>dạng kết cấu mịn màng, dễ dàng hấp thụ sâu vào da, không gây cảm giác nhờn rít trên da, dễ dàng cũng cấp dưỡng chất phong phú để đạt hiệu quả nuôi dưỡng sâu từ trong tế bào da tốt nhất, cải thiện da lão hóa có tuổi.</span></p>', 3330000, 'o82.png', 50, 0, '2021-06-18 02:23:17', NULL),
(71, 12, 3, 'Sữa dưỡng tái sinh Ohui Thefirst 150ml', '<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nSữa dưỡng Ohui The First Emulsion hồi sinh giúp duy trì sự cân bằng độ dầu và nước lý tưởng cho da.&nbsp;Sản phẩm cải tiến với thành phần nuôi dưỡng, bảo vệ tế bào mầm. Cùng với hiệu quả dàn trải vượt trội sẽ dễ dàng dàn trải lên làn da, giúp da có sự đồng nhất và cân bằng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mô tả về sp Sữa Dưỡng:</strong><br />\r\nSữa dưỡng da cô đặc cao thuộc bước hoạt tính hoá tập trung của TFRS với</span></p>', '<p><span style=\"font-size:14px\"><a href=\"http://ohuixachtay.com.vn/\"><strong>Tổng quan mỹ phẩm Ohui</strong></a><br />\r\nSữa dưỡng Ohui The First Emulsion hồi sinh giúp duy trì sự cân bằng độ dầu và nước lý tưởng cho da.&nbsp;Sản phẩm cải tiến với thành phần nuôi dưỡng, bảo vệ tế bào mầm. Cùng với hiệu quả dàn trải vượt trội sẽ dễ dàng dàn trải lên làn da, giúp da có sự đồng nhất và cân bằng.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Mô tả về sp Sữa Dưỡng:</strong><br />\r\nSữa dưỡng da cô đặc cao thuộc bước hoạt tính hoá tập trung của TFRS với thành phần Stem SP đem lại độ sáng trong cho làn da cùng thành phần polysac charide polymers thiên thiên giống với da hình thành lớp màng giữ ẩm cho da với cảm giác mềm mịn thật mát và nhẹ nhàng, duy trì độ ẩm mịn và mềm mại cho da.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Dung tích : 150ml</strong></span></p>', 2340000, '1228.png', 51, 0, '2021-06-18 02:24:30', NULL),
(72, 13, 3, 'Kem Massage lộc nhung Whoo Nok Yong', '<p><span style=\"font-size:14px\"><strong>Dung tích:&nbsp;100ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Kem Massage Whoo Nok Yong&nbsp;</strong>&nbsp;có thành phần chính là lộc nhung quý hiếm, có tác dụng cung cấp các dưỡng chất thiết yếu cho làn da, mang lại làn da căng mịn và săn chắc ngay sau khi sử dụng. Đồng thời, sản phẩm còn cung cấp độ ẩm cho da, giúp da duy trì trạng thái tự nhiên trong thời gian dài. Thông qua những động tác massage, sản phẩm giúp làn da trở nên dễ chịu, bớt căng thẳng, đồng thời giúp tinh thần bạn luôn được thoài</span></p>', '<p><span style=\"font-size:14px\"><strong>Dung tích:&nbsp;100ml</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Kem Massage Whoo Nok Yong&nbsp;</strong>&nbsp;có thành phần chính là lộc nhung quý hiếm, có tác dụng cung cấp các dưỡng chất thiết yếu cho làn da, mang lại làn da căng mịn và săn chắc ngay sau khi sử dụng. Đồng thời, sản phẩm còn cung cấp độ ẩm cho da, giúp da duy trì trạng thái tự nhiên trong thời gian dài. Thông qua những động tác massage, sản phẩm giúp làn da trở nên dễ chịu, bớt căng thẳng, đồng thời giúp tinh thần bạn luôn được thoài mái. Hương thơm dịu nhẹ sẽ góp phẩn tạo nên cảm giác thư thái khi massage.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Thông tin chi tiết</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Dung tích: 100ml</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Xuất xứ: Hàn Quốc</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Hạn sử dụng: 36&nbsp;tháng</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Thích hợp với cả da nhạy cảm</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn sử dụng</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sau khi rửa mặt sạch, lấy một lượng kem vừa đủ chấm lên 5 điểm: trán, 2 gò má, cằm, đỉnh mũi, rồi từ từ massage theo chiều cấu tạo da khoảng 15 phút. Sau đó lau mặt bằng khăn ấm sạch, rồi lau lại bằng khăn lạnh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Hướng dẫn bảo quản</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Để nơi thoáng mát, tránh ánh nắng trực tiếp. Để xa tầm tay trẻ em.</span></p>', 1170000, '11151.png', 51, 0, '2021-06-18 02:25:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `created_at`, `updated_at`) VALUES
(36, 'Phạm Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-05-23 07:18:32', NULL),
(37, 'Vân Anh', 'Đại tập, khoái châu, hưng yên,', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-05-23 07:19:08', NULL),
(38, 'Nam Mítxx', 'Xóm 7 thông chi lăng', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-05-23 07:21:42', NULL),
(39, 'Nam Mít', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-05-23 09:41:27', NULL),
(40, 'Ngọc Namx', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Khong', '2021-05-26 14:04:21', NULL),
(41, 'Vân Anh', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-01 08:18:01', NULL),
(42, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Cps', '2021-06-01 08:41:16', NULL),
(43, 'Phạm Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-01 14:03:04', NULL),
(44, 'Phạm Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-02 00:27:34', NULL),
(45, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'jgffd', '2021-06-02 02:36:12', NULL),
(46, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'SAHD', '2021-06-11 14:30:54', NULL),
(47, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'không', '2021-06-15 07:46:05', NULL),
(48, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-15 09:09:55', NULL),
(49, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-15 09:11:20', NULL),
(50, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-15 09:11:20', NULL),
(51, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'asaas', '2021-06-18 07:08:23', NULL),
(52, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Khon', '2021-06-24 02:19:59', NULL),
(53, 'Ngọc Nam', 'Đại tập, khoái châu, hưng yên', '0367725188', 'phamngocnam0802@gmail.com', 'Không', '2021-06-25 03:47:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_models`
--
ALTER TABLE `order_models`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `tbl_bill_details`
--
ALTER TABLE `tbl_bill_details`
  ADD PRIMARY KEY (`bill_details_id`);

--
-- Chỉ mục cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_models`
--
ALTER TABLE `order_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_bill_details`
--
ALTER TABLE `tbl_bill_details`
  MODIFY `bill_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
