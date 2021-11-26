-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 04:21 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuctin`
--

CREATE TABLE `danhmuctin` (
  `idDanhMucTin` int(255) NOT NULL,
  `tenDanhMucTin` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuctin`
--

INSERT INTO `danhmuctin` (`idDanhMucTin`, `tenDanhMucTin`) VALUES
(1, 'Toàn cảnh nhật Bản'),
(2, 'Tin tức Việt Nhật'),
(3, 'Tin tức giải trí'),
(4, 'Du học Nhật Bản'),
(9, 'Tin Bà Tám');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idTinTuc` int(255) NOT NULL,
  `tenTinTuc` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `moTa` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhAnh` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `chiTiet` text COLLATE utf8_unicode_ci,
  `ngayDang` timestamp NULL DEFAULT NULL,
  `idDanhMucTin` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`idTinTuc`, `tenTinTuc`, `moTa`, `hinhAnh`, `chiTiet`, `ngayDang`, `idDanhMucTin`) VALUES
(1, 'Thị trấn truyền thống Uchiko – Nhật Bản', 'Thị trấn truyền thống của Uchiko được bao quanh bởi vẻ đẹp tự nhiên', 'hinh1.jpg', '(Dân trí) - Cần Thơ có thêm 1.310 F0 mới, nhiều tỉnh miền Tây ghi nhận ca nhiễm mới tăng cao. Bạc Liêu có 617 ca, Đồng Tháp ghi nhận 609 ca, Sóc Trăng có 532 ca', '2021-11-01 17:00:00', 1),
(2, 'Đền thiêng Sefa Utaki ở Okinawa', 'Sefa Utaki nằm ở phía đông nam của đảo Okinawa Honto', 'hinh2.jpg', '(Dân trí) - Cần Thơ có thêm 1.310 F0 mới, nhiều tỉnh miền Tây ghi nhận ca nhiễm mới tăng cao. Bạc Liêu có 617 ca, Đồng Tháp ghi nhận 609 ca, Sóc Trăng có 532 ca', '2017-05-16 17:00:00', 1),
(3, 'Cây cầu lớn Seto Naikai', 'Người ta có thể đáp xe lửa nhanh chóng', 'hinh3.jpg', '(Dân trí) - Cần Thơ có thêm 1.310 F0 mới, nhiều tỉnh miền Tây ghi nhận ca nhiễm mới tăng cao. Bạc Liêu có 617 ca, Đồng Tháp ghi nhận 609 ca, Sóc Trăng có 532 ca', NULL, 2),
(4, 'Những bảo tàng có một không hai ở Nhật Bản', 'Bảo tàng thuốc lá và muối hay bảo tàng Takoyaki chỉ là hai trong', 'hinh4.jpg', 'Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.', NULL, 3),
(5, 'Thiếu nữ Nhật Bản xinh tươi đón lễ Thành nhân', 'Lễ thành nhân – buổi lễ dành cho thanh niên bước sang tuổi 20 (tuổi trưởng thành tại Nhật Bản) – được coi là một trong những ngày lễ đặc biệt nhất tại đất nước Mặt trời mọc.', 'hinh5.jpg', 'Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.Trước đó, Tổng công ty này đã được Bộ Công an thông báo về việc gia tăng các hoạt động cướp biển ở khu vực Đông Nam Á thời gian qua. Cơ quan này lưu ý đã có sự gia tăng cả về số lượng lẫn tính chất các vụ việc liên quan đếncướp biển trong khu vực ASEAN. Cụ thể, trong 6 tháng đầu năm trong khu vực đã có 8 vụ cướp biển nhắm vào các tàu chở dầu, tăng 3 vụ so với cùng kỳ 2013.', NULL, 1),
(8, 'MỜI TẤT CẢ BẠN BÈ THAM GIA EVENT HOẶC LIKE FAN PAGE TRÊN FACEBOOK', 'Đáng buồn thay là Facebook không cho bạn select all toàn bộ bạn bè mà bạn phải chọn từng người một. Đứng ở góc cạnh nhà cung cấp dịch vụ, điều này là hoàn toàn hợp lý. Facebook không muốn bạn trở thành spammer.', '', 'Đáng buồn thay là Facebook không cho bạn select all toàn bộ bạn bè mà bạn phải chọn từng người một. Đứng ở góc cạnh nhà cung cấp dịch vụ, điều này là hoàn toàn hợp lý. Facebook không muốn bạn trở thành spammer.\r\n\r\nNhưng, đứng ở góc độ của một admin hoặc người tạo event thì select all lại là điều cần thiết. Tôi muốn tiết kiệm thời gian.\r\n\r\nVẬY LÀM THẾ NÀO ĐỂ SELECT ALL FRIENDS?\r\n\r\nCũng không khó khăn lắm, các bạn có thể làm theo các bước sau\r\n\r\nBước 1: Truy cập trang/event cần invite\r\n\r\nBước 2: Bấm Invite friends\r\n\r\nBước 3: Chờ cho cửa sổ Invite Friends hiện ra và kéo cái thanh cuộn xuống dưới cho đến khi nào hiện hết tất cả bạn bè của bạn.', NULL, 2),
(10, 'Thông xe nút giao rút ngắn đường vào cao tốc TP HCM - Long Thành', 'Nút giao đường cao tốc TP HCM - Long Thành - Dầu Giây với đường Vành đai II đã được thông xe sáng 29/8. Từ nay, các loại ôtô đều được phép chạy vào tuyến cao tốc này với lộ trình rút ngắn khoảng 4 km.', '', 'Nút giao đường cao tốc TP HCM - Long Thành - Dầu Giây với đường Vành đai II đã được thông xe sáng 29/8. Từ nay, các loại ôtô đều được phép chạy vào tuyến cao tốc này với lộ trình rút ngắn khoảng 4 km.Nút giao đường cao tốc TP HCM - Long Thành - Dầu Giây với đường Vành đai II đã được thông xe sáng 29/8. Từ nay, các loại ôtô đều được phép chạy vào tuyến cao tốc này với lộ trình rút ngắn khoảng 4 km.Nút giao đường cao tốc TP HCM - Long Thành - Dầu Giây với đường Vành đai II đã được thông xe sáng 29/8. Từ nay, các loại ôtô đều được phép chạy vào tuyến cao tốc này với lộ trình rút ngắn khoảng 4 km.', NULL, 2),
(12, 'Trung tâm mổ từ thiện làm chết 3 trẻ chưa được cấp phép', 'Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.', 'ong-Khue.jpg', 'Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.Trung tâm OSCA mổ từ thiện cho các trẻ hở hàm ếch làm 3 cháu tử vong chưa được cấp phép thực hiện phẫu thuật, trong đoàn bác sĩ từ thiện có người không chứng chỉ hành nghề.', NULL, 4),
(13, 'Thông xe nút giao rút ngắn đường vào cao tốc TP HCM - Long Thành', 'rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. ', 'huy-518304.jpg', 'rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. ', NULL, 3),
(14, 'sua- Học bổng và phí hỗ trợ cho sinh viên SMU', 'rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. ', 'huy-705072.png', 'rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. rường dành hơn 200 loại học bổng (có thể lên đến 100% học phí) cho sinh viên có trình độ học vấn nổi bật, nỗ lực học tập và xứng đáng với phần thưởng giá trị này. ', NULL, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  ADD PRIMARY KEY (`idDanhMucTin`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTinTuc`),
  ADD KEY `idDanhMucTin` (`idDanhMucTin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  MODIFY `idDanhMucTin` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idTinTuc` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`idDanhMucTin`) REFERENCES `danhmuctin` (`idDanhMucTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
