-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 08:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorcare`
--
CREATE DATABASE IF NOT EXISTS `doctorcare` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `doctorcare`;

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `introductionHTML` text DEFAULT NULL,
  `introductionMarkdown` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `address`, `phone`, `introductionHTML`, `introductionMarkdown`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Phòng Khám FreeD.O.M.', '123 Nguyễn Văn Linh, Quận 7, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 1234 5678', '<p>CHÚNG TÔI CUNG CẤP DỊCH VỤ NHA KHOA, NHÃN KHOA VÀ Y TẾ MIỄN PHÍ. Được tài trợ bởi Quỹ Bệnh viện Marion County, chúng tôi hỗ trợ những người không có bảo hiểm và bảo hiểm không đầy đủ. Sứ mệnh của chúng tôi là mang lại sức khỏe, hy vọng và sự chữa lành cho những người cần.</p>', 'CHÚNG TÔI CUNG CẤP DỊCH VỤ NHA KHOA, NHÃN KHOA VÀ Y TẾ MIỄN PHÍ. Được tài trợ bởi Quỹ Bệnh viện Marion County, chúng tôi hỗ trợ những người không có bảo hiểm và bảo hiểm không đầy đủ. Sứ mệnh của chúng tôi là mang lại sức khỏe, hy vọng và sự chữa lành cho những người cần.', 'COVID-19 và THỂ DỤC - Ben Marciano (CEO Zone Health & Fitness) phỏng vấn Bác sĩ Don Bovell (Phòng Khám FreeD.O.M.)', 'usa-az.jpg', '2020-11-13 19:44:36', '2020-11-13 20:44:20', NULL),
(2, 'Hệ Thống Phòng Khám Mayo', '32 Đường Chính Bắc, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 9876 5432', '<p>Câu hỏi về Dịch vụ Trực tuyến cho Bệnh nhân? Nếu bạn có bất kỳ câu hỏi nào hoặc gặp vấn đề khi truy cập cổng thông tin bệnh nhân của mình, vui lòng liên hệ Hỗ trợ Khách hàng Mayo Clinic tại số +84 28 9876 5432 từ thứ Hai đến thứ Sáu.</p>', 'Câu hỏi về Dịch vụ Trực tuyến cho Bệnh nhân? Nếu bạn có bất kỳ câu hỏi nào hoặc gặp vấn đề khi truy cập cổng thông tin bệnh nhân của mình, vui lòng liên hệ Hỗ trợ Khách hàng Mayo Clinic tại số +84 28 9876 5432 từ thứ Hai đến thứ Sáu.', 'Yêu cầu đặt lịch hẹn: Chúng tôi luôn ưu tiên sự an toàn của bệnh nhân và nhân viên. Các biện pháp phòng ngừa bổ sung đã được thực hiện tại tất cả các cơ sở để bảo vệ những người cần chăm sóc nhất trong thời gian này.', 'mayo-clinic-health-system.jpg', '2020-11-13 19:44:36', '2020-11-13 20:46:01', NULL),
(3, 'Phòng Khám Campbell Việt Nam', '456 Lê Lợi, Quận 3, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 4567 8901', '<p>Chúng tôi cung cấp các dịch vụ chăm sóc sức khỏe toàn diện với đội ngũ bác sĩ chuyên môn cao và trang thiết bị hiện đại.</p>', 'Chúng tôi cung cấp các dịch vụ chăm sóc sức khỏe toàn diện với đội ngũ bác sĩ chuyên môn cao và trang thiết bị hiện đại.', 'Chuyên về điều trị chỉnh hình và phục hồi chức năng với hơn 110 năm kinh nghiệm.', 'campbell-clinic.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL),
(4, 'Phòng Khám Stanton Road Việt Nam', '575 Đường Stanton, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 1122 3344', '<p>Phòng khám Stanton Road cung cấp dịch vụ y tế tiên tiến bao gồm chăm sóc ban đầu và chuyên khoa.</p>', 'Phòng khám Stanton Road cung cấp dịch vụ y tế tiên tiến bao gồm chăm sóc ban đầu và chuyên khoa.', 'Chúng tôi cam kết mang lại sức khỏe tốt nhất cho cộng đồng bằng cách cung cấp các dịch vụ y tế chất lượng cao.', 'cleveland-clinic-usa.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL),
(5, 'Phòng Khám Sức Khỏe & Phúc Lợi Việt Nam', '304 Nguyễn Huệ, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 2233 4455', '<p>Chúng tôi tập trung vào việc cải thiện sức khỏe tổng thể của bạn thông qua các dịch vụ y tế chuyên nghiệp.</p>', 'Chúng tôi tập trung vào việc cải thiện sức khỏe tổng thể của bạn thông qua các dịch vụ y tế chuyên nghiệp.', 'Cung cấp các giải pháp y tế hiện đại để đáp ứng nhu cầu đa dạng của bệnh nhân.', 'clinic-Ft-McCoy.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `doctorId`, `timeBooking`, `dateBooking`, `name`, `phone`, `content`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, 2, '08:00 - 09:00', '15/11/2020', 'A Lếch Xan Đơ', '0321456789', 'Rất hay, nhân văn, tôi đã khóc', 1, '2020-11-15 08:25:42', '2020-11-15 08:25:56', NULL),
(3, 2, '10:00 - 11:00', '15/11/2020', 'Ka Nê', '0321848484', 'Tuyệt đối điện ảnh 🙌', 1, '2020-11-15 08:28:51', '2020-11-15 08:28:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_users`
--

CREATE TABLE `doctor_users` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `clinicId` int(11) NOT NULL,
  `specializationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_users`
--

