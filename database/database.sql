-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 11:13 AM
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
(1, 'Phòng Khám FreeD.O.M.', '123 Nguyễn Văn Linh, Quận 7, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 1234 5678', '<p>CHÚNG TÔI CUNG CẤP DỊCH VỤ NHA KHOA, NHÃN KHOA VÀ Y TẾ MIỄN PHÍ. Được tài trợ bởi Quỹ Bệnh viện Marion County, chúng tôi hỗ trợ những người không có bảo hiểm và bảo hiểm không đầy đủ. Sứ mệnh của chúng tôi là mang lại sức khỏe, hy vọng và sự chữa lành cho những người cần.</p>', 'CHÚNG TÔI CUNG CẤP DỊCH VỤ NHA KHOA, NHÃN KHOA VÀ Y TẾ MIỄN PHÍ. Được tài trợ bởi Quỹ Bệnh viện Marion County, chúng tôi hỗ trợ những người không có bảo hiểm và bảo hiểm không đầy đủ. Sứ mệnh của chúng tôi là mang lại sức khỏe, hy vọng và sự chữa lành cho những người cần.', 'COVID-19 và THỂ DỤC - Ben Marciano (CEO Zone Health & Fitness) phỏng vấn Bác sĩ Don Bovell (Phòng Khám FreeD.O.M.)', 'Phong1.jpg', '2020-11-13 19:44:36', '2020-11-13 20:44:20', NULL),
(2, 'Hệ Thống Phòng Khám Mayo', '32 Đường Chính Bắc, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 9876 5432', '<p>Câu hỏi về Dịch vụ Trực tuyến cho Bệnh nhân? Nếu bạn có bất kỳ câu hỏi nào hoặc gặp vấn đề khi truy cập cổng thông tin bệnh nhân của mình, vui lòng liên hệ Hỗ trợ Khách hàng Mayo Clinic tại số +84 28 9876 5432 từ thứ Hai đến thứ Sáu.</p>', 'Câu hỏi về Dịch vụ Trực tuyến cho Bệnh nhân? Nếu bạn có bất kỳ câu hỏi nào hoặc gặp vấn đề khi truy cập cổng thông tin bệnh nhân của mình, vui lòng liên hệ Hỗ trợ Khách hàng Mayo Clinic tại số +84 28 9876 5432 từ thứ Hai đến thứ Sáu.', 'Yêu cầu đặt lịch hẹn: Chúng tôi luôn ưu tiên sự an toàn của bệnh nhân và nhân viên. Các biện pháp phòng ngừa bổ sung đã được thực hiện tại tất cả các cơ sở để bảo vệ những người cần chăm sóc nhất trong thời gian này.', 'Phong2.jpg', '2020-11-13 19:44:36', '2020-11-13 20:46:01', NULL),
(3, 'Phòng Khám Campbell Việt Nam', '456 Lê Lợi, Quận 3, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 4567 8901', '<p>Chúng tôi cung cấp các dịch vụ chăm sóc sức khỏe toàn diện với đội ngũ bác sĩ chuyên môn cao và trang thiết bị hiện đại.</p>', 'Chúng tôi cung cấp các dịch vụ chăm sóc sức khỏe toàn diện với đội ngũ bác sĩ chuyên môn cao và trang thiết bị hiện đại.', 'Chuyên về điều trị chỉnh hình và phục hồi chức năng với hơn 110 năm kinh nghiệm.', 'Phong3.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL),
(4, 'Phòng Khám Stanton Road Việt Nam', '575 Đường Stanton, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 1122 3344', '<p>Phòng khám Stanton Road cung cấp dịch vụ y tế tiên tiến bao gồm chăm sóc ban đầu và chuyên khoa.</p>', 'Phòng khám Stanton Road cung cấp dịch vụ y tế tiên tiến bao gồm chăm sóc ban đầu và chuyên khoa.', 'Chúng tôi cam kết mang lại sức khỏe tốt nhất cho cộng đồng bằng cách cung cấp các dịch vụ y tế chất lượng cao.', 'Phong4.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL),
(5, 'Phòng Khám Sức Khỏe & Phúc Lợi Việt Nam', '304 Nguyễn Huệ, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '+84 28 2233 4455', '<p>Chúng tôi tập trung vào việc cải thiện sức khỏe tổng thể của bạn thông qua các dịch vụ y tế chuyên nghiệp.</p>', 'Chúng tôi tập trung vào việc cải thiện sức khỏe tổng thể của bạn thông qua các dịch vụ y tế chuyên nghiệp.', 'Cung cấp các giải pháp y tế hiện đại để đáp ứng nhu cầu đa dạng của bệnh nhân.', 'Phong5.jpg', '2020-11-13 19:44:36', '2025-04-06 07:28:00', NULL);

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
-- Table structure for table `handbooks`
--

CREATE TABLE `handbooks` (
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
-- Dumping data for table `handbooks`
--

INSERT INTO `handbooks` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Lời khuyên', '### Lời khuyên y tế\n\n**Cho mình một ngày trong tuần để thư giãn** Đây là một quy tắc đơn giản...', '<h2>Mười lời khuyên dinh dưỡng từ Bộ Y tế</h2>\r\n<p>Ngày 29/11/2024, Bộ Y tế đã ban hành quyết định số 3594/QĐ-BYT ban hành “Mười lời khuyên dinh dưỡng hợp lý đến năm 2030”.</p>\r\n\r\n<p>\r\n    <img src=\"https://www.yhct.vn/wp-content/uploads/2025/01/474267118_1144488324350534_9084351552416997311_n.jpeg\" \r\n         alt=\"Mười lời khuyên dinh dưỡng\" \r\n         style=\"max-width: 100%; height: auto;\">\r\n</p>\r\n\r\n<h3>Mười lời khuyên bao gồm:</h3>\r\n<ol>\r\n    <li><strong>Lời khuyên số 1:</strong> Ăn đủ, cân đối và đa dạng các loại thực phẩm hằng ngày; phối hợp hợp lý thực phẩm có nguồn gốc động vật và thực vật.</li>\r\n    <li><strong>Lời khuyên số 2:</strong> Sử dụng hằng ngày các loại thực phẩm giàu vi chất dinh dưỡng; các loại rau, củ, quả có màu sắc khác nhau. Đọc kỹ thông tin dinh dưỡng trên nhãn thực phẩm trước khi mua và sử dụng.</li>\r\n    <li><strong>Lời khuyên số 3:</strong> Sử dụng hợp lý các loại thực phẩm giàu đạm; nên ăn cá, thịt gia cầm và các loại hạt trong bữa ăn hằng ngày; ăn có mức độ các loại thịt đỏ.</li>\r\n    <li><strong>Lời khuyên số 4:</strong> Uống đủ nước hằng ngày.</li>\r\n    <li><strong>Lời khuyên số 5:</strong> Phụ nữ có thai và bà mẹ cho con bú cần thực hiện chế độ ăn uống hợp lý; bổ sung sắt và acid folic hoặc đa vi chất theo hướng dẫn.</li>\r\n    <li><strong>Lời khuyên số 6:</strong> Cho trẻ bú mẹ sớm trong vòng một giờ đầu sau khi sinh, nuôi con hoàn toàn bằng sữa mẹ trong 6 tháng đầu; cho trẻ ăn bổ sung hợp lý và tiếp tục cho trẻ bú mẹ đến 24 tháng tuổi hoặc lâu hơn.</li>\r\n    <li><strong>Lời khuyên số 7:</strong> Hạn chế sử dụng các loại thức ăn chiên rán, thức ăn nhanh nhiều dầu mỡ, thức ăn nhiều muối, nhiều đường, đồ uống có đường, có cồn.</li>\r\n    <li><strong>Lời khuyên số 8:</strong> Bảo đảm an toàn trong lựa chọn, chế biến và bảo quản thực phẩm.</li>\r\n    <li><strong>Lời khuyên số 9:</strong> Tổ chức tốt bữa ăn gia đình. Ăn đủ bữa (sáng, trưa, tối) phù hợp với lứa tuổi, không ăn quá no, không bỏ bữa.</li>\r\n    <li><strong>Lời khuyên số 10:</strong> Duy trì và kiểm soát cân nặng hợp lý; thực hiện lối sống năng động, tăng cường hoạt động thể lực phù hợp với lứa tuổi và tình trạng sức khỏe.</li>\r\n</ol>\r\n\r\n<p>Theo Bộ Y tế, dinh dưỡng cân đối, hợp lý là yếu tố quan trọng nhằm hướng tới phát triển toàn diện về tầm vóc, thể chất, trí tuệ của người Việt Nam và nâng cao chất lượng cuộc sống.</p>\r\n\r\n<p>Mười lời khuyên dinh dưỡng trên cung cấp một hướng dẫn chi tiết và toàn diện để xây dựng một chế độ ăn uống lành mạnh và cân bằng. Các lời khuyên này đã tập trung vào nhiều khía cạnh quan trọng của dinh dưỡng, từ việc lựa chọn thực phẩm, chế biến đến việc duy trì lối sống lành mạnh. Người dân nên kết hợp các lời khuyên này và tham khảo thêm ý kiến của các Bác sĩ chuyên khoa để có một chế độ dinh dưỡng tốt nhất cho bản thân.</p>\r\n\r\n<p><strong>BS. Trần Công Hùng</strong><br>\r\nKhoa Vật lý trị liệu – Phục hồi chức năng<br>\r\nBệnh viện Y học cổ truyền TP.HCM</p>\r\n', -1, 1, -1, 1, NULL, NULL, '2020-11-13 20:29:11', '2020-11-13 20:35:21', NULL),
(2, 'Cách dùng thuốc', '### Cách dùng thuốc hợp lý\n\n- **Không tự ý dùng thuốc kháng sinh** Kháng sinh là vũ khí mạnh nhưng cần đúng chỉ định...', '<div class=\"article-wrapper p-4\">\r\n    <h2 class=\"article-title mb-4\">Sử dụng thuốc an toàn hợp lý</h2>\r\n    <p class=\"article-paragraph\">\r\n        Có thể bạn sẽ dễ dàng tìm thấy bất kỳ loại thuốc nào bạn muốn tại các nhà thuốc. Tuy nhiên làm sao để sử dụng thuốc hiệu quả, an toàn là chuyện không đơn giản. Bởi vì thuốc thật sự là “con dao hai lưỡi”, ngoài tác dụng điều trị, chúng hoàn toàn có khả năng gây nguy hiểm cho người uống nếu không được sử dụng hợp lý.\r\n    </p>\r\n\r\n    <!-- Ảnh chèn trước mục Thuốc bán theo đơn -->\r\n    <div class=\"text-center my-4\">\r\n        <img src=\"https://nhidong.org.vn/UploadImages/bvnhidong/PHN11/2018_6/28/Hinh3.jpg\" alt=\"Sử dụng thuốc an toàn\" class=\"img-fluid rounded\">\r\n    </div>\r\n\r\n    <h4 class=\"mt-4\">1. Thuốc bán theo đơn</h4>\r\n    <ul class=\"article-list\">\r\n        <li>\r\n            Thuốc bán theo đơn là những thuốc chỉ nên dùng khi có chỉ định của bác sĩ và về nguyên tắc thuốc chỉ được bán ra khi người mua có đơn thuốc của bác sĩ...\r\n        </li>\r\n        <li>\r\n            Kháng sinh là một trong những thuốc thuộc nhóm kê đơn...\r\n        </li>\r\n        <li>\r\n            Bên cạnh kháng sinh, thuốc kháng viêm - giảm đau là nhóm thuốc thứ hai thường được sử dụng bừa bãi...\r\n        </li>\r\n        <li>\r\n            Một thuốc phù hợp với người này không hẳn đã có hiệu quả và an toàn đối với người kia...\r\n        </li>\r\n        <li>\r\n            Trong quá trình đang điều trị, nếu muốn dùng thêm thuốc khác ngay cả chỉ là thuốc bổ hãy tham khảo ý kiến của bác sĩ...\r\n        </li>\r\n    </ul>\r\n\r\n    <h4 class=\"mt-4\">2. Thuốc bán không theo đơn</h4>\r\n    <ul class=\"article-list\">\r\n        <li>\r\n            Thuốc bán không theo đơn là những thuốc có thể mua mà không cần phải có chỉ định của bác sĩ...\r\n        </li>\r\n        <li>\r\n            Mặc dù thuốc có thể mua khi chưa có chỉ định của bác sĩ, nhưng điều này không có nghĩa là thuốc hoàn toàn an toàn...\r\n        </li>\r\n        <li>\r\n            Đa số các chuyên gia đều khuyên rằng nên chọn thuốc không kê đơn chỉ có tác dụng làm dịu một triệu chứng mà thôi...\r\n        </li>\r\n        <li>\r\n            Vitamin, khoáng chất đóng vai trò rất quan trọng trong việc duy trì và tăng cường sức khỏe...\r\n        </li>\r\n        <li>\r\n            Trong đợt điều trị, hãy cố gắng ghi nhận tất cả những thuốc không kê đơn, thuốc bổ, thực phẩm chức năng...\r\n        </li>\r\n        <li>\r\n            Trước khi dùng bất kỳ thuốc nào hãy đọc kỹ hướng dẫn sử dụng và thông báo ngay cho bác sĩ hoặc dược sĩ...\r\n        </li>\r\n    </ul>\r\n\r\n    <p class=\"mt-4 font-italic\">ThS. BS Phạm Đình Nguyên</p>\r\n</div>\r\n', -1, 2, -1, 2, NULL, NULL, '2020-11-14 10:12:34', '2020-11-14 10:45:21', NULL),
(3, 'Phòng bệnh mùa lạnh', '### Cách phòng bệnh mùa lạnh hiệu quả\n\n- **Giữ ấm cơ thể** Đặc biệt là vùng cổ, ngực, tay chân và đầu...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-4\">Bệnh hay gặp vào mùa lạnh và cách phòng ngừa</h2>\r\n  <p class=\"article-paragraph\">\r\n    <strong>SKĐS -</strong> Mùa đông theo Học thuyết Ngũ hành thuộc về hành Thủy, ứng với tạng Thận, thời tiết thiên về lạnh (hàn) và khô (táo), nên rất dễ mắc các bệnh về hô hấp, tuần hoàn và tiêu hóa...\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">Các bệnh thường gặp khi thời tiết lạnh</h4>\r\n  <p class=\"article-paragraph\">Do thời tiết mùa đông có tính hàn mà táo (lạnh, khô) nên dễ mắc các chứng bệnh sau:</p>\r\n\r\n  <h5 class=\"mt-3\">Bệnh ở cơ quan hô hấp</h5>\r\n  <p>\r\n    Hệ hô hấp thuộc tạng Phế của y học cổ truyền. Phế được gọi là \"Kiều tạng\" tức là tạng rất dễ bị tổn thương. Khi tiếp xúc với không khí khô lạnh dễ gây nên tình trạng dị ứng như: ho, hắt hơi, sổ mũi, viêm đường hô hấp. Vì vậy, về mùa đông cần mặc ấm, giữ kín cổ, nhà ở tránh gió lùa. Người già yếu và trẻ em hạn chế đi ra ngoài khi trời lạnh giá. Trong nhà có thể xông hơi nhẹ nhàng bằng tinh dầu thơm hay đốt một quả bồ kết hoặc vỏ bưởi khô.\r\n  </p>\r\n\r\n  <h5 class=\"mt-3\">Bệnh ở hệ tuần hoàn</h5>\r\n  <p>\r\n    Hệ tuần hoàn thuộc tạng Tâm, quy về hành Hỏa. Mùa đông thuộc hành Thủy. Thủy vốn khắc Hỏa, vì vậy các bệnh như: tăng huyết áp, suy tim, tâm phế mạn... có xu hướng nặng lên. Tiết trời lạnh giá làm co mạch máu ngoại biên dễ gây tai biến mạch máu não. Để phòng bệnh cần giữ ấm, đặc biệt với người mắc bệnh tim mạch, tránh ra ngoài ban đêm và bị gió lùa.\r\n  </p>\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/10/16/photo-1634321518421-1634321522593181867252.jpg\" alt=\"Tăng huyết áp dễ xảy ra vào mùa đông\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Tăng huyết áp, suy tim, tâm phế mạn dễ gặp trong mùa đông</small>\r\n  </div>\r\n\r\n  <h5 class=\"mt-3\">Bệnh ở cơ quan tiêu hóa</h5>\r\n  <p>\r\n    Mùa đông trời lạnh ăn ngon miệng và hay ăn nhiều. Các bệnh về dạ dày tá tràng, xuất huyết tiêu hóa, tiêu chảy do virus... có xu hướng hay gặp. Để phòng bệnh cần ăn uống hợp vệ sinh, ăn khi vừa nấu xong còn nóng ấm, không ăn đồ sống lạnh. Người già không nên ăn quá no, sau khi ăn có thể nằm nghỉ nhẹ để trợ giúp tiêu hóa.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">Phòng bệnh mùa lạnh như thế nào?</h4>\r\n  <ol>\r\n    <li class=\"mb-2\">\r\n      Giữ tinh thần thanh tịnh, tránh tức giận hay đau buồn. Sinh hoạt nên ngủ sớm dậy muộn, giữ ấm không gian sống, mặc đủ ấm để giúp khí huyết lưu thông.\r\n    </li>\r\n    <li class=\"mb-2\">\r\n      Sử dụng các loại thuốc ôn bổ nguyên dương như nhung hươu, long nhãn, nhân sâm, thục địa, cẩu tích… tùy vào vùng miền và thể chất.\r\n    </li>\r\n    <li class=\"mb-2\">\r\n      Ăn uống nóng sốt, bổ ấm tỳ vị. Điều chỉnh theo thể trạng:\r\n      <ul>\r\n        <li>Người âm hư: vừng, cơm nếp, mật ong, sữa, rau xanh, hoa quả.</li>\r\n        <li>Người dương hư: hẹ, thịt chó.</li>\r\n        <li>Người khí hư: nhân sâm, hạt sen, táo, củ mài.</li>\r\n        <li>Người huyết hư: vải, mộc nhĩ, ba ba, gan dê.</li>\r\n        <li>Người dương thịnh: hoa quả, rau xanh, mướp đắng.</li>\r\n        <li>Người tắc mạch: đào nhân, cải dầu, đậu đen.</li>\r\n        <li>Người đờm nhiều: củ cải, rau tảo, sứa, hành tây.</li>\r\n        <li>Người khí uất: phật thủ, cam, vỏ cam, hồi hương.</li>\r\n        <li>Lao động trí óc: vừng, mật ong, hạt dẻ, rau kim châm.</li>\r\n      </ul>\r\n    </li>\r\n  </ol>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/10/16/photo-1634321523920-1634321524152406328608.jpg\" alt=\"Vị thuốc đương quy bồi bổ sức khỏe\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Vị thuốc đương quy phối hợp với những vị thuốc khác bồi bổ sức khỏe</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">Món ăn bài thuốc bồi bổ sức khỏe trong mùa đông</h4>\r\n  <ul>\r\n    <li><strong>Bài 1:</strong> Gà trống 1 con, gừng tươi, rượu trắng, hầm nhừ. Tác dụng: bồi bổ ngũ tạng, thích hợp với người dương hư.</li>\r\n    <li><strong>Bài 2:</strong> Chim bồ câu 1 con, ba kích, hoài sơn, kỷ tử… hầm nhừ. Tác dụng ôn bổ thận dương, ấm tỳ vị.</li>\r\n    <li><strong>Bài 3:</strong> Nhân sâm, hoàng kỳ, hạt tiêu, đinh hương, nước xương… làm lẩu bổ khí ôn dương, chống rét.</li>\r\n    <li><strong>Bài 4:</strong> Ngân nhĩ, kỷ tử hầm mềm với đường phèn. Tác dụng dưỡng âm sinh tân, dưỡng khí huyết.</li>\r\n    <li><strong>Bài 5:</strong> Dâm dương hoắc, tiên mao, nhục thung dung… ngâm rượu, cô đặc, làm viên hoàn. Công dụng bổ thận sinh tinh, trợ dương bổ âm.</li>\r\n  </ul>\r\n\r\n  <p class=\"mt-4 font-italic\">BS Vũ Quốc Trung</p>\r\n  <p class=\"text-muted small\">Nguồn: <a href=\"https://suckhoedoisong.vn/benh-hay-gap-vao-mua-lanh-va-cach-phong-ngua-169211016013904188.htm\" target=\"_blank\">suckhoedoisong.vn</a></p>\r\n</div>\r\n', -1, 3, -1, 3, NULL, NULL, '2020-11-15 08:22:10', '2020-11-15 08:45:55', NULL),
(4, 'Dinh dưỡng cho bé', '### Những lưu ý dinh dưỡng cho trẻ nhỏ\n\n- **Cho bé ăn đa dạng thực phẩm** Bao gồm cả rau xanh, thịt cá, trứng, sữa...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-3\">Chăm sóc, dinh dưỡng cho bé phù hợp theo từng độ tuổi</h2>\r\n  <p class=\"text-muted\"><strong>Ngô Thị Oanh</strong> - Thạc sĩ, Bác sĩ y khoa</p>\r\n  <p class=\"article-paragraph\">\r\n    Bài viết được tham vấn chuyên môn cùng ThS.BS Ngô Thị Oanh - Bác sĩ Nhi - Khoa Nhi - Sơ sinh - Bệnh viện Đa khoa Quốc tế Vinmec Hạ Long.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/large_20200414_104819_327171_nen_cho_tre_an_hai_max_1800x1800_jpg_115819c424.jpg\" alt=\"Trẻ ăn dặm\" class=\"img-fluid rounded\">\r\n  </div>\r\n\r\n  <p>\r\n    Dinh dưỡng cho trẻ em dựa trên các nguyên tắc giống như dinh dưỡng cho người lớn. Mọi người đều cần các loại chất dinh dưỡng giống nhau như vitamin, khoáng chất, carbohydrate, protein và chất béo. Tuy nhiên, ở mỗi độ tuổi, nhu cầu dinh dưỡng về thành phần và số lượng là khác nhau.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">1. Dinh dưỡng cho trẻ sơ sinh</h4>\r\n  <p>Trong 6 tháng đầu, trẻ chỉ cần sữa mẹ hoặc sữa công thức. Sữa mẹ giúp tăng cường miễn dịch và phát triển toàn diện.</p>\r\n  <p>Sau 4 tháng, hệ tiêu hóa phát triển hơn, trẻ có thể bắt đầu tập ăn dặm với thực phẩm lỏng, tránh thức ăn đặc để hạn chế nghẹt thở.</p>\r\n  <p>Từ 6 tháng, có thể cho trẻ ăn dặm thêm: ngũ cốc, trái cây, rau củ, thịt xay nhuyễn nhằm bổ sung sắt và kẽm.</p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/small_20200403_053031_563933_unnamed_12_max_1800x1800_jpg_c8a035ece5.jpg\" alt=\"Giai đoạn tập ăn dặm\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Giai đoạn tập ăn, trẻ có thể ăn được thực phẩm xay nhuyễn</small>\r\n  </div>\r\n\r\n  <p><strong>Lưu ý khi cho trẻ ăn dặm:</strong></p>\r\n  <ul>\r\n    <li>Không ăn dặm trước 4 - 6 tháng tuổi do phản xạ đẩy lưỡi còn tồn tại.</li>\r\n    <li>Không ăn dặm quá muộn (sau 6 tháng) để tránh thiếu dinh dưỡng, biếng ăn và dị ứng.</li>\r\n  </ul>\r\n\r\n  <h4 class=\"mt-4\">2. Trẻ từ 6-12 tháng</h4>\r\n  <p>Từ 6-8 tháng: tiếp tục bú sữa 3-5 lần/ngày, bắt đầu ăn rau củ nghiền, trái cây mềm, nấu chín kỹ.</p>\r\n  <p>Từ 8-12 tháng: bổ sung thêm thịt băm nhuyễn, sữa vẫn nên duy trì 3-4 lần/ngày.</p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/small_20200418_101035_212914_tre_bieng_an_phai_l_max_1800x1800_jpg_02e86a9f84.jpg\" alt=\"Trẻ tiếp tục bú sữa mẹ\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Giai đoạn 6-12 tháng, trẻ nên được tiếp tục bú sữa mẹ</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">3. Dinh dưỡng cho trẻ từ 1 tuổi</h4>\r\n  <p>Ở tuổi này, bé cần tăng lượng thức ăn dặm, giảm dần bú sữa. Bổ sung: thịt, trái cây, rau, ngũ cốc, sữa nguyên kem.</p>\r\n  <p>Bé có thể ăn ít mỗi bữa nhưng nhiều bữa hơn trong ngày (4-6 bữa). Cần thêm bữa phụ: sữa, trái cây, sữa chua…</p>\r\n\r\n  <h4 class=\"mt-4\">4. Trẻ từ 2-5 tuổi</h4>\r\n  <p>Trẻ có thể ăn như người lớn, chuyển sang ăn cơm cùng gia đình. Nên cho ăn 3 bữa chính và 2 bữa phụ/ngày.</p>\r\n  <p>Bữa phụ nên gồm: trái cây, sữa, sữa chua để hỗ trợ hệ tiêu hóa.</p>\r\n\r\n  <h5 class=\"mt-4\">Tổng kết</h5>\r\n  <p>\r\n    Dù ở độ tuổi nào, dinh dưỡng luôn là yếu tố then chốt giúp bé phát triển toàn diện. Cần có chế độ ăn hợp lý, đầy đủ và cân đối.\r\n  </p>\r\n  <p>\r\n    Thiếu dinh dưỡng có thể dẫn đến biếng ăn, chậm lớn, kém hấp thu. Nếu trẻ có dấu hiệu này, cần bổ sung lysine, các vi chất thiết yếu như kẽm, selen, vitamin nhóm B để hỗ trợ tiêu hóa và tăng hấp thu.\r\n  </p>\r\n\r\n  <p class=\"text-muted mt-3 small\">Tham khảo thêm: <a href=\"#\">Các dấu hiệu bé thiếu kẽm</a> | <a href=\"#\">Thiếu vi chất và tình trạng không tăng cân</a></p>\r\n</div>\r\n', -1, 4, -1, 4, NULL, NULL, '2020-11-16 13:40:00', '2020-11-16 13:55:21', NULL),
(5, 'Phục hồi sau phẫu thuật', '### Hướng dẫn phục hồi sau phẫu thuật\n\n- **Tuân thủ đúng chỉ định của bác sĩ** Về chế độ ăn, nghỉ ngơi, vận động...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-3\">Phục hồi sức khoẻ cho người bệnh sau phẫu thuật</h2>\r\n\r\n  <p>\r\n    Sau khi trải qua một cuộc phẫu thuật dù nhỏ hay lớn, người bệnh đều phải chịu nhiều đau đớn, khó chịu do mất máu và mất sức lực. Do đó sau khi mổ, họ cần một chế độ sinh hoạt, dinh dưỡng thật tốt và hợp lý để chống nhiễm khuẩn, đồng thời nhanh liền vết mổ và hồi phục sức khỏe.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://visuckhoecongdong.vn/wp-content/uploads/2021/11/phuc-hoi-cho-nguoi-phau-thuat-2-1280x800.jpg\" alt=\"Vận động nhẹ nhàng sau phẫu thuật\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Hãy vận động nhẹ nhàng ngay khi bạn có thể</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">1. Vận động nhẹ nhàng ngay khi có thể</h4>\r\n  <p>\r\n    Rời khỏi giường bệnh và vận động nhẹ nhàng: Ngay khi có thể, hãy đứng dậy và bắt đầu di chuyển. Chuyển động làm tăng lưu lượng máu, giúp chữa bệnh. Đi bộ giúp ngăn ngừa các cục máu đông, giảm nguy cơ viêm phổi. Khi bác sĩ cho phép, hãy bắt đầu liệu pháp kéo giãn mô sẹo để lấy lại sức mạnh cơ bắp.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">2. Chăm sóc vết thương đúng cách</h4>\r\n  <p>\r\n    Mặc quần áo không gây kích ứng vết mổ. Thay băng theo hướng dẫn và quan sát dấu hiệu nhiễm trùng. Nếu ngứa hoặc khó chịu, liên hệ bác sĩ để điều trị. Tránh ánh nắng trực tiếp lên vết sẹo mới, sử dụng kem chống nắng theo chỉ định.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://visuckhoecongdong.vn/wp-content/uploads/2021/11/phuc-hoi-cho-nguoi-sau-phau-thuat.jpg\" alt=\"Chế độ dinh dưỡng sau phẫu thuật\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Chủ động điều chỉnh chế độ dinh dưỡng phù hợp với thể trạng sau phẫu thuật</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">3. Đảm bảo dinh dưỡng cho bệnh nhân</h4>\r\n  <p>\r\n    Sau phẫu thuật, bệnh nhân thường chán ăn nhưng cần nạp đủ năng lượng để phục hồi. Protein từ thịt gà, trứng rất cần thiết. Vitamin C từ trái cây thúc đẩy làm lành vết thương. Sắt và B12 hỗ trợ tạo máu. Ăn sữa chua và granola giúp tăng cường miễn dịch nhờ chất xơ và men vi sinh.\r\n  </p>\r\n  <p>\r\n    Giảm ăn muối và đường. Ăn các bữa nhỏ nhiều lần trong ngày để cơ thể hấp thu tốt hơn.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">4. Dùng các chế phẩm bổ sung hợp lý</h4>\r\n  <p>\r\n    Có thể dùng multivitamin, kẽm và thuốc bổ nếu cần. Tránh các sản phẩm chứa dầu cá hoặc tỏi vì có thể ảnh hưởng đến vết mổ. Luôn hỏi ý kiến bác sĩ trước khi sử dụng bất kỳ thực phẩm chức năng hay thuốc bổ nào.\r\n  </p>\r\n</div>\r\n', -1, 5, -1, 5, NULL, NULL, '2020-11-17 15:25:30', '2020-11-17 15:40:11', NULL),
(6, 'Ngủ đủ giấc', '### Vì sao phải ngủ đủ giấc?\n\n- **Cải thiện trí nhớ và khả năng học tập** Giấc ngủ giúp não bộ xử lý và lưu giữ thông tin...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-3\">Ngủ đủ giấc là như thế nào? Lý do bạn cần ngủ đủ giấc</h2>\r\n\r\n  <p>\r\n    Ngủ đủ giấc rất quan trọng đối với mọi người ở mọi lứa tuổi để có sức khỏe tốt. Mọi người thường giảm giấc ngủ cho công việc, cho nhu cầu gia đình hoặc thậm chí để xem một chương trình hay trên truyền hình. Nhưng nếu không ngủ đủ giấc là một thói quen lâu dài, điều này có thể tăng nguy cơ của nhiều vấn đề sức khỏe.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">1. Thế nào là ngủ đủ giấc</h4>\r\n  <p>\r\n    Ngủ đủ giấc là điều rất quan trọng với tất cả mọi người ở tất cả mọi độ tuổi để đảm bảo một sức khỏe tốt và năng lượng cho hoạt động hàng ngày. Việc cắt giảm giấc ngủ thường xuyên có thể dẫn đến nguy cơ mắc các bệnh như béo phì, đái tháo đường tuýp 2, tăng huyết áp và bệnh tim mạch.\r\n  </p>\r\n  <p>\r\n    Thời lượng giấc ngủ cần thiết tùy vào độ tuổi, trẻ em cần nhiều hơn người lớn. Viện Hàn lâm Y học giấc ngủ Mỹ đưa ra các khuyến nghị cụ thể theo nhóm tuổi.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/medium_20200423_022833_065077_tap_the_duc_max_1800x1800_jpg_34f71ed172.jpg\" alt=\"Tập thể dục giúp ngủ ngon\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Tập thể dục mỗi ngày giúp cơ thể dễ đi vào giấc ngủ hơn</small>\r\n  </div>\r\n\r\n  <p>\r\n    Một số lời khuyên giúp bạn ngủ đủ và ngon hơn:\r\n    <ul>\r\n      <li>Giữ lịch ngủ cố định, kể cả cuối tuần.</li>\r\n      <li>Không gian ngủ yên tĩnh, tối và mát mẻ.</li>\r\n      <li>Tránh dùng điện thoại, TV, máy tính trước khi ngủ.</li>\r\n      <li>Không ăn no, tránh caffeine và rượu bia trước giờ ngủ.</li>\r\n      <li>Tập thể dục đều đặn nhưng không sát giờ đi ngủ.</li>\r\n    </ul>\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">2. Những lý do khiến bạn cần ngủ đủ giấc</h4>\r\n  <p>\r\n    Ngủ đủ giấc không chỉ giúp bạn cảm thấy tỉnh táo, sảng khoái mà còn cải thiện hiệu suất làm việc và sức khỏe tổng thể. Một số lợi ích rõ ràng như:\r\n  </p>\r\n\r\n  <ul>\r\n    <li><strong>Giảm tai nạn giao thông:</strong> Giấc ngủ kém làm suy giảm sự tỉnh táo và phản xạ khi lái xe.</li>\r\n    <li><strong>Cải thiện tâm trạng:</strong> Ngủ đủ giúp bạn bớt căng thẳng và giảm nguy cơ trầm cảm.</li>\r\n    <li><strong>Bảo vệ sức khỏe tim mạch:</strong> Giấc ngủ tốt giúp ổn định huyết áp và nhịp tim.</li>\r\n    <li><strong>Tăng khả năng ghi nhớ:</strong> Ngủ giúp củng cố ký ức và tăng khả năng tập trung.</li>\r\n    <li><strong>Giảm nguy cơ tiểu đường:</strong> Ngủ giúp điều chỉnh insulin và glucose trong máu.</li>\r\n  </ul>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/medium_20200604_093938_848104_bien_chung_mach_mau_max_1800x1800_png_9f383ac436.png\" alt=\"Giấc ngủ và tim mạch\" class=\"img-fluid rounded\">\r\n    <small class=\"d-block text-muted mt-1\">Ngủ đủ giúp bảo vệ tim mạch và ngăn ngừa các bệnh lý nguy hiểm</small>\r\n  </div>\r\n\r\n  <ul>\r\n    <li><strong>Hỗ trợ sinh lý:</strong> Giấc ngủ ảnh hưởng đến hormone giới tính, cải thiện sinh lý nam và nữ.</li>\r\n    <li><strong>Làm đẹp da:</strong> Ngủ giúp sản sinh collagen, hạn chế nếp nhăn và lão hóa da.</li>\r\n    <li><strong>Hỗ trợ giảm cân:</strong> Giấc ngủ điều hòa hormone đói no, giảm cảm giác thèm ăn.</li>\r\n    <li><strong>Tăng tuổi thọ:</strong> Người có giấc ngủ tốt có tuổi thọ cao hơn.</li>\r\n    <li><strong>Tăng miễn dịch:</strong> Ngủ đủ giúp tạo ra kháng thể chống lại bệnh tật.</li>\r\n    <li><strong>Tránh ngủ gật:</strong> Giúp bạn luôn tỉnh táo khi học tập, làm việc, sinh hoạt.</li>\r\n  </ul>\r\n\r\n  <p class=\"mt-3\">\r\n    Ngoài việc ngủ đủ thời gian, bạn cũng cần quan tâm đến chất lượng giấc ngủ. Nếu bạn ngủ đủ giờ mà vẫn thấy mệt mỏi, thức giấc nhiều lần hay ngủ gật ban ngày, có thể bạn đang bị rối loạn giấc ngủ và cần đến gặp chuyên gia để được tư vấn.\r\n  </p>\r\n\r\n  <p class=\"mt-2 text-muted\">\r\n    <em>Bài viết tham khảo nguồn: apa.org, cdc.gov, webmd.com, intermountainhealthcare.org</em>\r\n  </p>\r\n</div>\r\n', -1, 6, -1, 6, NULL, NULL, '2020-11-18 09:10:45', '2020-11-18 09:32:00', NULL),
(7, 'Tập thể dục đúng cách', '### Nguyên tắc tập luyện hiệu quả\n\n- **Khởi động kỹ trước khi tập** Tránh chấn thương và giúp cơ thể thích nghi...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-4 text-uppercase\">TẬP THỂ DỤC HIỆU QUẢ</h2>\r\n\r\n  <p>\r\n    Bí quyết tập thể dục đúng cách chẳng những mang đến cho bạn nhiều lợi ích sức khỏe mà còn giúp cơ thể bạn tránh khỏi những chấn thương không mong muốn. Vậy tập thể dục như thế nào là đúng cách?\r\n  </p>\r\n  <p>\r\n    Dưới đây là 5 bí quyết tập thể dục đúng cách để quá trình tập luyện của bạn đạt hiệu quả cao.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">1. Ăn nhẹ và uống nước trước khi tập thể dục</h4>\r\n  <p>\r\n    Nhiều người cho rằng tập thể dục khi bụng đói sẽ đốt cháy mỡ hiệu quả hơn, nhưng thực tế, bạn nên ăn nhẹ trước khoảng 45 phút - 1 tiếng để có đủ năng lượng tập luyện.\r\n  </p>\r\n  <p>\r\n    Một số món lý tưởng như: sữa chua ít béo với trái cây mọng, chuối, táo kèm bơ hạnh nhân,... Ngoài ra, hãy uống 400–500ml nước trước khi tập và tiếp tục bổ sung từng ngụm nhỏ sau mỗi 15 phút tập luyện.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.mediplus.vn/wp-content/uploads/2021/08/6cc3170ead015a5f0310-1.jpg\" alt=\"Uống đủ nước khi tập thể dục\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Việc uống đủ nước rất quan trọng để thải độc và giảm mỡ thừa</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">2. Kéo giãn cơ thể trước khi tập</h4>\r\n  <p>\r\n    Các bài tập kéo giãn giúp làm nóng cơ thể, tránh chấn thương và tăng hiệu quả luyện tập. Một ví dụ đơn giản là động tác gót chân chạm mông, đầu gối thẳng hướng xuống đất – giúp kéo căng cơ tứ đầu đùi.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">3. Thực hiện đa dạng các bài tập</h4>\r\n  <p>\r\n    Kết hợp các bài tập khác nhau (circuit training) giúp tăng nhịp tim, đốt calo tối đa và tác động lên nhiều nhóm cơ. Bạn có thể tập nhiều bài liên tục, nghỉ ít giữa các set để giữ cường độ cao.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.mediplus.vn/wp-content/uploads/2021/08/02fc31f94af1bdafe4e0.jpg\" alt=\"Đa dạng bài tập\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Đa dạng bài tập giúp đốt cháy calo hiệu quả hơn</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">4. Không sử dụng điện thoại khi tập luyện</h4>\r\n  <p>\r\n    Điện thoại khiến bạn phân tâm, giảm hiệu quả và kéo dài thời gian nghỉ. Tập trung vào bài tập sẽ giúp đốt mỡ tốt hơn và cải thiện hiệu suất rõ rệt.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.mediplus.vn/wp-content/uploads/2021/08/a49d68991391e4cfbd80.jpg\" alt=\"Không dùng điện thoại khi tập\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Tập trung luyện tập giúp kết nối cơ thể và tăng hiệu quả</small>\r\n  </div>\r\n\r\n  <h4 class=\"mt-4\">5. Không tập thể dục quá sức của bản thân</h4>\r\n  <p>\r\n    Việc tập luyện quá mức sẽ dễ dẫn đến chấn thương, đau nhức và thậm chí phải dừng tập luyện. Luôn tập với cường độ vừa phải, tăng dần đều và lắng nghe cơ thể của bạn.\r\n  </p>\r\n\r\n  <p class=\"mt-3\">\r\n    Khi biết áp dụng đúng các nguyên tắc này, bạn không chỉ có vóc dáng khỏe mạnh mà còn nâng cao sức đề kháng. Đừng quên lau khô người và tắm nước ấm sau khi tập để thư giãn và tránh cảm lạnh.\r\n  </p>\r\n</div>\r\n', -1, 7, -1, 7, NULL, NULL, '2020-11-19 14:00:00', '2020-11-19 14:20:05', NULL),
(8, 'Khám sức khỏe định kỳ', '### Tại sao nên khám sức khỏe định kỳ?\n\n- **Phát hiện bệnh sớm** Đặc biệt là các bệnh mạn tính hoặc ung thư...', '<div class=\"article-wrapper p-4\">\r\n  <h2 class=\"article-title mb-4 text-uppercase\">Khám sức khỏe định kỳ: Bao lâu khám 1 lần?</h2>\r\n  <p class=\"author\"><strong>Nguyễn Thị Ngọc</strong> – Thạc sĩ, Bác sĩ chuyên khoa II</p>\r\n  <p>\r\n    Bài viết được tư vấn chuyên môn bởi ThS.BS Nguyễn Thị Ngọc – Bác sĩ Nội tổng quát – Nội tiết – Bệnh viện Vinmec Central Park.\r\n  </p>\r\n\r\n  <p>\r\n    Khám sức khỏe định kỳ là phương pháp hiệu quả để bảo vệ sức khỏe, phát hiện sớm và ngăn ngừa nhiều bệnh lý nguy hiểm.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">1. Vì sao nên khám sức khỏe định kỳ?</h4>\r\n  <p>\r\n    Sức khỏe là vốn quý nhất. Việc khám định kỳ giúp phát hiện những bất thường tiềm ẩn, kể cả khi người bệnh không có triệu chứng rõ ràng. Khám tổng quát bao gồm kiểm tra thể chất, xét nghiệm máu, chẩn đoán hình ảnh,... giúp dự đoán nguy cơ bệnh và đưa ra các giải pháp kịp thời.\r\n  </p>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/medium_20200414_082609_201403_20190924_091609_692_max_1800x1800_jpg_2711845fff.jpg\" alt=\"Khám sức khỏe định kỳ\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Khám sức khỏe giúp mỗi người hiểu về tình trạng và nguy cơ gây bệnh</small>\r\n  </div>\r\n\r\n  <p>\r\n    Phát hiện bệnh ở giai đoạn sớm giúp tăng khả năng điều trị thành công, giảm chi phí, đồng thời điều chỉnh lối sống và chế độ dinh dưỡng phù hợp để tăng cường sức khỏe.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">2. Nên khám sức khỏe định kỳ bao lâu 1 lần?</h4>\r\n  <p>\r\n    Các chuyên gia y tế khuyến nghị khám sức khỏe 1–2 lần/năm. Tần suất này phụ thuộc vào độ tuổi, môi trường làm việc và yếu tố nguy cơ như tiền sử bệnh tật, thói quen sinh hoạt,...\r\n  </p>\r\n\r\n  <ul>\r\n    <li><strong>Tuổi 18–30:</strong> Tập trung vào bệnh truyền nhiễm, sức khỏe sinh sản.</li>\r\n    <li><strong>Tuổi 30–40:</strong> Tầm soát bệnh tim mạch, tiểu đường, rối loạn chuyển hóa,...</li>\r\n    <li><strong>Tuổi trung niên:</strong> Tầm soát ung thư (gan, phổi, vòm họng, tiền liệt tuyến,...), bệnh xương khớp, huyết áp.</li>\r\n  </ul>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/small_20200419_032406_714240_photo1524190642502_max_1800x1800_jpg_9d545b11ed.jpg\" alt=\"Tầm soát ung thư\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Nên tiến hành tầm soát ung thư định kỳ ở tuổi trung niên</small>\r\n  </div>\r\n\r\n  <p>\r\n    Người có yếu tố nguy cơ cao như hút thuốc, rượu bia, ít vận động nên khám thường xuyên hơn.\r\n  </p>\r\n\r\n  <h4 class=\"mt-4\">3. Quy định khám sức khỏe định kỳ theo thông tư mới nhất</h4>\r\n  <p>\r\n    Theo Thông tư 19/2016/TT-BYT và Luật An toàn lao động 2015:\r\n  </p>\r\n  <ul>\r\n    <li>Người lao động phải được khám sức khỏe ít nhất 1 lần/năm.</li>\r\n    <li>Người làm việc nặng nhọc, độc hại, người cao tuổi, phụ nữ,... cần khám 6 tháng/lần.</li>\r\n    <li>Khám phát hiện bệnh nghề nghiệp cho người tiếp xúc với yếu tố nguy cơ.</li>\r\n    <li>Chi phí do cơ quan sử dụng lao động chi trả.</li>\r\n  </ul>\r\n\r\n  <div class=\"text-center my-3\">\r\n    <img src=\"https://www.vinmec.com/static/uploads/medium_20190219_021909_913100_sktqwp_1_max_1800x1800_jpeg_db7eaf6ba2.jpg\" alt=\"Khám sức khỏe cho người lao động\" class=\"img-fluid rounded\">\r\n    <small class=\"text-muted d-block mt-1\">Người lao động phải khám sức khỏe tổng quát ít nhất một năm một lần</small>\r\n  </div>\r\n\r\n  <p>\r\n    Khám sức khỏe định kỳ giúp bảo vệ bản thân và đóng góp vào sự phát triển bền vững của doanh nghiệp, xã hội.\r\n  </p>\r\n</div>\r\n', -1, 8, -1, 8, NULL, NULL, '2020-11-20 11:35:10', '2020-11-20 11:55:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `price`, `image`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Gói khám tổng quát cơ bản', 'Khám tổng quát sức khỏe cơ bản bao gồm khám nội, ngoại, xét nghiệm máu cơ bản', 1500000.00, 'basic_package.webp', 1, '2025-04-08 00:36:30', '2025-04-08 00:36:30'),
(2, 'Gói khám nâng cao', 'Khám tổng quát sức khỏe nâng cao bao gồm khám chuyên sâu và các xét nghiệm toàn diện', 2500000.00, 'advanced_package.webp', 1, '2025-04-08 00:36:30', '2025-04-08 00:36:30'),
(3, 'Gói khám VIP', 'Gói khám VIP với đầy đủ các dịch vụ cao cấp và bác sĩ chuyên khoa', 5000000.00, 'vip_package.webp', 1, '2025-04-08 00:36:30', '2025-04-08 00:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiryDate` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
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

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('naR9qwlbXkuOpEgtZqARNIcYgOlQ8BXh', '2025-04-09 01:36:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2025-04-08T18:36:45.806Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\"},\"flash\":{}}', '2025-04-08 01:36:43', '2025-04-08 01:36:45'),
('x8ZN9dlfc-a_bXrzn8mDUMWMpvS26sMM', '2025-04-16 16:13:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2025-04-16T09:13:29.088Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\"},\"flash\":{}}', '2025-04-15 16:13:28', '2025-04-15 16:13:29');

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
(1, 'Tai Mũi Họng', NULL, 'TaiMuiHong.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Phẫu Thuật Thần Kinh', NULL, 'ThanKinh.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Phẫu Thuật', NULL, 'PhauThuat.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Tim Mạch (Tim)', NULL, 'TimMach.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Y Khoa', NULL, 'YKhoa.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(6, 'Gan Ghép Tạng', NULL, 'Gan.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(7, 'Phẫu Thuật Thẩm Mỹ', NULL, 'PhauThuatThamMy.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

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
(1, 'admin - Simplo', 'admin@gmail.com', '$2a$10$9GJawP5LYHEIM5LCj4PStOZ4Sc/U5KSt1dXUhhGJJybj41RazLZi6', 'Vĩnh Long', '088456732', 'admin.jpg', 'male', NULL, 1, 1, '2020-11-13 19:44:36', '2025-04-15 16:11:51', NULL),
(2, 'Doctor - Trịnh Trần Phương Hướng', 'doctor@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'An Giang', '088456735', 'doctor3.png', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 19:46:18', NULL),
(3, 'Doctor - Trần Bác Ái', 'doctor5@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Long An', '088456735', 'doctor4.jpg', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:19:55', NULL),
(4, 'Doctor - Thắn Đường', 'doctor10@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Tiền Giang', '088456735', 'doctor1.png', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:15', NULL),
(5, 'Doctor - Phạm Trần Trung Trực', 'doctor1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Hậu Giang', '088456735', 'doctor2.jpg', 'unknown', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:26', NULL),
(6, 'Doctor - Phan Huỳnh Thu', 'doctor2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Cần Thơ', '088456735', 'doctor3.jpg', 'female', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:26', NULL),
(7, 'Doctor - Phan Hùng', 'doctor3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Cà Mau', '088456735', 'doctor4.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:12', NULL),
(8, 'Supporter - Phan Huỳnh Thu', 'supporter@gmail.com', '$2a$10$/IGn24RC.VUtQHaIt1tN6el5O0GeKUGwOvOojtKIe/R7aYJNIPmL6', 'Đồng Tháp', '088456736', 'supporter.png', 'female', NULL, 3, 1, '2020-11-13 19:44:36', '2025-04-08 01:35:49', NULL),
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
-- Indexes for table `handbooks`
--
ALTER TABLE `handbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `token` (`token`);

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
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