INSERT INTO `doctor_users` (`id`, `doctorId`, `clinicId`, `specializationId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 1, 1, '2020-11-13 19:46:18', '2020-11-13 19:46:18', NULL),
(2, 3, 3, 3, '2020-11-13 20:19:56', '2020-11-13 20:19:56', NULL),
(3, 4, 2, 7, '2020-11-13 20:20:15', '2020-11-13 20:20:15', NULL),
(4, 5, 5, 4, '2020-11-13 20:20:26', '2020-11-13 20:20:26', NULL),
(5, 6, 2, 2, '2020-11-13 20:20:38', '2020-11-14 19:49:26', NULL),
(6, 7, 3, 1, '2020-11-13 20:20:53', '2020-11-14 19:49:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extrainfos`
--

CREATE TABLE `extrainfos` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `historyBreath` text DEFAULT NULL,
  `placeId` int(11) DEFAULT NULL,
  `oldForms` text DEFAULT NULL,
  `sendForms` text DEFAULT NULL,
  `moreInfo` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `isSentForms` tinyint(1) NOT NULL DEFAULT 0,
  `isTakeCare` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `doctorId`, `statusId`, `name`, `phone`, `dateBooking`, `timeBooking`, `email`, `gender`, `year`, `address`, `description`, `isSentForms`, `isTakeCare`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 2, 1, 'Alex', '0321456789', '15/11/2020', '08:00 - 09:00', 'alex@gmail.com', 'male', '1998', 'usa', 'aaaaaaaaaaaaaaaaaa', 1, 0, '2020-11-14 20:20:18', '2020-11-14 20:22:14', NULL),
(5, 2, 1, 'Kane', '0321848484', '15/11/2020', '10:00 - 11:00', 'kane@gmail.com', 'male', '1997', 'usa', '', 0, 0, '2020-11-15 08:27:25', '2020-11-15 08:27:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Quận 1, TP.HCM', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Quận 3, TP.HCM', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Quận 10, TP.HCM', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Quận Tân Bình, TP.HCM', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Quận 7, TP.HCM', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contentMarkdown` text DEFAULT NULL,
  `contentHTML` text DEFAULT NULL,
  `forDoctorId` int(11) DEFAULT NULL,
  `forSpecializationId` int(11) DEFAULT NULL,
  `forClinicId` int(11) DEFAULT NULL,
  `writerId` int(11) NOT NULL,
  `confirmByDoctor` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, ' CHUYÊN KHOA: Tai Mũi Họng', '### Chuyên ngành Tai Mũi Họng (Otolaryngology)\r\n\r\n**Tai Mũi Họng (Otolaryngology)** là một chuyên ngành y học tập trung vào việc chẩn đoán và điều trị các vấn đề liên quan đến tai, mũi, họng, và vùng đầu cổ. Chuyên ngành này còn được gọi là *phẫu thuật đầu và cổ* (Otolaryngology-Head and Neck Surgery), vì các bác sĩ được đào tạo cả về y khoa và phẫu thuật.\r\n\r\nChuyên ngành Tai Mũi Họng có lịch sử từ thế kỷ 19, khi các bác sĩ nhận ra rằng vùng đầu và cổ chứa nhiều hệ thống liên kết phức tạp. Các kỹ thuật và công cụ đã được phát triển để khám và điều trị các vấn đề trong khu vực này, dẫn đến sự hình thành của chuyên ngành y khoa này.\r\n\r\n---\r\n\r\n### Bác sĩ Tai Mũi Họng điều trị những gì?\r\n\r\n- **Tai:** Điều trị y khoa và phẫu thuật các vấn đề như mất thính lực, nhiễm trùng tai, rối loạn cân bằng, ù tai (tinnitus), đau dây thần kinh, và các rối loạn dây thần kinh sọ. Ngoài ra, bác sĩ cũng xử lý các dị tật bẩm sinh ở tai ngoài và tai trong.\r\n  \r\n- **Mũi:** Chăm sóc khoang mũi và xoang là một trong những kỹ năng chính của bác sĩ Tai Mũi Họng. Bác sĩ chẩn đoán và điều trị viêm xoang, dị ứng, rối loạn khứu giác, polyp mũi, và tắc nghẽn mũi do vẹo vách ngăn. Phẫu thuật chỉnh hình mũi (rhinoplasty) cũng thuộc chuyên môn của họ.\r\n\r\n- **Họng:** Quản lý các bệnh lý liên quan đến thanh quản (hộp thoại) và đường tiêu hóa trên hoặc thực quản, bao gồm các rối loạn về giọng nói và nuốt.\r\n\r\n- **Đầu và cổ:** Điều trị các bệnh nhiễm trùng, khối u lành tính hoặc ác tính (ung thư), chấn thương mặt, và biến dạng khuôn mặt. Các bác sĩ cũng thực hiện phẫu thuật thẩm mỹ tái tạo vùng đầu cổ.\r\n\r\n---\r\n\r\n### Đào tạo bác sĩ Tai Mũi Họng tại Việt Nam\r\n\r\nTại Việt Nam, bác sĩ Tai Mũi Họng phải hoàn thành chương trình đào tạo y khoa cơ bản từ 6 năm tại các trường đại học y uy tín như Đại học Y Dược TP.HCM hoặc Đại học Y Hà Nội. Sau đó, họ tiếp tục học chuyên sâu từ 2 đến 4 năm để nhận chứng chỉ chuyên khoa Tai Mũi Họng. Một số bác sĩ còn tham gia các khóa đào tạo quốc tế để nâng cao tay nghề trong phẫu thuật nội soi xoang hoặc phẫu thuật đầu cổ.\r\n\r\n---\r\n\r\n### Các bệnh viện hàng đầu về Tai Mũi Họng tại Việt Nam\r\n\r\n1. **Bệnh viện Tai Mũi Họng Trung Ương (Hà Nội):** Đây là cơ sở hàng đầu về khám chữa bệnh Tai Mũi Họng với đội ngũ bác sĩ giàu kinh nghiệm.\r\n2. **Bệnh viện Đại học Y Dược TP.HCM:** Nổi tiếng với các kỹ thuật tiên tiến trong phẫu thuật nội soi xoang.\r\n3. **Bệnh viện Vinmec Đà Nẵng:** Cung cấp dịch vụ chăm sóc sức khỏe cao cấp với trang thiết bị hiện đại.\r\n4. **Bệnh viện Gia Định (TP.HCM):** Chuyên điều trị các bệnh lý phổ biến như viêm xoang mãn tính, viêm amidan.\r\n\r\n---\r\n\r\n### Vai trò của bác sĩ Tai Mũi Họng\r\n\r\nBác sĩ Tai Mũi Họng đóng vai trò quan trọng trong việc cải thiện chất lượng cuộc sống của bệnh nhân thông qua việc chẩn đoán chính xác và điều trị hiệu quả các vấn đề liên quan đến tai, mũi, họng. Với sự phát triển của công nghệ y tế tại Việt Nam, ngành Tai Mũi Họng đã đạt được nhiều thành tựu đáng kể trong việc chăm sóc sức khỏe cộng đồng.\r\n', '<h4 id=\"whatisotolaryngology\">Tai Mũi Họng là gì?</h4>\r\n<p>Chuyên ngành Tai Mũi Họng là một chuyên ngành y học tập trung vào việc chẩn đoán và điều trị các vấn đề liên quan đến tai, mũi, và họng. Chuyên ngành này còn được gọi là phẫu thuật đầu và cổ (Otolaryngology-Head and Neck Surgery) vì các bác sĩ được đào tạo cả về y khoa và phẫu thuật. Bác sĩ Tai Mũi Họng thường được gọi là bác sĩ chuyên khoa Tai Mũi Họng hoặc ENT.</p>\r\n<p>Chuyên ngành này có lịch sử từ thế kỷ 19, khi các bác sĩ nhận ra rằng vùng đầu và cổ chứa nhiều hệ thống liên kết phức tạp. Các bác sĩ đã phát triển kỹ thuật và công cụ để khám và điều trị các vấn đề trong khu vực này, dẫn đến sự hình thành của chuyên ngành y học này. Theo Hiệp hội Tai Mũi Họng Hoa Kỳ, đây là một trong những chuyên ngành lâu đời nhất tại Mỹ.</p>\r\n<p>Bác sĩ Tai Mũi Họng khác với nhiều bác sĩ khác ở chỗ họ được đào tạo để thực hiện nhiều loại phẫu thuật trên các mô nhạy cảm và phức tạp của vùng đầu và cổ.</p>\r\n<p>Bác sĩ Tai Mũi Họng điều trị những gì?</p>\r\n<ul>\r\n<li><strong>Tai:</strong> Bác sĩ Tai Mũi Họng được đào tạo để điều trị y khoa và phẫu thuật các vấn đề như mất thính lực, nhiễm trùng tai, rối loạn cân bằng, ù tai (tinnitus), đau dây thần kinh, và các rối loạn dây thần kinh sọ. Họ cũng xử lý các dị tật bẩm sinh ở tai ngoài và tai trong.</li>\r\n<li><strong>Mũi:</strong> Chăm sóc khoang mũi và xoang là một trong những kỹ năng chính của bác sĩ Tai Mũi Họng. Họ chẩn đoán, quản lý và điều trị dị ứng, viêm xoang, rối loạn khứu giác, polyp mũi, và tắc nghẽn mũi do vẹo vách ngăn. Ngoài ra, họ có thể thực hiện phẫu thuật chỉnh hình mũi (rhinoplasty).</li>\r\n<li><strong>Họng:</strong> Bác sĩ Tai Mũi Họng có chuyên môn trong việc quản lý các bệnh về thanh quản (hộp thoại) và đường tiêu hóa trên hoặc thực quản, bao gồm các rối loạn về giọng nói và nuốt.</li>\r\n<li><strong>Đầu và cổ:</strong> Trong vùng đầu và cổ, bác sĩ Tai Mũi Họng được đào tạo để điều trị các bệnh nhiễm trùng, khối u lành tính hoặc ác tính (ung thư), chấn thương mặt, và biến dạng khuôn mặt. Họ thực hiện cả phẫu thuật thẩm mỹ tái tạo và chỉnh hình.</li>\r\n</ul>\r\n<p>Bác sĩ Tai Mũi Họng được đào tạo như thế nào?</p>\r\n<p>Tại Việt Nam, bác sĩ chuyên khoa Tai Mũi Họng cần hoàn thành chương trình đào tạo y khoa cơ bản từ 6 năm tại các trường đại học y uy tín như Đại học Y Dược TP.HCM hoặc Đại học Y Hà Nội. Sau đó, họ tiếp tục học chuyên sâu từ 2 đến 4 năm để nhận chứng chỉ chuyên khoa Tai Mũi Họng. Một số bác sĩ còn tham gia các khóa đào tạo quốc tế để nâng cao tay nghề trong phẫu thuật nội soi xoang hoặc phẫu thuật đầu cổ.</p>\r\n', -1, 1, -1, 1, NULL, NULL, '2020-11-13 20:29:11', '2020-11-13 20:35:21', NULL),
(2, 'CHUYÊN KHOA: Phẫu thuật thần kinh', '**Phẫu thuật thần kinh** là chuyên ngành y học tập trung vào **các bệnh lý, chấn thương hoặc dị tật** của hệ thần kinh trung ương và ngoại biên, đặc biệt là điều trị bằng phương pháp phẫu thuật. Các bệnh lý thuộc chuyên môn của bác sĩ phẫu thuật thần kinh có thể rất đa dạng, bao gồm các vấn đề liên quan đến cột sống hoặc vùng đầu và não - tất cả đều thuộc hệ thần kinh trung ương (CNS). Hệ thần kinh ngoại biên bao gồm các đường dẫn truyền thần kinh chạy qua mọi vùng trên cơ thể từ tủy sống. Chính vì vậy, phẫu thuật thần kinh được chia thành hai lĩnh vực chính:\r\n\r\n1. **Phẫu thuật cột sống thần kinh:**  \r\n   Trong lĩnh vực này, các chẩn đoán phổ biến nhất cần can thiệp phẫu thuật bao gồm khối u trong tủy sống và chấn thương tủy sống. Thoát vị đĩa đệm cũng là một trong những bệnh lý thường gặp.\r\n\r\n2. **Phẫu thuật vùng đầu và não:**  \r\n   Các bệnh lý hoặc chấn thương thường được điều trị trong lĩnh vực này bao gồm xuất huyết não, khối u hoặc tắc nghẽn mạch máu trong não. Ngoài ra, nó còn bao gồm tất cả các loại chấn thương sọ não - và không thể thiếu bệnh lý não úng thủy (hydrocephalus).\r\n\r\nNgoài ra, **rối loạn chức năng hệ thần kinh** cũng thường thuộc chuyên môn của bác sĩ phẫu thuật thần kinh, chẳng hạn như rối loạn vận động, động kinh hoặc các cơn đau không rõ nguyên nhân.\r\n', '<p>Phẫu thuật thần kinh liên quan đến <strong>các bệnh lý, chấn thương hoặc dị tật</strong> của hệ thần kinh trung ương và ngoại biên - đặc biệt là điều trị bằng phương pháp phẫu thuật. Các bệnh lý thuộc chuyên môn của bác sĩ phẫu thuật thần kinh có thể rất đa dạng: Chúng ảnh hưởng đến cột sống hoặc vùng đầu và não, tất cả đều thuộc hệ thần kinh trung ương (CNS). Hệ thần kinh ngoại biên bao gồm các đường dẫn truyền thần kinh chạy qua mọi vùng trên cơ thể từ tủy sống. Chính vì vậy, phẫu thuật thần kinh được chia thành hai lĩnh vực chính:</p>\r\n<ol>\r\n<li><strong>Phẫu thuật cột sống thần kinh:</strong> Trong lĩnh vực này, các chẩn đoán phổ biến nhất cần can thiệp phẫu thuật bao gồm khối u trong tủy sống và chấn thương tủy sống. Thoát vị đĩa đệm cũng là một trong những bệnh lý thường gặp.</li>\r\n<li><strong>Phẫu thuật vùng đầu và não:</strong> Các bệnh lý hoặc chấn thương thường được điều trị trong lĩnh vực này bao gồm xuất huyết não, khối u hoặc tắc nghẽn mạch máu trong não. Ngoài ra, nó còn bao gồm tất cả các loại chấn thương sọ não - và không thể thiếu bệnh lý não úng thủy (hydrocephalus).</li>\r\n</ol>\r\n<p>Bên cạnh đó, <strong>rối loạn chức năng hệ thần kinh</strong> cũng thường thuộc chuyên môn của bác sĩ phẫu thuật thần kinh, chẳng hạn như rối loạn vận động, động kinh hoặc các cơn đau không rõ nguyên nhân.</p>\r\n', -1, 2, -1, 1, NULL, NULL, '2020-11-13 20:36:34', '2020-11-13 20:39:00', NULL),
(3, 'CHUYÊN KHOA : PHẪU THUẬT', '### Các chuyên ngành phẫu thuật\r\n\r\nHiệp hội Phẫu thuật Hoa Kỳ (American College of Surgeons) công nhận 14 chuyên ngành phẫu thuật, bao gồm: phẫu thuật tim lồng ngực, phẫu thuật đại trực tràng, phẫu thuật tổng quát, sản phụ khoa, ung thư phụ khoa, phẫu thuật thần kinh, phẫu thuật mắt, phẫu thuật miệng và hàm mặt, phẫu thuật chỉnh hình, tai mũi họng, phẫu thuật nhi khoa, phẫu thuật thẩm mỹ và hàm mặt, tiết niệu, và phẫu thuật mạch máu. Dưới đây là thông tin chi tiết về các chuyên ngành này.\r\n\r\n---\r\n\r\n### Phẫu thuật tổng quát\r\n\r\n**Phẫu thuật tổng quát** là một chuyên ngành y học tập trung vào việc quản lý một loạt các tình trạng cần can thiệp phẫu thuật ở hầu hết các khu vực trên cơ thể. Bác sĩ phẫu thuật tổng quát chịu trách nhiệm chẩn đoán bệnh, cung cấp chăm sóc trước mổ, trong mổ và sau mổ cho bệnh nhân. Họ thường đảm nhận việc quản lý toàn diện cho bệnh nhân bị chấn thương hoặc bệnh nhân nguy kịch.\r\n\r\nTrong ít nhất 5 năm đào tạo sau khi hoàn thành bằng y khoa, bác sĩ phẫu thuật tổng quát được trang bị kiến thức và kỹ năng kỹ thuật để xử lý các tình trạng y khoa liên quan đến đầu và cổ, vú, da và mô mềm, thành bụng, chi dưới và trên, cũng như hệ tiêu hóa, mạch máu và nội tiết.\r\n\r\n---\r\n\r\n### Các chuyên ngành khác\r\n\r\n1. **Phẫu thuật đại trực tràng:** Điều trị các vấn đề liên quan đến ruột già, trực tràng và hậu môn như ung thư đại trực tràng hoặc bệnh viêm ruột.\r\n2. **Phẫu thuật thần kinh:** Tập trung vào điều trị các rối loạn hệ thần kinh trung ương và ngoại biên như khối u não hoặc thoát vị đĩa đệm.\r\n3. **Phẫu thuật mắt:** Chẩn đoán và điều trị các vấn đề về mắt như đục thủy tinh thể hoặc bệnh tăng nhãn áp.\r\n4. **Phẫu thuật chỉnh hình:** Điều trị các bệnh lý liên quan đến hệ cơ xương khớp như gãy xương hoặc thoái hóa khớp.\r\n5. **Tai Mũi Họng:** Chuyên về điều trị các vấn đề liên quan đến tai, mũi, họng như viêm xoang hoặc mất thính lực.\r\n6. **Phẫu thuật thẩm mỹ:** Tập trung vào tái tạo hoặc cải thiện hình dáng cơ thể như nâng mũi hoặc tái tạo vú sau ung thư.\r\n\r\n---\r\n\r\n### Đào tạo bác sĩ phẫu thuật tại Việt Nam\r\n\r\nTại Việt Nam, bác sĩ phẫu thuật phải hoàn thành chương trình đào tạo y khoa cơ bản từ 6 năm tại các trường đại học y uy tín như Đại học Y Hà Nội hoặc Đại học Y Dược TP.HCM. Sau đó, họ tiếp tục học chuyên sâu từ 3 đến 5 năm trong chương trình nội trú để nhận chứng chỉ chuyên ngành. Một số bác sĩ còn tham gia các khóa đào tạo quốc tế để nâng cao tay nghề trong lĩnh vực phức tạp như phẫu thuật thần kinh hoặc tim mạch.\r\n\r\n---\r\n\r\n### Vai trò của bác sĩ phẫu thuật\r\n\r\nBác sĩ phẫu thuật đóng vai trò quan trọng trong việc cứu sống và cải thiện chất lượng cuộc sống của bệnh nhân thông qua các phương pháp điều trị tiên tiến. Với sự phát triển của công nghệ y tế tại Việt Nam, ngành phẫu thuật đã đạt được nhiều thành tựu đáng kể trong việc chăm sóc sức khỏe cộng đồng.\r\n\r\n', '<p>Các chuyên ngành phẫu thuật là gì?</p>\r\n<p>Hiệp hội Phẫu thuật Hoa Kỳ (American College of Surgeons) công nhận 14 chuyên ngành phẫu thuật, bao gồm: phẫu thuật tim lồng ngực, phẫu thuật đại trực tràng, phẫu thuật tổng quát, sản phụ khoa, ung thư phụ khoa, phẫu thuật thần kinh, phẫu thuật mắt, phẫu thuật miệng và hàm mặt, phẫu thuật chỉnh hình, tai mũi họng, phẫu thuật nhi khoa, phẫu thuật thẩm mỹ và hàm mặt, tiết niệu và phẫu thuật mạch máu. Thông tin dưới đây trình bày chi tiết về các chuyên ngành này. Tài liệu được điều chỉnh từ định nghĩa của cơ quan uy tín quốc gia về chủ đề này là <a href=\"http://www.abms.org/\" title=\"American Board of Medical Specialties (ABMS)\">Hội đồng Chuyên ngành Y khoa Hoa Kỳ (ABMS)</a> và các hội đồng chuyên ngành phẫu thuật được công nhận.</p>\r\n<p>Phẫu thuật tổng quát</p>\r\n<p>Bác sĩ phẫu thuật tổng quát là chuyên gia được đào tạo để xử lý một loạt các tình trạng cần can thiệp phẫu thuật ở hầu hết các khu vực trên cơ thể. Bác sĩ chịu trách nhiệm chẩn đoán bệnh, cung cấp chăm sóc trước mổ, trong mổ và sau mổ cho bệnh nhân. Họ thường đảm nhận việc quản lý toàn diện cho bệnh nhân bị chấn thương hoặc bệnh nhân nguy kịch.</p>\r\n<p>Trong ít nhất 5 năm đào tạo sau khi hoàn thành bằng y khoa, bác sĩ phẫu thuật tổng quát được trang bị kiến thức và kỹ năng kỹ thuật để xử lý các tình trạng y khoa liên quan đến đầu và cổ, vú, da và mô mềm, thành bụng, chi dưới và trên, cũng như hệ tiêu hóa, mạch máu và nội tiết.</p>\r\n', -1, 3, -1, 1, NULL, NULL, '2020-11-13 20:38:04', '2020-11-13 20:38:43', NULL),
(4, 'Doctor - Thắn Đường', '<h3 id=\"specialistincosmeticsurgery\">Chuyên gia trong phẫu thuật thẩm mỹ</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Cosmetic_surgery\" title=\"Cosmetic surgery\">Phẫu thuật thẩm mỹ</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ phẫu thuật thẩm mỹ* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Cosmetic_surgery\" title=\"Cosmetic surgery\">phẫu thuật thẩm mỹ</a>, bao gồm các chuyên ngành như phẫu thuật chỉnh hình, tái tạo hoặc làm đẹp. Bác sĩ phẫu thuật thẩm mỹ tại Việt Nam tập trung vào việc cải thiện hoặc tái tạo vẻ đẹp cơ thể thông qua các thủ thuật phẫu thuật hoặc không phẫu thuật.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật thẩm mỹ. Tại Việt Nam, bác sĩ phẫu thuật thẩm mỹ thường làm việc tại các bệnh viện lớn như Bệnh viện Chợ Rẫy, Bệnh viện Đại học Y Dược TP.HCM, hoặc các trung tâm chuyên về thẩm mỹ như Bệnh viện Thẩm mỹ Kangnam. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều loại hình phẫu thuật từ nâng mũi, căng da mặt đến hút mỡ.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật thẩm mỹ ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện và trung tâm thẩm mỹ lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy nội soi, laser, và hệ thống phòng mổ vô trùng.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ phẫu thuật thẩm mỹ</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thẩm mỹ thường được hiểu là những người trực tiếp thực hiện các thủ thuật xâm lấn để cải thiện vẻ đẹp cơ thể.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật thẩm mỹ đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện hoặc trung tâm chuyên về làm đẹp.</p>\r\n', '<h3 id=\"specialistincosmeticsurgery\">Chuyên gia trong phẫu thuật thẩm mỹ</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Cosmetic_surgery\" title=\"Cosmetic surgery\">Phẫu thuật thẩm mỹ</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ phẫu thuật thẩm mỹ* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Cosmetic_surgery\" title=\"Cosmetic surgery\">phẫu thuật thẩm mỹ</a>, bao gồm các chuyên ngành như phẫu thuật chỉnh hình, tái tạo hoặc làm đẹp. Bác sĩ phẫu thuật thẩm mỹ tại Việt Nam tập trung vào việc cải thiện hoặc tái tạo vẻ đẹp cơ thể thông qua các thủ thuật phẫu thuật hoặc không phẫu thuật.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật thẩm mỹ. Tại Việt Nam, bác sĩ phẫu thuật thẩm mỹ thường làm việc tại các bệnh viện lớn như Bệnh viện Chợ Rẫy, Bệnh viện Đại học Y Dược TP.HCM, hoặc các trung tâm chuyên về thẩm mỹ như Bệnh viện Thẩm mỹ Kangnam. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều loại hình phẫu thuật từ nâng mũi, căng da mặt đến hút mỡ.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật thẩm mỹ ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện và trung tâm thẩm mỹ lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy nội soi, laser, và hệ thống phòng mổ vô trùng.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ phẫu thuật thẩm mỹ</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thẩm mỹ thường được hiểu là những người trực tiếp thực hiện các thủ thuật xâm lấn để cải thiện vẻ đẹp cơ thể.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật thẩm mỹ đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện hoặc trung tâm chuyên về làm đẹp.</p>\r\n', 4, -1, -1, 1, NULL, NULL, '2020-11-13 20:58:42', '2020-11-13 20:59:36', NULL),
(5, 'Doctor - Trịnh Trần Phương Hướng', '<h3 id=\"specialistinentearnoseandthroat\">Chuyên gia Tai Mũi Họng</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Otorhinolaryngology\" title=\"Otorhinolaryngology\">Tai Mũi Họng</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ chuyên khoa Tai Mũi Họng* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Otorhinolaryngology\" title=\"Otorhinolaryngology\">Tai Mũi Họng</a>, bao gồm các chuyên ngành như điều trị bệnh lý về tai, mũi, họng, thanh quản, và các vấn đề liên quan đến đầu và cổ. Các bác sĩ chuyên khoa này tập trung vào việc chẩn đoán và điều trị các bệnh lý như viêm xoang, viêm tai giữa, mất thính lực, hoặc các vấn đề về giọng nói.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ Tai Mũi Họng. Tại Việt Nam, bác sĩ Tai Mũi Họng thường làm việc tại các bệnh viện lớn như Bệnh viện Tai Mũi Họng Trung Ương, Bệnh viện Chợ Rẫy, hoặc các phòng khám chuyên khoa Tai Mũi Họng. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều thủ thuật như nội soi tai mũi họng, phẫu thuật chỉnh hình mũi hoặc điều trị các bệnh lý phức tạp.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ Tai Mũi Họng ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy nội soi hiện đại, hệ thống phòng mổ vô trùng và các thiết bị hỗ trợ thính lực.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Tai Mũi Họng</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ Tai Mũi Họng” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ Tai Mũi Họng thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến tai, mũi và họng.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ Tai Mũi Họng đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa.</p>\r\n', '<h3 id=\"specialistinentearnoseandthroat\">Chuyên gia Tai Mũi Họng</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Otorhinolaryngology\" title=\"Otorhinolaryngology\">Tai Mũi Họng</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ chuyên khoa Tai Mũi Họng* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Otorhinolaryngology\" title=\"Otorhinolaryngology\">Tai Mũi Họng</a>, bao gồm các chuyên ngành như điều trị bệnh lý về tai, mũi, họng, thanh quản, và các vấn đề liên quan đến đầu và cổ. Các bác sĩ chuyên khoa này tập trung vào việc chẩn đoán và điều trị các bệnh lý như viêm xoang, viêm tai giữa, mất thính lực, hoặc các vấn đề về giọng nói.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ Tai Mũi Họng. Tại Việt Nam, bác sĩ Tai Mũi Họng thường làm việc tại các bệnh viện lớn như Bệnh viện Tai Mũi Họng Trung Ương, Bệnh viện Chợ Rẫy, hoặc các phòng khám chuyên khoa Tai Mũi Họng. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều thủ thuật như nội soi tai mũi họng, phẫu thuật chỉnh hình mũi hoặc điều trị các bệnh lý phức tạp.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ Tai Mũi Họng ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy nội soi hiện đại, hệ thống phòng mổ vô trùng và các thiết bị hỗ trợ thính lực.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Tai Mũi Họng</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ Tai Mũi Họng” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ Tai Mũi Họng thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến tai, mũi và họng.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ Tai Mũi Họng đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa.</p>\r\n', 2, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:19', '2020-11-13 21:00:19', NULL),
(6, 'Doctor - Trần Bác Ái', '<h3 id=\"specialistinsurgery\">Chuyên gia trong phẫu thuật</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">Phẫu thuật</a></p>\r\n<p>Ở Việt Nam, thuật ngữ *bác sĩ phẫu thuật* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">phẫu thuật</a>, bao gồm các chuyên ngành như phẫu thuật tổng quát, phẫu thuật thần kinh, phẫu thuật tim mạch, hoặc phẫu thuật chỉnh hình. Bác sĩ phẫu thuật tại Việt Nam tập trung vào việc thực hiện các thủ thuật và quy trình nhằm điều trị các bệnh lý, chấn thương hoặc cải thiện chức năng cơ thể.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật. Tại Việt Nam, bác sĩ phẫu thuật thường làm việc tại các bệnh viện lớn như Bệnh viện Chợ Rẫy, Bệnh viện Việt Đức, hoặc Bệnh viện Đại học Y Dược TP.HCM. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều loại hình phẫu thuật từ cấp cứu đến phẫu thuật chỉnh hình.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển y học hiện đại. Các bệnh viện lớn tại Việt Nam thường có đội ngũ bác sĩ phẫu thuật chuyên nghiệp, được hỗ trợ bởi các công nghệ tiên tiến như máy nội soi, robot hỗ trợ phẫu thuật, và hệ thống phòng mổ vô trùng.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ phẫu thuật</h3>\r\n<p>Ở Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thường được hiểu là những người trực tiếp thực hiện các thủ thuật xâm lấn để điều trị bệnh lý hoặc chấn thương.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các trung tâm y tế lớn hoặc bệnh viện đa khoa.</p>\r\n', '<h3 id=\"specialistinsurgery\">Chuyên gia trong phẫu thuật</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">Phẫu thuật</a></p>\r\n<p>Ở Việt Nam, thuật ngữ *bác sĩ phẫu thuật* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">phẫu thuật</a>, bao gồm các chuyên ngành như phẫu thuật tổng quát, phẫu thuật thần kinh, phẫu thuật tim mạch, hoặc phẫu thuật chỉnh hình. Bác sĩ phẫu thuật tại Việt Nam tập trung vào việc thực hiện các thủ thuật và quy trình nhằm điều trị các bệnh lý, chấn thương hoặc cải thiện chức năng cơ thể.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật. Tại Việt Nam, bác sĩ phẫu thuật thường làm việc tại các bệnh viện lớn như Bệnh viện Chợ Rẫy, Bệnh viện Việt Đức, hoặc Bệnh viện Đại học Y Dược TP.HCM. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều loại hình phẫu thuật từ cấp cứu đến phẫu thuật chỉnh hình.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển y học hiện đại. Các bệnh viện lớn tại Việt Nam thường có đội ngũ bác sĩ phẫu thuật chuyên nghiệp, được hỗ trợ bởi các công nghệ tiên tiến như máy nội soi, robot hỗ trợ phẫu thuật, và hệ thống phòng mổ vô trùng.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ phẫu thuật</h3>\r\n<p>Ở Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thường được hiểu là những người trực tiếp thực hiện các thủ thuật xâm lấn để điều trị bệnh lý hoặc chấn thương.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các trung tâm y tế lớn hoặc bệnh viện đa khoa.</p>\r\n', 3, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:37', '2020-11-13 21:00:37', NULL),
(7, 'Doctor - Phạm Trần Trung Trực', '<h3 id=\"specialistincardiology\">Chuyên gia Tim Mạch</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Cardiology\" title=\"Cardiology\">Tim Mạch</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ chuyên khoa Tim Mạch* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Cardiology\" title=\"Cardiology\">Tim Mạch</a>, bao gồm các chuyên ngành như điều trị bệnh lý về tim, mạch máu, và tuần hoàn. Các bác sĩ chuyên khoa này tập trung vào việc chẩn đoán và điều trị các bệnh lý như bệnh mạch vành, suy tim, rối loạn nhịp tim, và tăng huyết áp.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ chuyên khoa Tim Mạch. Tại Việt Nam, bác sĩ Tim Mạch thường làm việc tại các bệnh viện lớn như Bệnh viện Tim Hà Nội, Viện Tim TP.HCM, hoặc Bệnh viện Chợ Rẫy. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều thủ thuật như đặt stent mạch vành, siêu âm tim, hoặc phẫu thuật bắc cầu động mạch.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ Tim Mạch ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy siêu âm tim 3D, hệ thống điện tâm đồ hiện đại, và các thiết bị hỗ trợ can thiệp mạch máu.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Tim Mạch</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ Tim Mạch” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ Tim Mạch thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến tim và mạch máu.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ Tim Mạch đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa.</p>\r\n', '<h3 id=\"specialistincardiology\">Chuyên gia Tim Mạch</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Cardiology\" title=\"Cardiology\">Tim Mạch</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ chuyên khoa Tim Mạch* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Cardiology\" title=\"Cardiology\">Tim Mạch</a>, bao gồm các chuyên ngành như điều trị bệnh lý về tim, mạch máu, và tuần hoàn. Các bác sĩ chuyên khoa này tập trung vào việc chẩn đoán và điều trị các bệnh lý như bệnh mạch vành, suy tim, rối loạn nhịp tim, và tăng huyết áp.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ chuyên khoa Tim Mạch. Tại Việt Nam, bác sĩ Tim Mạch thường làm việc tại các bệnh viện lớn như Bệnh viện Tim Hà Nội, Viện Tim TP.HCM, hoặc Bệnh viện Chợ Rẫy. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm thực hiện nhiều thủ thuật như đặt stent mạch vành, siêu âm tim, hoặc phẫu thuật bắc cầu động mạch.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ Tim Mạch ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển ngành y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến như máy siêu âm tim 3D, hệ thống điện tâm đồ hiện đại, và các thiết bị hỗ trợ can thiệp mạch máu.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Tim Mạch</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ Tim Mạch” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ Tim Mạch thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến tim và mạch máu.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ Tim Mạch đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa.</p>\r\n', 5, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:52', '2020-11-13 21:00:52', NULL),
(8, 'Doctor - Phan Huỳnh Thu', '<h3 id=\"specialistinneurosurgery\">Chuyên gia Phẫu thuật Thần kinh</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Neurosurgery\" title=\"Neurosurgery\">Phẫu thuật Thần kinh</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ phẫu thuật thần kinh* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Neurosurgery\" title=\"Neurosurgery\">phẫu thuật thần kinh</a>, bao gồm chẩn đoán và điều trị các bệnh lý liên quan đến não, tủy sống, hệ thần kinh trung ương và ngoại biên. Các bác sĩ chuyên khoa này tập trung vào việc thực hiện các ca phẫu thuật phức tạp như loại bỏ khối u não, điều trị chấn thương sọ não, và phẫu thuật cột sống.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật thần kinh. Tại Việt Nam, bác sĩ phẫu thuật thần kinh thường làm việc tại các bệnh viện lớn như Bệnh viện Việt Đức, Bệnh viện Chợ Rẫy, hoặc Bệnh viện Đại học Y Dược TP.HCM. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm sử dụng các công nghệ tiên tiến như máy MRI, CT scan, và hệ thống robot hỗ trợ phẫu thuật.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật thần kinh ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến và môi trường phòng mổ vô trùng đạt chuẩn quốc tế.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Phẫu thuật Thần kinh</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thần kinh thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến hệ thần kinh trung ương và ngoại biên.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật thần kinh đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa lớn.</p>\r\n', '<h3 id=\"specialistinneurosurgery\">Chuyên gia Phẫu thuật Thần kinh</h3>\r\n<p>Bài viết chính:  <a href=\"https://en.wikipedia.org/wiki/Neurosurgery\" title=\"Neurosurgery\">Phẫu thuật Thần kinh</a></p>\r\n<p>Tại Việt Nam, thuật ngữ *bác sĩ phẫu thuật thần kinh* thường được sử dụng để chỉ một <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">chuyên gia</a> trong lĩnh vực <a href=\"https://en.wikipedia.org/wiki/Neurosurgery\" title=\"Neurosurgery\">phẫu thuật thần kinh</a>, bao gồm chẩn đoán và điều trị các bệnh lý liên quan đến não, tủy sống, hệ thần kinh trung ương và ngoại biên. Các bác sĩ chuyên khoa này tập trung vào việc thực hiện các ca phẫu thuật phức tạp như loại bỏ khối u não, điều trị chấn thương sọ não, và phẫu thuật cột sống.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\r\n<p>Thuật ngữ này đã tồn tại từ lâu và phản ánh sự khác biệt giữa bác sĩ nội khoa và bác sĩ phẫu thuật thần kinh. Tại Việt Nam, bác sĩ phẫu thuật thần kinh thường làm việc tại các bệnh viện lớn như Bệnh viện Việt Đức, Bệnh viện Chợ Rẫy, hoặc Bệnh viện Đại học Y Dược TP.HCM. Các bác sĩ này được đào tạo chuyên sâu và có kinh nghiệm sử dụng các công nghệ tiên tiến như máy MRI, CT scan, và hệ thống robot hỗ trợ phẫu thuật.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\r\n<p>Trong lịch sử, các bác sĩ phẫu thuật thần kinh ở Việt Nam đã đóng vai trò quan trọng trong việc phát triển y tế hiện đại. Các bệnh viện lớn thường có đội ngũ bác sĩ chuyên nghiệp, được hỗ trợ bởi công nghệ tiên tiến và môi trường phòng mổ vô trùng đạt chuẩn quốc tế.<br></p>\r\n\r\n<h3 id=\"physicianandsurgeon\">Bác sĩ và bác sĩ Phẫu thuật Thần kinh</h3>\r\n<p>Tại Việt Nam, cụm từ “bác sĩ và bác sĩ phẫu thuật” thường được sử dụng để mô tả bất kỳ người hành nghề y nào không phân biệt chuyên ngành. Tuy nhiên, bác sĩ phẫu thuật thần kinh thường được hiểu là những người trực tiếp thực hiện các thủ thuật hoặc phẫu thuật để điều trị bệnh lý liên quan đến hệ thần kinh trung ương và ngoại biên.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a> Tại Việt Nam, bác sĩ phẫu thuật thần kinh đóng vai trò quan trọng trong hệ thống y tế và thường làm việc tại các bệnh viện đa khoa hoặc chuyên khoa lớn.</p>\r\n', 6, 2, -1, 1, NULL, NULL, '2020-11-13 21:01:09', '2020-11-13 21:01:09', NULL),
(9, 'Doctor - Phan Hùng', '<div>\r\n    <h3>CHƯA CÓ BÀI VIẾT</h3>\r\n    <p>Hiện tại chưa có bài viết nào được đăng tải. Vui lòng quay lại sau để cập nhật nội dung mới nhất.</p>\r\n</div>\r\n', '<div>\r\n    <h3>CHƯA CÓ BÀI VIẾT</h3>\r\n    <p>Hiện tại chưa có bài viết nào được đăng tải. Vui lòng quay lại sau để cập nhật nội dung mới nhất.</p>\r\n</div>\r\n', 7, 2, -1, 1, NULL, NULL, '2020-11-13 21:01:09', '2020-11-13 21:01:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ADMIN', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'DOCTOR', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'SUPPORTER', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `maxBooking` varchar(255) DEFAULT NULL,
  `sumBooking` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200311024259-users.js'),
('20200311025445-create-role.js'),
('20200311025538-create-post.js'),
('20200311025553-create-clinic.js'),
('20200311025604-create-specialization.js'),
('20200311025619-create-schedule.js'),
('20200311025632-create-status.js'),
('20200311025648-create-patient.js'),
('migration-create-comment.js'),
('migration-create-doctor-user.js'),
('migration-create-extraInfo.js'),
('migration-create-place.js'),
('migration-create-supporterLog.js');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Tai Mũi Họng', NULL, 'otolaryngology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Phẫu Thuật Thần Kinh', NULL, 'neurosurgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Phẫu Thuật', NULL, 'surgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Tim Mạch (Tim)', NULL, 'cardiology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Y Khoa', NULL, 'medicine.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(6, 'Gan Ghép Tạng', NULL, 'neurosurgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(7, 'Phẫu Thuật Thẩm Mỹ', NULL, 'otolaryngology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'SUCCESS', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'FAILED', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'PENDING', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'NEW', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'DONE', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supporterlogs`
--

CREATE TABLE `supporterlogs` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `supporterId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supporterlogs`
--

INSERT INTO `supporterlogs` (`id`, `patientId`, `supporterId`, `content`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(7, 4, NULL, 'Bệnh nhân đã đặt lịch hẹn từ hệ thống', '2020-11-14 20:20:18', '2020-11-14 20:20:18', NULL),
(8, 4, 8, 'Lịch hẹn mới đã được tiếp nhận', '2020-11-14 20:20:41', '2020-11-14 20:20:41', NULL),
(9, 4, 8, 'Hủy với lý do - Bệnh nhân đã hủy lịch hẹn', '2020-11-14 20:20:47', '2020-11-14 20:20:47', NULL),
(10, 5, NULL, 'Bệnh nhân đã đặt lịch hẹn từ hệ thống', '2020-11-15 08:27:25', '2020-11-15 08:27:25', NULL),
(11, 5, 8, 'Lịch hẹn mới đã được tiếp nhận', '2020-11-15 08:27:36', '2020-11-15 08:27:36', NULL),
(12, 5, 8, 'Lịch hẹn đã được đặt thành công', '2020-11-15 08:27:40', '2020-11-15 08:27:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT 'male',
  `description` text DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `avatar`, `gender`, `description`, `roleId`, `isActive`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'admin - Simplo', 'admin@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Vĩnh Long', '088456732', 'admin.jpg', 'male', NULL, 1, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Doctor - Trịnh Trần Phương Hướng', 'doctor@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'An Giang', '088456735', 'doctor3.png', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 19:46:18', NULL),
(3, 'Doctor - Trần Bác Ái', 'doctor5@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Long An', '088456735', 'doctor4.jpg', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:19:55', NULL),
(4, 'Doctor - Thắn Đường', 'doctor10@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Tiền Giang', '088456735', 'doctor1.png', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:15', NULL),
(5, 'Doctor - Phạm Trần Trung Trực', 'doctor1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Hậu Giang', '088456735', 'doctor2.jpg', 'unknown', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:26', NULL),
(6, 'Doctor - Phan Huỳnh Thu', 'doctor2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Cần Thơ', '088456735', 'doctor3.jpg', 'female', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:26', NULL),
(7, 'Doctor - Phan Hùng', 'doctor3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Cà Mau', '088456735', 'doctor4.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:12', NULL),
(8, 'Supporter - Phan Huỳnh Thu', 'supporter@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Đồng Tháp', '088456736', 'supporter.png', 'female', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(9, 'Supporter - Tú Châu', 'supporter1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Trà Vinh', '088456736', 'supporter.png', 'female', NULL, 3, 0, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(10, 'Supporter - Tú Châu', 'supporter2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Trà Vinh', '088456736', 'supporter.png', 'female', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(11, 'Supporter - Hà Hữu Hoài', 'supporter3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Châu Đốc', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_users`
--
ALTER TABLE `doctor_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extrainfos`
--
ALTER TABLE `extrainfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporterlogs`
--
ALTER TABLE `supporterlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor_users`
--
ALTER TABLE `doctor_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `extrainfos`
--
ALTER TABLE `extrainfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supporterlogs`
--
ALTER TABLE `supporterlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
