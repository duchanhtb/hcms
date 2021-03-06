-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 06:09 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `last_login_time` datetime NOT NULL,
  `last_login_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `name`, `pass`, `email`, `level`, `date_created`, `last_login_time`, `last_login_ip`) VALUES
(1, 'admin', '96e51e0a813cf3873ac8e6a925387e75', 'hanhcoltech@gmail.com', 3, '2016-02-29 09:34:33', '2016-08-31 09:47:02', '127.0.0.1'),
(2, 'duchanhtb', '17c8506433009a5dc552a8fc5a97d505', 'hanhnguyen_rav@yahoo.com.vn', 3, '2016-02-29 09:35:02', '2017-10-28 22:08:05', '127.0.0.1'),
(3, 'admin1', '96e51e0a813cf3873ac8e6a925387e75', 'admin1@gmail.com', 1, '2016-02-29 09:35:15', '2016-02-29 09:27:47', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `m_country`
--

CREATE TABLE `m_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `m_country`
--

INSERT INTO `m_country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Barbuda'),
(22, 'Belarus'),
(23, 'Belgium'),
(24, 'Belize'),
(25, 'Benin'),
(26, 'Bermuda'),
(27, 'Bhutan'),
(28, 'Bolivia'),
(29, 'Bosnia'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Trty.'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Caicos Islands'),
(39, 'Cambodia'),
(40, 'Cameroon'),
(41, 'Canada'),
(42, 'Cape Verde'),
(43, 'Cayman Islands'),
(44, 'Central African Republic'),
(45, 'Chad'),
(46, 'Chile'),
(47, 'China'),
(48, 'Christmas Island'),
(49, 'Cocos (Keeling) Islands'),
(50, 'Colombia'),
(51, 'Comoros'),
(52, 'Congo'),
(53, 'Congo, Democratic Republic of the'),
(54, 'Cook Islands'),
(55, 'Costa Rica'),
(56, 'Cote d\'Ivoire'),
(57, 'Croatia'),
(58, 'Cuba'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Futuna Islands'),
(81, 'Gabon'),
(82, 'Gambia'),
(83, 'Georgia'),
(84, 'Germany'),
(85, 'Ghana'),
(86, 'Gibraltar'),
(87, 'Greece'),
(88, 'Greenland'),
(89, 'Grenada'),
(90, 'Guadeloupe'),
(91, 'Guam'),
(92, 'Guatemala'),
(93, 'Guernsey'),
(94, 'Guinea'),
(95, 'Guinea-Bissau'),
(96, 'Guyana'),
(97, 'Haiti'),
(98, 'Heard'),
(99, 'Herzegovina'),
(100, 'Holy See'),
(101, 'Honduras'),
(102, 'Hong Kong'),
(103, 'Hungary'),
(104, 'Iceland'),
(105, 'India'),
(106, 'Indonesia'),
(107, 'Iran (Islamic Republic of)'),
(108, 'Iraq'),
(109, 'Ireland'),
(110, 'Isle of Man'),
(111, 'Israel'),
(112, 'Italy'),
(113, 'Jamaica'),
(114, 'Jan Mayen Islands'),
(115, 'Japan'),
(116, 'Jersey'),
(117, 'Jordan'),
(118, 'Kazakhstan'),
(119, 'Kenya'),
(120, 'Kiribati'),
(121, 'Korea'),
(122, 'Korea (Democratic)'),
(123, 'Kuwait'),
(124, 'Kyrgyzstan'),
(125, 'Lao'),
(126, 'Latvia'),
(127, 'Lebanon'),
(128, 'Lesotho'),
(129, 'Liberia'),
(130, 'Libyan Arab Jamahiriya'),
(131, 'Liechtenstein'),
(132, 'Lithuania'),
(133, 'Luxembourg'),
(134, 'Macao'),
(135, 'Macedonia'),
(136, 'Madagascar'),
(137, 'Malawi'),
(138, 'Malaysia'),
(139, 'Maldives'),
(140, 'Mali'),
(141, 'Malta'),
(142, 'Marshall Islands'),
(143, 'Martinique'),
(144, 'Mauritania'),
(145, 'Mauritius'),
(146, 'Mayotte'),
(147, 'McDonald Islands'),
(148, 'Mexico'),
(149, 'Micronesia'),
(150, 'Miquelon'),
(151, 'Moldova'),
(152, 'Monaco'),
(153, 'Mongolia'),
(154, 'Montenegro'),
(155, 'Montserrat'),
(156, 'Morocco'),
(157, 'Mozambique'),
(158, 'Myanmar'),
(159, 'Namibia'),
(160, 'Nauru'),
(161, 'Nepal'),
(162, 'Netherlands'),
(163, 'Netherlands Antilles'),
(164, 'Nevis'),
(165, 'New Caledonia'),
(166, 'New Zealand'),
(167, 'Nicaragua'),
(168, 'Niger'),
(169, 'Nigeria'),
(170, 'Niue'),
(171, 'Norfolk Island'),
(172, 'Northern Mariana Islands'),
(173, 'Norway'),
(174, 'Oman'),
(175, 'Pakistan'),
(176, 'Palau'),
(177, 'Palestinian Territory, Occupied'),
(178, 'Panama'),
(179, 'Papua New Guinea'),
(180, 'Paraguay'),
(181, 'Peru'),
(182, 'Philippines'),
(183, 'Pitcairn'),
(184, 'Poland'),
(185, 'Portugal'),
(186, 'Principe'),
(187, 'Puerto Rico'),
(188, 'Qatar'),
(189, 'Reunion'),
(190, 'Romania'),
(191, 'Russian Federation'),
(192, 'Rwanda'),
(193, 'Saint Barthelemy'),
(194, 'Saint Helena'),
(195, 'Saint Kitts'),
(196, 'Saint Lucia'),
(197, 'Saint Martin (French part)'),
(198, 'Saint Pierre'),
(199, 'Saint Vincent'),
(200, 'Samoa'),
(201, 'San Marino'),
(202, 'Sao Tome'),
(203, 'Saudi Arabia'),
(204, 'Senegal'),
(205, 'Serbia'),
(206, 'Seychelles'),
(207, 'Sierra Leone'),
(208, 'Singapore'),
(209, 'Slovakia'),
(210, 'Slovenia'),
(211, 'Solomon Islands'),
(212, 'Somalia'),
(213, 'South Africa'),
(214, 'South Georgia'),
(215, 'South Sandwich Islands'),
(216, 'Spain'),
(217, 'Sri Lanka'),
(218, 'Sudan'),
(219, 'Suriname'),
(220, 'Svalbard'),
(221, 'Swaziland'),
(222, 'Sweden'),
(223, 'Switzerland'),
(224, 'Syrian Arab Republic'),
(225, 'Taiwan'),
(226, 'Tajikistan'),
(227, 'Tanzania'),
(228, 'Thailand'),
(229, 'The Grenadines'),
(230, 'Timor-Leste'),
(231, 'Tobago'),
(232, 'Togo'),
(233, 'Tokelau'),
(234, 'Tonga'),
(235, 'Trinidad'),
(236, 'Tunisia'),
(237, 'Turkey'),
(238, 'Turkmenistan'),
(239, 'Turks Islands'),
(240, 'Tuvalu'),
(241, 'Uganda'),
(242, 'Ukraine'),
(243, 'United Arab Emirates'),
(244, 'United Kingdom'),
(245, 'United States'),
(246, 'Uruguay'),
(247, 'US Minor Outlying Islands'),
(248, 'Uzbekistan'),
(249, 'Vanuatu'),
(250, 'Vatican City State'),
(251, 'Venezuela'),
(252, 'Vietnam'),
(253, 'Virgin Islands (British)'),
(254, 'Virgin Islands (US)'),
(255, 'Wallis'),
(256, 'Western Sahara'),
(257, 'Yemen'),
(258, 'Zambia'),
(259, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `m_districts`
--

CREATE TABLE `m_districts` (
  `id` int(11) UNSIGNED NOT NULL,
  `province_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin quận huyện Việt Nam';

--
-- Dumping data for table `m_districts`
--

INSERT INTO `m_districts` (`id`, `province_id`, `name`) VALUES
(1, 1, 'Quận Ba Đình'),
(2, 1, 'Quận Hoàn Kiếm'),
(3, 1, 'Quận Hai Bà Trưng'),
(4, 1, 'Quận Đống Đa'),
(5, 1, 'Quận Tây Hồ'),
(6, 1, 'Quận Cầu Giấy'),
(7, 1, 'Quận Thanh Xuân'),
(8, 1, 'Quận Hoàng Mai'),
(9, 1, 'Quận Long Biên'),
(10, 1, 'Huyện Từ Liêm'),
(11, 1, 'Huyện Thanh Trì'),
(12, 1, 'Huyện Gia Lâm'),
(13, 1, 'Huyện Đông Anh'),
(14, 1, 'Huyện Sóc Sơn'),
(15, 1, 'Thành phố Hà Đông'),
(16, 1, 'Thành phố Sơn Tây'),
(17, 1, 'Huyện Ba Vì'),
(18, 1, 'Huyện Phúc Thọ'),
(19, 1, 'Huyện Thạch Thất'),
(20, 1, 'Huyện Quốc Oai'),
(21, 1, 'Huyện Chương Mỹ'),
(22, 1, 'Huyện Đan Phượng'),
(23, 1, 'Huyện Hoài Đức'),
(24, 1, 'Huyện Thanh Oai'),
(25, 1, 'Huyện Mỹ Đức'),
(26, 1, 'Huyện Ứng Hòa'),
(27, 1, 'Huyện Thường Tín'),
(28, 1, 'Huyện Phú Xuyên'),
(29, 1, 'Huyện Mê Linh'),
(30, 2, 'Quận Một'),
(31, 2, 'Quận Hai'),
(32, 2, 'Quận Ba'),
(33, 2, 'Quận Bốn'),
(34, 2, 'Quận Năm'),
(35, 2, 'Quận Sáu'),
(36, 2, 'Quận Bảy'),
(37, 2, 'Quận Tám'),
(38, 2, 'Quận Chín'),
(39, 2, 'Quận Mười'),
(40, 2, 'Quận Mười một'),
(41, 2, 'Quận Mười hai'),
(42, 2, 'Quận Gò Vấp'),
(43, 2, 'Quận Tân Bình'),
(44, 2, 'Quận Tân Phú'),
(45, 2, 'Quận Bình Thạnh'),
(46, 2, 'Quận Phú Nhuận'),
(47, 2, 'Quận Thủ Đức'),
(48, 2, 'Quận Bình Tân'),
(49, 2, 'Huyện Bình Chánh'),
(50, 2, 'Huyện Củ Chi'),
(51, 2, 'Huyện Hóc Môn'),
(52, 2, 'Huyện Nhà Bè'),
(53, 2, 'Huyện Cần Giờ'),
(54, 3, 'Sở GD&ĐT'),
(55, 3, 'Quận Hồng Bàng'),
(56, 3, 'Quận Lê Chân'),
(57, 3, 'Quận Ngô Quyền'),
(58, 3, 'Quận Kiến An'),
(59, 3, 'Quận Hải An'),
(60, 3, 'Quận Đồ Sơn'),
(61, 3, 'Huyện An Lão'),
(62, 3, 'Huyện Kiến Thụy'),
(63, 3, 'Huyện Thủy Nguyên'),
(64, 3, 'Huyện An Dương'),
(65, 3, 'Huyện Tiên Lãng'),
(66, 3, 'Huyện Vĩnh Bảo'),
(67, 3, 'Huyện Cát Hải'),
(68, 3, 'Huyện Bạch Long Vĩ'),
(69, 3, 'Quận Dương Kinh'),
(70, 4, 'Quận Hải Châu'),
(71, 4, 'Quận Thanh Khê'),
(72, 4, 'Quận Sơn Trà'),
(73, 4, 'Quận Ngũ Hành Sơn'),
(74, 4, 'Quận Liên Chiểu'),
(75, 4, 'Huyện Hoà Vang'),
(76, 4, 'Quận Cẩm Lệ'),
(77, 5, 'Thị xã Hà Giang'),
(78, 5, 'Huyện Đồng Văn'),
(79, 5, 'Huyện Mèo Vạc'),
(80, 5, 'Huyện Yên Minh'),
(81, 5, 'Huyện Quản Bạ'),
(82, 5, 'Huyện Vị Xuyên'),
(83, 5, 'Huyện Bắc Mê'),
(84, 5, 'Huyện Hoàng Su Phì'),
(85, 5, 'Huyện Xín Mần'),
(86, 5, 'Huyện Bắc Quang'),
(87, 5, 'Huyện Quang Bình'),
(88, 6, 'Thị xã Cao Bằng'),
(89, 6, 'Huyện Bảo Lạc'),
(90, 6, 'Huyện Thông Nông'),
(91, 6, 'Huyện Hà Quảng'),
(92, 6, 'Huyện Trà Lĩnh'),
(93, 6, 'Huyện Trùng Khánh'),
(94, 6, 'Huyện Nguyên Bình'),
(95, 6, 'Huyện Hoà An'),
(96, 6, 'Huyện Quảng Uyên'),
(97, 6, 'Huyện Thạch An'),
(98, 6, 'Huyện Hạ Lang'),
(99, 6, 'Huyện Bảo Lâm'),
(100, 6, 'Huyện Phục Hoà'),
(101, 7, 'Thị xã Lai Châu'),
(102, 7, 'Huyện Tam Đường'),
(103, 7, 'Huyện Phong Thổ'),
(104, 7, 'Huyện Sìn Hồ'),
(105, 7, 'Huyện Mường Tè'),
(106, 7, 'Huyện Than Uyên'),
(107, 7, 'Huyện Tân Uyên'),
(108, 8, 'Thành phố Lào Cai'),
(109, 8, 'Huyện Xi Ma Cai'),
(110, 8, 'Huyện Bát Xát'),
(111, 8, 'Huyện Bảo Thắng'),
(112, 8, 'Huyện Sa Pa'),
(113, 8, 'Huyện Văn Bàn'),
(114, 8, 'Huyện Bảo Yên'),
(115, 8, 'Huyện Bắc Hà'),
(116, 8, 'Huyện Mường Khương'),
(117, 9, 'Thị xã Tuyên Quang'),
(118, 9, 'Huyện Na Hang'),
(119, 9, 'Huyện Chiêm Hoá'),
(120, 9, 'Huyện Hàm Yên'),
(121, 9, 'Huyện Yên Sơn'),
(122, 9, 'Huyện Sơn Dương'),
(123, 10, 'Thành phố Lạng Sơn'),
(124, 10, 'Huyện Văn Lãng'),
(125, 10, 'Huyện Bắc Sơn'),
(126, 10, 'Huyện Lộc Bình'),
(127, 10, 'Huyện Chi Lăng'),
(128, 10, 'Huyện Tràng Định'),
(129, 10, 'Huyện Bình Gia'),
(130, 10, 'Huyện Văn Quan'),
(131, 10, 'Huyện Cao Lộc'),
(132, 10, 'Huyện Đình Lập'),
(133, 10, 'Huyện Hữu Lũng'),
(134, 11, 'Thị xã Bắc Kạn'),
(135, 11, 'Huyện Chợ Đồn'),
(136, 11, 'Huyện Bạch Thông'),
(137, 11, 'Huyện Na Rì'),
(138, 11, 'Huyện Ngân Sơn'),
(139, 11, 'Huyện Ba Bể'),
(140, 11, 'Huyện Chợ Mới'),
(141, 11, 'Huyện Pác Nặm'),
(142, 12, 'Sở Giáo dục và Đào tạo'),
(143, 12, 'TP. Thái Nguyên'),
(144, 12, 'Thị xã Sông Công'),
(145, 12, 'Huyện Định Hoá'),
(146, 12, 'Huyện Phú Lương'),
(147, 12, 'Huyện Võ Nhai'),
(148, 12, 'Huyện Đại Từ'),
(149, 12, 'Huyện Đồng Hỷ'),
(150, 12, 'Huyện Phú Bình'),
(151, 12, 'Huyện Phổ Yên'),
(152, 13, 'Thành phố Yên Bái'),
(153, 13, 'Thị xã Nghĩa Lộ'),
(154, 13, 'Huyện Văn Yên'),
(155, 13, 'Huyện Yên Bình'),
(156, 13, 'Huyện Mù Cang Chải'),
(157, 13, 'Huyện Văn Chấn'),
(158, 13, 'Huyện Trấn Yên'),
(159, 13, 'Huyện Trạm Tấu'),
(160, 13, 'Huyện Lục Yên'),
(161, 14, 'Thị xã Sơn La'),
(162, 14, 'Huyện Quỳnh Nhai'),
(163, 14, 'Huyện Mường La'),
(164, 14, 'Huyện Thuận Châu'),
(165, 14, 'Huyện Bắc Yên'),
(166, 14, 'Huyện Phù Yên'),
(167, 14, 'Huyện Mai Sơn'),
(168, 14, 'Huyện Yên Châu'),
(169, 14, 'Huyện Sông Mã'),
(170, 14, 'Huyện Mộc Châu'),
(171, 14, 'Huyện Sốp Cộp'),
(172, 15, 'TP. Việt Trì'),
(173, 15, 'Thị xã Phú Thọ'),
(174, 15, 'Huyện Đoan Hùng'),
(175, 15, 'Huyện Thanh Ba'),
(176, 15, 'Huyện Hạ Hoà'),
(177, 15, 'Huyện Cẩm Khê'),
(178, 15, 'Huyện Yên Lập'),
(179, 15, 'Huyện Thanh Sơn'),
(180, 15, 'Huyện Phù Ninh'),
(181, 15, 'Huyện Lâm Thao'),
(182, 15, 'Huyện Tam Nông'),
(183, 15, 'Huyện Thanh Thủy'),
(184, 15, 'Huyện Tân Sơn'),
(185, 16, 'Sở Giáo dục và Đào tạo'),
(186, 16, 'Thành phố Vĩnh Yên'),
(187, 16, 'Huyện Tam Dương'),
(188, 16, 'Huyện Lập Thạch'),
(189, 16, 'Huyện Vĩnh Tường'),
(190, 16, 'Huyện Yên Lạc'),
(191, 16, 'Huyện Bình Xuyên'),
(192, 16, 'Thị xã Phúc Yên'),
(193, 16, 'Huyện Tam Đảo'),
(194, 17, 'TP. Hạ Long'),
(195, 17, 'Thị xã Cẩm Phả'),
(196, 17, 'Thị xã Uông Bí'),
(197, 17, 'Thị xã Móng Cái'),
(198, 17, 'Huyện Bình Liêu'),
(199, 17, 'Huyện Đầm Hà'),
(200, 17, 'Huyện Hải Hà'),
(201, 17, 'Huyện Tiên Yên'),
(202, 17, 'Huyện Ba Chẽ'),
(203, 17, 'Huyện Đông Triều'),
(204, 17, 'Huyện Yên Hưng'),
(205, 17, 'Huyện Hoành Bồ'),
(206, 17, 'Huyện Vân Đồn'),
(207, 17, 'Huyện Cô Tô'),
(208, 18, 'Thành phố Bắc Giang'),
(209, 18, 'Huyện Yên Thế'),
(210, 18, 'Huyện Lục Ngạn'),
(211, 18, 'Huyện Sơn Động'),
(212, 18, 'Huyện Lục Nam'),
(213, 18, 'Huyện Tân Yên'),
(214, 18, 'Huyện Hiệp Hoà'),
(215, 18, 'Huyện Lạng Giang'),
(216, 18, 'Huyện Việt Yên'),
(217, 18, 'Huyện Yên Dũng'),
(218, 19, 'Sở Giáo dục và Đào tạo'),
(219, 19, 'Thành phố Bắc Ninh'),
(220, 19, 'Huyện Yên Phong'),
(221, 19, 'Huyện Quế Võ'),
(222, 19, 'Huyện Tiên Du'),
(223, 19, 'Huyện Từ Sơn'),
(224, 19, 'Huyện Thuận Thành'),
(225, 19, 'Huyện Gia Bình'),
(226, 19, 'Huyện Lương Tài'),
(227, 20, 'Thành phố Hải Dương'),
(228, 20, 'Huyện Chí Linh'),
(229, 20, 'Huyện Nam Sách'),
(230, 20, 'Huyện Kinh Môn'),
(231, 20, 'Huyện Gia Lộc'),
(232, 20, 'Huyện Tứ Kỳ'),
(233, 20, 'Huyện Thanh Miện'),
(234, 20, 'Huyện Ninh Giang'),
(235, 20, 'Huyện Cẩm Giàng'),
(236, 20, 'Huyện Thanh Hà'),
(237, 20, 'Huyện Kim Thành'),
(238, 20, 'Huyện Bình Giang'),
(239, 21, 'Thị xã Hưng Yên'),
(240, 21, 'Huyện Kim Động'),
(241, 21, 'Huyện Ân Thi'),
(242, 21, 'Huyện Khoái Châu'),
(243, 21, 'Huyện Yên Mỹ'),
(244, 21, 'Huyện Tiên Lữ'),
(245, 21, 'Huyện Phù Cừ'),
(246, 21, 'Huyện Mỹ Hào'),
(247, 21, 'Huyện Văn Lâm'),
(248, 21, 'Huyện Văn Giang'),
(249, 22, 'Thành phố Hoà Bình'),
(250, 22, 'Huyện Đà Bắc'),
(251, 22, 'Huyện Mai Châu'),
(252, 22, 'Huyện Tân Lạc'),
(253, 22, 'Huyện Lạc Sơn'),
(254, 22, 'Huyện Kỳ Sơn'),
(255, 22, 'Huyện Lương Sơn'),
(256, 22, 'Huyện Kim Bôi'),
(257, 22, 'Huyện Lạc Thuỷ'),
(258, 22, 'Huyện Yên Thuỷ'),
(259, 22, 'Huyện Cao Phong'),
(260, 23, 'Thành phố Phủ Lý'),
(261, 23, 'Huyện Duy Tiên'),
(262, 23, 'Huyện Kim Bảng'),
(263, 23, 'Huyện Lý Nhân'),
(264, 23, 'Huỵện Thanh Liêm'),
(265, 23, 'Huyện Bình Lục'),
(266, 24, 'TP. Nam Định'),
(267, 24, 'Huyện Mỹ Lộc'),
(268, 24, 'Huyện Xuân Trường'),
(269, 24, 'Huyện Giao Thủy'),
(270, 24, 'Huyện ý Yên'),
(271, 24, 'Huyện Vụ Bản'),
(272, 24, 'Huyện Nam Trực'),
(273, 24, 'Huyện Trực Ninh'),
(274, 24, 'Huyện Nghĩa Hưng'),
(275, 24, 'Huyện Hải Hậu'),
(276, 25, 'Thành phố Thái Bình'),
(277, 25, 'Huyện Quỳnh Phụ'),
(278, 25, 'Huyện Hưng Hà'),
(279, 25, 'Huyện Đông Hưng'),
(280, 25, 'Huyện Vũ Thư'),
(281, 25, 'Huyện Kiến Xương'),
(282, 25, 'Huyện Tiền Hải'),
(283, 25, 'Huyện Thái Thuỵ'),
(284, 26, 'Thành phố Ninh Bình'),
(285, 26, 'Thị xã Tam Điệp'),
(286, 26, 'Huyện Nho Quan'),
(287, 26, 'Huyện Gia Viễn'),
(288, 26, 'Huyện Hoa Lư'),
(289, 26, 'Huyện Yên Mô'),
(290, 26, 'Huyện Kim Sơn'),
(291, 26, 'Huyện Yên Khánh'),
(292, 27, 'TP.Thanh Hoá'),
(293, 27, 'Thị xã Bỉm Sơn'),
(294, 27, 'Thị xã Sầm Sơn'),
(295, 27, 'Huyện Quan Hoá'),
(296, 27, 'Huyện Quan Sơn'),
(297, 27, 'Huyện Mường Lát'),
(298, 27, 'Huyện Bá Thước'),
(299, 27, 'Huyện Thường Xuân'),
(300, 27, 'Huyện Như Xuân'),
(301, 27, 'Huyện Như Thanh'),
(302, 27, 'Huyện Lang Chánh'),
(303, 27, 'Huyện Ngọc Lặc'),
(304, 27, 'Huyện Thạch Thành'),
(305, 27, 'Huyện Cẩm Thủy'),
(306, 27, 'Huyện Thọ Xuân'),
(307, 27, 'Huyện Vĩnh Lộc'),
(308, 27, 'Huyện Thiệu Hoá'),
(309, 27, 'Huyện Triệu Sơn'),
(310, 27, 'Huyện Nông Cống'),
(311, 27, 'Huyện Đông Sơn'),
(312, 27, 'Huyện Hà Trung'),
(313, 27, 'Huyện Hoằng Hoá'),
(314, 27, 'Huyện Nga Sơn'),
(315, 27, 'Huyện Hậu Lộc'),
(316, 27, 'Huyện Quảng Xương'),
(317, 27, 'Huyện Tĩnh Gia'),
(318, 27, 'Huyện Yên Định'),
(319, 28, 'Thành phố Vinh'),
(320, 28, 'Thị xã Cửa Lò'),
(321, 28, 'Huyện Quỳ Châu'),
(322, 28, 'Huyện Quỳ Hợp'),
(323, 28, 'Huyện Nghĩa Đàn'),
(324, 28, 'Huyện Quỳnh Lưu'),
(325, 28, 'Huyện Kỳ Sơn'),
(326, 28, 'Huyện Tương Dương'),
(327, 28, 'Huyện Con Cuông'),
(328, 28, 'Huyện Tân Kỳ'),
(329, 28, 'Huyện Yên Thành'),
(330, 28, 'Huyện Diễn Châu'),
(331, 28, 'Huyện Anh Sơn'),
(332, 28, 'Huyện Đô Lương'),
(333, 28, 'Huyện Thanh Chương'),
(334, 28, 'Huyện Nghi Lộc'),
(335, 28, 'Huyện Nam Đàn'),
(336, 28, 'Huyện Hưng Nguyên'),
(337, 28, 'Huyện Quế Phong'),
(338, 29, 'Thành phố Hà Tĩnh'),
(339, 29, 'Thị xã Hồng Lĩnh'),
(340, 29, 'Huyện Hương Sơn'),
(341, 29, 'Huyện Đức Thọ'),
(342, 29, 'Huyện Nghi Xuân'),
(343, 29, 'Huyện Can Lộc'),
(344, 29, 'Huyện Hương Khê'),
(345, 29, 'Huyện Thạch Hà'),
(346, 29, 'Huyện Cẩm Xuyên'),
(347, 29, 'Huyện Kỳ Anh'),
(348, 29, 'Huyện Vũ Quang'),
(349, 29, 'Huyện Lộc Hà'),
(350, 30, 'Thành phố Đồng Hới'),
(351, 30, 'Huyện Tuyên Hoá'),
(352, 30, 'Huyện Minh Hoá'),
(353, 30, 'Huyện Quảng Trạch'),
(354, 30, 'Huyện Bố Trạch'),
(355, 30, 'Huyện Quảng Ninh'),
(356, 30, 'Huyện Lệ Thuỷ'),
(357, 31, 'Thị xã Đông Hà'),
(358, 31, 'Thị xã Quảng Trị'),
(359, 31, 'Huyện Vĩnh Linh'),
(360, 31, 'Huyện Gio Linh'),
(361, 31, 'Huyện Cam Lộ'),
(362, 31, 'Huyện Triệu Phong'),
(363, 31, 'Huyện Hải Lăng'),
(364, 31, 'Huyện Hướng Hoá'),
(365, 31, 'Huyện Đăk Rông'),
(366, 31, 'Huyện đảo Cồn cỏ'),
(367, 32, 'Thành phố Huế'),
(368, 32, 'Huyện Phong Điền'),
(369, 32, 'Huyện Hương Trà'),
(370, 32, 'Huyện Phú Vang'),
(371, 32, 'Huyện Hương Thuỷ'),
(372, 32, 'Huyện Nam Đông'),
(373, 32, 'Huyện A Lưới'),
(374, 32, 'Huyện Quảng Điền 3307 Huyện Phú Lộc'),
(375, 33, 'Thành phố Tam Kỳ'),
(376, 33, 'Thị xã Hội An'),
(377, 33, 'Huyện Duy Xuyên'),
(378, 33, 'Huyện Điện Bàn'),
(379, 33, 'Huyện Đại Lộc'),
(380, 33, 'Huyện Quế Sơn'),
(381, 33, 'Huyện Hiệp Đức'),
(382, 33, 'Huyện Thăng Bình'),
(383, 33, 'Huyện Núi Thành'),
(384, 33, 'Huyện Tiên Phước'),
(385, 33, 'Huyện Bắc Trà My'),
(386, 33, 'Huyện Đông Giang'),
(387, 33, 'Huyện Nam Giang'),
(388, 33, 'Huyện Phước Sơn'),
(389, 33, 'Huyện Nam Trà My'),
(390, 33, 'Huyện Tây Giang'),
(391, 33, 'Huyện Phú Ninh'),
(392, 33, 'Huyện Nông Sơn'),
(393, 34, 'TP.Quảng Ngãi'),
(394, 34, 'Huyện Lý Sơn'),
(395, 34, 'Huyện Bình Sơn'),
(396, 34, 'Huyện Trà Bồng'),
(397, 34, 'Huyện Sơn Tịnh'),
(398, 34, 'Huyện Sơn Hà'),
(399, 34, 'Huyện Tư Nghĩa'),
(400, 34, 'Huyện Nghĩa Hành'),
(401, 34, 'Huyện Minh Long'),
(402, 34, 'Huyện Mộ Đức'),
(403, 34, 'Huyện Đức Phổ'),
(404, 34, 'Huyện Ba Tơ'),
(405, 34, 'Huyện Sơn Tây'),
(406, 34, 'Huyện Tây Trà'),
(407, 35, 'Thị xã KonTum'),
(408, 35, 'Huyện Đăk Glei'),
(409, 35, 'Huyện Ngọc Hồi'),
(410, 35, 'Huyện Đăk Tô'),
(411, 35, 'Huyện Sa Thầy'),
(412, 35, 'Huyện Kon Plong'),
(413, 35, 'Huyện Đăk Hà'),
(414, 35, 'Huyện Kon Rộy'),
(415, 35, 'Huyện Tu Mơ Rông'),
(416, 36, 'Thành phố Quy Nhơn'),
(417, 36, 'Huyện An Lão'),
(418, 36, 'Huyện Hoài Ân'),
(419, 36, 'Huyện Hoài Nhơn'),
(420, 36, 'Huyện Phù Mỹ'),
(421, 36, 'Huyện Phù Cát'),
(422, 36, 'Huyện Vĩnh Thạnh'),
(423, 36, 'Huyện Tây Sơn'),
(424, 36, 'Huyện Vân Canh'),
(425, 36, 'Huyện An Nhơn'),
(426, 36, 'Huyện Tuy Phước'),
(427, 37, 'Thành phố Pleiku'),
(428, 37, 'Huyện Chư Păh'),
(429, 37, 'Huyện Mang Yang'),
(430, 37, 'Huyện Kbang'),
(431, 37, 'Thị xã An Khê'),
(432, 37, 'Huyện Kông Chro'),
(433, 37, 'Huyện Đức Cơ'),
(434, 37, 'Huyện Chưprông'),
(435, 37, 'Huyện Chư Sê'),
(436, 37, 'Huyện Ayunpa'),
(437, 37, 'Huyện Krông Pa'),
(438, 37, 'Huyện Ia Grai'),
(439, 37, 'Huyện Đăk Đoa'),
(440, 37, 'Huyện Ia Pa'),
(441, 37, 'Huyện Đăk Pơ'),
(442, 37, 'Huyện Phú Thiện'),
(443, 38, 'Thị xã Tuy Hoà'),
(444, 38, 'Huyện Đồng Xuân'),
(445, 38, 'Huyện Sông Cầu'),
(446, 38, 'Huyện Tuy An'),
(447, 38, 'Huyện Sơn Hoà'),
(448, 38, 'Huyện Sông Hinh'),
(449, 38, 'Huyện Đông Hoà'),
(450, 38, 'Huyện Phú Hoà'),
(451, 38, 'Huyện Tây Hoà'),
(452, 39, 'TP.Buôn Ma Thuột'),
(453, 39, 'Huyện Ea H Leo'),
(454, 39, 'Huyện Krông Buk'),
(455, 39, 'Huyện Krông Năng'),
(456, 39, 'Huyện Ea Súp'),
(457, 39, 'Huyện Cư M gar'),
(458, 39, 'Huyện Krông Pắc'),
(459, 39, 'Huyện Ea Kar'),
(460, 39, 'Huyện M\'Đrăk'),
(461, 39, 'Huyện Krông Ana'),
(462, 39, 'Huyện Krông Bông'),
(463, 39, 'Huyện Lăk'),
(464, 39, 'Huyện Buôn Đôn'),
(465, 39, 'Huyện Cư Kuin'),
(466, 40, 'Thành phố Nha Trang'),
(467, 40, 'Huyện Vạn Ninh'),
(468, 40, 'Huyện Ninh Hoà'),
(469, 40, 'Huyện Diên Khánh'),
(470, 40, 'Huyện Khánh Vĩnh'),
(471, 40, 'Thị xã Cam Ranh'),
(472, 40, 'Huyện Khánh Sơn'),
(473, 40, 'Huyện Trường Sa'),
(474, 40, 'Huyện Cam Lâm'),
(475, 41, 'Thành phố Đà Lạt'),
(476, 41, 'Thị xã. Bảo Lộc'),
(477, 41, 'Huyện Đức Trọng'),
(478, 41, 'Huyện Di Linh'),
(479, 41, 'Huyện Đơn Dương'),
(480, 41, 'Huyện Lạc Dương'),
(481, 41, 'Huyện Đạ Huoai'),
(482, 41, 'Huyện Đạ Tẻh'),
(483, 41, 'Huyện Cát Tiên'),
(484, 41, 'Huyện Lâm Hà'),
(485, 41, 'Huyện Bảo Lâm'),
(486, 41, 'Huyện Đam Rông'),
(487, 42, 'Thị xã Đồng Xoài'),
(488, 42, 'Huyện Đồng Phú'),
(489, 42, 'Huyện Chơn Thành'),
(490, 42, 'Huyện Bình Long'),
(491, 42, 'Huyện Lộc Ninh'),
(492, 42, 'Huyện Bù Đốp'),
(493, 42, 'Huyện Phước Long'),
(494, 42, 'Huyện Bù Đăng'),
(495, 43, 'Thị xã Thủ Dầu Một'),
(496, 43, 'Huyện Bến Cát'),
(497, 43, 'Huyện Tân Uyên'),
(498, 43, 'Huyện Thuận An'),
(499, 43, 'Huyện Dĩ An'),
(500, 43, 'Huyện Phú Giáo'),
(501, 43, 'Huyện Dầu Tiếng'),
(502, 44, 'TP.Phan Rang - Tháp Chàm'),
(503, 44, 'Huyện Ninh Sơn'),
(504, 44, 'Huyện Ninh Hải'),
(505, 44, 'Huyện Ninh Phước'),
(506, 44, 'Huyện Bác ái'),
(507, 44, 'Huyện Thuận Bắc'),
(508, 45, 'Thị xã Tây Ninh'),
(509, 45, 'Huyện Tân Biên'),
(510, 45, 'Huyện Tân Châu'),
(511, 45, 'Huyện Dương Minh Châu'),
(512, 45, 'Huyện Châu Thành'),
(513, 45, 'Huyện Hoà Thành'),
(514, 45, 'Huyện Bến Cầu'),
(515, 45, 'Huyện Gò Dầu'),
(516, 45, 'Huyện Trảng Bàng'),
(517, 46, 'Thành phố Phan Thiết'),
(518, 46, 'Huyện Tuy Phong'),
(519, 46, 'Huyện Bắc Bình'),
(520, 46, 'Huyện Hàm Thuận Bắc'),
(521, 46, 'Huyện Hàm Thuận Nam'),
(522, 46, 'Huyện Hàm Tân'),
(523, 46, 'Huyện Đức Linh'),
(524, 46, 'Huyện Tánh Linh'),
(525, 46, 'Huyện đảo Phú Quý'),
(526, 46, 'Thị xã LaGi'),
(527, 47, 'Thành phố Biên Hoà'),
(528, 47, 'Huyện Vĩnh Cửu'),
(529, 47, 'Huyện Tân Phú'),
(530, 47, 'Huyện Định Quán'),
(531, 47, 'Huyện Thống Nhất'),
(532, 47, 'Thị xã Long Khánh'),
(533, 47, 'Huyện Xuân Lộc'),
(534, 47, 'Huyện Long Thành'),
(535, 47, 'Huyện Nhơn Trạch'),
(536, 47, 'Huyện Trảng Bom'),
(537, 47, 'Huyện Cẩm Mỹ'),
(538, 48, 'Thị xã Tân An'),
(539, 48, 'Huyện Vĩnh Hưng'),
(540, 48, 'Huyện Mộc Hoá'),
(541, 48, 'Huyện Tân Thạnh'),
(542, 48, 'Huyện Thạnh Hoá'),
(543, 48, 'Huyện Đức Huệ'),
(544, 48, 'Huyện Đức Hoà'),
(545, 48, 'Huyện Bến Lức'),
(546, 48, 'Huyện Thủ Thừa'),
(547, 48, 'Huyện Châu Thành'),
(548, 48, 'Huyện Tân Trụ'),
(549, 48, 'Huyện Cần Đước'),
(550, 48, 'Huyện Cần Giuộc'),
(551, 48, 'Huyện Tân Hưng'),
(552, 49, 'Thành phố Cao Lãnh'),
(553, 49, 'Thị xã Sa Đéc'),
(554, 49, 'Huyện Tân Hồng'),
(555, 49, 'Huyện Hồng Ngự'),
(556, 49, 'Huyện Tam Nông'),
(557, 49, 'Huyện Thanh Bình'),
(558, 49, 'Huyện Cao Lãnh'),
(559, 49, 'Huyện Lấp Vò'),
(560, 49, 'Huyện Tháp Mười'),
(561, 49, 'Huyện Lai Vung'),
(562, 49, 'Huyện Châu Thành'),
(563, 50, 'TP.Long Xuyên'),
(564, 50, 'Thị xã Châu Đốc'),
(565, 50, 'Huyện An Phú'),
(566, 50, 'Huyện Tân Châu'),
(567, 50, 'Huyện Phú Tân'),
(568, 50, 'Huyện Tịnh Biên'),
(569, 50, 'Huyện Tri Tôn'),
(570, 50, 'Huyện Châu Phú'),
(571, 50, 'Huyện Chợ Mới'),
(572, 50, 'Huyện Châu Thành'),
(573, 50, 'Huyện Thoại Sơn'),
(574, 51, 'Thành phố Vũng Tàu'),
(575, 51, 'Thị xã Bà Rịa'),
(576, 51, 'Huyện Xuyên Mộc'),
(577, 51, 'Huyện Long Điền'),
(578, 51, 'Huyện Côn Đảo'),
(579, 51, 'Huyện Tân Thành'),
(580, 51, 'Huyện Châu Đức'),
(581, 51, 'Huyện Đất Đỏ'),
(582, 52, 'Thành phố Mỹ Tho'),
(583, 52, 'Thị xã Gò Công'),
(584, 52, 'Huyện Cái Bè'),
(585, 52, 'Huyện Cai Lậy'),
(586, 52, 'Huyện Châu Thành'),
(587, 52, 'Huyện Chợ Gạo'),
(588, 52, 'Huyện Gò Công Tây'),
(589, 52, 'Huyện Gò Công Đông'),
(590, 52, 'Huyện Tân Phước'),
(591, 52, 'Huyện Tân Phú Đông'),
(592, 53, 'Thành phố Rạch Giá'),
(593, 53, 'Thị xã Hà Tiên'),
(594, 53, 'Huyện Kiên Lương'),
(595, 53, 'Huyện Hòn Đất'),
(596, 53, 'Huyện Tân Hiệp'),
(597, 53, 'Huyện Châu Thành'),
(598, 53, 'Huyện Giồng Riềng'),
(599, 53, 'Huyện Gò Quao'),
(600, 53, 'Huyện An Biên'),
(601, 53, 'Huyện An Minh'),
(602, 53, 'Huyện Vĩnh Thuận'),
(603, 53, 'Huyện Phú Quốc'),
(604, 53, 'Huyện Kiên Hải'),
(605, 53, 'Huyện U minh Thượng'),
(606, 54, 'Quận Ninh Kiều'),
(607, 54, 'Quận Bình Thuỷ'),
(608, 54, 'Quận Cái Răng'),
(609, 54, 'Quận Ô Môn'),
(610, 54, 'Huyện Phong Điền'),
(611, 54, 'Huyện Cờ Đỏ'),
(612, 54, 'Huyện Vĩnh Thạnh'),
(613, 54, 'Huỵện Thốt Nốt'),
(614, 55, 'Thị xã Bến Tre'),
(615, 55, 'Huyện Châu Thành'),
(616, 55, 'Huyện Chợ Lách'),
(617, 55, 'Huyện Mỏ Cày'),
(618, 55, 'Huyện Giồng Trôm'),
(619, 55, 'Huyện Bình Đại'),
(620, 55, 'Huyện Ba Tri'),
(621, 55, 'Huyện Thạnh Phú'),
(622, 56, 'Thị xã Vĩnh Long'),
(623, 56, 'Huyện Long Hồ'),
(624, 56, 'Huyện Mang Thít'),
(625, 56, 'Huyện Bình Minh'),
(626, 56, 'Huyện Tam Bình'),
(627, 56, 'Huyện Trà Ôn'),
(628, 56, 'Huyện Vũng Liêm'),
(629, 56, 'Huyện Bình Tân'),
(630, 57, 'Thị xã Trà Vinh'),
(631, 57, 'Huyện Càng Long'),
(632, 57, 'Huyện Cầu Kè'),
(633, 57, 'Huyện Tiểu Cần'),
(634, 57, 'Huyện Châu Thành'),
(635, 57, 'Huyện Trà Cú'),
(636, 57, 'Huyện Cầu Ngang'),
(637, 57, 'Huyện Duyên Hải'),
(638, 58, 'Thành phố Sóc Trăng'),
(639, 58, 'Huyện Kế Sách'),
(640, 58, 'Huyện Mỹ Tú'),
(641, 58, 'Huyện Mỹ Xuyên'),
(642, 58, 'Huyện Thạnh Trị'),
(643, 58, 'Huyện Long Phú'),
(644, 58, 'Huyện Vĩnh Châu'),
(645, 58, 'Huyện Cù Lao Dung'),
(646, 58, 'Huyện Ngã Năm'),
(647, 58, 'Huyện Châu Thành'),
(648, 59, 'Thị xã Bạc Liêu'),
(649, 59, 'Huyện Vĩnh Lợi'),
(650, 59, 'Huyện Hồng Dân'),
(651, 59, 'Huyện Giá Rai'),
(652, 59, 'Huyện Phước Long'),
(653, 59, 'Huyện Đông Hải'),
(654, 59, 'Huyện Hoà Bình'),
(655, 60, 'Thành phố Cà Mau'),
(656, 60, 'Huyện Thới Bình'),
(657, 60, 'Huyện U Minh'),
(658, 60, 'Huyện Trần Văn Thời'),
(659, 60, 'Huyện Cái Nước'),
(660, 60, 'Huyện Đầm Dơi'),
(661, 60, 'Huyện Ngọc Hiển'),
(662, 60, 'Huyện Năm Căn'),
(663, 60, 'Huyện Phú Tân'),
(664, 61, 'TP. Điện Biên Phủ'),
(665, 61, 'Thị xã Mường Lay'),
(666, 61, 'Huyện Điện Biên'),
(667, 61, 'Huyện Tuần Giáo'),
(668, 61, 'Huyện Mường Chà'),
(669, 61, 'Huyện Tủa Chùa'),
(670, 61, 'Huyện Điện Biên Đông'),
(671, 61, 'Huyện Mường Nhé'),
(672, 61, 'Huyện Mường Ảng'),
(673, 62, 'Thị xã Gia Nghĩa'),
(674, 62, 'Huyện Dăk RLấp'),
(675, 62, 'Huyện Dăk Mil'),
(676, 62, 'Huyện Cư Jút'),
(677, 62, 'Huyện Dăk Song'),
(678, 62, 'Huyện Krông Nô'),
(679, 62, 'Huyện Dăk GLong'),
(680, 62, 'Huyện Tuy Đức'),
(681, 63, 'Thị xã Vị Thanh'),
(682, 63, 'Huyện Vị Thuỷ'),
(683, 63, 'Huyện Long Mỹ'),
(684, 63, 'Huyện Phụng Hiệp'),
(685, 63, 'Huyện Châu Thành'),
(686, 63, 'Huyện Châu Thành A'),
(687, 63, 'Thị xã Ngã Bảy');

-- --------------------------------------------------------

--
-- Table structure for table `m_language`
--

CREATE TABLE `m_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vi` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin ngôn ngữ';

--
-- Dumping data for table `m_language`
--

INSERT INTO `m_language` (`id`, `key`, `vi`, `en`) VALUES
(1, 'aboutus', 'Giới thiệu', 'Introduction'),
(2, 'add_new', 'Thêm mới', 'Add new'),
(3, 'address', 'Địa chỉ', 'Address'),
(5, 'admin', 'Quản trị', 'Admin'),
(6, 'album', 'Album', 'Album'),
(7, 'all', 'Tất cả', 'All'),
(8, 'all_category', 'Tất cả danh mục', 'All Category'),
(9, 'all_category_parent', 'Tất cả danh mục cha', 'All Category Parent'),
(10, 'all_module', 'Tất cả module', 'All module'),
(11, 'all_position', 'Tất cả vị trí', 'All Position'),
(12, 'all_user', 'Tất cả người dùng', 'All User'),
(13, 'all_user_gender', 'Tất cả giới tính', 'All Gender'),
(14, 'all_user_type', 'Tất cả nhóm', 'All User Type'),
(15, 'apply', 'Áp dụng', 'Apply'),
(16, 'area', 'Khu vực', 'Area'),
(17, 'author', 'Tác giả', 'Author'),
(18, 'avatar', 'Avatar', 'Avatar'),
(19, 'back_to_login', 'Quay lại trang đăng nhập', 'Back to login'),
(20, 'banner', 'Banner', 'Banner'),
(21, 'begin_display', 'Bắt đầu hiển thị', 'Begin Display'),
(22, 'best_seller_product', 'Sản phẩm bán chạy', 'Bestseller Product'),
(23, 'betting', 'Đặt phòng', 'Betting'),
(24, 'birthday', 'Ngày sinh', 'Birthday'),
(25, 'block', 'Khóa', 'Block'),
(26, 'book _online_or_call', 'Đặt phòng trực tuyến hoặc gọi', 'Book online or call'),
(27, 'book_now', 'Đặt ngay', 'Book now'),
(28, 'brief', 'Tóm tắt', 'Brief'),
(29, 'captcha', 'Mã bảo vệ', 'Captcha'),
(30, 'category', 'Danh mục', 'Category'),
(31, 'category_name', 'Tên danh mục', 'Category Name'),
(32, 'category_parent', 'Danh mục cha', 'Category Parent'),
(33, 'category_type', 'Loại danh mục', 'Category Type'),
(34, 'check_price_free_room', 'Kiểm tra giá, phòng trống', 'Check price, Free room'),
(35, 'check_room_this_hotel', 'Kiểm tra giá và phòng trống của khách sạn này', 'Check room of this hotel'),
(36, 'cms', 'CMS', 'CMS'),
(37, 'comment', 'Phản hồi', 'Comment'),
(38, 'confirm_sure', 'Bạn có chắc không?', 'Are you sure?'),
(39, 'contact', 'Liên hệ', 'Contact'),
(40, 'content', 'Nội dung', 'Content'),
(41, 'copyright', 'Bản quyền © 2012 AgoVietnam. Giữ toàn quyền.', 'Copyright © 2012 AgoVietnam. All rights reserved.'),
(42, 'currency', 'Tiền tệ', 'Currency'),
(43, 'customer_care', 'Chăm sóc khách hàng', 'Customer Care'),
(44, 'date', 'Ngày tháng', 'Date'),
(45, 'delete', 'Xóa', 'Delete'),
(46, 'delete_this_images', 'Xóa ảnh này', 'Delete this Images'),
(47, 'desc', 'Miêu tả', 'Description'),
(48, 'description', 'Miêu tả', 'Description'),
(49, 'discount_hotels', 'Khách sạn giảm giá', 'Discount Hotels'),
(50, 'discount_product', 'Sản phẩm giảm giá', 'Discount Product'),
(51, 'display_language', 'HIển thị ngôn ngữ', 'Display language'),
(52, 'district', 'Quận, Huyện', 'District'),
(53, 'edit_content', 'Chỉnh sửa nội dung', 'Edit Content'),
(54, 'email', 'Email', 'Email'),
(55, 'end_display', 'Kết thúc hiển thị', 'End Display'),
(56, 'english', 'Tiếng Anh', 'English'),
(57, 'enter_city_place_or_hotel', 'Nhập thành phố địa danh hoặc tên khách sạn', 'Enter city, place or hotel'),
(58, 'enter_district', 'Xin mời chọn huyện', 'Please enter district'),
(59, 'error', 'Lỗi', 'Error'),
(60, 'ext_pleace_holder', 'Ví dụ: Khách sạn ở Hà nội', 'Ex: Ha Noi hotel'),
(61, 'female', 'Nữ', 'Female'),
(62, 'filter', 'Lọc', 'Filter'),
(63, 'finding trip', 'Tìm chuyến đi', 'finding trip'),
(64, 'first_name', 'Họ', 'First name'),
(65, 'forgot_password', 'Quên mật khẩu', 'Forgot password'),
(66, 'from_date', 'Từ ngày', 'From'),
(67, 'fullname', 'Họ tên', 'Fullname'),
(68, 'gender', 'Giới tính', 'Gender'),
(69, 'group', 'Nhóm', 'Group'),
(70, 'home', 'Trang chủ', 'Home'),
(71, 'hotel', 'Khách sạn', 'Hotel'),
(72, 'hotel_by_pleace', 'Khách sạn theo thành phố', 'hote by pleace'),
(73, 'hotel_detail', 'Chi tiết khách sạn', 'Hotel deail'),
(74, 'hotel_facility', 'Tiện nghi khách sạn', 'Hotel Facilities'),
(75, 'images', 'Ảnh', 'Images'),
(76, 'last_name', 'Tên', 'Last name'),
(77, 'layout', 'Khung trang', 'Layout'),
(78, 'link', 'Liên kết', 'Link'),
(79, 'login', 'Đăng nhập', 'Login'),
(80, 'logout', 'Thoát', 'Logout'),
(81, 'male', 'Nam', 'Male'),
(82, 'map', 'Bản đồ', 'Map'),
(83, 'media', 'Media', 'Media'),
(84, 'meta_description', 'Miêu tả (meta tags)', 'Description (meta tags)'),
(85, 'meta_keyword', 'Từ khóa (meta tags)', 'Keyword (meta tags)'),
(86, 'meta_title', 'Tiêu đề (meta tags)', 'Title (meta tags)'),
(87, 'middle_name', 'Tên đệm', 'Middle name'),
(88, 'module', 'Module', 'Module'),
(89, 'money_currency', '₫', '$'),
(90, 'msg_changepass_ss', 'Thay đổi mật khẩu thành công', 'Change password sucsess'),
(91, 'msg_content_update', 'Nội dung đang cập nhật', 'Content being update'),
(92, 'msg_repass_notmath', 'Nhập lại mật khẩu không đúng', 'Repassoword not math'),
(93, 'msg_request_email', 'Bạn chưa điền email', 'Email is required'),
(94, 'my_account', 'Tài khoản của tôi', 'My account'),
(95, 'name', 'Tên', 'Name'),
(96, 'new_product', 'Sản phẩm mới', 'New Product'),
(97, 'news', 'Tin tức', 'News'),
(98, 'news_password', 'Mật khẩu mới', 'New password'),
(99, 'night', 'đêm', 'night'),
(100, 'no_account', 'Bạn chưa có tài khoản?', 'Do you have account?'),
(101, 'no_of_room', 'Tổng số phòng', 'No of room'),
(102, 'no_white_space', 'Tên đăng nhập không được chứa khoảng trắng', 'Do not allow while space'),
(103, 'not_enter_username', 'Bạn chưa điền tên đăng nhập', 'You have not enter username'),
(104, 'options', 'Thao tác', 'Options'),
(105, 'order', 'Thứ tự', 'Order'),
(106, 'ordering', 'Sắp xếp', 'Ordering'),
(107, 'page', 'Trang', 'Page'),
(108, 'page_parent', 'Trang cha', 'Parent Page'),
(109, 'partner', 'Đối tác', 'Partner'),
(110, 'password', 'Mật khẩu', 'Password'),
(111, 'phone', 'Điện thoại', 'Phone'),
(112, 'pleace_holder_footer', 'Xin điền e-mail vào đây, bạn sẽ nhận ưu đãi nhiều hơn', 'Please enter your e-mail here, you will get more incentives'),
(113, 'policy', 'Điều khoản sử dụng', 'Policy'),
(114, 'popular_destinations', 'Điểm đến nổi tiếng', 'Popular Destinations'),
(115, 'position', 'Vị trí', 'Position'),
(116, 'price', 'Giá', 'Price'),
(117, 'price_down', 'Giá tăng dần', 'Price down'),
(118, 'price_per_day', 'Giá một đêm', 'Price per day'),
(119, 'price_promotion', 'Giá khuyến mãi', 'Promotion price'),
(120, 'price_up', 'Giá giảm dần', 'Price up'),
(121, 'product', 'Sản phẩm', 'Product'),
(122, 'product_info', 'Thôn tin sản phẩm', 'Product infomoation'),
(123, 'product_name', 'Tên sản phẩm', 'Product name'),
(124, 'province', 'Tỉnh', 'Province'),
(125, 'recruitment', 'Tuyển dụng', 'Recruitment'),
(126, 'register', 'Đăng ký', 'Register'),
(127, 'register_now', 'Đăng ký ngay', 'Register now'),
(128, 'remember', 'Ghi nhớ', 'Remember'),
(129, 'remember_login', 'Ghi nhớ đăng nhập', 'Remember'),
(130, 'repassword', 'Nhập lại mật khẩu', 'Repassword'),
(131, 'required', 'Thông tin bắt buộc', 'Required'),
(132, 'reset', 'Làm lại', 'Reset'),
(133, 'room', 'Phòng', 'Room'),
(134, 'room_number', 'Số phòng', 'Room number'),
(135, 'saleoff_product', 'Sản phẩm khuyến mại', 'Saleoff Product'),
(136, 'search', 'Tìm kiếm', 'Search'),
(137, 'search_now', 'Tìm kiếm ngay', 'Search now'),
(138, 'select_images', 'Chọn ảnh', 'Browse'),
(139, 'select_province', 'Xin mời chọn tỉnh', 'Please select province'),
(140, 'similar_hotels', 'Khách sạn tương tự', 'Similar hotels'),
(141, 'sports_recreation', 'Vui chơi thể thao', 'Sports recreation'),
(142, 'star', 'Sao', 'Star'),
(143, 'status', 'Hiển thị', 'Status'),
(144, 'suggestion', 'Góp ý', 'Suggestion'),
(145, 'tags', 'Tags', 'Tags'),
(146, 'title', 'Tiêu đề', 'Title'),
(147, 'to_date', 'Đến ngày', 'To'),
(148, 'unblock', 'Bỏ khóa', 'Un Block'),
(149, 'update_album', 'Cập nhật Album', 'Update Album'),
(150, 'update_desc', 'Cập nhật miêu tả', 'Update Description'),
(151, 'update_order', 'Cập nhật thứ tự', 'Update Order'),
(152, 'update_price', 'Cập nhật giá', 'Update price'),
(153, 'update_title', 'Cập nhật tiêu đề', 'Update Title'),
(155, 'username', 'Tên đăng nhập', 'Username'),
(156, 'users', 'Người dùng', 'Users'),
(157, 'vietnamese', 'Tiếng Việt', 'Vietnamese'),
(158, 'all_done', 'Tất cả đã hoàn thành', 'All done'),
(159, 'add', 'Thêm', 'Add'),
(160, 'of_page', 'trên tổng', 'of'),
(161, 'update', 'Cập nhật', 'Update'),
(162, 'server_time', 'Thời gian Server', 'Server time'),
(163, 'number_of_records', 'Số bản ghi', 'Number of records'),
(164, 'submit', 'Hoàn thành', 'Submit'),
(166, 'change_password', 'Đổi mật khẩu', 'Change password'),
(167, 'confirm_logout', 'Bạn có chắc muốn thoát?', 'Do you want to logout?'),
(169, 'value', 'Giá trị', 'Value'),
(170, 'placeholder_att_name', 'Ví dụ: Size, màu sắc...', 'Example: Size, color...'),
(171, 'placeholder_att_value', 'Điền thông tin thuộc tính ví dụ: XXL, đỏ...', 'Attribute infomation example: XXL, red...'),
(172, 'mark_map', 'Đánh dấu trên bản đồ', 'Mark on the map'),
(173, 'reset_value', 'Nạp lại giá trị cũ', 'Reset value'),
(174, 'msg_exists', '%s đã tồn tại, xin chọn %s khác!', 'This %s already exists, please enter another %s!'),
(175, 'marked', 'Đã đánh dấu', 'Marked'),
(176, 'unknow', 'Chưa rõ', 'Unknow'),
(177, 'msg_nodata', 'Chưa có %s nào!', 'No data'),
(178, 'no_file', 'Chưa có tập tin nào', 'No file'),
(179, 'msg_allow_filetype', 'Xem định dạng được hỗ trợ', 'See file type are allowed'),
(180, 'msg_row_perpage', 'Số <strong>%s</strong> trên một trang', 'Number <strong>%s</strong> on one page'),
(181, 'msg_wrong_captcha', 'Mã xác nhận không chính xác', 'Wrong captcha'),
(182, 'msg_forgotpass_email', 'Kiểm tra email <strong>%s</strong> để lấy lại mật khẩu', 'Check email <strong>%s</strong> to reset news password'),
(183, 'msg_email_not_exists', 'Email bạn nhập không tồn tại!', 'Email dose not exists'),
(184, 'reload_captcha', 'Đổi mã khác', 'Repload Captcha'),
(185, 'reset_password', 'Lấy lại mật khẩu', 'Reset password'),
(187, 'msg_login_fail', 'Tên đăng nhập hoặc mật khẩu không đúng!', 'Username or password incorrect!'),
(188, 'hello', 'Xin chào', 'Welcome back'),
(189, 'msg_mail_content_link', 'Chúng tôi nhận được yêu cầu lấy lại mật khẩu từ website %s <br/>\r\nBạn hãy click vào link dưới dây để lấy lại mật khẩu', 'We received a request to retrieve passwords from website %s'),
(190, 'msg_mail_content_info', 'Lấy lại mật khẩu website:', 'Reset password website:'),
(191, 'admin_page', 'Quay lại trang quản trị', 'Back to Admin Control Panel'),
(192, 'save', 'Lưu lại', 'Save'),
(193, 'endter_module_name', 'Nhập tên module', 'Enter module name'),
(194, 'change_file', 'Đổi file khác', 'Change the other file'),
(195, 'confirm_delete', 'Bạn có chắc muốn xóa', 'Are you sure you want to delete?'),
(196, 'confirm_delete_file', 'Bạn có muốn xóa file này?', 'Do you want to delete this file'),
(197, 'msg_error_delete_images', 'Lỗi khi xóa ảnh này', 'Error occurred while deleting photos'),
(198, 'done', 'Xong', 'Done'),
(199, 'loading', 'Đang tải', 'Loading'),
(200, 'msg_no_select', 'Chưa có %s nào được chọn', 'No %s selected'),
(201, 'msg_confirm_delete', 'Xóa bỏ các %s đang được chọn?', 'Do you want to delete the selected %s?'),
(202, 'msg_allow_extension', 'Lỗi, chỉ hỗ trợ định dạng', 'Error, Only supported formats'),
(203, 'change_images', 'Đổi ảnh khác', 'Change Image'),
(204, 'next', 'Tiếp', 'Next'),
(206, 'previous', 'Trước', 'Previous'),
(207, 'current', 'Hiện tại', 'Current'),
(208, 'time', 'Thời gian', 'Time'),
(209, 'hour', 'Giờ', 'Hour'),
(210, 'minute', 'Phút', 'Minute'),
(211, 'seconds', 'Giây', 'Seconds'),
(212, 'calendar_day_week', '\'CN\',\'T2\',\'T3\',\'T4\',\'T5\',\'T6\',\'T7\'', '\'Su\',\'Mo\',\'Tu\',\'We\',\'Th\',\'Fr\',\'Sa\''),
(213, 'file_not_found', 'Không thấy tập tin nào!', 'File not found!'),
(214, 'remove_permanently', 'Xóa vĩnh viễn?', 'Remove permanently?'),
(215, 'view', 'Xem', 'View'),
(216, 'all_time', 'Tất cả thời gian', 'All time'),
(217, 'all_media', 'Tất cả media', 'All media'),
(218, 'user_upload', 'Người đăng', 'User upload'),
(219, 'size', 'Kích thước', 'Size'),
(220, 'alt_tag', 'Thẻ Alt', 'Alt tag'),
(221, 'close', 'Đóng', 'Close'),
(222, 'attachment_details', 'Chi tiết', 'Attachment Details'),
(223, 'detail', 'Chi tiết', 'Detail'),
(224, 'file_name', 'Tên tập tin', 'File name'),
(225, 'file_type', 'Định dạng tập tin', 'File type'),
(226, 'date_upload', 'Ngày tải lên', 'Date upload'),
(227, 'file_size', 'Dung lượng', 'File size'),
(228, 'path', 'Đường dẫn', 'Path'),
(229, 'caption', 'Phụ đề', 'Caption'),
(230, 'year', 'Năm', 'Year'),
(231, 'month', 'Tháng', 'Month'),
(232, 'msg_wrong_password', 'Nhập lại mật khẩu chưa đúng', 'Enter the password is not correct'),
(233, 'msg_change_passsword_ss', 'Thay đổi mật khẩu thành công', 'Change password successfully'),
(234, 'get_new_password', 'Lấy lại mật khẩu', 'Get new password'),
(235, 'invalid_file_upload', 'File tải lên không hợp lệ', 'Invalid file upload'),
(239, 'edit', 'Sửa', 'Edit'),
(240, 'language', 'Ngôn ngữ', 'Language'),
(241, 'setting', 'Cài đặt', 'Setting'),
(242, 'drag_drop_file', 'Kéo và thả tập tin vào đây, hoặc click để chọn từ máy tính', 'Drag and drop file here, or click to browse from your computer'),
(243, 'add_file', 'Thêm mới tập tin', 'Add file'),
(244, 'upload_to', 'Sử dụng cho', 'Upload to'),
(245, 'other_menu', 'Mục khác', 'Other'),
(246, 'select_from_library', 'Chọn từ thư viện', 'Select from library'),
(247, 'or', 'Hoặc', 'Or'),
(248, 'how_to_use', 'Cách sử dụng', 'How to use'),
(249, 'options_updated', 'Dữ liệu đã được cập nhật', 'Options Updated'),
(250, 'options_reset', 'Thiết lập lại', 'Options Reset'),
(251, 'save_all_change', 'Lưu thay đổi', 'Save All Changes'),
(252, 'remove', 'Xóa', 'Remove'),
(253, 'options_was_reset', 'Dữ liệu đã được thiết lập lại', 'Options was reset'),
(254, 'add_new_slide', 'Thêm Slide mới', 'Add New Slide'),
(255, 'backup', 'Sao lưu', 'Backup'),
(256, 'restore', 'Khôi phục', 'Restore'),
(258, 'image_url', 'Đường dẫn ảnh', 'Image URL'),
(259, 'upload', 'Tải lên', 'Upload'),
(263, 'old_password', 'Mật khẩu cũ', 'Old password'),
(264, 'new_password', 'Mật khẩu mới', 'New password'),
(265, 'user_place', 'Khu vực cá nhân', 'User place'),
(266, 'enter_old_password', 'Nhập mật khẩu cũ', 'Enter old passoword'),
(267, 'enter_new_password', 'Enter new password', 'Nhập mật khẩu mới'),
(270, 'retype_new_password', 'Nhập lại mật khẩu mới', 'Retype new password'),
(271, 'passwords_do_not_match', 'Mật khẩu nhập lại không trùng nhau', 'Retype passwords do not match'),
(272, 'last_login', 'đăng nhập gần nhất lúc', 'last login'),
(273, 'new_password_not_match', 'Mật khẩu mới không trùng nhau!', 'The new password does not match!'),
(274, 'password_has_been_changed', 'Chúc mừng, mật khẩu đã được thay đổi!', 'Congratulations, your password has been changed!'),
(275, 'old_password_incorrect', 'Mật khẩu cũ không đúng!', 'The old password is incorrect!'),
(276, 'search_from_google', 'Tìm kiếm ảnh từ Google', 'Search image from Google'),
(277, 'use_this_image', 'Sử dụng ảnh này', 'Use this image'),
(278, 'page_name', 'Tên trang', 'Page name'),
(279, 'setting_general', 'Cài đặt chung', 'General'),
(280, 'restrict_area', 'Bạn không có quyền truy cập khu vực này!', 'You don\'t have permission to access this area!'),
(281, 'user_admin', 'Người quản trị', 'User admin'),
(282, 'locate', 'Vùng miền', 'Locate'),
(283, 'guide', 'Hướng dẫn', 'Guide'),
(284, 'files', 'tệp tin', 'files'),
(285, 'back_to_website', 'Quay lại website', 'Back to website'),
(286, 'email_address', 'Địa chỉ email', 'Email address'),
(287, 'msg_empty_password', 'Xin mời nhập mật khẩu mới', 'Please enter your new password'),
(288, 'msg_option_reset', 'Click OK để đặt lại. Tất cả các cài đặt của bạn sẽ bị thay thế bởi các giá trị mặc định', '\"Click OK to reset. All settings will be lost and replaced with default settings!\"'),
(289, 'product_order', 'Đặt hàng', 'Order'),
(290, 'uploaded', 'Ngày tải lên', 'Uploaded'),
(291, 'ext', 'Đuôi', 'Ext'),
(292, 'module_not_exists', 'Module không tồn tại', 'Module dose not exists'),
(293, 'this_is_preview', 'Đây là bản xem trước!', 'This is the preview!'),
(294, '404_msg', 'CHÚNG TÔI KHÔNG TÌM THẤY BÀI VIẾT NÀY.!', 'Oops! That page can’t be found.!'),
(295, 'select_file', 'chọn tệp tin', 'select file'),
(297, 'enter_page_name', 'Bạn chưa nhập tên trang', 'Please enter page name'),
(298, 'number_of_files', 'Số tệp tin', 'Number of files'),
(299, 'total_files_size', 'Tổng dung lượng', 'Total file size');

-- --------------------------------------------------------

--
-- Table structure for table `m_options`
--

CREATE TABLE `m_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `m_options`
--

INSERT INTO `m_options` (`id`, `name`, `value`, `note`) VALUES
(1, 'meta_title', 'Hệ thống quản trị nội dung HCMS', ''),
(2, 'meta_desc', 'Hệ thống quản trị nội dung HCMS cung cấp các giải pháp quản trị nội dung tốt nhất cho bạn. Đây là hệ thống mã nguồn mở do NguyenDucHanh phát triển từ năm 2014 ', ''),
(3, 'custom-css', '', ''),
(4, 'favicon', 'admin/images/favicon.png', ''),
(5, 'smtp-name', 'HCMS', ''),
(6, 'smtp-email', 'hcms6868@gmail.com', ''),
(7, 'smtp-password', 'duchanh1', ''),
(8, 'smtp-port', '465', ''),
(9, 'logo', 'admin/images/admin-logo.jpg', ''),
(10, 'logo-width', '122', ''),
(11, 'logo-height', '37', ''),
(12, 'logo-margin-top', '10', ''),
(13, 'logo-margin-left', '0', ''),
(14, 'footer-text', '© 2015. All rights reserved. Designed by <a href=\"http://nguyenduchanh.com\" target=\"_blank\">NguyenDucHanh</a>', ''),
(15, 'body-background-color', '#FFFFFF', ''),
(16, 'body-background-image', '', ''),
(17, 'body-background-repeat', 'no', ''),
(18, 'primary-color', '#555555', ''),
(19, 'link-color', '#337ab7', ''),
(20, 'link-hover-color', '#23527c', ''),
(21, 'body-font', 'Arial', ''),
(22, 'heading-font', 'Arial', ''),
(23, 'mainnav-font', 'Arial', ''),
(24, 'body-size', '14', ''),
(25, 'h1-size', '36', ''),
(26, 'h2-size', '28', ''),
(27, 'h3-size', '22', ''),
(28, 'h4-size', '16', ''),
(29, 'h5-size', '13', ''),
(30, 'h6-size', '13', ''),
(31, 'social-facebook', '', ''),
(32, 'social-twitter', '', ''),
(33, 'social-google-plus', '', ''),
(34, 'social-linkedin', '', ''),
(35, 'social-tumblr', '', ''),
(36, 'social-pinterest', '', ''),
(37, 'social-youtube', '', ''),
(38, 'social-skype', '', ''),
(39, 'social-instagram', '', ''),
(40, 'social-delicious', '', ''),
(41, 'social-reddit', '', ''),
(42, 'social-stumbleupon', '', ''),
(43, 'social-wordpress', '', ''),
(44, 'social-joomla', '', ''),
(45, 'social-blogger', '', ''),
(46, 'social-vimeo', '', ''),
(47, 'social-yahoo', '', ''),
(48, 'social-flickr', '', ''),
(49, 'social-picasa', '', ''),
(50, 'social-deviantart', '', ''),
(51, 'social-github', '', ''),
(52, 'social-stackoverflow', '', ''),
(53, 'social-xing', '', ''),
(54, 'social-flattr', '', ''),
(55, 'social-foursquare', '', ''),
(56, 'social-paypal', '', ''),
(57, 'social-yelp', '', ''),
(58, 'social-soundcloud', '', ''),
(59, 'social-lastfm', '', ''),
(60, 'social-lanyrd', '', ''),
(61, 'social-dribbble', '', ''),
(62, 'social-forrst', '', ''),
(63, 'social-steam', '', ''),
(64, 'social-behance', '', ''),
(65, 'social-mixi', '', ''),
(66, 'social-weibo', '', ''),
(67, 'social-renren', '', ''),
(68, 'social-evernote', '', ''),
(69, 'social-dropbox', '', ''),
(70, 'social-bitbucket', '', ''),
(71, 'social-trello', '', ''),
(72, 'social-vk', '', ''),
(73, 'social-home', '', ''),
(74, 'social-envelope-alt', '', ''),
(75, 'social-rss', '', ''),
(76, 'custom-social-icon', '', ''),
(77, 'custom-social-icon-url', '', ''),
(78, 'custom-social-icon-title', '', ''),
(79, 'download-external-images', '0', ''),
(80, 'hcms_of_backup', 'YTo4MTp7czoxMDoibWV0YV90aXRsZSI7czo0NDoiSOG7hyB0aOG7kW5nIHF14bqjbiB0cuG7iyBu4buZaSBkdW5nIEhDTVMxMTEiO3M6OToibWV0YV9kZXNjIjtzOjIwNToiSOG7hyB0aOG7kW5nIHF14bqjbiB0cuG7iyBu4buZaSBkdW5nIEhDTVMgY3VuZyBj4bqlcCBjw6FjIGdp4bqjaSBwaMOhcCBxdeG6o24gdHLhu4sgbuG7mWkgZHVuZyB04buRdCBuaOG6pXQgY2hvIGLhuqFuLiDEkMOieSBsw6AgaOG7hyB0aOG7kW5nIG3DoyBuZ3Xhu5NuIG3hu58gZG8gTmd1eWVuRHVjSGFuaCBwaMOhdCB0cmnhu4NuIHThu6sgbsSDbSAyMDE0ICI7czoxMDoiY3VzdG9tLWNzcyI7czowOiIiO3M6NzoiZmF2aWNvbiI7czoyNDoiYWRtaW4vaW1hZ2VzL2Zhdmljb24ucG5nIjtzOjk6InNtdHAtbmFtZSI7czo0OiJIQ01TIjtzOjEwOiJzbXRwLWVtYWlsIjtzOjA6IiI7czoxMzoic210cC1wYXNzd29yZCI7czowOiIiO3M6OToic210cC1wb3J0IjtzOjM6IjQ2NSI7czo0OiJsb2dvIjtzOjI3OiJhZG1pbi9pbWFnZXMvYWRtaW4tbG9nby5qcGciO3M6MTA6ImxvZ28td2lkdGgiO3M6MzoiMTIyIjtzOjExOiJsb2dvLWhlaWdodCI7czoyOiIzNyI7czoxNToibG9nby1tYXJnaW4tdG9wIjtzOjI6IjEwIjtzOjE2OiJsb2dvLW1hcmdpbi1sZWZ0IjtzOjE6IjAiO3M6MTE6ImZvb3Rlci10ZXh0IjtzOjExMDoiwqkgMjAxNS4gQWxsIHJpZ2h0cyByZXNlcnZlZC4gRGVzaWduZWQgYnkgPGEgaHJlZj0iaHR0cDovL25ndXllbmR1Y2hhbmguY29tIiB0YXJnZXQ9Il9ibGFuayI+Tmd1eWVuRHVjSGFuaDwvYT4iO3M6MjE6ImJvZHktYmFja2dyb3VuZC1jb2xvciI7czo3OiIjRkZGRkZGIjtzOjIxOiJib2R5LWJhY2tncm91bmQtaW1hZ2UiO3M6MDoiIjtzOjIyOiJib2R5LWJhY2tncm91bmQtcmVwZWF0IjtzOjI6Im5vIjtzOjEzOiJwcmltYXJ5LWNvbG9yIjtzOjc6IiM1NTU1NTUiO3M6MTA6ImxpbmstY29sb3IiO3M6NzoiIzMzN2FiNyI7czoxNjoibGluay1ob3Zlci1jb2xvciI7czo3OiIjMjM1MjdjIjtzOjk6ImJvZHktZm9udCI7czo1OiJBcmlhbCI7czoxMjoiaGVhZGluZy1mb250IjtzOjU6IkFyaWFsIjtzOjEyOiJtYWlubmF2LWZvbnQiO3M6NToiQXJpYWwiO3M6OToiYm9keS1zaXplIjtzOjI6IjE0IjtzOjc6ImgxLXNpemUiO3M6MjoiMzYiO3M6NzoiaDItc2l6ZSI7czoyOiIyOCI7czo3OiJoMy1zaXplIjtzOjI6IjIyIjtzOjc6Img0LXNpemUiO3M6MjoiMTYiO3M6NzoiaDUtc2l6ZSI7czoyOiIxMyI7czo3OiJoNi1zaXplIjtzOjI6IjEzIjtzOjE1OiJzb2NpYWwtZmFjZWJvb2siO3M6MDoiIjtzOjE0OiJzb2NpYWwtdHdpdHRlciI7czowOiIiO3M6MTg6InNvY2lhbC1nb29nbGUtcGx1cyI7czowOiIiO3M6MTU6InNvY2lhbC1saW5rZWRpbiI7czowOiIiO3M6MTM6InNvY2lhbC10dW1ibHIiO3M6MDoiIjtzOjE2OiJzb2NpYWwtcGludGVyZXN0IjtzOjA6IiI7czoxNDoic29jaWFsLXlvdXR1YmUiO3M6MDoiIjtzOjEyOiJzb2NpYWwtc2t5cGUiO3M6MDoiIjtzOjE2OiJzb2NpYWwtaW5zdGFncmFtIjtzOjA6IiI7czoxNjoic29jaWFsLWRlbGljaW91cyI7czowOiIiO3M6MTM6InNvY2lhbC1yZWRkaXQiO3M6MDoiIjtzOjE4OiJzb2NpYWwtc3R1bWJsZXVwb24iO3M6MDoiIjtzOjE2OiJzb2NpYWwtd29yZHByZXNzIjtzOjA6IiI7czoxMzoic29jaWFsLWpvb21sYSI7czowOiIiO3M6MTQ6InNvY2lhbC1ibG9nZ2VyIjtzOjA6IiI7czoxMjoic29jaWFsLXZpbWVvIjtzOjA6IiI7czoxMjoic29jaWFsLXlhaG9vIjtzOjA6IiI7czoxMzoic29jaWFsLWZsaWNrciI7czowOiIiO3M6MTM6InNvY2lhbC1waWNhc2EiO3M6MDoiIjtzOjE3OiJzb2NpYWwtZGV2aWFudGFydCI7czowOiIiO3M6MTM6InNvY2lhbC1naXRodWIiO3M6MDoiIjtzOjIwOiJzb2NpYWwtc3RhY2tvdmVyZmxvdyI7czowOiIiO3M6MTE6InNvY2lhbC14aW5nIjtzOjA6IiI7czoxMzoic29jaWFsLWZsYXR0ciI7czowOiIiO3M6MTc6InNvY2lhbC1mb3Vyc3F1YXJlIjtzOjA6IiI7czoxMzoic29jaWFsLXBheXBhbCI7czowOiIiO3M6MTE6InNvY2lhbC15ZWxwIjtzOjA6IiI7czoxNzoic29jaWFsLXNvdW5kY2xvdWQiO3M6MDoiIjtzOjEzOiJzb2NpYWwtbGFzdGZtIjtzOjA6IiI7czoxMzoic29jaWFsLWxhbnlyZCI7czowOiIiO3M6MTU6InNvY2lhbC1kcmliYmJsZSI7czowOiIiO3M6MTM6InNvY2lhbC1mb3Jyc3QiO3M6MDoiIjtzOjEyOiJzb2NpYWwtc3RlYW0iO3M6MDoiIjtzOjE0OiJzb2NpYWwtYmVoYW5jZSI7czowOiIiO3M6MTE6InNvY2lhbC1taXhpIjtzOjA6IiI7czoxMjoic29jaWFsLXdlaWJvIjtzOjA6IiI7czoxMzoic29jaWFsLXJlbnJlbiI7czowOiIiO3M6MTU6InNvY2lhbC1ldmVybm90ZSI7czowOiIiO3M6MTQ6InNvY2lhbC1kcm9wYm94IjtzOjA6IiI7czoxNjoic29jaWFsLWJpdGJ1Y2tldCI7czowOiIiO3M6MTM6InNvY2lhbC10cmVsbG8iO3M6MDoiIjtzOjk6InNvY2lhbC12ayI7czowOiIiO3M6MTE6InNvY2lhbC1ob21lIjtzOjA6IiI7czoxOToic29jaWFsLWVudmVsb3BlLWFsdCI7czowOiIiO3M6MTA6InNvY2lhbC1yc3MiO3M6MDoiIjtzOjE4OiJjdXN0b20tc29jaWFsLWljb24iO3M6MDoiIjtzOjIyOiJjdXN0b20tc29jaWFsLWljb24tdXJsIjtzOjA6IiI7czoyNDoiY3VzdG9tLXNvY2lhbC1pY29uLXRpdGxlIjtzOjA6IiI7czoyNDoiZG93bmxvYWQtZXh0ZXJuYWwtaW1hZ2VzIjtzOjE6IjAiO3M6OToib2ZfYmFja3VwIjtzOjA6IiI7czoxMToib2ZfdHJhbnNmZXIiO3M6MDoiIjt9', ''),
(81, 'hcms_of_backup_time', '2016-06-10 15:15:51', ''),
(82, 'of_backup', '', ''),
(83, 'of_transfer', '', ''),
(84, '', 'Cài đặt chung', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_page`
--

CREATE TABLE `m_page` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'home.html',
  `position` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng chính của CMS, lưu các thông tin về page, module';

--
-- Dumping data for table `m_page`
--

INSERT INTO `m_page` (`id`, `name`, `layout`, `position`, `parent`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'root', 'home.html', '{\"pos_header\":[\"header\"],\"pos_footer\":[\"footer\"]}', 0, 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS'),
(2, 'home', 'home.html', '{\"pos_content\":[\"product_list\"]}', 1, 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS'),
(10, 'chi-tiet', 'home.html', '{\"pos_content\":[\"news_detail\"]}', 1, 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS', 'Hệ thống quản trị nội dung HCMS'),
(11, 'tin-tuc', 'home.html', '{\"pos_content\":[\"home\"]}', 1, 'Hệ thống quản trị nội dung HCMS', '', 'Hệ thống quản trị nội dung HCMS'),
(12, 'san-pham', 'home.html', '{\"pos_content\":[\"product_detail\"]}', 1, 'Sản phẩm', '', 'Hệ thống quản trị nội dung HCMS'),
(13, 'danh-muc', 'home.html', '{\"pos_content\":[\"product_list\"]}', 1, '', '', ''),
(14, 'tat-ca-san-pham', 'home.html', '{\"pos_content\":[\"product_list\"]}', 1, '', '', ''),
(15, 'checkout', 'home.html', '{\"pos_content\":[\"checkout\"]}', 1, '', '', ''),
(16, 'shipping', 'home.html', '{\"pos_content\":[\"shipping\"]}', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_provinces`
--

CREATE TABLE `m_provinces` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin tỉnh thành Việt Nam';

--
-- Dumping data for table `m_provinces`
--

INSERT INTO `m_provinces` (`id`, `name`, `country_id`) VALUES
(1, 'Hà Nội', 252),
(2, 'Hồ Chí Minh', 252),
(3, 'Hải Phòng', 252),
(4, 'Đà Nẵng', 252),
(5, 'Hà Giang', 252),
(6, 'Cao Bằng', 252),
(7, 'Lai Châu', 252),
(8, 'Lào Cai', 252),
(9, 'Tuyên Quang', 252),
(10, 'Lạng Sơn', 252),
(11, 'Bắc Kạn', 252),
(12, 'Thái Nguyên', 252),
(13, 'Yên Bái', 252),
(14, 'Sơn La', 252),
(15, 'Phú Thọ', 252),
(16, 'Vĩnh Phúc', 252),
(17, 'Quảng Ninh', 252),
(18, 'Bắc Giang', 252),
(19, 'Bắc Ninh', 252),
(20, 'Hải Dương', 252),
(21, 'Hưng Yên', 252),
(22, 'Hoà Bình', 252),
(23, 'Hà Nam', 252),
(24, 'Nam Định', 252),
(25, 'Thái Bình', 252),
(26, 'Ninh Bình', 252),
(27, 'Thanh Hoá', 252),
(28, 'Nghệ An', 252),
(29, 'Hà Tĩnh', 252),
(30, 'Quảng Bình', 252),
(31, 'Quảng Trị', 252),
(32, 'Thừa Thiên Huế', 252),
(33, 'Quảng Nam', 252),
(34, 'Quảng Ngãi', 252),
(35, 'Kontum', 252),
(36, 'Bình Định', 252),
(37, 'Gia Lai', 252),
(38, 'Phú Yên', 252),
(39, 'Đăk Lăk', 252),
(40, 'Khánh Hoà', 252),
(41, 'Lâm Đồng', 252),
(42, 'Bình Phước', 252),
(43, 'Bình Dương', 252),
(44, 'Ninh Thuận', 252),
(45, 'Tây Ninh', 252),
(46, 'Bình Thuận', 252),
(47, 'Đồng Nai', 252),
(48, 'Long An', 252),
(49, 'Đồng Tháp', 252),
(50, 'An Giang', 252),
(51, 'Bà Rịa-Vũng Tàu', 252),
(52, 'Tiền Giang', 252),
(53, 'Kiên Giang', 252),
(54, 'Cần Thơ', 252),
(55, 'Bến Tre', 252),
(56, 'Vĩnh Long', 252),
(57, 'Trà Vinh', 252),
(58, 'Sóc Trăng', 252),
(59, 'Bạc Liêu', 252),
(60, 'Cà Mau', 252),
(61, 'Điện Biên', 252),
(62, 'Dăk Nông', 252),
(63, 'Hậu Giang', 252);

-- --------------------------------------------------------

--
-- Table structure for table `t_banner`
--

CREATE TABLE `t_banner` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Khóa chính',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên banner',
  `desc` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Miêu tả chi tiết',
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đường dẫn liên kết',
  `img` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đường dẫn ảnh',
  `position` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'vị trí',
  `ordering` int(11) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'trạng thái. 1: Hiển thị, 0: không hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin banner';

--
-- Dumping data for table `t_banner`
--

INSERT INTO `t_banner` (`id`, `name`, `desc`, `link`, `img`, `position`, `ordering`, `date_created`, `status`) VALUES
(19, 'Bán hàng hiệu quả doanh thu cao', 'Tôi muốn tạo quảng cáo mới sử dụng các thông tin từ các quảng cáo đã có của mình (tạo quảng cáo tương tự như quảng cáo đã có)?', 'http://google.com', '/uploads/images/banner/2016_05_05/tulips_1.jpg', 'slide', 19, '2016-02-16 01:41:36', 1),
(20, 'Website chuyên nghiệp - hiệu quả', 'Tôi muốn tạo quảng cáo mới sử dụng các thông tin từ các quảng cáo đã có của mình (tạo quảng cáo tương tự như quảng cáo đã có', '#', '/uploads/images/banner/2016_05_05/tulips_2.jpg', 'slide', 20, '2016-02-16 01:42:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_category`
--

CREATE TABLE `t_category` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Khóa chính',
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Id của danh mục cha',
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên danh mục',
  `home` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'Trạng thái',
  `ordering` int(11) UNSIGNED NOT NULL DEFAULT '100' COMMENT 'Thứ tự, từ nhỏ tới lớn',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng chứa danh mục';

--
-- Dumping data for table `t_category`
--

INSERT INTO `t_category` (`id`, `parent_id`, `img`, `name`, `home`, `status`, `ordering`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 0, '/uploads/category/2016_03_23/suc-khoe-me-va-be.jpg', 'Mẹ và bé', 1, 1, 1, 'Sảm phẩm dành riêng cho mẹ và bé', 'Mẹ và bé', 'Mẹ và bé', 'Mẹ và bé'),
(2, 0, '/uploads/category/2016_03_23/20110328150158_80384.jpg', 'Đồ dùng gia đình', 1, 1, 2, '', '', 'Mẹ và bé', 'Mẹ và bé'),
(3, 1, '/uploads/category/2016_03_23/tre-so-sinh.jpg', 'Đồ cho mẹ', 1, 1, 3, 'Đồ dung cho mẹ và bé', '', '', ''),
(8, 2, '/uploads/category/2016_03_23/3914757btfb.jpg', 'Đồ dùng nhà bếp', 1, 1, 8, 'Đồ dùng nhà bếp dành cho gia đình', '', '', ''),
(9, 2, '/uploads/category/2016_03_23/1cf5cab53dbc47cca84b1ed9c507be52_1.jpg', 'Điện gia dụng', 1, 1, 9, 'Điện gia dụng, sảm phẩm gia dụng dành cho gia đình', '', '', ''),
(10, 2, '/uploads/category/2016_03_23/48044241.jpg', 'Dụng cụ vệ sinh', 1, 1, 10, 'Dụng cụ vệ sinh cho gia đình', '', '', ''),
(25, 1, '/uploads/category/2016_03_23/625.jpg', 'Đồ chơi', 1, 1, 25, 'Đồ chơi cho con', '', '', ''),
(30, 2, '/uploads/media/2015_11_23/mauaothundongphuccongty-36.jpg', 'Áo & Quần', 1, 1, 30, 'Quần áo cho mẹ và bé', '', '', ''),
(59, 1, '/uploads/category/2016_03_23/goi-tap-nam-ngoi.jpg', 'Đồ cho bé', 1, 1, 59, 'Đồ dùng cho bé', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_media`
--

CREATE TABLE `t_media` (
  `id` int(11) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `object_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `other_info` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_media`
--

INSERT INTO `t_media` (`id`, `object_id`, `object_type`, `type`, `path`, `other_info`, `date`, `user_id`, `username`) VALUES
(32, 18, 'news', 'application/octet-stream', '/uploads/files/m_address.sql', '{\"size\":35980,\"ext\":\"sql\",\"name\":\"m_address.sql\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2014-10-24 14:43:12', 0, ''),
(37, 18, 'news', 'audio/mpeg', '/uploads/files/dau_mua.mp3', '{\"size\":4166248,\"ext\":\"mp3\",\"name\":\"dau_mua.mp3\",\"title\":\"dsgfsdgfd gsdfgsdgfdgfsd\",\"caption\":\"gsdfggf gsdfgfdsghdfdfgdfsgfdsg\",\"alt\":\"\",\"desc\":\"gfsdgdf fgsdbffdgfdgfs\"}', '2014-11-06 16:16:18', 1, 'admin'),
(38, 17, 'news', 'application/octet-stream', '/uploads/files/other.mp4', '{\"size\":2301822,\"ext\":\"mp4\",\"name\":\"other.mp4\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2014-11-06 16:30:01', 1, 'admin'),
(43, 0, 'media', 'text/css', '/uploads/media/2014_11_11/style.css', '{\"size\":64528,\"ext\":\"css\",\"name\":\"style.css\"}', '2014-11-11 13:54:09', 1, 'admin'),
(48, 0, 'media', 'application/pdf', '/uploads/media/2014_11_11/cntt006.pdf', '{\"size\":75693,\"ext\":\"pdf\",\"name\":\"cntt006.pdf\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2014-11-11 14:45:25', 1, 'admin'),
(49, 0, 'media', 'application/octet-stream', '/uploads/media/2014_11_11/flow-booking-meeting-room.xlsx', '{\"size\":789237,\"ext\":\"xlsx\",\"name\":\"flow-booking-meeting-room.xlsx\",\"title\":\"Ti\\u00eau \\u0111\\u1ec1\",\"caption\":\"Ph\\u1ee5 \\u0111\\u1ec1 file excel\",\"alt\":\"\",\"desc\":\"Mi\\u00eau t\\u1ea3 file excel\"}', '2014-11-11 14:45:34', 1, 'admin'),
(56, 0, 'news', 'application/octet-stream', '/uploads/files/flow-booking-meeting-room.xlsx', '{\"size\":789237,\"ext\":\"xlsx\",\"name\":\"flow-booking-meeting-room.xlsx\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2014-11-13 15:46:09', 1, 'admin'),
(372, 10, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ronaldo-660.jpg', '{\"size\":111353,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"ronaldo-660.jpg\"}', '2015-09-03 13:52:47', 1, 'admin'),
(373, 10, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ronaldo.jpg', '{\"size\":54283,\"wh\":\"480x353\",\"ext\":\"jpg\",\"name\":\"ronaldo.jpg\"}', '2015-09-03 13:53:40', 1, 'admin'),
(374, 10, 'news', 'image/jpeg', '/uploads/news/2015_09_03/mess1i.jpg', '{\"size\":107853,\"wh\":\"480x359\",\"ext\":\"jpg\",\"name\":\"mess1i.jpg\"}', '2015-09-03 13:53:41', 1, 'admin'),
(375, 11, 'news', 'image/jpeg', '/uploads/news/2015_09_03/55e6dab2c36188425b8b45f4-1441212787_490x294.jpg', '{\"size\":73304,\"wh\":\"490x294\",\"ext\":\"jpg\",\"name\":\"55e6dab2c36188425b8b45f4-1441212787_490x294.jpg\"}', '2015-09-03 13:58:17', 1, 'admin'),
(376, 11, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ss-vietnam-national-day-03-jpo-4830-3340-1441212823.jpg', '{\"size\":101233,\"wh\":\"500x300\",\"ext\":\"jpg\",\"name\":\"ss-vietnam-national-day-03-jpo-4830-3340-1441212823.jpg\"}', '2015-09-03 13:58:28', 1, 'admin'),
(377, 12, 'news', 'image/png', '/uploads/news/2015_09_03/10-ky-quan-kien-truc-hien-dai-1441099504_490x294.png', '{\"size\":294533,\"wh\":\"490x294\",\"ext\":\"png\",\"name\":\"10-ky-quan-kien-truc-hien-dai-1441099504_490x294.png\"}', '2015-09-03 14:05:14', 1, 'admin'),
(378, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-1-1441080209_660x0.jpg', '{\"size\":80695,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-1-1441080209_660x0.jpg\"}', '2015-09-03 14:05:43', 1, 'admin'),
(379, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-2-1441080209_660x0.jpg', '{\"size\":68708,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-2-1441080209_660x0.jpg\"}', '2015-09-03 14:05:43', 1, 'admin'),
(380, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-3-1441080209_660x0.jpg', '{\"size\":113334,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-3-1441080209_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(381, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-4-1441080210_660x0.jpg', '{\"size\":103188,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-4-1441080210_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(382, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-5-1441080210_660x0.jpg', '{\"size\":115215,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-5-1441080210_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(383, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-6-1441080211_660x0.jpg', '{\"size\":129782,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-6-1441080211_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(384, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-7-1441080211_660x0.jpg', '{\"size\":130416,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-7-1441080211_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(385, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-8-1441080212_660x0.jpg', '{\"size\":105281,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-8-1441080212_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(386, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-9-1441080212_660x0.jpg', '{\"size\":92254,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-9-1441080212_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(387, 12, 'news', 'image/jpeg', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-10-1441080213_660x0.jpg', '{\"size\":108866,\"wh\":\"450x600\",\"ext\":\"jpg\",\"name\":\"vne-10-amazing-modern-architectural-wonders-10-1441080213_660x0.jpg\"}', '2015-09-03 14:05:44', 1, 'admin'),
(411, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-5-4498-1427097613.jpg', '{\"size\":233851,\"wh\":\"600x370\",\"ext\":\"jpg\",\"name\":\"ly-son-5-4498-1427097613.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(412, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-4-3763-1427097613.jpg', '{\"size\":200116,\"wh\":\"600x400\",\"ext\":\"jpg\",\"name\":\"ly-son-4-3763-1427097613.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(413, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-11-2795-1427097613.jpg', '{\"size\":222042,\"wh\":\"600x400\",\"ext\":\"jpg\",\"name\":\"ly-son-11-2795-1427097613.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(414, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-2-7100-1427097613.jpg', '{\"size\":160224,\"wh\":\"600x386\",\"ext\":\"jpg\",\"name\":\"ly-son-2-7100-1427097613.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(415, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-1-6414-1427097613.jpg', '{\"size\":246519,\"wh\":\"600x400\",\"ext\":\"jpg\",\"name\":\"ly-son-1-6414-1427097613.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(416, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly-son-3-7551-1427097614.jpg', '{\"size\":207272,\"wh\":\"600x400\",\"ext\":\"jpg\",\"name\":\"ly-son-3-7551-1427097614.jpg\"}', '2015-09-03 14:41:49', 1, 'admin'),
(417, 13, 'news', 'image/jpeg', '/uploads/news/2015_09_03/ly_son111.jpg', '{\"size\":324934,\"wh\":\"1280x850\",\"ext\":\"jpg\",\"name\":\"ly_son111.jpg\"}', '2015-09-03 14:43:23', 1, 'admin'),
(418, 14, 'news', 'image/jpeg', '/uploads/news/2015_09_03/7_lucluong3690.jpg', '{\"size\":54738,\"wh\":\"470x309\",\"ext\":\"jpg\",\"name\":\"7_lucluong3690.jpg\"}', '2015-09-03 14:50:33', 1, 'admin'),
(419, 14, 'news', 'image/jpeg', '/uploads/news/2015_09_03/7_lucluong3690.jpg', '{\"size\":54738,\"wh\":\"470x309\",\"ext\":\"jpg\",\"name\":\"7_lucluong3690.jpg\"}', '2015-09-03 14:51:06', 1, 'admin'),
(420, 15, 'news', 'image/jpeg', '/uploads/news/2015_09_03/q7-setop-9469-1441251767.jpg', '{\"size\":150965,\"wh\":\"500x350\",\"ext\":\"jpg\",\"name\":\"q7-setop-9469-1441251767.jpg\"}', '2015-09-03 14:54:37', 1, 'admin'),
(421, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/1.jpg', '{\"size\":84815,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"1.jpg\"}', '2015-09-03 17:16:41', 1, 'admin'),
(422, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/2.jpg', '{\"size\":90901,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"2.jpg\"}', '2015-09-03 17:16:41', 1, 'admin'),
(423, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/cern.jpg', '{\"size\":75021,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"cern.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(424, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/cms_detector.jpg', '{\"size\":144196,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"cms_detector.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(425, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/spaceportentrance.jpg', '{\"size\":69846,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"spaceportentrance.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(426, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/virgingalactickeepsinchingtowardspacebutwhenwillitgettheree968959119.jpg', '{\"size\":51954,\"wh\":\"660x345\",\"ext\":\"jpg\",\"name\":\"virgingalactickeepsinchingtowardspacebutwhenwillitgettheree968959119.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(427, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/mountaingorillainvolcanoesnationalparkrwanda.jpg', '{\"size\":88936,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"mountaingorillainvolcanoesnationalparkrwanda.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(428, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/gorillatrekkingnkuringo.jpg', '{\"size\":135697,\"wh\":\"660x495\",\"ext\":\"jpg\",\"name\":\"gorillatrekkingnkuringo.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(429, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/f29954c420b8437bb8178d327912d137_980x551.jpg', '{\"size\":90444,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"f29954c420b8437bb8178d327912d137_980x551.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(430, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/article01899f00f000005dc743_964x640.jpg', '{\"size\":76916,\"wh\":\"660x438\",\"ext\":\"jpg\",\"name\":\"article01899f00f000005dc743_964x640.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(431, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/mendenhall24.jpg', '{\"size\":73382,\"wh\":\"660x362\",\"ext\":\"jpg\",\"name\":\"mendenhall24.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(432, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/o140556731facebook.jpg', '{\"size\":76689,\"wh\":\"660x330\",\"ext\":\"jpg\",\"name\":\"o140556731facebook.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(433, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/12.jpg', '{\"size\":94411,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"12.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(434, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/8251e4090e4cf5d0e4283cab3d93947b.jpg', '{\"size\":87809,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"8251e4090e4cf5d0e4283cab3d93947b.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(435, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/82475ngsversion1422286348674adapt7681.jpg', '{\"size\":45396,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"82475ngsversion1422286348674adapt7681.jpg\"}', '2015-09-03 17:16:42', 1, 'admin'),
(436, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/twosixgills.jpg', '{\"size\":37223,\"wh\":\"660x275\",\"ext\":\"jpg\",\"name\":\"twosixgills.jpg\"}', '2015-09-03 17:16:43', 1, 'admin'),
(437, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/museum_islamic_art_imp081208_1.jpg', '{\"size\":59190,\"wh\":\"660x370\",\"ext\":\"jpg\",\"name\":\"museum_islamic_art_imp081208_1.jpg\"}', '2015-09-03 17:16:43', 1, 'admin'),
(438, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/548630314th_century_mosque_lamps_from_egypt__museum_of_islamic_art_doha_qatar0.jpg', '{\"size\":71615,\"wh\":\"660x438\",\"ext\":\"jpg\",\"name\":\"548630314th_century_mosque_lamps_from_egypt__museum_of_islamic_art_doha_qatar0.jpg\"}', '2015-09-03 17:16:43', 1, 'admin'),
(439, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/p14swinnertonnomamaina20150109.jpg', '{\"size\":75140,\"wh\":\"660x501\",\"ext\":\"jpg\",\"name\":\"p14swinnertonnomamaina20150109.jpg\"}', '2015-09-03 17:16:43', 1, 'admin'),
(440, 16, 'news', 'image/jpeg', '/uploads/news/2015_09_03/150113182956restaurantnomafoodsuper169.jpg', '{\"size\":127875,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"150113182956restaurantnomafoodsuper169.jpg\"}', '2015-09-03 17:16:43', 1, 'admin'),
(441, 18, 'news', 'image/jpeg', '/uploads/news/2015_09_03/luong_qg.jpg', '{\"size\":85371,\"wh\":\"660x373\",\"ext\":\"jpg\",\"name\":\"luong_qg.jpg\"}', '2015-09-03 17:23:38', 1, 'admin'),
(442, 18, 'news', 'image/jpeg', '/uploads/news/2015_09_03/luong_123.jpg', '{\"size\":39737,\"wh\":\"658x158\",\"ext\":\"jpg\",\"name\":\"luong_123.jpg\"}', '2015-09-03 17:23:38', 1, 'admin'),
(443, 19, 'news', 'image/jpeg', '/uploads/news/2015_09_04/tautrung_quoc_giaoducnetvn1.jpg', '{\"size\":34215,\"wh\":\"500x270\",\"ext\":\"jpg\",\"name\":\"tautrung_quoc_giaoducnetvn1.jpg\"}', '2015-09-04 09:53:31', 1, 'admin'),
(444, 20, 'news', 'image/jpeg', '/uploads/news/2015_09_04/cloud_bar.jpg', '{\"size\":39698,\"wh\":\"500x253\",\"ext\":\"jpg\",\"name\":\"cloud_bar.jpg\"}', '2015-09-04 10:11:32', 1, 'admin'),
(445, 20, 'news', 'image/jpeg', '/uploads/news/2015_09_04/bienhan_quoc.jpg', '{\"size\":34973,\"wh\":\"500x281\",\"ext\":\"jpg\",\"name\":\"bienhan_quoc.jpg\"}', '2015-09-04 10:11:32', 1, 'admin'),
(446, 20, 'news', 'image/jpeg', '/uploads/news/2015_09_04/koraenamiisland.jpg', '{\"size\":74461,\"wh\":\"500x306\",\"ext\":\"jpg\",\"name\":\"koraenamiisland.jpg\"}', '2015-09-04 10:11:32', 1, 'admin'),
(447, 20, 'news', 'image/png', '/uploads/news/2015_09_04/1hanquoc.png', '{\"size\":315456,\"wh\":\"500x318\",\"ext\":\"png\",\"name\":\"1hanquoc.png\"}', '2015-09-04 10:11:33', 1, 'admin'),
(448, 20, 'news', 'image/png', '/uploads/news/2015_09_04/1hanquoc1.png', '{\"size\":481251,\"wh\":\"500x332\",\"ext\":\"png\",\"name\":\"1hanquoc1.png\"}', '2015-09-04 10:11:33', 1, 'admin'),
(449, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3052-9329c.jpg', '{\"size\":84846,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3052-9329c.jpg\"}', '2015-09-04 10:27:09', 1, 'admin'),
(450, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3044-9329c.jpg', '{\"size\":79197,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3044-9329c.jpg\"}', '2015-09-04 10:27:09', 1, 'admin'),
(451, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3047-9329c.jpg', '{\"size\":96865,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3047-9329c.jpg\"}', '2015-09-04 10:27:09', 1, 'admin'),
(452, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3048-9329c.jpg', '{\"size\":96315,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3048-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(453, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3054-9329c.jpg', '{\"size\":77199,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3054-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(454, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3065-9329c.jpg', '{\"size\":73793,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3065-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(455, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3071-9329c.jpg', '{\"size\":46913,\"wh\":\"600x401\",\"ext\":\"jpg\",\"name\":\"img_3071-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(456, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_3073-9329c.jpg', '{\"size\":54550,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_3073-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(457, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_2876-9329c.jpg', '{\"size\":130635,\"wh\":\"600x800\",\"ext\":\"jpg\",\"name\":\"img_2876-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(458, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_2906-9329c.jpg', '{\"size\":83179,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_2906-9329c.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-04 10:27:10', 1, 'admin'),
(459, 21, 'news', 'image/jpeg', '/uploads/news/2015_09_04/img_2940-9329c.jpg', '{\"size\":79183,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"img_2940-9329c.jpg\"}', '2015-09-04 10:27:10', 1, 'admin'),
(460, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00485-jpg-5537-1441248550.jpg', '{\"size\":118602,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00485-jpg-5537-1441248550.jpg\"}', '2015-09-04 10:51:05', 1, 'admin'),
(461, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00613-jpg-7097-1441248550.jpg', '{\"size\":57569,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00613-jpg-7097-1441248550.jpg\"}', '2015-09-04 10:51:05', 1, 'admin'),
(462, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00291-jpg-3084-1441248550.jpg', '{\"size\":95069,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00291-jpg-3084-1441248550.jpg\"}', '2015-09-04 10:51:05', 1, 'admin'),
(463, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00746-jpg-7628-1441248551.jpg', '{\"size\":99555,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00746-jpg-7628-1441248551.jpg\"}', '2015-09-04 10:51:05', 1, 'admin'),
(464, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00152-jpg-3959-1441248551.jpg', '{\"size\":125571,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00152-jpg-3959-1441248551.jpg\"}', '2015-09-04 10:51:06', 1, 'admin'),
(465, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00206-jpg-4759-1441248551.jpg', '{\"size\":92583,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00206-jpg-4759-1441248551.jpg\"}', '2015-09-04 10:51:06', 1, 'admin'),
(466, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00810-jpg-4676-1441248551.jpg', '{\"size\":98997,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00810-jpg-4676-1441248551.jpg\"}', '2015-09-04 10:51:06', 1, 'admin'),
(467, 22, 'news', 'image/jpeg', '/uploads/news/2015_09_04/dsc00900-jpg-6380-1441248551.jpg', '{\"size\":91062,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"dsc00900-jpg-6380-1441248551.jpg\"}', '2015-09-04 10:51:06', 1, 'admin'),
(468, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/28_660x0.jpg', '{\"size\":167547,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"28_660x0.jpg\"}', '2015-09-04 10:55:21', 1, 'admin'),
(469, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/12-1441164238_660x0.jpg', '{\"size\":171819,\"wh\":\"660x421\",\"ext\":\"jpg\",\"name\":\"12-1441164238_660x0.jpg\"}', '2015-09-04 10:55:21', 1, 'admin'),
(470, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/14-1441164282_660x0.jpg', '{\"size\":194127,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"14-1441164282_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-04 10:55:21', 1, 'admin'),
(471, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/16-1441164359_660x0.jpg', '{\"size\":158944,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"16-1441164359_660x0.jpg\"}', '2015-09-04 10:55:21', 1, 'admin'),
(472, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/17-1441164367_660x0.jpg', '{\"size\":179750,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"17-1441164367_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-04 10:55:21', 1, 'admin'),
(473, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/19-1441164382_660x0.jpg', '{\"size\":157208,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"19-1441164382_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-04 10:55:21', 1, 'admin'),
(474, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/20-1441164390_660x0.jpg', '{\"size\":168957,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"20-1441164390_660x0.jpg\"}', '2015-09-04 10:55:21', 1, 'admin'),
(475, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/21-1441164398_660x0.jpg', '{\"size\":163353,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"21-1441164398_660x0.jpg\"}', '2015-09-04 10:55:21', 1, 'admin'),
(476, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/24-1441164424_660x0.jpg', '{\"size\":185695,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"24-1441164424_660x0.jpg\"}', '2015-09-04 10:55:22', 1, 'admin'),
(477, 23, 'news', 'image/jpeg', '/uploads/news/2015_09_04/25-1441164433_660x0.jpg', '{\"size\":178917,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"25-1441164433_660x0.jpg\"}', '2015-09-04 10:55:22', 1, 'admin'),
(478, 24, 'news', 'image/jpeg', '/uploads/news/2015_09_04/banh1-5973-1441266368.jpg', '{\"size\":195817,\"wh\":\"500x373\",\"ext\":\"jpg\",\"name\":\"banh1-5973-1441266368.jpg\"}', '2015-09-04 11:05:46', 1, 'admin'),
(479, 24, 'news', 'image/jpeg', '/uploads/news/2015_09_04/banh-8968-1441266368.jpg', '{\"size\":173328,\"wh\":\"500x280\",\"ext\":\"jpg\",\"name\":\"banh-8968-1441266368.jpg\"}', '2015-09-04 11:05:46', 1, 'admin'),
(480, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/1-1441253182_660x0.jpg', '{\"size\":37228,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"1-1441253182_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(481, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/2-1441253182_660x0.jpg', '{\"size\":59178,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"2-1441253182_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(482, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/3-1441253182_660x0.jpg', '{\"size\":34100,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"3-1441253182_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(483, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/4-1441253183_660x0.jpg', '{\"size\":45705,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"4-1441253183_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(484, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/5-1441253183_660x0.jpg', '{\"size\":57935,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"5-1441253183_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(485, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/6-1441253184_660x0.jpg', '{\"size\":29766,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"6-1441253184_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(486, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/7-1441253184_660x0.jpg', '{\"size\":129452,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"7-1441253184_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(487, 25, 'news', 'image/jpeg', '/uploads/news/2015_09_04/8-1441253185_660x0.jpg', '{\"size\":57423,\"wh\":\"600x450\",\"ext\":\"jpg\",\"name\":\"8-1441253185_660x0.jpg\"}', '2015-09-04 11:08:22', 1, 'admin'),
(488, 26, 'news', 'image/jpeg', '/uploads/news/2015_09_04/raspberries-in-water-h3zkhj-1441160858_660x0.jpg', '{\"size\":76431,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"raspberries-in-water-h3zkhj-1441160858_660x0.jpg\"}', '2015-09-04 13:36:22', 1, 'admin'),
(489, 26, 'news', 'image/jpeg', '/uploads/news/2015_09_04/aloe-vera-clvsti-1441160861_660x0.jpg', '{\"size\":100175,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"aloe-vera-clvsti-1441160861_660x0.jpg\"}', '2015-09-04 13:36:23', 1, 'admin'),
(490, 26, 'news', 'image/jpeg', '/uploads/news/2015_09_04/lemon-water-aessrk-1441160866_660x0.jpg', '{\"size\":95844,\"wh\":\"660x497\",\"ext\":\"jpg\",\"name\":\"lemon-water-aessrk-1441160866_660x0.jpg\"}', '2015-09-04 13:36:23', 1, 'admin'),
(491, 26, 'news', 'image/jpeg', '/uploads/news/2015_09_04/coconut-water-wdwiuq-1441160872_660x0.jpg', '{\"size\":93906,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"coconut-water-wdwiuq-1441160872_660x0.jpg\"}', '2015-09-04 13:36:23', 1, 'admin'),
(492, 27, 'news', 'image/jpeg', '/uploads/news/2015_09_04/ban-hang-truc-tuyen-doanhnhansaigon.jpg', '{\"size\":48754,\"wh\":\"500x375\",\"ext\":\"jpg\",\"name\":\"ban-hang-truc-tuyen-doanhnhansaigon.jpg\"}', '2015-09-04 14:21:24', 1, 'admin'),
(493, 28, 'news', 'image/jpeg', '/uploads/news/2015_09_07/bn-kd844-germig-m-201509040749-3786-8762-1441596374.jpg', '{\"size\":291588,\"wh\":\"500x333\",\"ext\":\"jpg\",\"name\":\"bn-kd844-germig-m-201509040749-3786-8762-1441596374.jpg\"}', '2015-09-07 15:25:52', 1, 'admin'),
(494, 29, 'news', 'image/jpeg', '/uploads/news/2015_09_07/lamprey-fish-1-6222-1441431564.jpg', '{\"size\":62471,\"wh\":\"500x300\",\"ext\":\"jpg\",\"name\":\"lamprey-fish-1-6222-1441431564.jpg\"}', '2015-09-07 15:30:39', 1, 'admin'),
(495, 30, 'news', 'image/jpeg', '/uploads/news/2015_09_24/toi-6085-1443003161.jpg', '{\"size\":169542,\"wh\":\"500x333\",\"ext\":\"jpg\",\"name\":\"toi-6085-1443003161.jpg\"}', '2015-09-24 13:19:39', 1, 'admin'),
(496, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-1-1443061854_660x0.png', '{\"size\":224269,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-1-1443061854_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(497, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-2-1443061854_660x0.png', '{\"size\":511670,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-2-1443061854_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(498, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-3-1443061854_660x0.png', '{\"size\":318173,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-3-1443061854_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(499, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-4-1443061855_660x0.png', '{\"size\":296813,\"wh\":\"660x371\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-4-1443061855_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(500, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-5-1443061855_660x0.png', '{\"size\":234274,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-5-1443061855_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(501, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-6-1443061856_660x0.png', '{\"size\":458803,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-6-1443061856_660x0.png\"}', '2015-09-24 13:25:07', 1, 'admin'),
(502, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-7-1443061856_660x0.png', '{\"size\":371197,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-7-1443061856_660x0.png\"}', '2015-09-24 13:25:08', 1, 'admin'),
(503, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-9-1443061858_660x0.png', '{\"size\":421304,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-9-1443061858_660x0.png\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:25:08', 1, 'admin'),
(504, 31, 'news', 'image/png', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-10-1443061858_660x0.png', '{\"size\":177397,\"wh\":\"660x396\",\"ext\":\"png\",\"name\":\"vne-the-future-shape-of-luxury-yatchs-10-1443061858_660x0.png\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:25:08', 1, 'admin'),
(505, 32, 'news', 'image/jpeg', '/uploads/news/2015_09_24/colliding-black-holes-6444-1442974967.jpg', '{\"size\":84759,\"wh\":\"500x417\",\"ext\":\"jpg\",\"name\":\"colliding-black-holes-6444-1442974967.jpg\"}', '2015-09-24 13:34:10', 1, 'admin'),
(506, 32, 'news', 'image/png', '/uploads/news/2015_09_24/gravitational-waves-6198-1442974967.png', '{\"size\":268468,\"wh\":\"500x371\",\"ext\":\"png\",\"name\":\"gravitational-waves-6198-1442974967.png\"}', '2015-09-24 13:34:10', 1, 'admin'),
(507, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/1-1411989871_660x0.jpg', '{\"size\":120540,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"1-1411989871_660x0.jpg\"}', '2015-09-24 13:41:56', 1, 'admin'),
(508, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/2-1411989875_660x0.jpg', '{\"size\":116931,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"2-1411989875_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:41:57', 1, 'admin'),
(509, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/3-1411989878_660x0.jpg', '{\"size\":84707,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"3-1411989878_660x0.jpg\"}', '2015-09-24 13:41:57', 1, 'admin'),
(510, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/6-1411989887_660x0.jpg', '{\"size\":124654,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"6-1411989887_660x0.jpg\"}', '2015-09-24 13:41:57', 1, 'admin'),
(511, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/4-1411989881_660x0.jpg', '{\"size\":88884,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"4-1411989881_660x0.jpg\"}', '2015-09-24 13:41:57', 1, 'admin'),
(512, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/7-1411989890_660x0.jpg', '{\"size\":138621,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"7-1411989890_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:41:57', 1, 'admin'),
(513, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/8-1411989893_660x0.jpg', '{\"size\":113111,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"8-1411989893_660x0.jpg\"}', '2015-09-24 13:41:57', 1, 'admin'),
(514, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/5-1411989884_660x0.jpg', '{\"size\":119176,\"wh\":\"660x384\",\"ext\":\"jpg\",\"name\":\"5-1411989884_660x0.jpg\"}', '2015-09-24 13:41:57', 1, 'admin'),
(515, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/9-1411989896_660x0.jpg', '{\"size\":100457,\"wh\":\"660x382\",\"ext\":\"jpg\",\"name\":\"9-1411989896_660x0.jpg\",\"title\":\"gfsdgsdf\",\"caption\":\"gfdfd\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:41:57', 1, 'admin'),
(516, 33, 'news', 'image/jpeg', '/uploads/news/2015_09_24/10-1411989899_660x0.jpg', '{\"size\":108240,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"10-1411989899_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-09-24 13:41:58', 1, 'admin'),
(565, 57, 'media', 'image/png', '/uploads/media/2015_10_28/dung-dich-tay-rua-vang-mo-500ml-leifheit-duc-1200x1200.png', '{\"size\":454906,\"wh\":\"1024x1024\",\"ext\":\"png\",\"name\":\"dung-dich-tay-rua-vang-mo-500ml-leifheit-duc-1200x1200.png\"}', '2015-10-28 10:52:17', 1, 'admin'),
(566, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/cay-lau-nha-vong-tron.jpg', '{\"size\":311825,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"cay-lau-nha-vong-tron.jpg\"}', '2015-10-28 10:52:31', 1, 'admin'),
(567, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/9841_ban_la_hoi_nuoc_bluestone_sib_3888g.jpg', '{\"size\":421272,\"wh\":\"1245x1024\",\"ext\":\"jpg\",\"name\":\"9841_ban_la_hoi_nuoc_bluestone_sib_3888g.jpg\"}', '2015-10-28 10:52:53', 1, 'admin'),
(568, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/cedcc53b24c75ed5adc0447fbd58813b.jpg', '{\"size\":454214,\"wh\":\"1280x914\",\"ext\":\"jpg\",\"name\":\"cedcc53b24c75ed5adc0447fbd58813b.jpg\"}', '2015-10-28 10:53:31', 1, 'admin'),
(569, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/buc-xa-bong-den-tiet-kiem-dien-co-the-gay-hai-2.jpg', '{\"size\":288138,\"wh\":\"1280x950\",\"ext\":\"jpg\",\"name\":\"buc-xa-bong-den-tiet-kiem-dien-co-the-gay-hai-2.jpg\"}', '2015-10-28 10:54:13', 1, 'admin'),
(570, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/may-xay-cam-tay-da-chuc-nang-philips-hr-1372.jpg', '{\"size\":353630,\"wh\":\"829x1024\",\"ext\":\"jpg\",\"name\":\"may-xay-cam-tay-da-chuc-nang-philips-hr-1372.jpg\"}', '2015-10-28 10:54:39', 1, 'admin'),
(571, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/cay-nuoc-nong-lanh-kangaroo-nhap-khau-hq-kg-42s-23122-1.jpg', '{\"size\":128012,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"cay-nuoc-nong-lanh-kangaroo-nhap-khau-hq-kg-42s-23122-1.jpg\"}', '2015-10-28 10:54:53', 1, 'admin'),
(572, 57, 'media', 'image/jpeg', '/uploads/media/2015_10_28/quat-hop.jpg', '{\"size\":509275,\"wh\":\"899x1024\",\"ext\":\"jpg\",\"name\":\"quat-hop.jpg\"}', '2015-10-28 10:55:30', 1, 'admin'),
(608, 28, 'media', 'image/jpeg', '/uploads/media/2015_11_17/cach-lap-dat-va-su-dung-cay-lau-nha-360-do.jpg', '{\"size\":522559,\"wh\":\"1679x2067\",\"ext\":\"jpg\",\"name\":\"cach-lap-dat-va-su-dung-cay-lau-nha-360-do.jpg\"}', '2015-11-17 13:31:58', 1, 'admin'),
(610, 26, 'media', 'image/jpeg', '/uploads/media/2015_11_17/23dec11-hd4729-60_l1.jpg', '{\"size\":277217,\"wh\":\"1000x1000\",\"ext\":\"jpg\",\"name\":\"23dec11-hd4729-60_l1.jpg\"}', '2015-11-17 14:16:31', 1, 'admin'),
(615, 55, 'media', 'image/jpeg', '/uploads/media/2015_11_23/6968_aquatak-101.jpg', '{\"size\":15835,\"wh\":\"400x400\",\"ext\":\"jpg\",\"name\":\"6968_aquatak-101.jpg\"}', '2015-11-23 09:53:21', 1, 'admin'),
(616, 53, 'media', 'image/jpeg', '/uploads/media/2015_11_23/noi-nuong-thuy-tinh-sunhouse-shd4118.jpg', '{\"size\":361239,\"wh\":\"800x800\",\"ext\":\"jpg\",\"name\":\"noi-nuong-thuy-tinh-sunhouse-shd4118.jpg\"}', '2015-11-23 09:54:05', 1, 'admin'),
(617, 30, 'media', 'image/jpeg', '/uploads/media/2015_11_23/mauaothundongphuccongty-36.jpg', '{\"size\":67154,\"wh\":\"1600x778\",\"ext\":\"jpg\",\"name\":\"mauaothundongphuccongty-36.jpg\"}', '2015-11-23 09:55:15', 1, 'admin'),
(619, 41, 'media', 'image/jpeg', '/uploads/media/2015_11_23/noi-ap-suat-3.jpg', '{\"size\":92819,\"wh\":\"1081x866\",\"ext\":\"jpg\",\"name\":\"noi-ap-suat-3.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2015-11-23 09:57:04', 1, 'admin'),
(620, 40, 'media', 'image/jpeg', '/uploads/media/2015_11_23/mh-1.jpg', '{\"size\":273633,\"wh\":\"1024x768\",\"ext\":\"jpg\",\"name\":\"mh-1.jpg\"}', '2015-11-23 10:02:45', 1, 'admin'),
(663, 35, 'news', 'image/jpeg', '/uploads/news/2016_02_29/a2-7512-1456707944.jpg', '{\"size\":503767,\"wh\":\"1280x719\",\"ext\":\"jpg\",\"name\":\"a2-7512-1456707944.jpg\"}', '2016-02-29 10:11:22', 1, 'admin'),
(664, 35, 'news', 'image/jpeg', '/uploads/news/2016_02_29/a2-7512-1456707944.jpg', '{\"size\":180223,\"wh\":\"500x281\",\"ext\":\"jpg\",\"name\":\"a2-7512-1456707944.jpg\"}', '2016-02-29 10:11:49', 1, 'admin'),
(665, 36, 'news', 'image/jpeg', '/uploads/news/2016_02_29/top-2908-1456701053.jpg', '{\"size\":607525,\"wh\":\"1280x768\",\"ext\":\"jpg\",\"name\":\"top-2908-1456701053.jpg\"}', '2016-02-29 10:13:13', 1, 'admin'),
(666, 36, 'news', 'image/jpeg', '/uploads/news/2016_02_29/top-2908-1456701053.jpg', '{\"size\":150781,\"wh\":\"500x300\",\"ext\":\"jpg\",\"name\":\"top-2908-1456701053.jpg\"}', '2016-02-29 10:13:48', 1, 'admin'),
(667, 37, 'news', 'image/jpeg', '/uploads/news/2016_02_29/ronaldo2-7510-1456474165.jpg', '{\"size\":512149,\"wh\":\"1280x796\",\"ext\":\"jpg\",\"name\":\"ronaldo2-7510-1456474165.jpg\"}', '2016-02-29 10:16:19', 1, 'admin'),
(668, 37, 'news', 'image/jpeg', '/uploads/news/2016_02_29/ronaldo2-7510-1456474165.jpg', '{\"size\":118542,\"wh\":\"500x311\",\"ext\":\"jpg\",\"name\":\"ronaldo2-7510-1456474165.jpg\"}', '2016-02-29 10:16:38', 1, 'admin'),
(669, 38, 'news', 'image/jpeg', '/uploads/news/2016_02_29/3182189000000578-3461712-image-4204-3080-1456346573.jpg', '{\"size\":558549,\"wh\":\"1280x806\",\"ext\":\"jpg\",\"name\":\"3182189000000578-3461712-image-4204-3080-1456346573.jpg\"}', '2016-02-29 10:52:57', 1, 'admin'),
(670, 38, 'news', 'image/jpeg', '/uploads/news/2016_02_29/3182189000000578-3461712-image-4204-3080-1456346573.jpg', '{\"size\":173033,\"wh\":\"500x315\",\"ext\":\"jpg\",\"name\":\"3182189000000578-3461712-image-4204-3080-1456346573.jpg\"}', '2016-02-29 10:53:18', 1, 'admin'),
(689, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/57-1456551155_660x0.jpg', '{\"size\":629219,\"wh\":\"1280x719\",\"ext\":\"jpg\",\"name\":\"57-1456551155_660x0.jpg\"}', '2016-02-29 11:02:38', 1, 'admin'),
(690, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/15-1456551147_660x0.jpg', '{\"size\":79371,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"15-1456551147_660x0.jpg\"}', '2016-02-29 11:02:59', 1, 'admin'),
(691, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/16-1456551148_660x0.jpg', '{\"size\":99180,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"16-1456551148_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(692, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/17-1456551149_660x0.jpg', '{\"size\":97694,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"17-1456551149_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(693, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/26-1456551149_660x0.jpg', '{\"size\":99404,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"26-1456551149_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(694, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/43-1456551151_660x0.jpg', '{\"size\":105240,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"43-1456551151_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(695, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/47-1456551152_660x0.jpg', '{\"size\":93608,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"47-1456551152_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(696, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/51-1456551153_660x0.jpg', '{\"size\":108810,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"51-1456551153_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(697, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/57-1456551155_660x0.jpg', '{\"size\":115931,\"wh\":\"660x371\",\"ext\":\"jpg\",\"name\":\"57-1456551155_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(698, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/happyland-circuit-flycam-panorama-1-1456551156_660x0.jpg', '{\"size\":128737,\"wh\":\"660x353\",\"ext\":\"jpg\",\"name\":\"happyland-circuit-flycam-panorama-1-1456551156_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(699, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/happyland-circuit-flycam-panorama-2-1456551157_660x0.jpg', '{\"size\":86394,\"wh\":\"660x256\",\"ext\":\"jpg\",\"name\":\"happyland-circuit-flycam-panorama-2-1456551157_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(700, 40, 'news', 'image/jpeg', '/uploads/news/2016_02_29/happyland-circuit-panorama-3-1456551159_660x0.jpg', '{\"size\":149887,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"happyland-circuit-panorama-3-1456551159_660x0.jpg\"}', '2016-02-29 11:03:00', 1, 'admin'),
(701, 41, 'news', 'image/jpeg', '/uploads/news/2016_02_29/morishi-7974-1456649841.jpg', '{\"size\":653710,\"wh\":\"1280x798\",\"ext\":\"jpg\",\"name\":\"morishi-7974-1456649841.jpg\"}', '2016-02-29 11:17:54', 1, 'admin'),
(702, 41, 'news', 'image/jpeg', '/uploads/news/2016_02_29/morishi-7974-1456649841.jpg', '{\"size\":170049,\"wh\":\"500x312\",\"ext\":\"jpg\",\"name\":\"morishi-7974-1456649841.jpg\"}', '2016-02-29 11:18:03', 1, 'admin'),
(703, 41, 'news', 'image/jpeg', '/uploads/news/2016_02_29/ever-3624-1456649841.jpg', '{\"size\":152874,\"wh\":\"500x300\",\"ext\":\"jpg\",\"name\":\"ever-3624-1456649841.jpg\"}', '2016-02-29 11:18:04', 1, 'admin'),
(704, 59, 'category', 'image/jpeg', '/uploads/category/2016_03_23/goi-tap-nam-ngoi.jpg', '{\"size\":448388,\"wh\":\"989x1024\",\"ext\":\"jpg\",\"name\":\"goi-tap-nam-ngoi.jpg\"}', '2016-03-23 11:12:47', 1, 'admin'),
(705, 25, 'category', 'image/jpeg', '/uploads/category/2016_03_23/625.jpg', '{\"size\":442792,\"wh\":\"1280x844\",\"ext\":\"jpg\",\"name\":\"625.jpg\"}', '2016-03-23 11:18:34', 1, 'admin'),
(706, 1, 'category', 'image/jpeg', '/uploads/category/2016_03_23/suc-khoe-me-va-be.jpg', '{\"size\":584665,\"wh\":\"1280x1004\",\"ext\":\"jpg\",\"name\":\"suc-khoe-me-va-be.jpg\"}', '2016-03-23 11:53:35', 1, 'admin'),
(707, 10, 'category', 'image/jpeg', '/uploads/category/2016_03_23/48044241.jpg', '{\"size\":443598,\"wh\":\"1280x851\",\"ext\":\"jpg\",\"name\":\"48044241.jpg\"}', '2016-03-23 13:04:59', 1, 'admin'),
(708, 9, 'category', 'image/jpeg', '/uploads/category/2016_03_23/1cf5cab53dbc47cca84b1ed9c507be52_1.jpg', '{\"size\":297109,\"wh\":\"1280x960\",\"ext\":\"jpg\",\"name\":\"1cf5cab53dbc47cca84b1ed9c507be52_1.jpg\"}', '2016-03-23 13:05:29', 1, 'admin'),
(709, 2, 'category', 'image/jpeg', '/uploads/category/2016_03_23/20110328150158_80384.jpg', '{\"size\":503683,\"wh\":\"1262x1024\",\"ext\":\"jpg\",\"name\":\"20110328150158_80384.jpg\"}', '2016-03-23 13:05:55', 1, 'admin'),
(710, 8, 'category', 'image/jpeg', '/uploads/category/2016_03_23/3914757btfb.jpg', '{\"size\":425716,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"3914757btfb.jpg\"}', '2016-03-23 13:06:42', 1, 'admin'),
(711, 3, 'category', 'image/jpeg', '/uploads/category/2016_03_23/tre-so-sinh.jpg', '{\"size\":369751,\"wh\":\"1280x719\",\"ext\":\"jpg\",\"name\":\"tre-so-sinh.jpg\"}', '2016-03-23 13:13:53', 1, 'admin'),
(712, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-2.jpg', '{\"size\":167012,\"wh\":\"800x800\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-2.jpg\"}', '2016-03-23 13:28:41', 1, 'admin'),
(713, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-5.jpg', '{\"size\":115992,\"wh\":\"800x800\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-5.jpg\"}', '2016-03-23 13:28:41', 1, 'admin'),
(714, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-8.jpg', '{\"size\":235059,\"wh\":\"502x502\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-8.jpg\"}', '2016-03-23 13:28:42', 1, 'admin'),
(715, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-11.jpg', '{\"size\":201145,\"wh\":\"800x800\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-11.jpg\"}', '2016-03-23 13:28:42', 1, 'admin'),
(716, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-14.jpg', '{\"size\":246789,\"wh\":\"820x820\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-14.jpg\"}', '2016-03-23 13:28:42', 1, 'admin'),
(717, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-17.jpg', '{\"size\":81292,\"wh\":\"502x502\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-17.jpg\"}', '2016-03-23 13:28:42', 1, 'admin'),
(718, 28, 'product', 'image/jpeg', '/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-20.jpg', '{\"size\":301961,\"wh\":\"820x820\",\"ext\":\"jpg\",\"name\":\"bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-20.jpg\"}', '2016-03-23 13:28:43', 1, 'admin'),
(719, 26, 'product', 'image/jpeg', '/uploads/product/2016_03_23/noi-com-ien-kangaroo-kg376n-1-8l-trang-7328-692629-1-zoom.jpg', '{\"size\":190121,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"noi-com-ien-kangaroo-kg376n-1-8l-trang-7328-692629-1-zoom.jpg\"}', '2016-03-23 13:55:35', 1, 'admin'),
(720, 26, 'product', 'image/jpeg', '/uploads/product/2016_03_23/so-sanh-noi-com-dien-comet-cm8018-vs-kangaroo-kg376noi-co-nao-tot-hon_3.jpg', '{\"size\":590298,\"wh\":\"1280x957\",\"ext\":\"jpg\",\"name\":\"so-sanh-noi-com-dien-comet-cm8018-vs-kangaroo-kg376noi-co-nao-tot-hon_3.jpg\"}', '2016-03-23 13:55:37', 1, 'admin'),
(721, 27, 'product', 'image/jpeg', '/uploads/product/2016_03_23/dau-chong-ri-set-selleys-rp7-chai-150g.jpg', '{\"size\":632742,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"dau-chong-ri-set-selleys-rp7-chai-150g.jpg\"}', '2016-03-23 14:09:29', 1, 'admin'),
(722, 27, 'product', 'image/jpeg', '/uploads/product/2016_03_23/144775-dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7.jpg', '{\"size\":527097,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"144775-dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7.jpg\"}', '2016-03-23 14:09:39', 1, 'admin'),
(723, 27, 'product', 'image/jpeg', '/uploads/product/2016_03_23/dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7-0969-95795-1-product.jpg', '{\"size\":227137,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7-0969-95795-1-product.jpg\"}', '2016-03-23 14:09:40', 1, 'admin'),
(724, 24, 'product', 'image/jpeg', '/uploads/product/2016_04_01/517.jpg', '{\"size\":584319,\"wh\":\"1280x960\",\"ext\":\"jpg\",\"name\":\"517.jpg\"}', '2016-04-01 18:46:10', 1, 'admin'),
(725, 24, 'product', 'image/jpeg', '/uploads/product/2016_04_01/91fhwi9fkql._sl1500_.jpg', '{\"size\":649985,\"wh\":\"1280x924\",\"ext\":\"jpg\",\"name\":\"91fhwi9fkql._sl1500_.jpg\"}', '2016-04-01 18:46:24', 1, 'admin'),
(726, 24, 'product', 'image/jpeg', '/uploads/product/2016_04_01/lego_3315_olivias_huis_friends_3.jpg', '{\"size\":587787,\"wh\":\"1082x1024\",\"ext\":\"jpg\",\"name\":\"lego_3315_olivias_huis_friends_3.jpg\"}', '2016-04-01 18:46:26', 1, 'admin'),
(727, 24, 'product', 'image/jpeg', '/uploads/product/2016_04_01/do-choi-lego-5506-1.jpg', '{\"size\":594481,\"wh\":\"1280x979\",\"ext\":\"jpg\",\"name\":\"do-choi-lego-5506-1.jpg\"}', '2016-04-01 18:46:28', 1, 'admin'),
(728, 24, 'product', 'image/jpeg', '/uploads/product/2016_04_01/lego-57491.jpg', '{\"size\":557680,\"wh\":\"1280x853\",\"ext\":\"jpg\",\"name\":\"lego-57491.jpg\",\"title\":\"B\\u1ed9 x\\u1ebfp h\\u00ecnh lego\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2016-04-01 18:46:30', 1, 'admin'),
(729, 23, 'product', 'image/gif', '/uploads/product/2016_04_01/1.gif', '{\"size\":456375,\"wh\":\"1280x960\",\"ext\":\"gif\",\"name\":\"1.gif\"}', '2016-04-01 18:55:31', 1, 'admin'),
(730, 23, 'product', 'image/jpeg', '/uploads/product/2016_04_01/anself-kitchen-appliances-multifunctional-font-b-manual-b-font-font-b-juicer-b-font-practical-juicing.jpg', '{\"size\":197024,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"anself-kitchen-appliances-multifunctional-font-b-manual-b-font-font-b-juicer-b-font-practical-juicing.jpg\"}', '2016-04-01 18:55:38', 1, 'admin'),
(731, 23, 'product', 'image/jpeg', '/uploads/product/2016_04_01/anself-multifunctional-juicing-machine-detachable-fruits-font-b-hand-b-font-font-b-crank-b-font.jpg', '{\"size\":232469,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"anself-multifunctional-juicing-machine-detachable-fruits-font-b-hand-b-font-font-b-crank-b-font.jpg\"}', '2016-04-01 18:55:40', 1, 'admin'),
(732, 23, 'product', 'image/jpeg', '/uploads/product/2016_04_01/-font-b-hand-b-font-fruit-squeezer-lemon-citrus-orange-squeezer-font-b-manual-b.jpg', '{\"size\":212520,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"-font-b-hand-b-font-fruit-squeezer-lemon-citrus-orange-squeezer-font-b-manual-b.jpg\"}', '2016-04-01 18:55:42', 1, 'admin'),
(733, 23, 'product', 'image/jpeg', '/uploads/product/2016_04_01/maxresdefault.jpg', '{\"size\":353447,\"wh\":\"1280x720\",\"ext\":\"jpg\",\"name\":\"maxresdefault.jpg\"}', '2016-04-01 18:55:44', 1, 'admin'),
(734, 23, 'product', 'image/jpeg', '/uploads/product/2016_04_01/may-xay-ep-da-nang-2in1-manual-juicer_2.jpg', '{\"size\":222138,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"may-xay-ep-da-nang-2in1-manual-juicer_2.jpg\"}', '2016-04-01 18:55:46', 1, 'admin'),
(735, 22, 'product', 'image/jpeg', '/uploads/product/2016_04_01/blb_b12w002.jpg', '{\"size\":369865,\"wh\":\"1059x1024\",\"ext\":\"jpg\",\"name\":\"blb_b12w002.jpg\"}', '2016-04-01 19:14:14', 1, 'admin'),
(737, 22, 'product', 'image/jpeg', '/uploads/product/2016_04_01/collage_photocat_zpsujstmacf.jpg', '{\"size\":465178,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"collage_photocat_zpsujstmacf.jpg\"}', '2016-04-01 19:14:23', 1, 'admin'),
(738, 22, 'product', 'image/jpeg', '/uploads/product/2016_04_01/den-led-bulb-9w-wit-b0109y-anh-sang-vang.jpg', '{\"size\":231409,\"wh\":\"1280x928\",\"ext\":\"jpg\",\"name\":\"den-led-bulb-9w-wit-b0109y-anh-sang-vang.jpg\"}', '2016-04-01 19:14:24', 1, 'admin'),
(739, 21, 'product', 'image/jpeg', '/uploads/product/2016_04_01/jcd_108000000.jpg', '{\"size\":200763,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"jcd_108000000.jpg\"}', '2016-04-01 19:18:35', 1, 'admin'),
(740, 21, 'product', 'image/jpeg', '/uploads/product/2016_04_01/523686589973.jpg', '{\"size\":325515,\"wh\":\"1280x918\",\"ext\":\"jpg\",\"name\":\"523686589973.jpg\"}', '2016-04-01 19:18:43', 1, 'admin'),
(741, 21, 'product', 'image/jpeg', '/uploads/product/2016_04_01/binh-dan-sieu-toc-philips-hd9303-1_1.jpg', '{\"size\":356616,\"wh\":\"1280x990\",\"ext\":\"jpg\",\"name\":\"binh-dan-sieu-toc-philips-hd9303-1_1.jpg\"}', '2016-04-01 19:18:46', 1, 'admin'),
(742, 21, 'product', 'image/jpeg', '/uploads/product/2016_04_01/dar1385459884.jpg', '{\"size\":240139,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"dar1385459884.jpg\"}', '2016-04-01 19:18:48', 1, 'admin'),
(743, 20, 'product', 'image/jpeg', '/uploads/product/2016_04_01/437.jpg', '{\"size\":239037,\"wh\":\"1007x1024\",\"ext\":\"jpg\",\"name\":\"437.jpg\"}', '2016-04-01 19:29:50', 1, 'admin'),
(744, 20, 'product', 'image/jpeg', '/uploads/product/2016_04_01/6862_338.jpg', '{\"size\":257318,\"wh\":\"1034x1024\",\"ext\":\"jpg\",\"name\":\"6862_338.jpg\"}', '2016-04-01 19:30:09', 1, 'admin'),
(745, 20, 'product', 'image/jpeg', '/uploads/product/2016_04_01/96589_binh-tam-midea-d1525eva.jpg', '{\"size\":333738,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"96589_binh-tam-midea-d1525eva.jpg\"}', '2016-04-01 19:30:12', 1, 'admin'),
(746, 20, 'product', 'image/jpeg', '/uploads/product/2016_04_01/binh-tam-gian-tiep-ariston-15l-an-15-r-mt.jpg', '{\"size\":204494,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"binh-tam-gian-tiep-ariston-15l-an-15-r-mt.jpg\"}', '2016-04-01 19:30:13', 1, 'admin'),
(747, 20, 'product', 'image/png', '/uploads/product/2016_04_01/pro_0619145739.png', '{\"size\":504257,\"wh\":\"1053x1024\",\"ext\":\"png\",\"name\":\"pro_0619145739.png\"}', '2016-04-01 19:30:16', 1, 'admin');
INSERT INTO `t_media` (`id`, `object_id`, `object_type`, `type`, `path`, `other_info`, `date`, `user_id`, `username`) VALUES
(748, 28, 'product', 'image/jpeg', '/uploads/product/2016_04_02/1753_3_cay_lau_nha_bamboo_thai_lan.jpg', '{\"size\":177117,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"1753_3_cay_lau_nha_bamboo_thai_lan.jpg\"}', '2016-04-02 10:27:32', 1, 'admin'),
(749, 28, 'product', 'image/jpeg', '/uploads/product/2016_04_02/2453253_17245.jpg', '{\"size\":232945,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"2453253_17245.jpg\"}', '2016-04-02 10:27:33', 1, 'admin'),
(750, 28, 'product', 'image/jpeg', '/uploads/product/2016_04_02/cay-lau-nha-360-do-long-inox.jpg', '{\"size\":389488,\"wh\":\"1280x874\",\"ext\":\"jpg\",\"name\":\"cay-lau-nha-360-do-long-inox.jpg\"}', '2016-04-02 10:27:35', 1, 'admin'),
(751, 28, 'product', 'image/png', '/uploads/product/2016_04_02/ff4.png', '{\"size\":535024,\"wh\":\"703x1024\",\"ext\":\"png\",\"name\":\"ff4.png\"}', '2016-04-02 10:27:37', 1, 'admin'),
(752, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/1-1459478874_660x0.jpg', '{\"size\":94039,\"wh\":\"660x351\",\"ext\":\"jpg\",\"name\":\"1-1459478874_660x0.jpg\"}', '2016-04-02 15:49:18', 1, 'admin'),
(753, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/2-1459478875_660x0.jpg', '{\"size\":113520,\"wh\":\"660x439\",\"ext\":\"jpg\",\"name\":\"2-1459478875_660x0.jpg\",\"title\":\"\",\"caption\":\"\",\"alt\":\"\",\"desc\":\"\"}', '2016-04-02 15:49:18', 1, 'admin'),
(754, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/4-1459478875_660x0.jpg', '{\"size\":157709,\"wh\":\"660x495\",\"ext\":\"jpg\",\"name\":\"4-1459478875_660x0.jpg\"}', '2016-04-02 15:49:19', 1, 'admin'),
(755, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/5-1459478876_660x0.jpg', '{\"size\":391195,\"wh\":\"500x667\",\"ext\":\"jpg\",\"name\":\"5-1459478876_660x0.jpg\"}', '2016-04-02 15:49:19', 1, 'admin'),
(756, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/6-1459478876_660x0.jpg', '{\"size\":97055,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"6-1459478876_660x0.jpg\"}', '2016-04-02 15:49:19', 1, 'admin'),
(757, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/7-1459478877_660x0.jpg', '{\"size\":128054,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"7-1459478877_660x0.jpg\"}', '2016-04-02 15:49:20', 1, 'admin'),
(758, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/14-1459479160_660x0.jpg', '{\"size\":286185,\"wh\":\"660x440\",\"ext\":\"jpg\",\"name\":\"14-1459479160_660x0.jpg\"}', '2016-04-02 15:49:20', 1, 'admin'),
(759, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/12345620-506103412908071-8034651347028597910-n-1459479169_660x0.jpg', '{\"size\":332350,\"wh\":\"660x495\",\"ext\":\"jpg\",\"name\":\"12345620-506103412908071-8034651347028597910-n-1459479169_660x0.jpg\"}', '2016-04-02 15:49:20', 1, 'admin'),
(760, 42, 'news', 'image/jpeg', '/uploads/news/2016_04_02/12342825-506103372908075-3517736039483032594-n-1459479172_660x0.jpg', '{\"size\":369845,\"wh\":\"660x495\",\"ext\":\"jpg\",\"name\":\"12342825-506103372908075-3517736039483032594-n-1459479172_660x0.jpg\"}', '2016-04-02 15:49:21', 1, 'admin'),
(761, 17, 'product', 'image/jpeg', '/uploads/product/2016_04_02/141038_may-hut-bui-electrolux-zar3500.jpg', '{\"size\":172046,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"141038_may-hut-bui-electrolux-zar3500.jpg\"}', '2016-04-02 16:51:16', 1, 'admin'),
(762, 17, 'product', 'image/jpeg', '/uploads/product/2016_04_02/14869_type7.jpg', '{\"size\":220508,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"14869_type7.jpg\"}', '2016-04-02 16:51:21', 1, 'admin'),
(763, 17, 'product', 'image/jpeg', '/uploads/product/2016_04_02/78891_80815_may_hut_bui_electrolux_zar3500_4.jpg', '{\"size\":201920,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"78891_80815_may_hut_bui_electrolux_zar3500_4.jpg\"}', '2016-04-02 16:51:23', 1, 'admin'),
(764, 17, 'product', 'image/jpeg', '/uploads/product/2016_04_02/e_1180397.jpg', '{\"size\":150351,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"e_1180397.jpg\"}', '2016-04-02 16:51:25', 1, 'admin'),
(765, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/6462_0_win_win_toys2.jpg', '{\"size\":476272,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"6462_0_win_win_toys2.jpg\"}', '2016-04-04 15:40:50', 1, 'admin'),
(767, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/do-choi-go-tro-choi-truot-xe_1870133468386754504_360.jpg', '{\"size\":327670,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"do-choi-go-tro-choi-truot-xe_1870133468386754504_360.jpg\"}', '2016-04-04 15:41:02', 1, 'admin'),
(768, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-1.jpg', '{\"size\":339602,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"tro-choi-truot-xe-62092-1.jpg\"}', '2016-04-04 15:41:03', 1, 'admin'),
(769, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-2.jpg', '{\"size\":424354,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"tro-choi-truot-xe-62092-2.jpg\"}', '2016-04-04 15:41:05', 1, 'admin'),
(770, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/tro-choi-lan-banh-bang-go_850x850.jpg', '{\"size\":777780,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"tro-choi-lan-banh-bang-go_850x850.jpg\"}', '2016-04-04 15:41:08', 1, 'admin'),
(771, 19, 'product', 'image/jpeg', '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-1m4g3-52a_2hiq6ed25i7s4_simg_19a19b_600x497_max.jpg', '{\"size\":338220,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"tro-choi-truot-xe-62092-1m4g3-52a_2hiq6ed25i7s4_simg_19a19b_600x497_max.jpg\"}', '2016-04-04 15:41:10', 1, 'admin'),
(772, 18, 'product', 'image/jpeg', '/uploads/product/2016_04_04/abd9101c-bb92-440d-a36d-969353bfa7c5.jpeg', '{\"size\":979212,\"wh\":\"1186x1024\",\"ext\":\"jpeg\",\"name\":\"abd9101c-bb92-440d-a36d-969353bfa7c5.jpeg\"}', '2016-04-04 15:49:51', 1, 'admin'),
(773, 18, 'product', 'image/jpeg', '/uploads/product/2016_04_04/be-boi-co-cau-truot-intex-57136-3.jpg', '{\"size\":532839,\"wh\":\"682x1024\",\"ext\":\"jpg\",\"name\":\"be-boi-co-cau-truot-intex-57136-3.jpg\"}', '2016-04-04 15:49:55', 1, 'admin'),
(774, 18, 'product', 'image/jpeg', '/uploads/product/2016_04_04/intex-57136.jpg', '{\"size\":1083358,\"wh\":\"1280x853\",\"ext\":\"jpg\",\"name\":\"intex-57136.jpg\"}', '2016-04-04 15:49:57', 1, 'admin'),
(775, 18, 'product', 'image/jpeg', '/uploads/product/2016_04_04/intex-57136-1.jpg', '{\"size\":501891,\"wh\":\"1280x1000\",\"ext\":\"jpg\",\"name\":\"intex-57136-1.jpg\"}', '2016-04-04 15:50:00', 1, 'admin'),
(776, 18, 'product', 'image/jpeg', '/uploads/product/2016_04_04/oq3q1q9vr43qn1f0.jpg', '{\"size\":963898,\"wh\":\"1280x943\",\"ext\":\"jpg\",\"name\":\"oq3q1q9vr43qn1f0.jpg\"}', '2016-04-04 15:50:02', 1, 'admin'),
(777, 16, 'product', 'image/jpeg', '/uploads/product/2016_04_04/may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-new-1.jpg', '{\"size\":388749,\"wh\":\"1175x1024\",\"ext\":\"jpg\",\"name\":\"may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-new-1.jpg\"}', '2016-04-04 15:57:22', 1, 'admin'),
(778, 16, 'product', 'image/jpeg', '/uploads/product/2016_04_04/0003036_may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-co-matxa-silicon.jpeg', '{\"size\":255789,\"wh\":\"1104x1024\",\"ext\":\"jpeg\",\"name\":\"0003036_may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-co-matxa-silicon.jpeg\"}', '2016-04-04 15:57:38', 1, 'admin'),
(779, 16, 'product', 'image/jpeg', '/uploads/product/2016_04_04/may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-2_logo.jpg', '{\"size\":136325,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-2_logo.jpg\"}', '2016-04-04 15:57:40', 1, 'admin'),
(780, 16, 'product', 'image/jpeg', '/uploads/product/2016_04_04/unimom-allegro-um880106-kidsplaza-5_1.jpg', '{\"size\":206116,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"unimom-allegro-um880106-kidsplaza-5_1.jpg\"}', '2016-04-04 15:57:41', 1, 'admin'),
(781, 25, 'product', 'image/jpeg', '/uploads/product/2016_04_04/lager_1375774472noinuong-vh-14t.jpg', '{\"size\":296273,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"lager_1375774472noinuong-vh-14t.jpg\"}', '2016-04-04 16:29:50', 1, 'admin'),
(782, 25, 'product', 'image/jpeg', '/uploads/product/2016_04_04/lo-nuong-sanaky-vh-158t-note-2.jpg', '{\"size\":272450,\"wh\":\"1280x960\",\"ext\":\"jpg\",\"name\":\"lo-nuong-sanaky-vh-158t-note-2.jpg\"}', '2016-04-04 16:29:53', 1, 'admin'),
(783, 25, 'product', 'image/jpeg', '/uploads/product/2016_04_04/top-5-lo-nuong-dang-mua-nhat-thang-10-1.jpg', '{\"size\":275236,\"wh\":\"1280x960\",\"ext\":\"jpg\",\"name\":\"top-5-lo-nuong-dang-mua-nhat-thang-10-1.jpg\"}', '2016-04-04 16:29:54', 1, 'admin'),
(784, 25, 'product', 'image/jpeg', '/uploads/product/2016_04_04/vinpro_ng_20150303_30090019_2.jpg', '{\"size\":203725,\"wh\":\"1024x1024\",\"ext\":\"jpg\",\"name\":\"vinpro_ng_20150303_30090019_2.jpg\"}', '2016-04-04 16:29:56', 1, 'admin'),
(785, 0, 'news', 'image/jpeg', 'uploads/news/2016_08_22/makeup.jpg', '{\"size\":9463,\"wh\":\"200x200\",\"ext\":\"jpg\",\"name\":\"makeup.jpg\"}', '2016-08-22 11:55:43', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_news`
--

CREATE TABLE `t_news` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Khóa chính',
  `cat_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Id của danh mục',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề',
  `brief` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nội dung rút gọn',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nội dung',
  `author` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tác giả',
  `date_created` datetime NOT NULL COMMENT 'Ngày tạo',
  `date_edit` datetime NOT NULL COMMENT 'Ngày sửa',
  `img` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đường dẫn ảnh demo',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'trạng thái: 0 không hiển thị, 1: hiển thị. Mặc định là 1',
  `ordering` int(11) UNSIGNED NOT NULL COMMENT 'Sắp xếp, từ nhỏ tới lớn',
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) DEFAULT '1' COMMENT 'Loại tin tức: dành cho những trường hợp mở rộng như tin hot'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu tin tức';

--
-- Dumping data for table `t_news`
--

INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(10, '4', 'Ronaldo giành Chiếc giày Vàng, nhưng Messi sẽ có Quả bóng Vàng', 'Cristiano Ronaldo chắc chắn sẽ giành được Chiếc giày Vàng châu Âu khi là Pichichi ở mùa bóng này, với 48 bàn thắng tại Liga, hơn Leo Messi 5 bàn (43), nhưng danh hiệu Cầu thủ xuất sắc nhất thế giới năm 2014-15 hầu như chắc chắn sẽ thuộc về tiền đạo người Argentina.', '<p style=\"text-align:justify\">L&yacute; do rất đơn giản, ai cũng biết, đ&oacute; l&agrave; ở m&ugrave;a b&oacute;ng n&agrave;y Real Madrid của CR7 trắng tay danh hiệu, khi thua cuộc tại cả Liga, C&uacute;p Nh&agrave; vua v&agrave; Champions, trong khi FC Barcelona của Messi đ&atilde; v&ocirc; địch Liga, hầu như chắc chắn c&oacute; C&uacute;p Nh&agrave; vua, v&agrave; rất c&oacute; thể cũng đăng quang tại đấu trường ch&acirc;u &Acirc;u, để trở th&agrave;nh đội b&oacute;ng đầu ti&ecirc;n tr&ecirc;n thế giới hai lần c&oacute; c&uacute; ăn ba lịch sử.</p>\r\n\r\n<p style=\"text-align:justify\">Tuy tiền đạo người Bồ Đ&agrave;o Nha hơn số 10 Argentina 5 b&agrave;n thắng, nhưng c&oacute; thực tế l&agrave; đội b&oacute;ng ho&agrave;ng gia T&acirc;y Ban Nha được hưởng tới 10 quả phạt đền, tất cả do CR7 thực hiện, trong khi Barca chỉ được hưởng 6 quả, chưa kể Messi c&ograve;n nhường cho Neymar s&uacute;t một quả. Nếu trừ đi số quả phạt đền m&agrave; Madrid được hưởng nhiều hơn so với Barca (5 quả) th&igrave; hai ng&ocirc;i sao s&aacute;ng nhất của l&agrave;ng b&oacute;ng đ&aacute; thế giới hiện nay đều c&oacute; 38 b&agrave;n thắng tại Liga.</p>\r\n\r\n<p><img src=\"http://localhost/cms/uploads/news/2015_09_03/ronaldo.jpg\" style=\"border:none; cursor:none; margin:0px; max-width:100%; padding:0px\" /><br />\r\n<em>Ronaldo ghi nhiều hơn Messi 5 b&agrave;n</em></p>\r\n\r\n<p style=\"text-align:justify\">C&ograve;n nếu n&oacute;i về vai tr&ograve; quyết định đối với đội b&oacute;ng th&igrave; Messi hơn hẳn Cristiano, bởi cầu thủ của Real Madrid chủ yếu đ&oacute;ng vai s&aacute;t thủ, trong khi La Pulga vừa l&agrave; người tổ chức trận đấu, ph&aacute;t động tấn c&ocirc;ng v&agrave; trực tiếp tham gia dứt điểm, chưa kể việc cầu thủ n&agrave;y c&ograve;n c&oacute; tr&ecirc;n 20 đường chuyền th&agrave;nh b&agrave;n, v&agrave; sẵn s&agrave;ng nhấn ga hoặc h&atilde;m phanh trận đấu, t&ugrave;y theo kết quả, thế trận v&agrave; đối thủ tr&ecirc;n s&acirc;n.</p>\r\n\r\n<p style=\"text-align:justify\">Đứng về mặt danh hiệu, kể từ khi thi đấu cho đội h&igrave;nh một, từ m&ugrave;a b&oacute;ng 2004, trong 10 năm, Messi c&oacute; bảy Liga, hai C&uacute;p Nh&agrave; vua, ba chức v&ocirc; địch Champions League, hai C&uacute;p Thế giới c&aacute;c CLB, hai Si&ecirc;u c&uacute;p ch&acirc;u &Acirc;u v&agrave; s&aacute;u Si&ecirc;u c&uacute;p T&acirc;y Ban Nha (tổng cộng 24 danh hiệu, c&oacute; thể l&agrave; 26 nếu th&ecirc;m C&uacute;p Nh&agrave; vua v&agrave; Champions năm nay ). Trong khi đ&oacute;, kể từ khi về với Real Madrid v&agrave;o năm 2009, trong 5 năm, Cristiano chỉ c&oacute; một Liga, hai C&uacute;p Nh&agrave; vua, một Champions, một C&uacute;p Thế giới c&aacute;c CLB, một si&ecirc;u C&uacute;p ch&acirc;u &Acirc;u v&agrave; một Si&ecirc;u C&uacute;p T&acirc;y Ban Nha (Tổng cộng 7 danh hiệu).</p>\r\n\r\n<p><img src=\"http://localhost/cms/uploads/news/2015_09_03/mess1i.jpg\" style=\"border:none; cursor:none; margin:0px; max-width:100%; padding:0px\" /><br />\r\n<em>Thống k&ecirc; về số b&agrave;n thắng, kiến tạo, hat-trick của Messi ở m&ugrave;a giải n&agrave;y</em></p>\r\n\r\n<p style=\"text-align:justify\">Khi c&ograve;n phải g&aacute;nh vai s&aacute;t thủ, như Cristiano hiện nay, Messi c&ograve;n c&oacute; một m&ugrave;a b&oacute;ng ghi tới 73 b&agrave;n thắng tr&ecirc;n tất cả c&aacute;c đấu trường, một chỉ số m&agrave; c&oacute; lẽ tiền đạo người Bồ Đ&agrave;o Nha kh&oacute; c&oacute; thể đạt tới.</p>\r\n\r\n<p style=\"text-align:justify\">C&aacute;c con số thống k&ecirc; kh&ocirc;ng biết n&oacute;i dối v&agrave; n&oacute; chứng tỏ Cristiano, d&ugrave; cũng l&agrave; một si&ecirc;u sao, c&ograve;n l&acirc;u mới c&oacute; thể trở th&agrave;nh một cầu thủ to&agrave;n diện như Messi, người được s&aacute;nh ngang với hai Vua b&oacute;ng đ&aacute; của mọi thời đại l&agrave; Pele v&agrave; Maradona.</p>\r\n', 'duchanhtb', '2015-09-03 01:52:53', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/ronaldo-660.jpg', 167, 1, 1, 10, '', 'Messi, Cristiano, C7, M10', 'Cristiano Ronaldo chắc chắn sẽ giành được Chiếc giày Vàng châu Âu khi là Pichichi ở mùa bóng này, với 48 bàn thắng tại Liga, hơn Leo Messi 5 bàn (43), nhưng danh hiệu Cầu thủ xuất sắc nhất thế giới năm 2014-15 hầu như chắc chắn sẽ thuộc về tiền đạo người Argentina.', 1),
(11, '1', 'Báo quốc tế viết về lễ diễu binh mừng Quốc khánh Việt Nam', 'Nhiều hãng tin, tờ báo lớn trên thế giới đưa tin, đăng ảnh về cuộc diễu binh, diễu hành kỷ niệm 70 năm Quốc khánh Việt Nam.', '<p>H&atilde;ng tin&nbsp;<em>NBC News</em>&nbsp;của Mỹ h&ocirc;m nay đăng một bộ ảnh chụp những khoảnh khắc ấn tượng nhất trong lễ diễu binh, diễu h&agrave;nh kỷ niệm ng&agrave;y Quốc kh&aacute;nh 2/9 của Việt Nam. Bộ ảnh m&ocirc; tả sự trang nghi&ecirc;m, h&agrave;o h&ugrave;ng của những người l&iacute;nh tham gia diễu binh, vẻ đẹp của c&aacute;c nữ chiến sĩ trong khối diễu h&agrave;nh cũng như kh&ocirc;ng kh&iacute; rộn r&agrave;ng ở Quảng trường Ba Đ&igrave;nh trong buổi lễ kỷ niệm 70 năm Quốc kh&aacute;nh.</p>\r\n\r\n<p>H&atilde;ng th&ocirc;ng tấn Đức&nbsp;<em>DPA</em>&nbsp;cũng phản &aacute;nh kh&ocirc;ng kh&iacute; h&agrave;o h&ugrave;ng của lễ diễu binh, diễu h&agrave;nh. &quot;Với 21 loạt đại b&aacute;c từ ho&agrave;ng th&agrave;nh Thăng Long, cuộc diễu binh của 30.000 binh sĩ v&agrave; quần ch&uacute;ng nh&acirc;n d&acirc;n bắt đầu từ 7h, trước lăng Chủ tịch Hồ Ch&iacute; Minh ở Quảng trường Ba Đ&igrave;nh&quot;,&nbsp;<em>DPA</em>&nbsp;đưa tin.</p>\r\n\r\n<p>Sau khi điểm lại tiến tr&igrave;nh lịch sử của d&acirc;n tộc Việt Nam, h&atilde;ng tin n&agrave;y n&ecirc;u những điểm đ&aacute;ng ch&uacute; &yacute; nhất trong diễn văn của Chủ tịch nước Trương Tấn Sang, trong đ&oacute; c&oacute; những th&aacute;ch thức m&agrave; d&acirc;n tộc Việt Nam đang phải đối mặt, &quot;đặc biệt l&agrave; việc tranh chấp chủ quyền biển, đảo ng&agrave;y c&agrave;ng gia tăng tr&ecirc;n Biển Đ&ocirc;ng&quot;.</p>\r\n\r\n<p>&quot;T&ocirc;i rất tự h&agrave;o về đất nước trong thời điểm n&agrave;y. T&ocirc;i hy vọng c&aacute;c nh&agrave; l&atilde;nh đạo hiện nay v&agrave; sau n&agrave;y sẽ bảo vệ vững chắc đất nước&quot;,&nbsp;<em>DPA</em>&nbsp;tr&iacute;ch trả lời phỏng vấn của &ocirc;ng Nguyen Duc Gan, 68 tuổi, ở H&agrave; Nội.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"ss-vietnam-national-day-03-jpo-nbcnews-u\" src=\"http://localhost/cms/uploads/news/2015_09_03/ss-vietnam-national-day-03-jpo-4830-3340-1441212823.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đại diện lực lượng d&acirc;n qu&acirc;n d&acirc;n tộc thiểu số diễu h&agrave;nh qua lễ đ&agrave;i. Ảnh:&nbsp;<em>Reuters</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>AFP</em>&nbsp;gọi lễ diễu binh mừng Ng&agrave;y Quốc kh&aacute;nh h&ocirc;m nay l&agrave; một trong những sự kiện nổi bật nhất của Việt Nam suốt nhiều năm qua. B&ecirc;n cạnh việc điểm lại c&aacute;c dấu mốc<em>&nbsp;</em>lịch sử quan trọng, h&atilde;ng th&ocirc;ng tấn Ph&aacute;p c&ograve;n nhắc tới bước ph&aacute;t triển nhanh về kinh tế của Việt Nam những năm gần đ&acirc;y.</p>\r\n\r\n<p><em>IBTimes</em>&nbsp;đăng tải đoạn video ghi lại cảnh đo&agrave;n diễu binh trong trang phục chỉnh tề, nghi&ecirc;m h&agrave;ng thẳng lối đi qua c&aacute;c con phố của H&agrave; Nội, đồng thời dẫn lại cảm nghĩ của một số người d&acirc;n c&oacute; mặt tại thủ đ&ocirc;.</p>\r\n\r\n<p>&quot;Đ&atilde; 70 năm tr&ocirc;i qua kể từ khi Việt Nam tuy&ecirc;n bố độc lập. Người d&acirc;n Việt Nam rất hạnh ph&uacute;c v&agrave; tự h&agrave;o về nền độc lập, tự do v&agrave; chủ quyền l&atilde;nh thổ của m&igrave;nh. Mặc d&ugrave; ch&uacute;ng t&ocirc;i l&agrave; một nước nhỏ nhưng lại c&oacute; thể đ&aacute;nh bại nhiều kẻ th&ugrave; x&acirc;m lược, bất kể họ mạnh đến đ&acirc;u&quot;,&nbsp;<em>IBTimes</em>&nbsp;dẫn lời &ocirc;ng Phan Khac Nhat, một người d&acirc;n H&agrave; Nội.</p>\r\n\r\n<p>B&agrave; Nguyen Thi Lap, 62 tuổi, th&igrave; cho hay rất vui mừng khi được sống trong h&ograve;a b&igrave;nh v&agrave; chứng kiến Việt Nam ph&aacute;t triển thịnh vượng, cũng như c&oacute; một đội qu&acirc;n h&ugrave;ng mạnh để bảo vệ đất nước.</p>\r\n\r\n<p>Trong b&agrave;i viết &quot;Việt Nam thể hiện sức mạnh qu&acirc;n đội nh&acirc;n ng&agrave;y Quốc kh&aacute;nh&quot;,<em>&nbsp;Channel News Asia (CNA)</em>&nbsp;của Singapore m&ocirc; tả việc hơn 30.000 người trong c&aacute;c khối qu&acirc;n sự v&agrave; d&acirc;n sự diễu binh, diễu h&agrave;nh qua Quảng trường Ba Đ&igrave;nh, nơi Chủ tịch Hồ Ch&iacute; Minh đọc bản Tuy&ecirc;n ng&ocirc;n độc lập trước quốc d&acirc;n đồng b&agrave;o c&aacute;ch đ&acirc;y 70 năm.</p>\r\n\r\n<p>&quot;Lực lượng diễu binh do Trung tướng V&otilde; Văn Tuấn, Ph&oacute; tổng tham mưu trưởng Qu&acirc;n đội Nh&acirc;n d&acirc;n Việt Nam dẫn đầu, gồm c&aacute;c khối qu&acirc;n đội, c&ocirc;ng an v&agrave; d&acirc;n qu&acirc;n. T&ecirc;n lửa v&agrave; xe thiết gi&aacute;p kh&ocirc;ng tham gia v&agrave;o lễ diễu binh n&agrave;y&quot;,&nbsp;<em>CNA</em>&nbsp;mi&ecirc;u tả.</p>\r\n\r\n<p>Tờ b&aacute;o cũng dẫn lời Trung tướng V&otilde; Văn Tuấn ph&aacute;t biểu với b&aacute;o ch&iacute; rằng &quot;với điều kiện kinh tế đất nước c&ograve;n kh&oacute; khăn, nh&agrave; nước chọn c&aacute;ch&nbsp;tiết kiệm v&igrave; với ri&ecirc;ng số lượng người tham gia diễu binh, diễu h&agrave;nh, chi ph&iacute; đ&atilde; kh&aacute; tốn k&eacute;m, nếu c&oacute; vũ kh&iacute; c&agrave;ng tốn k&eacute;m hơn&quot;.</p>\r\n\r\n<p><em>Xinhua</em>&nbsp;đăng gần như to&agrave;n bộ b&agrave;i diễn văn của Chủ tịch nước Trương Tấn Sang trước lễ diễu binh, trong đ&oacute; c&oacute; đoạn: &quot;Kỷ niệm C&aacute;ch mạng Th&aacute;ng T&aacute;m v&agrave; ng&agrave;y Quốc kh&aacute;nh, to&agrave;n Đảng, to&agrave;n d&acirc;n, to&agrave;n qu&acirc;n ta nguyện đo&agrave;n kết một l&ograve;ng, nỗ lực phấn đấu, tận dụng thời cơ, vượt qua th&aacute;ch thức, tận t&acirc;m tận lực, n&acirc;ng cao &yacute; ch&iacute;, giữ vững th&agrave;nh quả c&aacute;ch mạng...&quot;</p>\r\n\r\n<p>&quot;Ngo&agrave;i diễu binh, diễu h&agrave;nh, một loạt hoạt động kh&aacute;c cũng được tổ chức tr&ecirc;n cả nước, trong đ&oacute; c&oacute; c&aacute;c m&agrave;n biểu diễn nghệ thuật, triển l&atilde;m s&aacute;ch v&agrave; những hiện vật về C&aacute;ch mạng th&aacute;ng T&aacute;m, tuần lễ phim quốc gia...&quot;,&nbsp;<em>Xinhua</em>đưa tin.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Tr&iacute; Dũng - Vũ Ho&agrave;ng</strong></p>\r\n', 'duchanhtb', '2015-09-03 01:57:31', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/55e6dab2c36188425b8b45f4-1441212787_490x294.jpg', 85, 1, 1, 11, '', 'quốc khánh, 2/9, độc lập', 'Nhiều hãng tin, tờ báo lớn trên thế giới đưa tin, đăng ảnh về cuộc diễu binh, diễu hành kỷ niệm 70 năm Quốc khánh Việt Nam.', 1),
(12, '3,1', '10 kỳ quan kiến trúc hiện đại', 'Với tài năng và óc sáng tạo, các kiến trúc sư đã xây nên những công trình kiến trúc ấn tượng, xứng đáng xếp vào hàng kỳ quan của thế giới hiện đại.', '<div style=\"float:left\">Với t&agrave;i năng v&agrave; &oacute;c s&aacute;ng tạo, c&aacute;c kiến tr&uacute;c sư đ&atilde; x&acirc;y n&ecirc;n những c&ocirc;ng tr&igrave;nh kiến tr&uacute;c ấn tượng, xứng đ&aacute;ng xếp v&agrave;o h&agrave;ng kỳ quan của thế giới hiện đại.</div>\r\n\r\n<div style=\"float:left\">\r\n<ul style=\"list-style-type:none\">\r\n	<li><a href=\"http://vnexpress.net/tin-tuc/khoa-hoc/ai-cap-se-xay-lai-ngon-hai-dang-alexandria-3211287.html\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\" tabindex=\"1\">Ai Cập sẽ x&acirc;y lại ngọn hải đăng Alexandria</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-1-1441080209_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Capital Gate &ndash; Abu Dhabi, C&aacute;c Tiểu vương quốc Arab Thống nhất</p>\r\n\r\n<p>Capital Gate, một t&ograve;a nh&agrave; chọc trời nằm cạnh Trung t&acirc;m Triển l&atilde;m Quốc gia Abu Dhabi ở&nbsp;C&aacute;c Tiểu vương quốc Arab Thống nhất (UAE), được thiết kế với độ nghi&ecirc;ng ấn tượng. Cao 160 m v&agrave; gồm 35 tầng, đ&acirc;y l&agrave; một trong những t&ograve;a nh&agrave; cao nhất trong th&agrave;nh phố v&agrave; nghi&ecirc;ng 18&deg; về ph&iacute;a t&acirc;y. V&agrave;o th&aacute;ng 6/2010, s&aacute;ch Kỷ lục Thế giới Guinness đ&atilde; c&ocirc;ng nhận Capital Gate l&agrave; &quot;Th&aacute;p nh&acirc;n tạo c&oacute; độ nghi&ecirc;ng lớn nhất thế giới.&quot;</p>\r\n\r\n<p>&Aacute;p lực từ độ nghi&ecirc;ng của Capital Gate được xử l&yacute; bằng kỹ thuật mang t&ecirc;n &quot;l&otilde;i cong sẵn&quot;, sử dụng l&otilde;i b&ecirc; t&ocirc;ng gia cố bằng th&eacute;p x&acirc;y hơi lệch t&acirc;m. Ngo&agrave;i ra, c&aacute;c kỹ sư c&ograve;n sử dụng 490 chiếc cọc khoan s&acirc;u 20 &ndash; 30 m xuống l&ograve;ng đất để chống đỡ cho t&ograve;a nh&agrave;.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-2-1441080209_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Kh&aacute;ch sạn Sunrise Kempinski &nbsp;&ndash; Bắc Kinh, Trung Quốc</p>\r\n\r\n<p>Nằm tr&ecirc;n m&eacute;p hồ c&aacute;ch Bắc Kinh 60 km, kh&aacute;ch sạn Sunrise Kempinski l&agrave; một t&ograve;a nh&agrave; đậm chất phong thủy. C&ocirc;ng tr&igrave;nh n&agrave;y thể hiện h&igrave;nh ảnh mặt trời mọc, biểu hiện sự h&agrave;i h&ograve;a, thống nhất v&agrave; trường tồn. Nh&igrave;n từ b&ecirc;n cạnh, kh&aacute;ch sạn c&oacute; h&igrave;nh d&aacute;ng giống một con s&ograve;, tượng trưng cho may mắn trong văn h&oacute;a Trung Quốc.</p>\r\n\r\n<p>Kh&aacute;ch sạn được bao phủ bởi 10.000 tấm k&iacute;nh ở mặt ngo&agrave;i tr&ecirc;n diện t&iacute;ch 18.075 m2. C&aacute;c tấm k&iacute;nh được sắp đặt để phản chiếu m&agrave;u trời ở tr&ecirc;n đỉnh, n&uacute;i Yanshan ở giữa v&agrave; mặt hồ ở b&ecirc;n dưới.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-3-1441080209_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Kh&aacute;ch sạn Marina Bay Sands &ndash; Singapore</p>\r\n\r\n<p>Kh&aacute;ch sạn Marina Bay Sands ở Singapore bao gồm ba t&ograve;a th&aacute;p, một cấu tr&uacute;c giống chiếc thuyền khổng lồ ở tr&ecirc;n c&ugrave;ng (tầng 57) v&agrave; một hồ bơi nh&igrave;n bao qu&aacute;t to&agrave;n bộ khu trung t&acirc;m Central District. Kh&aacute;ch sạn n&agrave;y do Moshe Safdie, kiến tr&uacute;c sư mang hai d&ograve;ng m&aacute;u Israel v&agrave; Canada, thiết kế.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-4-1441080210_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Cumulus - Nordborg, Đan Mạch</p>\r\n\r\n<p>Mang h&igrave;nh d&aacute;ng khiến nhiều người li&ecirc;n tưởng đến sao băng, tế b&agrave;o hay ph&acirc;n tử, t&ograve;a nh&agrave; Cumulus l&agrave; t&aacute;c phẩm thiết kế của kiến tr&uacute;c sư người Đức, J&uuml;rgen Mayer H. T&ograve;a nh&agrave; n&agrave;y l&agrave; một hội trường triển l&atilde;m nối với Đại học Danfoss. Năm 2007, Cumulus được tạp ch&iacute; du lịch Conde Nast Traveler b&igrave;nh chọn l&agrave; một trong &quot;7 kỳ quan mới của giới kiến tr&uacute;c.&quot;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-5-1441080210_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Th&agrave;nh phố Nghệ thuật v&agrave; Khoa học - Valencia, T&acirc;y Ban Nha</p>\r\n\r\n<p>Th&agrave;nh phố Nghệ thuật v&agrave; Khoa học l&agrave; một tổ hợp kiến tr&uacute;c v&agrave; nghệ thuật ở Valencia, T&acirc;y Ban Nha. Nằm ở nơi trước đ&acirc;y l&agrave; l&ograve;ng s&ocirc;ng Turia, c&ocirc;ng tr&igrave;nh n&agrave;y được kiến tr&uacute;c sư Santiago Calatrava thiết kế v&agrave; x&acirc;y dựng v&agrave;o th&aacute;ng 7/1996 như một biểu tượng của kiến tr&uacute;c hiện đại. &quot;Th&agrave;nh phố&quot; n&agrave;y bao gồm: nh&agrave; h&aacute;t opera, trung t&acirc;m biểu diễn nghệ thuật, rạp chiếu phim Imax, đ&agrave;i thi&ecirc;n văn, ph&ograve;ng tr&igrave;nh diễn &aacute;nh s&aacute;ng laser, vườn c&acirc;y, bảo t&agrave;ng khoa học, thủy cung ngo&agrave;i trời v&agrave; một kh&ocirc;ng gian đa dụng để tổ chức sự kiện.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-6-1441080211_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đền Akshardham - Delhi, Ấn Độ</p>\r\n\r\n<p>Đền Akshardham ở New Delhi nằm tr&ecirc;n diện t&iacute;ch hơn 8.000 m2 tr&ecirc;n bờ s&ocirc;ng Yamuna. Ng&ocirc;i đền bằng đ&aacute; cẩm thạch v&agrave; sa thạch n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng sử dụng vật liệu th&eacute;p trong qu&aacute; tr&igrave;nh x&acirc;y dựng. 3.000 t&igrave;nh nguyện vi&ecirc;n c&ugrave;ng với 7.000 thợ thủ c&ocirc;ng đ&atilde; g&oacute;p sức x&acirc;y n&ecirc;n đền thờ Akshardham, v&agrave; ng&ocirc;i đền mở cửa lần đầu ti&ecirc;n v&agrave;o năm 2005.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-7-1441080211_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Nh&agrave; thờ Holy Cross - Arizona, Mỹ</p>\r\n\r\n<p>Nằm giữa những g&ograve; đ&aacute; đỏ ở Sedona, Arizona, Holy Cross l&agrave; nh&agrave; thờ Thi&ecirc;n Ch&uacute;a gi&aacute;o được x&acirc;y dựng v&agrave;o năm 1956. Nh&agrave; thờ n&agrave;y được x&acirc;y tr&ecirc;n hai ngọn n&uacute;i nhọn cao 76 m v&agrave; nh&ocirc; ra ngo&agrave;i bức tường đ&aacute; tr&ecirc;n 300 m.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-8-1441080212_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Th&aacute;p Infinity - Dubai, C&aacute;c tiểu vương quốc Arab thống nhất (UAE)</p>\r\n\r\n<p>Th&aacute;p Infinity l&agrave; t&ograve;a nh&agrave; xoắn cao nhất thế giới. C&ocirc;ng tr&igrave;nh được thiết kế theo h&igrave;nh xoắn ốc khiến đỉnh v&agrave; ch&acirc;n t&ograve;a th&aacute;p cao 305 m n&agrave;y ch&ecirc;nh nhau một g&oacute;c 90˚. T&ograve;a th&aacute;p 80 tầng n&agrave;y c&oacute; một điểm th&uacute; vị l&agrave; kh&ocirc;ng c&oacute; cột chống n&agrave;o b&ecirc;n trong t&ograve;a nh&agrave;.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-9-1441080212_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Nh&agrave; h&aacute;t opera Sydney &ndash; Sydney, Australia</p>\r\n\r\n<p>Nh&agrave; h&aacute;t opera Sydney kh&aacute;nh th&agrave;nh v&agrave;o năm 1973, do kiến tr&uacute;c sư người Đan Mạch Jorn Utzon thiết kế. Đ&acirc;y l&agrave; một biểu tượng kiến tr&uacute;c của thế kỷ 20 với những lớp m&aacute;i trắng h&igrave;nh c&aacute;nh buồm tr&ecirc;n nền đ&aacute; granite lớn m&agrave;u đỏ.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_9\" src=\"http://localhost/cms/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-10-1441080213_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Bảo t&agrave;ng Khoa học Nagoya - Nhật Bản</p>\r\n\r\n<p>Bảo t&agrave;ng Khoa học n&agrave;y nằm ở Sakae, trung t&acirc;m th&agrave;nh phố Nagoya, Nhật Bản. T&ograve;a nh&agrave; được thiết kế theo h&igrave;nh một quả cầu khổng lồ đặt giữa những cột chống h&igrave;nh chữ nhật v&agrave; chứa đ&agrave;i thi&ecirc;n văn lớn nhất thế giới với m&aacute;i v&ograve;m rộng 35 m. Tầng tr&ecirc;n của kiến tr&uacute;c n&agrave;y hiện l&agrave; một bảo t&agrave;ng trưng b&agrave;y c&ocirc;ng nghệ&nbsp;vũ trụ v&agrave;&nbsp;tương lai.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"float:left\">\r\n<p style=\"text-align:right\"><strong>Phương Hoa</strong>&nbsp;(theo&nbsp;<em>Oddee</em>)</p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'duchanhtb', '2015-09-03 02:06:10', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/10-ky-quan-kien-truc-hien-dai-1441099504_490x294.png', 50, 1, 1, 12, '', 'cổ đại, kỳ quan, khoa học, công trình vĩ đại', 'Với tài năng và óc sáng tạo, các kiến trúc sư đã xây nên những công trình kiến trúc ấn tượng, xứng đáng xếp vào hàng kỳ quan của thế giới hiện đại.', 1),
(13, '5', 'Cẩm nang du lịch đảo lý sơn', 'Được ví như “đảo tiên” giữa biển, bao la với làn nước xanh màu ngọc bích, đảo Lý Sơn nhất định sẽ là điểm đến khiến du khách luôn cảm thấy phấn khích.', '<p>Những chia sẻ n&agrave;y được cập nhật th&aacute;ng 3/2015. C&aacute;c mức gi&aacute; v&agrave; chốn ăn nghỉ c&oacute; thể sẽ thay đổi theo thời gian v&agrave; biến động thị trường. Với những người đ&atilde; đến đảo năm ngo&aacute;i th&igrave; c&oacute; thể tưởng tượng ra cảnh năm nay đ&ocirc;ng khoảng gấp đ&ocirc;i hay &iacute;t nhất cũng đ&ocirc;ng gấp rưỡi, đặc biệt dịp nghỉ lễ v&agrave; cuối tuần. Với những người chưa ra đảo th&igrave; tốt nhất n&ecirc;n đặt trước ph&ograve;ng khoảng một th&aacute;ng v&agrave; hỏi chủ kh&aacute;ch sạn t&agrave;i khoản để chuyển tiền trước cho chắc ăn. Thời điểm n&agrave;y, đều đều mỗi ng&agrave;y khoảng tr&ecirc;n 300 kh&aacute;ch, ng&agrave;y cuối tuần, t&agrave;u cao tốc chạy 5 đến 6 chuyến ra đảo, khoảng hơn ngh&igrave;n người.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Hòn đảo xinh đẹp Lý Sơn có bãi tắm tuyệt đẹp, nước trong vắt.\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-5-4498-1427097613.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>H&ograve;n đảo xinh đẹp L&yacute; Sơn c&oacute; b&atilde;i tắm tuyệt đẹp, nước trong vắt.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>Ng&agrave;y 1: H&agrave; Nội (hoặc S&agrave;i G&ograve;n) - Chu Lai (hoặc Đ&agrave; Nẵng)</strong></em></p>\r\n\r\n<p>C&oacute; rất nhiều lựa chọn cho c&aacute;c bạn để đến được Quảng Ng&atilde;i t&ugrave;y thuộc v&agrave;o thời gian v&agrave; điều kiện của c&aacute;c bạn. C&oacute; điều kiện th&igrave; bay đến Đ&agrave; Nẵng hoặc Chu Lai rồi di chuyển bằng c&aacute;c phương tiện kh&aacute;c như taxi, xe bu&yacute;t, xe m&aacute;y để đến Quảng Ng&atilde;i rồi ra cảng Sa Kỳ. Tốt nhất n&ecirc;n bắt xe giường nằm để đến Quảng Ng&atilde;i, chọn chuyến xe n&agrave;o ph&ugrave; hợp để đến Quảng Ng&atilde;i v&agrave;o tối h&ocirc;m trước rồi sau đ&oacute; đi xe bu&yacute;t hoặc taxi xuống cảng Sa Kỳ nghỉ đ&ecirc;m. Tại cảng Sa Kỳ ngay đường v&agrave;o cảng, c&aacute;ch cảng 200 m&eacute;t c&oacute; một số nh&agrave; nghỉ, nh&agrave; trọ kh&aacute; sạch sẽ. Nếu người n&agrave;o thảnh thơi hơn, c&oacute; thể ở biển Mỹ Kh&ecirc; (Quảng Ng&atilde;i).&nbsp;</p>\r\n\r\n<p><em>* V&eacute; t&agrave;u cao tốc</em></p>\r\n\r\n<p>D&ugrave; đi bằng phương tiện g&igrave;, bạn cũng n&ecirc;n cố gắng tới cảng Sa Kỳ sớm nhất trong s&aacute;ng ng&agrave;y h&ocirc;m sau để mua v&eacute; l&ecirc;n t&agrave;u cao tốc ra đảo. Hiện tại nh&agrave; ga cảng Sa Kỳ đ&atilde; đi v&agrave;o hoạt động từ Tết &Acirc;m lịch n&ecirc;n kh&aacute; rộng r&atilde;i v&agrave; tho&aacute;ng m&aacute;t cho mọi người chờ mua v&eacute;. Đ&atilde; c&oacute; c&aacute;c cửa ri&ecirc;ng của v&eacute; cho người ưu ti&ecirc;n, cửa cho đo&agrave;n đăng k&yacute; v&eacute; từ trước v&agrave; cửa cho người đến đ&oacute; mới xếp h&agrave;ng mua v&eacute;. Gi&aacute; v&eacute; chiều từ Sa Kỳ ra đảo l&agrave; 105.000 đồng/lượt v&agrave; lượt về từ L&yacute; Sơn về Sa Kỳ l&agrave; 100.000 đồng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n vẫn c&oacute; mỗi hai nh&acirc;n vi&ecirc;n b&aacute;n v&eacute; v&agrave; kiểm tra CMND n&ecirc;n vẫn l&agrave; hơi d&agrave;i cổ khi xếp h&agrave;ng mua v&eacute; v&agrave;o những ng&agrave;y cuối tuần hay nghỉ lễ. C&aacute;c nh&oacute;m đi đ&ocirc;ng theo đo&agrave;n th&igrave; n&ecirc;n đăng k&yacute; v&eacute; trước sẽ thuận tiện v&agrave; bớt thời gian hơn nhiều.</p>\r\n\r\n<p>Nh&agrave; ga kh&aacute; rộng v&agrave; khang trang đẹp đẽ, c&oacute; ghế ngồi chờ như nh&agrave; ga s&acirc;n bay, c&oacute; quạt m&aacute;t n&ecirc;n kh&ocirc;ng lo bị đứng xếp h&agrave;ng giữa trời nắng miền trung gi&oacute; L&agrave;o như những năm trước nữa.</p>\r\n\r\n<p>Về danh s&aacute;ch đăng k&yacute; th&igrave; giờ chỉ cần: họ t&ecirc;n, năm sinh, nơi ở chứ kh&ocirc;ng cần số CMND như trước nữa. Chỉ cần bạn trưởng đo&agrave;n khi lấy v&eacute; tr&igrave;nh CMND của bạn ấy v&agrave; một bản danh s&aacute;ch đo&agrave;n giống như danh s&aacute;ch đ&atilde; đăng k&yacute; gửi cho ph&ograve;ng v&eacute; từ trước.</p>\r\n\r\n<p>Giờ t&agrave;u chạy v&agrave; số chuyến: hiện tại duy tr&igrave; hằng ng&agrave;y c&oacute; hai chuyến buổi s&aacute;ng xuất cảng l&uacute;c 7h30 v&agrave; 8h từ Sa Kỳ v&agrave; một chuyến buổi chiều v&agrave;o 13h hoặc 13h30. Chiều về từ L&yacute; Sơn về đất liền duy tr&igrave; một chuyến buổi s&aacute;ng v&agrave;o 7h30 hoặc 8h t&ugrave;y t&agrave;u v&agrave; buổi chiều một chuyến l&uacute;c 14h. Đ&acirc;y l&agrave; lịch cố định hằng ng&agrave;y. Tuy nhi&ecirc;n, c&aacute;c ng&agrave;y lễ Tết hoặc ng&agrave;y cuối tuần hầu như chạy k&iacute;n ng&agrave;y nhưng kh&ocirc;ng xuất cảng sau 16h30 do đảm bảo an ninh h&agrave;ng hải, trừ những trường hợp đặc biệt. Nếu sau c&aacute;c chuyến cố định m&agrave; lượng kh&aacute;ch c&ograve;n đ&ocirc;ng th&igrave; sẽ c&oacute; chuyến chạy bổ sung kh&ocirc;ng kể l&agrave; ng&agrave;y lễ Tết hay ng&agrave;y thường.&nbsp;</p>\r\n\r\n<p>Nếu đi đo&agrave;n đ&ocirc;ng n&ecirc;n li&ecirc;n hệ mua v&eacute; trước. Khi mua v&eacute; cho đo&agrave;n đ&ocirc;ng cần c&oacute; danh s&aacute;ch th&ocirc;ng tin của cả đo&agrave;n gồm họ t&ecirc;n, năm sinh, số CMND, qu&ecirc; qu&aacute;n. C&aacute;c bạn c&oacute; thể nghỉ đ&ecirc;m tại Quảng Ng&atilde;i rồi s&aacute;ng h&ocirc;m sau mới di chuyển ra cảng Sa Kỳ bằng c&aacute;c phương tiện như taxi, xe bu&yacute;t hoặc c&oacute; thể tới thẳng cảng Sa Kỳ nghỉ đ&ecirc;m để s&aacute;ng h&ocirc;m sau tiện cho việc mua v&eacute; t&agrave;u ra đảo hơn.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Bạn tới nhà ga này để mua vé tàu cao tốc ra Lý Sơn.\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-4-3763-1427097613.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>Bạn tới nh&agrave; ga n&agrave;y để mua v&eacute; t&agrave;u cao tốc ra L&yacute; Sơn.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>* Ăn nghỉ ở cảng hoặc khu vực Mỹ Kh&ecirc; hay TP Quảng Ng&atilde;i</em></p>\r\n\r\n<p>Ở cảng Sa Kỳ: hiện vẫn c&oacute; mỗi nh&agrave; trọ Hương Biển c&oacute; 5 ph&ograve;ng dạng nh&agrave; trọ đơn giản để mọi người nghỉ đ&ecirc;m chờ t&agrave;u. C&oacute; thể chứa được khoảng 15 người v&agrave; gi&aacute; l&agrave; 50.000 đồng/người. Tuy nhi&ecirc;n thi thoảng hay đ&ograve;i gi&aacute; 60.000 đồng hay 70.000 đồng. Mọi người kh&ocirc;ng n&ecirc;n n&ecirc;n tặc lưỡi m&agrave; chỉ trả 50.000 đồng/người. Cứ n&oacute;i l&agrave; bạn mới ở v&agrave; giới thiệu. C&oacute; lựa chọn kh&aacute;c cũng ngay gần cạnh l&agrave; nh&agrave; trọ Phương Đ&ocirc;ng. C&oacute; 5 ph&ograve;ng v&agrave; gi&aacute; mỗi ph&ograve;ng thường đ&ograve;i 120.000 đồng. Tuy nhi&ecirc;n n&ecirc;n trả gi&aacute; xuống 100.000 đồng v&igrave; với kiểu ph&ograve;ng như vậy th&igrave; gi&aacute; 100.000 đồng l&agrave; hợp l&yacute;.</p>\r\n\r\n<p>Nếu cảng Sa Kỳ m&agrave; cảm thấy kh&ocirc;ng ưng &yacute; th&igrave; c&oacute; thể bắt taxi, xe &ocirc;m ra khu b&atilde;i biển Mỹ Kh&ecirc; c&aacute;ch cảng 7 km để nghỉ ngơi th&igrave; khang trang hơn. Ở đ&acirc;y th&igrave; ăn nghỉ thuận lợi hơn. Tuy nhi&ecirc;n cũng sang chảnh v&agrave; ch&aacute;t hơn ch&uacute;t. Ở Mỹ Kh&ecirc; c&oacute; mấy nh&agrave; nghỉ b&igrave;nh d&acirc;n, một kh&aacute;ch sạn t&ecirc;n l&agrave; Ho&agrave;ng Sa v&agrave; một nh&agrave; kh&aacute;ch Mỹ Kh&ecirc; 3 sao. Nh&agrave; kh&aacute;ch th&igrave; ph&ograve;ng đơn khoảng 300.000 đồng, ph&ograve;ng đ&ocirc;i 450.000 đồng. Ho&agrave;ng Sa th&igrave; ph&ograve;ng đơn 250.000 đồng, ph&ograve;ng đ&ocirc;i 350.000 đồng. C&aacute;c nh&agrave; nghỉ b&igrave;nh d&acirc;n gi&aacute; cũng tầm 200.000 đồngph&ograve;ng đơn v&agrave; c&oacute; nơi rẻ hơn ch&uacute;t.</p>\r\n\r\n<p>Ở Mỹ Kh&ecirc; c&oacute; b&atilde;i biển tắm kh&aacute; đẹp, ngắm b&igrave;nh minh đẹp v&agrave; ăn uống th&igrave; thoải m&aacute;i v&igrave; cả một d&atilde;y b&atilde;i Mỹ Kh&ecirc; l&agrave; nh&agrave; h&agrave;ng hải sản b&igrave;nh d&acirc;n, đồ phong ph&uacute; v&agrave; gi&aacute; cả hợp l&yacute;.</p>\r\n\r\n<p>Kh&aacute;ch sạn ở Quảng Ng&atilde;i c&oacute; đầy đủ hết từ 4 sao, 3 sao đến b&igrave;nh d&acirc;n nh&agrave; trọ. Ăn ở Quảng Ng&atilde;i th&igrave; c&oacute; mấy đặc sản như c&aacute; bống s&ocirc;ng Tr&agrave; qu&aacute;n C&acirc;y G&ograve;n ngay đầu cầu Tr&agrave; Kh&uacute;c cũ gần kh&aacute;ch sạn 3 sao S&ocirc;ng Tr&agrave;. Th&ecirc;m m&oacute;n nữa n&ecirc;n ăn thử l&agrave; cơm g&agrave; Nhung 2. Cứ hỏi bất cứ ai ở đ&acirc;y đều biết v&agrave; chỉ đường cho c&aacute;c bạn. Gi&aacute; ở cơm g&agrave; Nhung kh&aacute; hợp l&yacute; v&agrave; ngon nhưng qu&aacute;n C&acirc;y G&ograve;n gi&aacute; kh&aacute; ch&aacute;t theo m&igrave;nh nghĩ v&igrave; qu&aacute;n n&agrave;y đăng k&yacute; thương hiệu hẳn hoi rồi.</p>\r\n\r\n<p><em><strong>Ng&agrave;y 2: Quảng Ng&atilde;i - Sa Kỳ - đảo L&yacute; Sơn</strong></em></p>\r\n\r\n<p>- Dậy sớm trả ph&ograve;ng v&agrave; di chuyển ra cảng trước 6h30 để mua v&eacute; t&agrave;u cao tốc.</p>\r\n\r\n<p>- 7h - 7h30: L&ecirc;n t&agrave;u cao tốc, đến đảo L&yacute; Sơn</p>\r\n\r\n<p>- 9h: Nhận ph&ograve;ng, nghỉ ngơi nếu bị say song qu&aacute; mệt. Đến Đảo nhận ph&ograve;ng, thu&ecirc; xe m&aacute;y đi tham quan lu&ocirc;n(c&aacute;i n&agrave;y phải lien hệ trước để nh&agrave; nghỉ chuẩn bị xe, mũ BH đầy đủ). Nếu ở trung b&igrave;nh th&igrave; n&ecirc;n d&ugrave;ng Hoa Biển, Viễn Đ&ocirc;ng, Th&agrave;nh Ph&aacute;t, Mỹ Phụng c&ograve;n nếu ở tiết kiệm th&igrave; Đại Dương, B&igrave;nh Y&ecirc;n&hellip; ngay cầu cảng. Năm nay mọc them nhiều nh&agrave; nghỉ do nhu cầu kh&aacute;ch du lịch đến qu&aacute; đ&ocirc;ng n&ecirc;n c&oacute; nhiều lựa chọn hơn. Tuy nhi&ecirc;n, d&ugrave; ở đ&acirc;u cũng n&ecirc;n đặt trước nếu v&agrave;o những dịp lễ tết hoặc ng&agrave;y cuối tuần.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Diện mạo Lý Sơn nhìn từ phía cầu cảng.\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-11-2795-1427097613.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>Diện mạo mới của L&yacute; Sơn nh&igrave;n từ ph&iacute;a cầu cảng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>- Ăn cũng c&oacute; thể đặt ăn tại Hoa Biển hoặc c&aacute;c nh&agrave; nghỉ. Mấy qu&aacute;n nhậu th&igrave; thấy Sơn Thủy tr&ecirc;n chỗ gần ch&ugrave;a Hang l&agrave; ổn nhất v&agrave; m&aacute;t nhất, chỉ hơi xa v&agrave; kh&ocirc;ng c&oacute; cơm, chỉ c&oacute; nhậu v&agrave; nếu đ&oacute;i th&igrave; c&oacute; ch&aacute;o nhum.</p>\r\n\r\n<p>- Cung đường đi tham quan như sau sẽ tận dụng được thời gian m&agrave; đi được hết c&aacute;c điểm: nh&agrave; nghỉ - nh&agrave; lưu niệm (tượng đ&agrave;i lu&ocirc;n) - giếng vua - ch&ugrave;a Hang - hải đăng lớn - đ&igrave;nh l&agrave;ng An Hải - về kh&aacute;ch sạn ăn trưa. Buổi chiều: hồ đập nước (n&uacute;i Thới Lới) - hang C&acirc;u - đ&igrave;nh l&agrave;ng An Vĩnh, &Acirc;m Linh Tự, ch&ugrave;a Đục - cổng T&ograve; V&ograve; (ngắm ho&agrave;ng h&ocirc;n xuống biển ở ch&ugrave;a Đục) - khu mộ gi&oacute; - về kh&aacute;ch sạn ăn tối (ở qu&aacute;n Sơn Thủy c&oacute; karaoke rộng, ngay bờ biển).</p>\r\n\r\n<p>- Về nghỉ ngơi sớm v&agrave; nếu th&iacute;ch chụp ảnh th&igrave; sang h&ocirc;m sau cố gắng dậy sớm để chụp ảnh b&igrave;nh minh l&ecirc;n tr&ecirc;n biển rất đẹp ở đ&egrave;n biển h&ograve;n M&ugrave; Cu ph&iacute;a Đ&ocirc;ng của đảo gần nh&agrave; nghỉ Hoa Biển, Mỹ Phụng...</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Ly-Son-2-7100-1427097613.jpg\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-2-7100-1427097613.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>Ngọn hải đăng ở đảo lớn L&yacute; Sơn.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>* Đi lại, phương tiện di chuyển ở đảo lớn</em></p>\r\n\r\n<p>Hiện h&atilde;ng Taxi Ti&ecirc;n Sa của Đ&agrave; Nẵng đ&atilde; đưa ra 9 chiếc loại 7 chỗ. Gi&aacute; hơi ch&aacute;t nhưng vẫn c&oacute; thể chấp nhận được. Tuy nhi&ecirc;n chỉ n&ecirc;n d&ugrave;ng để di chuyển đi ăn hoặc từ cảng về nh&agrave; nghỉ. Chứ đi tham quan th&igrave; n&ecirc;n thu&ecirc; xe m&aacute;y m&agrave; đi cho tiện v&agrave; ngắm ngh&iacute;a được c&aacute;i đẹp của đảo.</p>\r\n\r\n<p>Về xe m&aacute;y: li&ecirc;n hệ với những nơi m&igrave;nh nghỉ ngơi. Hiện nay kh&ocirc;ng c&oacute; chỗ n&agrave;o cho thu&ecirc; xe m&aacute;y với quy m&ocirc; khoảng 5 chiếc trở l&ecirc;n cả v&agrave; xe m&aacute;y thu&ecirc; ở đảo kh&aacute; c&agrave; t&agrave;ng. Mọi người cố gắng lựa chọn kiểm tra xe trước khi thu&ecirc;.</p>\r\n\r\n<p>Về xe du lịch để chở những đo&agrave;n đ&ocirc;ng th&igrave; n&ecirc;n li&ecirc;n hệ với c&aacute;c nh&agrave; nghỉ họ sẽ gọi gi&uacute;p.</p>\r\n\r\n<p><em>* Ăn nghỉ ở đảo lớn</em></p>\r\n\r\n<p>Về ăn uống: n&oacute;i chung l&agrave; kh&ocirc;ng c&oacute; g&igrave; thay đổi so với những năm trước đ&acirc;y. Một số nh&agrave; h&agrave;ng qu&aacute;n ăn trước đ&acirc;y cảm thấy chấp nhận được th&igrave; xem qua thấy chất lượng giảm đi rất nhiều v&agrave; c&oacute; hiện tượng chặt ch&eacute;m đẹp kh&aacute;ch du lịch. Vậy n&ecirc;n tốt nhất l&agrave; ở kh&aacute;ch sạn hay nh&agrave; nghỉ n&agrave;o th&igrave; mọi người n&ecirc;n đặt cơm lu&ocirc;n tại đ&oacute;. Vừa tiện lợi, vừa được đặt theo &yacute; m&igrave;nh m&agrave; m&igrave;nh l&agrave; kh&aacute;ch nghỉ của họ n&ecirc;n khả năng họ sẽ nấu nướng cho m&igrave;nh.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Một bữa cơm toàn các món đặc sản như nộm tỏi, mực xào, cá\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-1-6414-1427097613.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>M&acirc;m cơm 5 người to&agrave;n c&aacute;c m&oacute;n đặc sản như nộm tỏi trộn, mực x&agrave;o, c&aacute; t&agrave; ma hấp, c&aacute; m&uacute; đỏ sốt chi&ecirc;n tỏi, gi&aacute; chỉ khoảng 70.000 đồng/người.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Về nơi nghỉ, lưu tr&uacute;: Ngay từ thời điểm n&agrave;y th&igrave; c&aacute;c ng&agrave;y cuối tuần từ thứ 6 đến chủ nhật hầu như ph&ograve;ng đặt trước hết v&agrave; kh&ocirc;ng c&ograve;n ph&ograve;ng những nh&agrave; nghỉ, kh&aacute;ch sạn dạng vừa vừa v&agrave; sạch sẽ, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Mặc d&ugrave; năm nay c&oacute; th&ecirc;m kh&aacute;ch sạn Central L&yacute; Sơn Hotel 30 ph&ograve;ng nhưng m&agrave; gi&aacute; cả th&igrave; tăng kh&aacute; cao so với chất lượng. Gi&aacute; ph&ograve;ng đơn đang giảm gi&aacute; 30% dịp mới khai trương m&agrave; 750.000 đồng, ph&ograve;ng đ&ocirc;i 1 triệu đồng.</p>\r\n\r\n<p>C&oacute; khoảng 5-6 nh&agrave; nghỉ mới nhưng hầu như mỗi nh&agrave; chỉ tầm 6 đến 9 ph&ograve;ng n&ecirc;n kh&ocirc;ng th&ecirc;m được mấy. Gi&aacute; chung từ 200.000 đồng đến 250.000 đồng. Dịp lễ Tết c&oacute; thể tăng ch&uacute;t &iacute;t.</p>\r\n\r\n<p>Dịp nghỉ lễ 30/4 th&igrave; từ ng&agrave;y 27/4 đến hết m&ugrave;ng 4/5 l&agrave; hiện tại kh&ocirc;ng c&ograve;n ph&ograve;ng n&agrave;o. M&agrave; theo c&aacute;c chủ nh&agrave; nghỉ th&igrave; hiện vẫn rất nhiều đo&agrave;n điện đặt li&ecirc;n tục nhưng kh&ocirc;ng c&ograve;n ph&ograve;ng. Vậy n&ecirc;n mọi người tốt nhất đi dịp lễ Tết th&igrave; ngay b&acirc;y giờ nhấc m&aacute;y l&ecirc;n t&igrave;m ph&ograve;ng, may ra c&oacute; đo&agrave;n n&agrave;o hủy th&igrave; đặt nhanh. N&ecirc;n chuyển &iacute;t tiền đặt cọc để chắc ăn.</p>\r\n\r\n<p>C&oacute; thể vẫn c&ograve;n lựa chọn homestay v&igrave; năm nay mọc l&ecirc;n kh&aacute; nhiều dạng homestay n&agrave;y. Tuy nhi&ecirc;n ở homestay như n&agrave;y chỉ l&agrave; c&aacute;ch cuối c&ugrave;ng th&ocirc;i. Bất tiện, mất an to&agrave;n v&igrave; mới c&oacute; vụ một đo&agrave;n mất mấy chục triệu v&agrave; điện thoại tại nh&agrave; homestay gần cầu cảng.</p>\r\n\r\n<p><em><strong>Ng&agrave;y 3: L&yacute; Sơn - đảo B&eacute; An B&igrave;nh</strong></em></p>\r\n\r\n<p>- S&aacute;ng: Thức dậy sớm, ngắm b&igrave;nh minh ở Hải đăng lớn, Vịnh M&ugrave; Cu hoặc đỉnh Thới Lới. Ăn s&aacute;ng, sau đ&oacute; l&ecirc;n t&agrave;u thăm quan Đảo An B&igrave;nh hay c&ograve;n gọi l&agrave; đảo B&eacute; L&yacute; Sơn.&nbsp;</p>\r\n\r\n<p>- 9h: đặt ch&acirc;n l&ecirc;n đảo B&eacute;, lấy ph&ograve;ng, tắm biển, lặn san h&ocirc;, nghỉ ngơi tự do. Ở đảo B&eacute; đ&atilde; c&oacute; một nh&agrave; nghỉ c&oacute; 3 ph&ograve;ng l&agrave; nh&agrave; nghỉ Minh Vy của vợ chồng chị Đảnh ngay gần cầu cảng. Ngo&agrave;i ra c&oacute; thể xin nghỉ nhờ bất kỳ nh&agrave; ai tr&ecirc;n đảo b&eacute; kiểu homestay hoặc cắm trại ngo&agrave;i b&atilde;i biển cực đẹp.</p>\r\n\r\n<p>- Trưa: ăn trưa, sau đ&oacute; nghỉ ngơi</p>\r\n\r\n<p>- Chiều: thăm quan ruộng h&agrave;nh tỏi, ngắm b&atilde;i c&aacute;t trắng mịn với những khối đ&aacute; mu&ocirc;n vạn h&igrave;nh th&ugrave; kỳ b&iacute;, chụp ảnh, tắm biển tại Hang sau.</p>\r\n\r\n<p>- Tối: dựng lều tại b&atilde;i Ti&ecirc;n, BBQ hải sản giao lưu h&aacute;t h&ograve; hoặc về đảo lớn nghỉ ngơi. (N&ecirc;n về đảo lớn nghỉ ngơi trong thời gian n&agrave;y đảo b&eacute; chưa c&oacute; điện).</p>\r\n\r\n<p><em>* T&agrave;u đi đảo b&eacute;</em></p>\r\n\r\n<p>Hiện nay c&oacute; một chuyến chạy cố định l&uacute;c 8h s&aacute;ng h&agrave;ng ng&agrave;y v&agrave; về tầm 14h30 chiều. Tuy nhi&ecirc;n đ&atilde; c&oacute; 3 t&agrave;u chạy đảo b&eacute; của &ocirc;ng Tr&ograve;n, ch&uacute; Th&ocirc;ng v&agrave; t&agrave;u Thanh Tr&acirc;n. Theo đ&aacute;nh gi&aacute; th&igrave; t&agrave;u Thanh Tr&acirc;n sạch sẽ đẹp đẽ hơn cả. To hơn v&agrave; c&oacute; thể chở được hơn 40 người. Gi&aacute; vẫn l&agrave; gi&aacute; chung một lượt l&agrave; 30.000 đồng/người v&agrave; khứ hồi l&agrave; 50.000 đồng/người.</p>\r\n\r\n<p>Ngo&agrave;i ra c&oacute; thể li&ecirc;n hệ thu&ecirc; nguy&ecirc;n t&agrave;u nếu đo&agrave;n đ&ocirc;ng th&igrave; sẽ đi về theo giờ của m&igrave;nh cho chủ động. Gi&aacute; thu&ecirc; nguy&ecirc;n t&agrave;u khoảng 1,2 - 1,4 triệu t&ugrave;y theo số lượng người v&agrave; t&ugrave;y loại t&agrave;u. Năm nay c&oacute; sự cạnh tranh n&ecirc;n kh&ocirc;ng c&ograve;n t&igrave;nh trạng &eacute;p gi&aacute; như năm ngo&aacute;i.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"border-collapse:collapse; border-spacing:0px; color:rgb(0, 0, 0); font-family:arial; font-size:14px; line-height:normal; margin:0px auto 10px; max-width:100%; min-width:1px; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\"><img alt=\"Tầng 2 tàu đi đảo bé.\" src=\"http://localhost/cms/uploads/news/2015_09_03/ly-son-3-7551-1427097614.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<p>Tầng 2 t&agrave;u đi đảo b&eacute;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>Ng&agrave;y 4: L&yacute; Sơn - Quảng Ng&atilde;i - chứng t&iacute;ch Sơn Mỹ</strong></em></p>\r\n\r\n<p>- 5h: dậy đ&oacute;n b&igrave;nh minh, tắm biển, dọn dẹp, ăn s&aacute;ng v&agrave; trở về đảo Lớn.</p>\r\n\r\n<p>- 7h30: l&ecirc;n t&agrave;u trở về đất liền. Kết th&uacute;c h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; L&yacute; Sơn.</p>\r\n\r\n<p>- 9h30: đo&agrave;n về đến cảng Sa Kỳ, sau đ&oacute; l&ecirc;n xe, tiếp tục đến dạo chơi b&atilde;i biển Mỹ Kh&ecirc; - Quảng Ng&atilde;i.</p>\r\n\r\n<p>- 11h: thăm quan khu chứng t&iacute;ch Sơn Mỹ, đo&agrave;n c&oacute; thể trực tiếp nh&igrave;n thấy những bức ảnh ghi lại tội &aacute;c chiến tranh, của qu&acirc;n đội Mỹ đối với những người d&acirc;n v&ocirc; tội tại Mỹ Lai (Sơn Mỹ), để nh&igrave;n thấy sự t&agrave;n khốc &aacute;c liệt của chiến tranh.</p>\r\n\r\n<p>12h: Kết th&uacute;c h&agrave;nh tr&igrave;nh</p>\r\n', 'duchanhtb', '2015-09-03 02:14:28', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/ly_son111.jpg', 83, 1, 1, 13, '', 'Lý sơn, quảng ngãi, du lịch bụi, kinh nghiệm du lịch', 'Được ví như “đảo tiên” giữa biển, bao la với làn nước xanh màu ngọc bích, đảo Lý Sơn nhất định sẽ là điểm đến khiến du khách luôn cảm thấy phấn khích.', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(14, '2', 'Những đội đặc nhiệm không thể thiếu trong cuộc chiến chống IS', 'Cuộc chiến chống tổ chức Nhà nước Hồi giáo tự xưng (IS) ngày càng cam go, khắc nghiệt nhất là khi chúng mở rộng hoạt động và sự bành trướng sang nhiều quốc gia ở Trung Đông – Bắc Phi. Ngoài những vũ khí thông thường, liên quân chống IS do Mỹ đứng đầu còn thành lập những đội đặc nhiệm quốc tế cùng sự trang bị đầy đủ các thiết bị tối tân với mục đích chính là truy tìm và tiêu diệt bằng được các thủ lĩnh của tổ chức này.', '<p><strong>Đội đặc nhiệm đen</strong></p>\r\n\r\n<p>Từ đầu th&aacute;ng 2, Tổng thống Mỹ Barack Obama đ&atilde; tr&igrave;nh l&ecirc;n Quốc hội nước n&agrave;y một loạt dự thảo về c&aacute;c giải ph&aacute;p m&agrave; qu&acirc;n đội sẽ sử dụng để chống lại IS, bao gồm cả việc tiến h&agrave;nh giao tranh tr&ecirc;n bộ. Tuy nhi&ecirc;n, việc c&ocirc;ng khai đưa qu&acirc;n đội Mỹ đến tham chiến vẫn l&agrave; điều m&agrave; người đứng đầu Nh&agrave; Trắng kh&ocirc;ng muốn l&agrave;m.</p>\r\n\r\n<p>V&igrave; thế, trong v&ograve;ng nửa năm qua, c&ugrave;ng với sự ủng hộ v&agrave; gi&uacute;p đỡ của Thủ tướng Anh David Cameron, Mỹ đ&atilde; th&agrave;nh lập những đội đặc nhiệm nhỏ với từng nh&oacute;m nhiệm vụ cụ thể. Theo tin từ tờ Telegraph, trước khi c&oacute; sự xuất hiện của những đội đặc nhiệm n&agrave;y, người d&acirc;n ở Syria đ&atilde; từng bắt gặp nh&oacute;m từ 8-10 cựu binh người Anh t&igrave;nh nguyện gia nhập lực lượng chiến binh người Kurd chống lại IS. Những người n&agrave;y tự gọi m&igrave;nh l&agrave; Lực lượng T&igrave;nh nguyện Quốc tế v&agrave; sẵn s&agrave;ng tới Syria để ngăn bước tiến của IS.</p>\r\n\r\n<p>Những người n&agrave;y tự mua đồng phục v&agrave; trả c&aacute;c chi ph&iacute; kh&aacute;c để gia nhập đội qu&acirc;n chống IS. Họ c&ograve;n phải r&egrave;n luyện khả năng chiến đấu trong điều kiện sa mạc giống như m&ocirc;i trường chiến đấu sắp phải đương đầu. Hỗ trợ họ lu&ocirc;n c&oacute; một nh&oacute;m gồm hơn 100 th&agrave;nh vi&ecirc;n của Cục T&igrave;nh b&aacute;o trung ương Mỹ - đội qu&acirc;n được Lầu Năm G&oacute;c cử đến để truy l&ugrave;ng v&agrave; t&igrave;m c&aacute;ch ti&ecirc;u diệt c&aacute;c thủ lĩnh của IS.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhưng đ&acirc;y vẫn chỉ l&agrave; đội qu&acirc;n chống IS nghiệp dư. Tờ Guardian của Anh cho biết, b&ecirc;n cạnh lực lượng n&agrave;y c&ograve;n c&oacute; một lực lượng &ldquo;đặc nhiệm đen&rdquo; (TFB) gồm 80 l&iacute;nh SAS (đặc nhiệm kh&ocirc;ng qu&acirc;n Anh, gồm cả t&igrave;nh b&aacute;o MI5, MI6) v&agrave; khoảng 200 l&iacute;nh đặc nhiệm Mỹ thuộc 2 biệt đội Delta Force, Seal 6. Mục ti&ecirc;u của TFB l&agrave; bắt sống hoặc giết chết ban l&atilde;nh đạo của IS trong một chiến dịch &ldquo;&#39;chặt đầu rắn&rdquo;.</p>\r\n\r\n<table class=\"contentimg\" style=\"border-collapse:collapse; border:0px; margin:0px auto 10px; padding:0px; vertical-align:baseline\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_03/7_lucluong3690.jpg\" style=\"border:0px; display:block; margin:0px auto; max-width:470px; padding:0px; vertical-align:baseline\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(244, 244, 244) !important; height:25px; text-align:center\">Lực lượng đặc nhiệm Mỹ trong đội TFB chống IS. Ảnh: inquisitr.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mọi hoạt động của TFB đặt dưới quyền gi&aacute;m s&aacute;t v&agrave; chỉ huy của CIA. Khi sang Iraq, TFB c&ograve;n t&aacute;i lập Apostle (lực lượng đặc nhiệm do Mỹ th&agrave;nh lập sau chiến tranh Iraq rồi bị giải t&aacute;n), huấn luyện Peshmerga (lực lượng vũ trang của người Kurd bản địa) c&aacute;ch chiến đấu với IS. Cho đến nay, nhờ TFB, nhiều tỉnh ở Iraq đ&atilde; th&agrave;nh lập lữ đo&agrave;n đặc nhiệm cấu th&agrave;nh bởi c&aacute;c bộ lạc ở tỉnh Anbar, nhằm hỗ trợ lực lượng an ninh trong cuộc chiến chống IS.</p>\r\n\r\n<p>Chủ tịch Ủy ban an ninh thuộc Hội đồng tỉnh Anbar, &ocirc;ng Ahmad Hamid cho biết, lữ đo&agrave;n chống IS c&oacute; qu&acirc;n số v&agrave;o khoảng 3.000 người thuộc nhiều bộ lạc kh&aacute;c nhau ở Anbar v&agrave; được huấn luyện bởi c&aacute;c chuy&ecirc;n gia qu&acirc;n sự của Mỹ v&agrave; Iraq trong khoảng thời gian từ 1 đến 2 th&aacute;ng. Địa điểm huấn luyện l&agrave; hai căn cứ nằm ở ph&iacute;a Đ&ocirc;ng v&agrave; ph&iacute;a T&acirc;y th&agrave;nh phố Ramadi, thủ phủ tỉnh Anbar.</p>\r\n\r\n<p>C&ograve;n tại tỉnh Diala thuộc miền Bắc Iraq, tướng Jamil Shamary &ndash; chỉ huy cảnh s&aacute;t tỉnh Diala cho biết, qu&acirc;n đội Iraq sẽ vũ trang cho 40 bộ lạc trong tỉnh để chiến đấu chống lại IS. Mục đ&iacute;ch của việc vũ trang n&agrave;y l&agrave; để chuẩn bị cho việc &ldquo;bắt đầu một chiến dịch qu&acirc;n sự quy m&ocirc; lớn nhằm giải ph&oacute;ng tất cả c&aacute;c v&ugrave;ng đất ở Diala&rdquo; khỏi sự chiếm đ&oacute;ng của IS&hellip;</p>\r\n\r\n<p>Tờ Daily Mirror cho hay, c&ugrave;ng đi với TFB c&ograve;n c&oacute; c&aacute;c ch&uacute; ch&oacute; đặc nhiệm do Australia huấn luyện. Những ch&uacute; ch&oacute; n&agrave;y c&oacute; nhiệm vụ ph&aacute;t hiện những khối thuốc nổ của IS v&agrave; gi&uacute;p li&ecirc;n qu&acirc;n chặn đứng chiến thuật khủng bố bằng c&aacute;ch c&agrave;i bẫy bom hoặc sử dụng chiến binh đ&aacute;nh bom liều chết.</p>\r\n\r\n<p><strong>V&agrave; những c&aacute;ch truy l&ugrave;ng đặc biệt</strong></p>\r\n\r\n<p>Dưới con mắt c&aacute;c nh&agrave; qu&acirc;n sự Mỹ, Anh, IS rất mạnh v&agrave; thậm ch&iacute; c&ograve;n nguy hiểm hơn Al-Qaeda nhiều lần. V&igrave; vậy, trong những chiến dịch truy l&ugrave;ng thủ lĩnh v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n của IS, li&ecirc;n qu&acirc;n do Mỹ đứng đầu kh&ocirc;ng bao giờ qu&ecirc;n sử dụng c&aacute;c thiết bị c&ocirc;ng nghệ cao.</p>\r\n\r\n<p>Chẳng hạn như trước khi tiến h&agrave;nh kh&ocirc;ng k&iacute;ch c&aacute;c mục ti&ecirc;u của IS tại Syria v&agrave; Iraq, Mỹ v&agrave; đồng minh đ&atilde; triển khai một loạt c&aacute;c phương tiện v&agrave; biện ph&aacute;p để do th&aacute;m, thu thập th&ocirc;ng tin t&igrave;nh b&aacute;o. Đ&oacute; l&agrave; c&aacute;c vệ tinh trong kh&ocirc;ng trung, c&aacute;c m&aacute;y bay do th&aacute;m tầm cao v&agrave; h&agrave;ng loạt c&aacute;c m&aacute;y bay trinh s&aacute;t - gồm cả loại c&oacute; người l&aacute;i v&agrave; kh&ocirc;ng người l&aacute;i c&oacute; vai tr&ograve; như những &quot;con mắt&quot; của qu&acirc;n đội Mỹ v&agrave; đồng minh nhằm theo d&otilde;i sự di chuyển của IS trong nhiều giờ, nhiều ng&agrave;y.</p>\r\n\r\n<p>C&aacute;c m&aacute;y bay ti&ecirc;n k&iacute;ch v&agrave; n&eacute;m bom mới nhất của Mỹ v&agrave; đồng minh cũng được trang bị c&aacute;c camera v&agrave; cảm biến tinh vi, gi&uacute;p x&aacute;c định v&agrave; truy qu&eacute;t mục ti&ecirc;u. V&agrave; trong khi video v&agrave; c&aacute;c h&igrave;nh ảnh được gửi về, c&aacute;c vệ tinh v&agrave; m&aacute;y bay đặc biệt kh&aacute;c thuộc lực lượng &quot;t&igrave;nh b&aacute;o t&iacute;n hiệu&quot;c&oacute; vai tr&ograve; như những &quot;đ&ocirc;i tai&quot; nghe ng&oacute;ng th&ocirc;ng tin t&igrave;nh b&aacute;o, nghe trộm li&ecirc;n lạc điện thoại, radio. C&ocirc;ng cụ then chốt của h&igrave;nh thức n&agrave;y l&agrave; m&aacute;y bay RC-135 c&oacute; khả năng chặn cuộc gọi từ độ cao tới 10.000m.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, hệ thống th&ocirc;ng tin chỉ điểm cũng rất quan trọng. Tại Syria, do mạng lưới gi&aacute;n điệp được cho l&agrave; mỏng, Mỹ đ&atilde; dựa v&agrave;o c&aacute;c đồng minh Arab v&agrave; ứng dụng Google Earth của Google để kết nối th&ocirc;ng tin giữa nước n&agrave;y với lực lượng người Kurd.</p>\r\n\r\n<p>Theo tờ The New York Times, c&aacute;c chiến binh người Kurd tham gia chiến đấu chống IS tại Syria đ&atilde; sử dụng c&aacute;c m&aacute;y t&iacute;nh bảng Samsung c&oacute; c&agrave;i đặt ứng dụng Google Earth (ứng dụng gi&uacute;p quan s&aacute;t h&igrave;nh ảnh to&agrave;n thế giới bằng dữ liệu thu được từ ảnh chụp vệ tinh) để x&aacute;c định vị tr&iacute; mục ti&ecirc;u IS tr&ecirc;n thực địa v&agrave; cung cấp cho ph&iacute;a li&ecirc;n qu&acirc;n kh&ocirc;ng k&iacute;ch do Mỹ cầm đầu. Chẳng hạn khi d&acirc;n qu&acirc;n người Kurd thấy r&otilde; th&agrave;nh vi&ecirc;n IS đang di chuyển tại một địa chỉ GPS n&agrave;o đ&oacute;, họ c&oacute; thể gửi th&ocirc;ng tin n&agrave;y tới ph&ograve;ng chỉ huy hoạt động qu&acirc;n sự tại Mỹ v&agrave; chỉ v&agrave;i ph&uacute;t sau, m&aacute;y bay chiến đấu của Mỹ đ&atilde; được đến kh&ocirc;ng k&iacute;ch xuống mục ti&ecirc;u.</p>\r\n\r\n<p>Một quan chức cấp cao của Bộ Quốc ph&ograve;ng Mỹ n&oacute;i: &ldquo;Khai th&aacute;c th&ocirc;ng tin từ nhiều nền tảng c&ocirc;ng nghệ kh&aacute;c nhau nhằm tăng độ ch&iacute;nh x&aacute;c cho c&aacute;c cuộc kh&ocirc;ng k&iacute;ch, giảm thiểu rủi ro với d&acirc;n thường. Việc n&agrave;y đ&atilde; tạo hiệu quả trong cuộc chiến chống IS, dẫn tới thất bại của ch&uacute;ng ở Kobane, ở Tel Abyad v&agrave; buộc phải r&uacute;t khỏi rất nhiều khu vực từng chiếm đ&oacute;ng&rdquo;.</p>\r\n', 'duchanhtb', '2015-09-03 02:51:03', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/7_lucluong3690.jpg', 25, 1, 1, 14, '', 'IS, đặc nghiệm, quân đội, vú khí, đặc nghiệm đen', 'Cuộc chiến chống tổ chức Nhà nước Hồi giáo tự xưng (IS) ngày càng cam go, khắc nghiệt nhất là khi chúng mở rộng hoạt động và sự bành trướng sang nhiều quốc gia ở Trung Đông', 1),
(15, '1', '7 sai lầm khiến nhà đầu tư bất động sản mất tiền', 'Gửi tiền vào bất động sản đang được xem là kênh trú ẩn an toàn, nhưng nếu đầu tư không đúng cách có thể gặp rắc rối, thậm chí thua lỗ, trắng tay.', '<h2>Gửi tiền v&agrave;o bất động sản đang được xem l&agrave; k&ecirc;nh tr&uacute; ẩn an to&agrave;n, nhưng nếu đầu tư kh&ocirc;ng đ&uacute;ng c&aacute;ch c&oacute; thể gặp rắc rối, thậm ch&iacute; thua lỗ, trắng tay.</h2>\r\n\r\n<p>Giảng vi&ecirc;n bất động sản thuộc Trung t&acirc;m tư vấn doanh nghiệp v&agrave; ph&aacute;t triển kinh tế v&ugrave;ng khoa Kinh tế ph&aacute;t triển (Đại học Kinh tế TP&nbsp;HCM) - Ng&ocirc; Đ&igrave;nh H&atilde;n cho biết, gửi tiền v&agrave;o bất động sản c&oacute; thể tr&aacute;nh được trượt gi&aacute; v&agrave; tăng gi&aacute; trị theo thời gian, nhưng k&ecirc;nh đầu tư n&agrave;y cũng c&oacute; mặt tr&aacute;i của n&oacute;. Nếu kh&ocirc;ng xem x&eacute;t kỹ lưỡng c&oacute; thể bị ch&ocirc;n vốn, mất tiền oan thậm ch&iacute; l&agrave; thua lỗ. &Ocirc;ng H&atilde;n chia sẻ 7 sai lầm dẫn đến việc ch&ocirc;n vốn oan uổng m&agrave; nh&agrave; đầu tư bất động sản n&ecirc;n tr&aacute;nh.</p>\r\n\r\n<p><strong>Thứ nhất</strong>: Dốc tiền mua bất động sản theo phong tr&agrave;o, t&acirc;m l&yacute; đ&aacute;m đ&ocirc;ng hoặc qu&aacute; h&agrave;o hứng với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i &quot;khủng&quot;, gom h&agrave;ng khối lượng lớn để được chiết khấu nhiều. Chỉ thấy c&aacute;i lợi trước mắt trong khi chưa xem x&eacute;t kỹ c&aacute;c chỉ số cơ bản: sản phẩm, tiến độ thanh to&aacute;n, gi&aacute; cả, hiệu quả sinh lời... l&agrave; sai lầm nghi&ecirc;m trọng.</p>\r\n\r\n<p>Nếu đ&atilde; từng hoặc đang mua nh&agrave; đất kiểu n&agrave;y, bạn cần phải dừng lại v&agrave; giải ph&oacute;ng suất đầu tư c&agrave;ng nhanh c&agrave;ng tốt v&igrave; đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n lớn nhất dẫn đến ch&ocirc;n vốn oan v&agrave;o bất động sản.</p>\r\n\r\n<p><strong>Thứ hai</strong>: Đầu tư v&agrave;o chu kỳ cuối của qu&aacute; tr&igrave;nh tăng trưởng ngắn hạn cũng l&agrave; một lỗi cơ bản nhưng kh&aacute; phổ biến tại thị trường Việt Nam. Điều n&agrave;y c&oacute; nghĩa l&agrave; bạn mua nh&agrave; đất khi gi&aacute; đang tr&ecirc;n đỉnh, l&uacute;c thị trường chững lại bạn phải chịu &aacute;p lực giảm gi&aacute; v&agrave; muốn b&aacute;n c&oacute; l&atilde;i phải chờ thời gian rất l&acirc;u. Khi qu&aacute; tr&igrave;nh tăng trưởng quay đầu cho chu kỳ ph&aacute;t triển kế tiếp sẽ khiến bạn bị ch&ocirc;n vốn từ trung đến d&agrave;i hạn (từ 12 th&aacute;ng đến v&agrave;i năm) v&agrave; mất đi rất nhiều chi ph&iacute; cơ hội.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"color:rgb(0, 0, 0); font-family:arial; font-size:12px; line-height:19px; margin:0px auto; padding:0px; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_03/q7-setop-9469-1441251767.jpg\" style=\"border:0px solid rgb(255, 0, 0); height:350px; margin:0px; padding:0px; vertical-align:middle; width:500px\" />\r\n			<div>Bất động sản chỉ được xem l&agrave; k&ecirc;nh tr&uacute; ẩn an to&agrave;n nếu nh&agrave; đầu tư sử dụng d&ograve;ng vốn đ&uacute;ng mục ti&ecirc;u, đ&uacute;ng thời điểm. Ảnh: QH.</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Thứ ba</strong>: Mua nh&agrave; đất nhưng kh&ocirc;ng xem x&eacute;t gi&aacute; trị sử dụng. Khi đầu tư bạn n&ecirc;n t&iacute;nh đến những đặc điểm v&agrave; gi&aacute; trị sản phẩm d&agrave;nh cho người c&oacute; nhu cầu ti&ecirc;u d&ugrave;ng cuối c&ugrave;ng. V&iacute; dụ: mua để ở, cho thu&ecirc;, sử dụng to&agrave;n phần hay một phần, mua l&agrave;m của để d&agrave;nh hoặc chờ cơ hội tăng gi&aacute;&hellip; đều c&oacute; c&aacute;ch chọn h&agrave;ng h&oacute;a kh&aacute;c nhau. Mục ti&ecirc;u cuối c&ugrave;ng của bất động sản l&agrave; hướng đến đối tượng sử dụng cuối c&ugrave;ng. Gi&aacute; trị gia tăng của bất động sản phụ thuộc v&agrave;o yếu tố n&agrave;y rất lớn. Do đ&oacute;, nếu chưa t&iacute;nh đến gi&aacute; trị sử dụng của bất động sản th&igrave; đừng vội gom h&agrave;ng, v&igrave; gần như chắc chắn d&ograve;ng tiền sẽ bị ghim lại rất l&acirc;u.</p>\r\n\r\n<p><strong>Thứ tư</strong>: D&ugrave;ng qu&aacute; nhiều đ&ograve;n bẩy t&agrave;i ch&iacute;nh. Đ&acirc;y l&agrave; sai lầm kinh điển của c&aacute;c nh&agrave; đầu tư bất động sản trong 8 năm khủng hoảng vừa qua. Tỷ lệ vay vốn khi đầu tư v&agrave;o bất động sản cao (từ khoảng 50 - 80%) nh&agrave; đầu tư sẽ bị &aacute;p lực trả l&atilde;i v&agrave; vốn gốc. Nếu như thanh khoản k&eacute;m nh&agrave; đầu tư sẽ mất dần lợi nhuận theo thời gian khi bị th&acirc;m hụt d&ograve;ng tiền v&igrave; phải trả l&atilde;i ng&acirc;n h&agrave;ng, thậm ch&iacute; phải b&aacute;n th&aacute;o bất động sản với gi&aacute; thấp. C&oacute; thể d&ugrave;ng đ&ograve;n bẩy t&agrave;i ch&iacute;nh với tỷ lệ vay vốn cao khi nh&agrave; đầu tư kiểm so&aacute;t được đầu v&agrave;o v&agrave; đầu ra, n&ecirc;n l&agrave;m cho từng thương vụ chứ kh&ocirc;ng phải l&agrave; xu hướng.</p>\r\n\r\n<p><strong>Thứ năm</strong>: Đ&oacute;n s&oacute;ng bất động sản qu&aacute; sớm. Sai lầm n&agrave;y biểu hiện qua việc nh&agrave; đầu tư x&aacute;c định sai tiềm năng bất động sản của một khu vực v&agrave; dốc cả n&uacute;i tiền để đ&oacute;n một cơn s&oacute;ng chẳng biết bao giờ xuất hiện. Mua nh&agrave; đất kh&ocirc;ng tạo ra gi&aacute; trị gia tăng hoặc tiềm năng ph&aacute;t triển khu vực qu&aacute; chậm sẽ ch&ocirc;n v&ugrave;i d&ograve;ng vốn của bạn. Để tr&aacute;nh sai lầm n&agrave;y, nh&agrave; đầu tư cần phải thực địa, khảo s&aacute;t bản chất của đ&ocirc; thị l&agrave; cơ sở hạ tầng, tiện &iacute;ch, v&agrave; mật độ d&acirc;n cư. Lưu &yacute; chỉ khi hội tụ được ba yếu tố n&agrave;y gi&aacute; trị bất động sản mới được đảm bảo.</p>\r\n\r\n<p><strong>Thứ s&aacute;u</strong>: Mua nh&agrave; đất c&oacute; gi&aacute; trị qu&aacute; lớn so với tiềm lực t&agrave;i ch&iacute;nh v&agrave; kỳ vọng b&aacute;n nhanh kiếm l&atilde;i. Những trường hợp liều lĩnh n&agrave;y thường xuất hiện phổ biến với đối tượng đầu cơ bất động sản. Nguồn vốn đầu tư kh&ocirc;ng đủ, quỹ dự ph&ograve;ng qu&aacute; &iacute;t, kh&ocirc;ng thể thanh to&aacute;n kịp tiến độ trong khi m&atilde;i lực thị trường c&ograve;n thấp dẫn đến &aacute;p lực phải b&aacute;n rẻ, hoặc thanh l&yacute; hợp đồng sớm.</p>\r\n\r\n<p><strong>Thứ bảy</strong>: Dồn trứng v&agrave;o một rổ hay đ&aacute;nh cược một mẻ lớn được ăn cả ng&atilde; về kh&ocirc;ng. Đ&acirc;y l&agrave; sai lầm được khuyến c&aacute;o cần phải tr&aacute;nh ở hầu như tất cả c&aacute;c k&ecirc;nh đầu tư, kh&ocirc;ng ri&ecirc;ng g&igrave; bất động sản. Thế nhưng, do gi&aacute; trị t&agrave;i sản (nh&agrave; đất) qu&aacute; lớn, một khi đ&atilde; dồn tất cả c&aacute; v&agrave;o một rọ th&igrave; l&uacute;c thị trường kh&oacute; khăn kh&ocirc;ng thể th&aacute;o chạy kịp. Điều n&agrave;y hạn chế t&iacute;nh thanh khoản v&agrave; tập trung rủi ro về một mối. Do đ&oacute;, c&aacute;ch đầu tư bất động sản kh&ocirc;n ngoan l&agrave; phải ph&acirc;n t&aacute;n danh mục đầu tư, đa dạng h&oacute;a c&aacute;c khối t&agrave;i sản n&agrave;y ở nhiều loại h&igrave;nh, ph&acirc;n kh&uacute;c, khu vực, vị tr&iacute; kh&aacute;c nhau.</p>\r\n', '', '2015-09-03 02:54:29', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/q7-setop-9469-1441251767.jpg', 28, 1, 1, 15, '', 'Bất động sản, chung cư, nhà đất, bong bóng nhà đất', 'Gửi tiền vào bất động sản đang được xem là kênh trú ẩn an toàn, nhưng nếu đầu tư không đúng cách có thể gặp rắc rối, thậm chí thua lỗ, trắng tay.', 1),
(16, '5,1', 'Sơn Đoòng là điểm đến số một của thế kỷ 21', 'Tạp chí khoa học nổi tiếng Smithsonian đã chọn ra danh sách những điểm đến mới tuyệt vời nhất của thế kỷ này, trong đó hang Sơn Đoòng của Việt Nam được nhắc tới đầu tiên.', '<div style=\"background:transparent; border:0px; padding:10px 0px 12px\">\r\n<p>Tạp ch&iacute; khoa học nổi tiếng Smithsonian đ&atilde; chọn ra danh s&aacute;ch những điểm đến mới tuyệt vời nhất của thế kỷ n&agrave;y, trong đ&oacute; hang Sơn Đo&ograve;ng của Việt Nam được nhắc tới đầu ti&ecirc;n.</p>\r\n</div>\r\n\r\n<div itemprop=\"articleBody\" style=\"background:transparent; border:0px; padding:0px\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"1. Hang động lớn nhất thế giới - hang Sơn Đoòng, Việt Nam: Nằm ở Vườn quốc gia Phong Nha - Kẻ Bàng, Quảng Bình, Việt Nam, hang Sơn Đoòng có trần cao tới mức có thể chứa Đài tưởng niệm Washinton bên trong. Khu vực rộng nhất thừa chỗ cho hai chiếc Boeing 747. \" src=\"http://localhost/cms/uploads/news/2015_09_03/1.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>1. Hang động lớn nhất thế giới - hang Sơn Đo&ograve;ng, Việt Nam:&nbsp;</strong>Nằm ở Vườn quốc gia Phong Nha - Kẻ B&agrave;ng, Quảng B&igrave;nh, Việt Nam, hang Sơn Đo&ograve;ng c&oacute; trần cao tới mức c&oacute; thể chứa Đ&agrave;i tưởng niệm Washington b&ecirc;n trong. Khu vực rộng nhất thừa chỗ cho hai chiếc Boeing 747. Ảnh:&nbsp;<strong><em>Ryan Deboodt.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Một dòng sông ngầm chảy dọc lòng hang, với hai hố sụt khổng lồ có hệ sinh thái đặc hữu. Với chiều dài lên tới 8 km, hang Sơn Đoòng dài gấp 5 lần hang động từng giữ kỷ lục dài nhất thế giới - hang Deer ở Sarawak, Malaysia.\" src=\"http://localhost/cms/uploads/news/2015_09_03/2.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Một d&ograve;ng s&ocirc;ng ngầm chảy dọc l&ograve;ng hang, với hai hố sụt khổng lồ c&oacute; hệ sinh th&aacute;i đặc hữu. Với chiều d&agrave;i l&ecirc;n tới 8 km, hang Sơn Đo&ograve;ng d&agrave;i gấp 5 lần hang động từng giữ kỷ lục d&agrave;i nhất thế giới - hang Deer ở Sarawak, Malaysia. Ảnh:&nbsp;<strong><em>Ryan Deboodt.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"2. Ngôi nhà cho Hạt của Chúa - phòng thí nghiệm CERN, Thụy Sĩ: Phòng thí nghiệm CERN (Meyrin, Thụy Sĩ) có máy gia tốc hạt nhân lớn và mạnh nhất thế giới - Large Hadron Collider.  Ảnh: Ibtimes.\" src=\"http://localhost/cms/uploads/news/2015_09_03/cern.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>2. Ng&ocirc;i nh&agrave; cho Hạt của Ch&uacute;a - ph&ograve;ng th&iacute; nghiệm CERN, Thụy Sĩ:&nbsp;</strong>Ph&ograve;ng th&iacute; nghiệm CERN (Meyrin, Thụy Sĩ) c&oacute; m&aacute;y gia tốc hạt nh&acirc;n lớn v&agrave; mạnh nhất thế giới - Large Hadron Collider. Ảnh:<strong><em>Ibtimes.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Thiết bị này giúp trả lời một câu hỏi phức tạp nhất của vật lý vào năm 2012, khi các thí nghiệm tìm ra hạt Higgs hay còn gọi là Hạt của Chúa củng cố mô hình chuẩn của vật lý vi hạt. Ảnh: Fit.\" src=\"http://localhost/cms/uploads/news/2015_09_03/cms_detector.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Thiết bị n&agrave;y gi&uacute;p trả lời một c&acirc;u hỏi phức tạp nhất của vật l&yacute; v&agrave;o năm 2012, khi c&aacute;c th&iacute; nghiệm t&igrave;m ra hạt Higgs hay c&ograve;n gọi l&agrave; Hạt của Ch&uacute;a củng cố m&ocirc; h&igrave;nh chuẩn của vật l&yacute; vi hạt. Ảnh:<strong><em>&nbsp;Fit.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"3. Rời khỏi trái đất - cảng vũ trụ America, New Mexico, Mỹ: Virgin Galactic - một “hãng hàng không vũ trụ” do Richard Branson sáng lập - đang có hơn 400 nhân viên làm việc ngày đêm để thực hiện giấc mộng du hành không gian. Mục tiêu của họ là cho 6 du khách lên mỗi chuyến bay. \" src=\"http://localhost/cms/uploads/news/2015_09_03/spaceportentrance.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>3. Rời khỏi tr&aacute;i đất - cảng vũ trụ America, New Mexico, Mỹ:&nbsp;</strong>Virgin Galactic - một &ldquo;h&atilde;ng h&agrave;ng kh&ocirc;ng vũ trụ&rdquo; do Richard Branson s&aacute;ng lập - đang c&oacute; hơn 400 nh&acirc;n vi&ecirc;n l&agrave;m việc ng&agrave;y đ&ecirc;m để thực hiện giấc mộng du h&agrave;nh kh&ocirc;ng gian. Mục ti&ecirc;u của họ l&agrave; cho 6 du kh&aacute;ch l&ecirc;n mỗi chuyến bay. Ảnh:<strong><em>Timothy Price.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Khởi hành từ cảng vũ trụ America ở New Mexico, con tàu sẽ lên độ cao 110.000 m, nơi du khách có thể nhìn thấy chân trời cong nổi bật trên nền đen của vũ trụ. Sau đó tàu sẽ đáp xuống, cho họ tận hưởng cảm giác không trọng lực. Hơn 700 người đã đăng ký chuyến đi này, với giá 250.000 USD một người.\" src=\"http://localhost/cms/uploads/news/2015_09_03/virgingalactickeepsinchingtowardspacebutwhenwillitgettheree968959119.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Khởi h&agrave;nh từ cảng vũ trụ America ở New Mexico, con t&agrave;u sẽ l&ecirc;n độ cao 110.000 m, nơi du kh&aacute;ch c&oacute; thể nh&igrave;n thấy ch&acirc;n trời cong nổi bật tr&ecirc;n nền đen của vũ trụ. Sau đ&oacute; t&agrave;u sẽ đ&aacute;p xuống, cho họ tận hưởng cảm gi&aacute;c kh&ocirc;ng trọng lực. Hơn 700 người đ&atilde; đăng k&yacute; chuyến đi n&agrave;y, với gi&aacute; 250.000 USD một người. Ảnh:&nbsp;<strong><em>Mashable.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"4. Ngắm khỉ đột - leo núi ở Đông Phi: Những con khỉ đột núi nặng tới hơn 200 kg (gấp đôi khỉ đột vùng trũng phía Tây), hiện nay chỉ còn khoảng 800 cá thể trên thế giới. Chúng đang bị đe dọa do sự thu hẹp môi trường sống. Ảnh: Goista.\" src=\"http://localhost/cms/uploads/news/2015_09_03/mountaingorillainvolcanoesnationalparkrwanda.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>4. Ngắm khỉ đột - leo n&uacute;i ở Đ&ocirc;ng Phi:&nbsp;</strong>Những con khỉ đột n&uacute;i nặng tới hơn 200 kg (gấp đ&ocirc;i khỉ đột v&ugrave;ng trũng ph&iacute;a T&acirc;y), hiện nay chỉ c&ograve;n khoảng 800 c&aacute; thể tr&ecirc;n thế giới. Ch&uacute;ng đang bị đe dọa do sự thu hẹp m&ocirc;i trường sống. Ảnh:&nbsp;<strong><em>Goista.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Để quan sát những sinh vật tuyệt diệu này, bạn phải tới khu vực Bwindi của Uganda, hay dãy Virunga vắt ngang Uganda, Rwanda và Congo. Ảnh: Rwandasafaris.\" src=\"http://localhost/cms/uploads/news/2015_09_03/gorillatrekkingnkuringo.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Để quan s&aacute;t những sinh vật tuyệt diệu n&agrave;y, bạn phải tới khu vực Bwindi của Uganda, hay d&atilde;y Virunga vắt ngang Uganda, Rwanda v&agrave; Congo. Ảnh:&nbsp;<strong><em>Rwandasafaris.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"5. Đêm nhiều sao nhất - đài thiên văn ALMA, Chile: Nếu bạn thích ngắm trời sao, hãy tới sa mạc Atamaca của Chile. Đây là một trong những khu vực khô hạn nhất thế giới, không có mưa lớn từ năm 1570 tới năm 1971.  Ảnh: Justthekidfrombrooklyn/Tumblr.\" src=\"http://localhost/cms/uploads/news/2015_09_03/f29954c420b8437bb8178d327912d137_980x551.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>5. Đ&ecirc;m nhiều sao nhất - đ&agrave;i thi&ecirc;n văn ALMA, Chile:&nbsp;</strong>Nếu bạn th&iacute;ch ngắm trời sao, h&atilde;y tới sa mạc Atamaca của Chile. Đ&acirc;y l&agrave; một trong những khu vực kh&ocirc; hạn nhất thế giới, kh&ocirc;ng c&oacute; mưa lớn từ năm 1570 tới năm 1971. Ảnh:&nbsp;<strong><em>Justthekidfrombrooklyn/Tumblr.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Không khí với độ ẩm thấp khiến đây là nơi bạn có thể nhìn rõ sao trời nhất trên thế trái đất. Với đài thiên văn ALMA nằm trên cao nguyên Chajnantor, ở độ cao 5.000 m so với mực nước biển, du khách có thể ngắm nhìn những ngôi sao và quan sát vũ trụ.\" src=\"http://localhost/cms/uploads/news/2015_09_03/article01899f00f000005dc743_964x640.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Kh&ocirc;ng kh&iacute; với độ ẩm thấp khiến đ&acirc;y l&agrave; nơi bạn c&oacute; thể nh&igrave;n r&otilde; sao trời nhất tr&ecirc;n thế tr&aacute;i đất. Với đ&agrave;i thi&ecirc;n văn ALMA nằm tr&ecirc;n cao nguy&ecirc;n Chajnantor, ở độ cao 5.000 m so với mực nước biển, du kh&aacute;ch c&oacute; thể ngắm nh&igrave;n những ng&ocirc;i sao v&agrave; quan s&aacute;t vũ trụ. Ảnh:&nbsp;<strong><em>Josefrancisco.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"6. Sông băng tan - hang băng Mendenhall, Alaska, Mỹ: Nằm cách Juneau chưa đầy 20 km, thuộc rừng quốc gia Tongass, sông băng Mendenhall hình thành từ khoảng 3.000 năm trước và ngừng mở rộng vào giữa thế kỷ 18.  Ảnh: Tophdgallery.\" src=\"http://localhost/cms/uploads/news/2015_09_03/mendenhall24.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>6. S&ocirc;ng băng tan - hang băng Mendenhall, Alaska, Mỹ:</strong>&nbsp;Nằm c&aacute;ch Juneau chưa đầy 20 km, thuộc rừng quốc gia Tongass, s&ocirc;ng băng Mendenhall h&igrave;nh th&agrave;nh từ khoảng 3.000 năm trước v&agrave; ngừng mở rộng v&agrave;o giữa thế kỷ 18. Ảnh:&nbsp;<strong><em>Tophdgallery.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Giờ sông đang bắt đầu tan, khiến chúng ta không còn nhiều thời gian để chiêm ngưỡng một trong những khung cảnh ngoạn mục nhất thế giới. Sông có những đoạn rỗng, khi băng tan để lộ những hang động tuyệt đẹp. Tuy nhiên, để tới được đây, du khách phải chèo thuyền kayak hay các loại thuyền nhỏ qua làn nước lạnh giá, leo bộ qua bán đảo hiểm trở nhô ra hồ Mendenhall.\" src=\"http://localhost/cms/uploads/news/2015_09_03/o140556731facebook.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Giờ s&ocirc;ng đang bắt đầu tan, khiến ch&uacute;ng ta kh&ocirc;ng c&ograve;n nhiều thời gian để chi&ecirc;m ngưỡng một trong những khung cảnh ngoạn mục nhất thế giới. S&ocirc;ng c&oacute; những đoạn rỗng, khi băng tan để lộ những hang động tuyệt đẹp. Tuy nhi&ecirc;n, để tới được đ&acirc;y, du kh&aacute;ch phải ch&egrave;o thuyền kayak hay c&aacute;c loại thuyền nhỏ qua l&agrave;n nước lạnh gi&aacute;, leo bộ qua b&aacute;n đảo hiểm trở nh&ocirc; ra hồ Mendenhall. Ảnh:<strong><em>Womamazing.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"7. Tàu lượn siêu tốc nhanh nhất thế giới - Ferrari World, Abu Dhabi, Các Tiểu vương quốc Ả Rập Thống nhất: Ferrari World, công viên giải trí trong nhà lớn nhất thế giới, mở cửa đón khách từ năm 2012 ở Abu Dhabi.  Ảnh: Yasisland.\" src=\"http://localhost/cms/uploads/news/2015_09_03/12.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>7. T&agrave;u lượn si&ecirc;u tốc nhanh nhất thế giới - Ferrari World, Abu Dhabi, C&aacute;c Tiểu vương quốc Ả Rập Thống nhất:&nbsp;</strong>Ferrari World, c&ocirc;ng vi&ecirc;n giải tr&iacute; trong nh&agrave; lớn nhất thế giới, mở cửa đ&oacute;n kh&aacute;ch từ năm 2012 ở Abu Dhabi. Ảnh:&nbsp;<strong><em>Yasisland.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Tại đây có tàu lượn siêu tốc nhanh nhất hành tinh - Formula Rossa, với vận tốc lên tới 239 km/h.  Ảnh: Meteoprog.\" src=\"http://localhost/cms/uploads/news/2015_09_03/8251e4090e4cf5d0e4283cab3d93947b.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Tại đ&acirc;y c&oacute; t&agrave;u lượn si&ecirc;u tốc nhanh nhất h&agrave;nh tinh - Formula Rossa, với vận tốc l&ecirc;n tới 239 km/h. Ảnh:&nbsp;<strong><em>Meteoprog.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"8. Điểm lặn sâu nhất thế giới -  rãnh Cayman, Caribbe: Du khách có thể đăng ký tour tàu ngầm của RIDE để khám phá rãnh Cayman - khu vực sâu nhất Caribbe. \" src=\"http://localhost/cms/uploads/news/2015_09_03/82475ngsversion1422286348674adapt7681.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>8. Điểm lặn s&acirc;u nhất thế giới - r&atilde;nh Cayman, Caribbe:&nbsp;</strong>Du kh&aacute;ch c&oacute; thể đăng k&yacute; tour t&agrave;u ngầm của RIDE để kh&aacute;m ph&aacute; r&atilde;nh Cayman - khu vực s&acirc;u nhất Caribbe. Ảnh:&nbsp;<strong><em>Stanleysubmarines.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Với 500 USD, du khách sẽ được xuống độ sâu 300 m, ngắm các loài hải quỳ, cỏ chân ngỗng và các dải san hô khổng lồ... Với 1.500 USD, bạn sẽ có cơ hội ngắm cá mập 6 mang ở độ sâu 450 m.\" src=\"http://localhost/cms/uploads/news/2015_09_03/twosixgills.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Với 500 USD, du kh&aacute;ch sẽ được xuống độ s&acirc;u 300 m, ngắm c&aacute;c lo&agrave;i hải quỳ, cỏ ch&acirc;n ngỗng v&agrave; c&aacute;c dải san h&ocirc; khổng lồ... Với 1.500 USD, bạn sẽ c&oacute; cơ hội ngắm c&aacute; mập 6 mang ở độ s&acirc;u 450 m.&nbsp;Ảnh:&nbsp;<strong><em>Stanleysubmarines.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"9. Thánh địa Mecca của nghệ thuật Hồi giáo: Bảo tàng nghệ thuật Hồi giáo, Qatar: Bộ sưu tập lớn nhất về các tác phẩm nghệ thuật đạo Hồi, tử vải dệt, bản thảo, đồ kim loại, đồ gỗ, trang sức, thủy tinh... được trưng bày ở Bảo tàng nghệ thuật Hồi giáo tại Doha, Qatar.  Ảnh: E-architect.\" src=\"http://localhost/cms/uploads/news/2015_09_03/museum_islamic_art_imp081208_1.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>9. Th&aacute;nh địa Mecca của nghệ thuật Hồi gi&aacute;o: Bảo t&agrave;ng nghệ thuật Hồi gi&aacute;o, Qatar:&nbsp;</strong>Bộ sưu tập lớn nhất về c&aacute;c t&aacute;c phẩm nghệ thuật đạo Hồi, tử vải dệt, bản thảo, đồ kim loại, đồ gỗ, trang sức, thủy tinh... được trưng b&agrave;y ở Bảo t&agrave;ng nghệ thuật Hồi gi&aacute;o tại Doha, Qatar. Ảnh:&nbsp;<strong><em>E-architect.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Đây là công trình văn hóa lớn cuối cùng của kiến trúc sư nổi danh I.M. Pei. Sau hơn 20 năm gây dựng với các hiện vật từ Tây Ban Nha, Ai Cập, Iran, Irad, Ấn Độ và Trung Á, bảo tàng cho du khách cái nhìn độc đáo về các vấn đề tôn giáo, hình học, khoa học và thư pháp.\" src=\"http://localhost/cms/uploads/news/2015_09_03/548630314th_century_mosque_lamps_from_egypt__museum_of_islamic_art_doha_qatar0.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh văn h&oacute;a lớn cuối c&ugrave;ng của kiến tr&uacute;c sư nổi danh I.M. Pei. Sau hơn 20 năm g&acirc;y dựng với c&aacute;c hiện vật từ T&acirc;y Ban Nha, Ai Cập, Iran, Iraq, Ấn Độ v&agrave; Trung &Aacute;, bảo t&agrave;ng cho du kh&aacute;ch c&aacute;i nh&igrave;n độc đ&aacute;o về c&aacute;c vấn đề t&ocirc;n gi&aacute;o, h&igrave;nh học, khoa học v&agrave; thư ph&aacute;p. Ảnh:&nbsp;<strong><em>Travelblog.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"10. Nhà hàng tuyệt nhất thế giới - Noma, Đan Mạch: Bốn lần nhận danh hiệu nhà hàng tuyệt nhất trong 6 năm qua,  nhà hàng Noma phục vụ những món ăn thuần chất mà đầy sáng tạo của ẩm thực Bắc Âu. \" src=\"http://localhost/cms/uploads/news/2015_09_03/p14swinnertonnomamaina20150109.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><strong>10. Nh&agrave; h&agrave;ng tuyệt nhất thế giới - Noma, Đan Mạch:</strong>&nbsp;Bốn lần nhận danh hiệu nh&agrave; h&agrave;ng tuyệt nhất trong 6 năm qua, nh&agrave; h&agrave;ng Noma phục vụ những m&oacute;n ăn thuần chất m&agrave; đầy s&aacute;ng tạo của ẩm thực Bắc &Acirc;u. Ảnh:&nbsp;<strong><em>Japantimes.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:rgb(240, 240, 240); border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 25px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Mỗi bữa ăn gồm 20 món, với nguyên liệu tươi ngon từ những khu rừng, cách đồng và vùng biển gần đó. Những món nổi bật ở đây là rêu tuần lộc rán với nấm, trai xào cần tây, sữa caramel và gan cá tuyết, trứng cút muối, nhím biển...\" src=\"http://localhost/cms/uploads/news/2015_09_03/150113182956restaurantnomafoodsuper169.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:660px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Mỗi bữa ăn gồm 20 m&oacute;n, với nguy&ecirc;n liệu tươi ngon từ những khu rừng, c&aacute;ch đồng v&agrave; v&ugrave;ng biển gần đ&oacute;. Những m&oacute;n nổi bật ở đ&acirc;y l&agrave; r&ecirc;u tuần lộc r&aacute;n với nấm, trai x&agrave;o cần t&acirc;y, sữa caramel v&agrave; gan c&aacute; tuyết, trứng c&uacute;t muối, nh&iacute;m biển... Ảnh:&nbsp;<strong><em>CNN.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n', '', '2015-09-03 05:16:08', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/1.jpg', 32, 1, 1, 16, '', 'du lịch, quảng bình, sơn đòng, hang lớn nhất thế giới', 'Tạp chí khoa học nổi tiếng Smithsonian đã chọn ra danh sách những điểm đến mới tuyệt vời nhất của thế kỷ này, trong đó hang Sơn Đoòng của Việt Nam được nhắc tới đầu tiên.', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(18, '1', 'Lương tối thiểu năm 2016 cao nhất 3,5 triệu đồng/tháng', 'Phương án tăng lương tối thiểu vùng năm 2016 được chốt ở 12,4%, tương đương 250.000-400.000 đồng. Như vậy, mức cao nhất là 3,5 triệu đồng một tháng, tăng 400.000 đồng so với 2015.', '<p>Phương &aacute;n tăng lương tối thiểu v&ugrave;ng năm 2016 được chốt ở 12,4%, tương đương 250.000-400.000 đồng. Như vậy, mức cao nhất l&agrave; 3,5 triệu đồng một th&aacute;ng, tăng 400.000 đồng so với 2015.</p>\r\n\r\n<p>Sau 5 tiếng đồng hồ thảo luận căng thẳng, mức tăng lương tối thiểu v&ugrave;ng năm 2016 cuối c&ugrave;ng đ&atilde; được chốt ở12,4 %, tương đương 250.000-450.000 đồng một th&aacute;ng. Mức n&agrave;y thấp hơn năm ngo&aacute;i gần 2%, d&ugrave; số tiền tăng l&ecirc;n ngang bằng với năm trước.&nbsp;Cụ thể, lương tối thiểu&nbsp;v&ugrave;ng 1 năm 2016 sẽ tăng 400.000 đồng, v&ugrave;ng 2 l&agrave; 350.000 đồng, v&ugrave;ng 3 l&agrave; 300.000 đồng v&agrave; v&ugrave;ng 4 l&agrave; 250.000 đồng. Mức điều chỉnh n&agrave;y sẽ c&oacute; hiệu lực từ ng&agrave;y 1/1/2016.&nbsp;</p>\r\n\r\n<div itemprop=\"articleBody\" style=\"background:transparent; border:0px; padding:0px\">\r\n<p>Đại diện cả 2 ph&iacute;a chủ doanh nghiệp l&agrave; Ph&ograve;ng Thương mại v&agrave; C&ocirc;ng nghiệp Việt Nam (VCCI) v&agrave; Tổng li&ecirc;n đo&agrave;n Lao động Việt Nam đều tỏ th&aacute;i độ kh&ocirc;ng thoải m&aacute;i với con số được quyết định cuối c&ugrave;ng bởi&nbsp;Thứ trưởng Bộ Lao động &ndash; Thương binh v&agrave; X&atilde; hội, Chủ tịch Hội đồng tiền lương Quốc gia, &ocirc;ng Phạm Minh Hu&acirc;n.</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:transparent; border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; color:rgb(119, 119, 119); float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 10px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:480px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Lương tối thiểu năm 2016 cao nhất 3,5 triệu đồng/tháng\" src=\"http://localhost/cms/uploads/news/2015_09_03/luong_qg.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:480px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">Sau 3 cuộc họp với những tranh c&atilde;i gay gắt, mức tăng lương tối thiểu v&ugrave;ng năm 2016 cuối c&ugrave;ng đ&atilde; được chốt, với 92% số phiếu đồng &yacute; ở 12,4%. Ảnh:&nbsp;<em><strong>Ngọc Lan.</strong></em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc;ng Ho&agrave;ng Quang Ph&ograve;ng, Ph&oacute; chủ tịch VCCI, chia sẻ, &ocirc;ng ho&agrave;n to&agrave;n kh&ocirc;ng thỏa m&atilde;n với mức tăng đến 12,4% m&agrave; Hội đồng Tiền lương quốc gia đ&atilde; chốt. Mức đề xuất của VCCI ban đầu chỉ khoảng 7%, sau đ&oacute; n&acirc;ng l&ecirc;n mức 10%. Đề xuất n&agrave;y v&ecirc;nh kh&aacute; lớn so với Tổng li&ecirc;n đo&agrave;n Lao động Việt Nam. Phương &aacute;n tăng lương tối thiểu v&ugrave;ng năm 2016 được cơ quan đại diện quyền lợi người lao động gửi Hội đồng Tiền lương quốc gia l&agrave; 16-17% so với năm 2015, tương đương 350.000-550.000 đồng một mức so với năm trước.</p>\r\n\r\n<p>C&ograve;n bộ phận kỹ thuật của Hội đồng Tiền lương quốc gia cũng đưa ra 3 phương &aacute;n điều chỉnh tiền lương, tăng b&igrave;nh qu&acirc;n 12,4%, 11,4% v&agrave; 10,7%.</p>\r\n\r\n<p>&Ocirc;ng Phạm Minh Hu&acirc;n, Chủ tịch Hội đồng tiền lương quốc gia, cho biết, hội đồng đ&atilde; họp 3 phi&ecirc;n, c&oacute; đại diện ph&iacute;a người lao động v&agrave; VCCI. Sau những tranh c&atilde;i kh&ocirc;ng t&igrave;m được tiếng n&oacute;i chung, hội đồng đ&atilde; chọn phương &aacute;n bỏ phiếu. Mức điều chỉnh lương tối thiểu với 4 v&ugrave;ng lần lượt l&agrave; 400.000 đồng, 350.000 đồng, 300.000 đồng v&agrave; 250.000 đồng. 14/15 th&agrave;nh vi&ecirc;n Hội đồng Tiền lương quốc gia bỏ phiếu cho mức đề xuất n&agrave;y để tr&igrave;nh Ch&iacute;nh phủ. Số phiếu đồng thuận với phương &aacute;n đưa ra đạt 92,8%, đ&acirc;y l&agrave; mức cao nhất trong 3 năm qua.</p>\r\n\r\n<p>Cũng theo &ocirc;ng Hu&acirc;n, mức tăng n&oacute;i tr&ecirc;n bằng năm 2015. Đ&acirc;y l&agrave; mức tăng để mục ti&ecirc;u lương tối thiểu đ&aacute;p ứng mức sống tối thiểu theo quy định của Luật Lao động đạt được. Mặt kh&aacute;c, Hội đồng Tiền lương cũng t&iacute;nh đến thực tế của doanh nghiệp trong việc hội nhập v&agrave; ph&aacute;t triển. Năm 2016, ngo&agrave;i điều chỉnh mức lương tối thiểu, doanh nghiệp phải đ&oacute;ng bảo hiểm theo Luật Bảo hiểm x&atilde; hội. Do đ&oacute;, ngo&agrave;i sản xuất kinh doanh hợp l&yacute;, c&aacute;c đơn vị n&agrave;y cần phải bố tr&iacute; tiết kiệm c&aacute;c chi ph&iacute;, để d&agrave;nh nguồn điều chỉnh lương tối thiểu v&agrave; đ&oacute;ng bảo hiểm cho người lao động.</p>\r\n\r\n<p>&ldquo;V&agrave; ch&uacute;ng t&ocirc;i mong muốn VCCI tập hợp &yacute; kiến của c&aacute;c doanh nghiệp trong việc đ&oacute;ng bảo hiểm, c&oacute; t&aacute;c động như thế n&agrave;o để b&aacute;o c&aacute;c c&aacute;c cơ quan li&ecirc;n quan điều chỉnh&rdquo;, &ocirc;ng Hu&acirc;n cho hay.</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"picture\" style=\"background:transparent; border-collapse:collapse; border-spacing:0px; border:0px; box-sizing:border-box; clear:both; color:rgb(119, 119, 119); float:left; font-family:arial,helvetica,sans-serif; font-size:12px; line-height:20px; margin:0px 0px 10px; outline:0px; padding:0px; position:relative; text-rendering:geometricPrecision; vertical-align:baseline; width:480px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><img alt=\"Lương tối thiểu năm 2016 cao nhất 3,5 triệu đồng/tháng\" src=\"http://localhost/cms/uploads/news/2015_09_03/luong_123.jpg\" style=\"background:transparent; border:0px; box-sizing:border-box; cursor:pointer; height:auto; margin:0px 0px -3px; max-width:100%; outline:0px; padding:0px; text-rendering:geometricPrecision; vertical-align:baseline; width:480px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\">&nbsp;Mức tăng lương tối thiểu v&ugrave;ng năm 2016 so với năm 2015.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc;ng Mai Đức Ch&iacute;nh, Ph&oacute; chủ tịch Tổng li&ecirc;n đo&agrave;n Lao động Việt Nam, cho rằng, b&aacute;o c&aacute;o của Ch&iacute;nh phủ cho thấy c&aacute;c chỉ số đều c&oacute; sự tăng trưởng tốt. V&igrave; thế, sau những trao đổi nh&acirc;n nhượng, Tổng li&ecirc;n đo&agrave;n Lao động đ&atilde; đưa ra mức tăng ngang bằng so với mọi năm, ch&ecirc;nh lệch giữa c&aacute;c mức l&agrave; 50.000 đồng. Người lao động sẽ chia sẻ c&ugrave;ng kh&oacute; khăn với doanh nghiệp. &Ocirc;ng cũng cho rằng, mức tăng n&agrave;y kh&ocirc;ng t&aacute;c động qu&aacute; nhiều đến doanh nghiệp.</p>\r\n\r\n<p>Song &ocirc;ng Ho&agrave;ng Quang Ph&ograve;ng lại n&ecirc;u quan điểm, doanh nghiệp c&ograve;n rất nhiều kh&oacute; khăn, mức tăng n&agrave;y thực tế đ&atilde; vượt qu&aacute; khả năng chi trả của doanh nghiệp. Tuy nhi&ecirc;n, doanh nghiệp sẽ phấn đấu để chi trả lương, thưởng v&agrave; c&aacute;c chế độ, ph&uacute;c lợi tốt cho người lao động, mặc d&ugrave; n&oacute; l&agrave; nhiệm vụ cực kỳ kh&oacute; khăn.&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2015-09-03 05:22:37', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/luong_qg.jpg', 8, 0, 1, 18, '', 'lương tối thiểu, tăng lương, tài chính, lương cơ bản', 'Phương án tăng lương tối thiểu vùng năm 2016 được chốt ở 12,4%, tương đương 250.000-400.000 đồng. Như vậy, mức cao nhất là 3,5 triệu đồng một tháng, tăng 400.000 đồng so với 2015.', 1),
(19, '2,1', 'Nga bán cho Trung Quốc sợi dây thừng để treo Hải quân Mỹ', 'Việc mua vũ khí của Nga đã giúp cho Trung Quốc gia tăng năng lực để cạnh tranh với Hải quân Mỹ.', '<p>Nhận định tr&ecirc;n được đưa ra trong b&aacute;o c&aacute;o mang tựa đề &quot;Sự đ&oacute;ng g&oacute;p của Nga v&agrave;o cuộc đấu tranh của Trung Quốc với mục ti&ecirc;u: Nu&ocirc;i Rồng&quot; của t&aacute;c giả Paul Schwartz tại Trung t&acirc;m Nghi&ecirc;n cứu Chiến lược v&agrave; Quốc tế ở Washington.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/nguyenhuong/2015_09_04/tautrung_quoc_giaoducnetvn1.jpg\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"Hải quân Trung Quốc. Hình minh họa.\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/tautrung_quoc_giaoducnetvn1.jpg\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center !important; vertical-align:baseline\">Hải qu&acirc;n Trung Quốc. H&igrave;nh minh họa.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tờ Tầm nh&igrave;n của Nga ng&agrave;y 2/9 dẫn b&aacute;o c&aacute;o tr&ecirc;n cho biết, sự cải thiện sức mạnh đ&aacute;ng ch&uacute; &yacute; nhất m&agrave; qu&acirc;n đội Trung Quốc đ&atilde; đạt được l&agrave; sự gia tăng sức mạnh của lực lượng t&agrave;u chiến l&ecirc;n mức c&oacute; thể cạnh tranh với Hải qu&acirc;n Mỹ, mở rộng c&aacute;c căn cứ cho t&agrave;u chiến (kể cả thủ đoạn bất hợp ph&aacute;p bằng c&aacute;ch x&acirc;y dựng c&aacute;c đảo nh&acirc;n tạo tr&aacute;i ph&eacute;p ở Biển Đ&ocirc;ng - PV) đ&atilde; gi&uacute;p Hải qu&acirc;n Trung Quốc c&oacute; thể thực hiện nhiệm vụ ở xa bờ biển.<br />\r\n<br />\r\nTrung Quốc đ&atilde; đạt được những th&agrave;nh tựu tr&ecirc;n chủ yếu l&agrave; nhờ việc mua lại tại c&aacute;c t&agrave;u v&agrave; c&ocirc;ng nghệ của Nga&nbsp;sau khi kết th&uacute;c Chiến tranh Lạnh, b&aacute;o c&aacute;o nhấn mạnh.<br />\r\n&nbsp;<br />\r\nC&ocirc;ng nghệ qu&acirc;n sự trong lĩnh vực hải qu&acirc;n của Trung Quốc đ&atilde; đạt được một bước nhảy vọt. Ngo&agrave;i ra, việc Nga b&aacute;n th&ecirc;m vũ kh&iacute; v&agrave; c&ocirc;ng nghệ cho Trung Quốc &quot;sẽ l&agrave;m phức tạp nhiệm vụ của phi c&ocirc;ng Mỹ&quot; v&agrave; sẽ dẫn đến những kh&oacute; khăn như người Mỹ đ&atilde; phải đối mặt trong Chiến tranh Việt Nam.<br />\r\n<br />\r\nTuy nhi&ecirc;n, c&aacute;c chuy&ecirc;n gia Mỹ n&oacute;i rằng mặc d&ugrave; Trung Quốc đ&atilde; đổ rất nhiều nỗ lực để trang bị cho lực lượng hải qu&acirc;n, họ vẫn sẽ cần 10 đến 20 năm nữa mới đạt được tầm c&oacute; thể đối đầu với lực lượng Mỹ.<br />\r\n<br />\r\nMột th&agrave;nh vi&ecirc;n cao cấp tại Trung t&acirc;m Thomas Karako gần đ&acirc;y cũng đưa ra &yacute; kiến cho rằng: &quot;Nga đ&atilde; b&aacute;n cho Trung Quốc d&acirc;y thừng để treo Hải qu&acirc;n Mỹ&quot; khi m&ocirc; tả về quan hệ hợp t&aacute;c qu&acirc;n sự giữa Moscow v&agrave; Bắc Kinh.<br />\r\n<br />\r\nTheo USNI News, từ năm 1999-2014, doanh thu từ việc b&aacute;n vũ kh&iacute; của Nga sang Trung Quốc l&ecirc;n tới 32,1 tỷ USD. Trong số n&agrave;y, theo c&aacute;c chuy&ecirc;n gia Mỹ, c&oacute; thể bao gồm c&aacute;c hệ thống S-400 &quot;Triumph&quot;, chiến đấu cơ Su-35 v&agrave; t&agrave;u ngầm của dự &aacute;n 677 &quot;Lada&quot;.<br />\r\n<br />\r\nB&aacute;o c&aacute;o kết luận rằng: &quot;Triển vọng tăng doanh số vũ kh&iacute; của Nga sang Trung Quốc hiện lớn hơn so với nhiều năm trước v&agrave; kh&ocirc;ng dừng lại trong lĩnh vực h&agrave;ng hải&quot;.<br />\r\n<br />\r\nTuy nhi&ecirc;n, tờ Tầm nh&igrave;n cũng dẫn lời Gi&aacute;m đốc Trung t&acirc;m Chiến lược v&agrave; Nghi&ecirc;n cứu Quốc tế Nga v&agrave; &Aacute;-&Acirc;u, Jeffrey Mankoff cho biết, Nga cũng tham gia v&agrave;o việc cung cấp c&aacute;c thiết bị qu&acirc;n sự hiện đại cho Việt Nam v&agrave; Ấn Độ để c&acirc;n bằng với Trung Quốc./.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2015-09-04 09:53:28', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/tautrung_quoc_giaoducnetvn1.jpg', 27, 0, 1, 19, '', 'Nga, trung quốc, mỹ, hải quân, quân sự, tàu chiến', 'Việc mua vũ khí của Nga đã giúp cho Trung Quốc gia tăng năng lực để cạnh tranh với Hải quân Mỹ.', 1),
(20, '5,2', 'Những địa điểm \"không thể không đến\" khi du lịch Hàn Quốc', 'Hàn Quốc là một trong những quốc gia thu hút du khách bậc nhất hiện nay tại khu vực châu Á.', '<p>N&oacute;i đến H&agrave;n Quốc, du kh&aacute;ch thường nghĩ đến một đất nước ph&aacute;t triển với mật độ tập trung d&acirc;n cư cao tại c&aacute;c đ&ocirc; thị. Tuy nhi&ecirc;n, đến H&agrave;n Quốc, bạn sẽ c&oacute; cảm gi&aacute;c đ&acirc;y c&ograve;n l&agrave; một miền đất xinh đẹp v&agrave; l&atilde;ng mạn.</p>\r\n\r\n<p>Trong b&agrave;i viết n&agrave;y t&ocirc;i chỉ mong đưa ra th&ecirc;m v&agrave;i cảm nhận đặc biệt về xứ sở Kim chi để nếu ai đ&oacute; c&oacute; dịp đến đất nước n&agrave;y v&agrave; nếu c&oacute; cơ hội, xin h&atilde;y một lần trải nghiệm với những điểm đến sau đ&acirc;y:</p>\r\n\r\n<p><strong>1. Lầu B&aacute;t gi&aacute;c v&agrave; Qu&aacute;n &ldquo;Walking on the Cloud&rdquo;</strong></p>\r\n\r\n<p>Chỉ c&oacute; thể d&ugrave;ng một từ l&agrave; &ldquo;cực kỳ l&atilde;ng mạn&rdquo; khi n&oacute;i về địa điểm n&agrave;y. Dịch theo tiếng H&agrave;n th&igrave; qu&aacute;n gọi l&agrave; &ldquo;Lầu B&aacute;t gi&aacute;c&rdquo;.</p>\r\n\r\n<p>Nằm ở một đỉnh n&uacute;i cao ngay trung t&acirc;m thủ đ&ocirc; Seoul. Để tiếp cận với qu&aacute;n, bạn phải đi qua con đường l&ecirc;n trời &ldquo;Sky way&rdquo;. Nhiều thập ni&ecirc;n trước đ&acirc;y, khi &ocirc; t&ocirc; chưa phổ biến th&igrave; việc hẹn h&ograve; tr&ecirc;n &ldquo;Qu&aacute;n m&acirc;y&rdquo; trở th&agrave;nh điều v&ocirc; c&ugrave;ng tự h&agrave;o của c&ocirc; n&agrave;ng xứ sở Kim Chi, bởi lẽ ch&agrave;ng trai của họ phải c&oacute; &ocirc; t&ocirc; v&igrave; kh&ocirc;ng c&oacute; phương tiện c&ocirc;ng cộng n&agrave;o l&ecirc;n đỉnh n&uacute;i n&agrave;y.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/quynhtien/2015_09_04/cloud_bar.jpg\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"Đứng trên Quán Walking on the Cloud bạn có thể chiêm ngưỡng toàn cảnh Seoul một cách lãng mạn nhất. Ảnh: CNN Travel.\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/cloud_bar.jpg\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center !important; vertical-align:baseline\">Đứng tr&ecirc;n Qu&aacute;n Walking on the Cloud bạn c&oacute; thể chi&ecirc;m ngưỡng to&agrave;n cảnh Seoul một c&aacute;ch l&atilde;ng mạn nhất. Ảnh: CNN Travel.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đứng tr&ecirc;n Qu&aacute;n Walking on the Cloud bạn c&oacute; thể chi&ecirc;m ngưỡng to&agrave;n cảnh Seoul một c&aacute;ch l&atilde;ng mạn nhất. Tại đ&acirc;y c&oacute; qu&aacute;n caf&eacute; với tầm nh&igrave;n c&oacute; một kh&ocirc;ng hai, c&oacute; hai nh&agrave; h&agrave;ng H&agrave;n Quốc v&agrave; nh&agrave; h&agrave;ng &Acirc;u phục vụ những m&oacute;n ăn rất hấp dẫn.</p>\r\n\r\n<p>Nếu đứng tr&ecirc;n &ldquo;Qu&aacute;n M&acirc;y&rdquo; m&agrave; ngắm Seoul &nbsp;trong ng&agrave;y tuyết rơi v&agrave; nh&acirc;m nhi cốc tr&agrave; n&oacute;ng th&igrave; kh&ocirc;ng c&ograve;n g&igrave; tuyệt vời hơn&hellip;!.</p>\r\n\r\n<p><strong>2. Đến Boryeong v&agrave; đi bộ tr&ecirc;n biển cạn&nbsp;</strong></p>\r\n\r\n<p>Nhắc đến th&agrave;nh phố Boryeong thuộc tỉnh Nam Chungcheong người ta thường nghĩ đến Lễ hội tắm b&ugrave;n Boryeong Mud Festival lớn nhất thế giới, thu h&uacute;t nhiều triệu du kh&aacute;ch mỗi m&ugrave;a.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, ở Boryeong c&ograve;n c&oacute; một địa điểm m&agrave; bạn n&ecirc;n trải nghiệm đ&oacute; l&agrave; Con đường thần b&iacute; tr&ecirc;n b&atilde;i biển Muchangpo.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/quynhtien/2015_09_04/bienhan_quoc.jpg\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"Vào dịp đầu tháng 8 hàng năm, biển Muchan gpoxuất hiện hiện tượng thủy triều rút mạnh, mỗi lần kéo dài 3 – 4 giờ. Nước rút để lộ con đường dài 1,5km từ bờ đến đảo Seokdae (Seokdaedo)\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/bienhan_quoc.jpg\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center !important; vertical-align:baseline\">V&agrave;o dịp đầu th&aacute;ng 8 h&agrave;ng năm, biển Muchan gpoxuất hiện hiện tượng thủy triều r&uacute;t mạnh, mỗi lần k&eacute;o d&agrave;i 3 &ndash; 4 giờ. Nước r&uacute;t để lộ con đường d&agrave;i 1,5km từ bờ đến đảo Seokdae (Seokdaedo)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B&atilde;i biển Muchangpo l&agrave; một trong những b&atilde;i biển đẹp của khu vực ph&iacute;a Nam với những rặng th&ocirc;ng xanh. Song đặc biệt hơn l&agrave; v&agrave;o dịp đầu th&aacute;ng 8 h&agrave;ng năm, tại đ&acirc;y xuất hiện hiện tượng thủy triều r&uacute;t mạnh, mỗi lần k&eacute;o d&agrave;i 3 &ndash; 4 giờ. Nước r&uacute;t để lộ con đường d&agrave;i 1,5km từ bờ đến đảo Seokdae (Seokdaedo).</p>\r\n\r\n<p>Hiện tượng triều r&uacute;t mạnh như vậy chỉ k&eacute;o d&agrave;i trong v&agrave;i ng&agrave;y đầu th&aacute;ng 8. V&agrave;o những ng&agrave;y n&agrave;y, đi dạo tr&ecirc;n b&atilde;i biển cạn m&ecirc;nh mang tranh thủ bắt c&aacute;, bắt s&ograve; v&agrave; bạch tuộc v&agrave; tận hưởng kh&ocirc;ng kh&iacute; lễ hội chắc chắn sẽ l&agrave; một trải nghiệm kh&oacute; qu&ecirc;n trong m&ugrave;a H&egrave;!</p>\r\n\r\n<p><strong>3. Đến đảo Nami nghe nhạc v&agrave; ngủ trong Camping-car</strong></p>\r\n\r\n<p>Sau bộ phim &ldquo;Bản t&igrave;nh ca m&ugrave;a đ&ocirc;ng&rdquo;, đảo Nami xinh đẹp trở n&ecirc;n nổi tiếng với rất nhiều du kh&aacute;ch nước ngo&agrave;i. Đ&acirc;y được lựa chọn l&agrave; một trong số c&aacute;c địa điểm du lịch kh&ocirc;ng thể thiếu trong h&agrave;nh tr&igrave;nh du lịch H&agrave;n Quốc.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/quynhtien/2015_09_04/koraenamiIsland.jpg\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"Đảo Nami được lựa chọn là một trong số các địa điểm du lịch không thể thiếu trong hành trình du lịch Hàn Quốc.\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/koraenamiisland.jpg\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center !important; vertical-align:baseline\">Đảo Nami được lựa chọn l&agrave; một trong số c&aacute;c địa điểm du lịch kh&ocirc;ng thể thiếu trong h&agrave;nh tr&igrave;nh du lịch H&agrave;n Quốc.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đảo Nami kh&ocirc;ng chỉ nổi tiếng với cảnh quan thi&ecirc;n nhi&ecirc;n tươi đẹp, thơ mộng m&agrave; ở đ&acirc;y trở th&agrave;nh địa danh của c&aacute;c lễ hội, trong đ&oacute; nổi tiếng l&agrave; Festival &acirc;m nhạc Jazz quốc tế.</p>\r\n\r\n<p>Đến đ&acirc;y đ&uacute;ng dịp Festival &acirc;m nhạc, đặt chỗ ngủ kh&ocirc;ng phải trong kh&aacute;ch sạn m&agrave; trong Camping-Car l&agrave; trải nghiệm chắc chắn bạn chưa từng c&oacute; khi ở Việt Nam. Xin lưu &yacute; rằng số lượng Camping-Car rất giới hạn n&ecirc;n bạn cần c&oacute; kế hoạch v&agrave; đặt chỗ trước.</p>\r\n\r\n<p><strong>4. Đ&igrave;nh Bangwhasuryujeong ở th&agrave;nh cổ Hwaseong, Suwon&nbsp;</strong><br />\r\n&nbsp;<br />\r\nĐ&igrave;nh Bangwha dịch theo tiếng H&aacute;n l&agrave; Phỏng Hoa T&ugrave;y Liễu Đ&igrave;nh, l&agrave; một trong những đ&igrave;nh tứ gi&aacute;c thuộc quần thể th&agrave;nh cổ Hwaseong.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/quynhtien/2015_09_04/1hanquoc.png\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/1hanquoc.png\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Xung quanh đ&igrave;nh c&oacute; ao vịt, rặng liễu v&agrave; hoa. Đến đ&acirc;y, bạn được ngắm quang cảnh th&agrave;nh cổ của H&agrave;n Quốc. Điều đ&aacute;ng n&oacute;i l&agrave; khu di t&iacute;ch n&agrave;y được bảo tồn rất tốt với những ch&ograve;i canh, g&aacute;c chu&ocirc;ng..v.v</p>\r\n\r\n<p>Trong thời Choson, đ&igrave;nh Bangwha l&agrave; nơi vua Jungjo thường biểu diễn kỹ thuật bắn cung; ng&agrave;y nay nơi n&agrave;y được d&ugrave;ng l&agrave;m nơi biểu diễn thi ca truyền thống</p>\r\n\r\n<p><strong>5. Khu vườn Y&ecirc;n Tĩnh&nbsp;</strong><br />\r\n&nbsp;<br />\r\nThe Garden of Morning Calm l&agrave; khu vườn ươm được thiết kế tuyệt đẹp v&agrave; h&agrave;i h&ograve;a ở Gapyeong, do một chuy&ecirc;n gia về nghệ thuật l&agrave;m vườn quản l&yacute;. Khu vườn c&oacute; 5.000 lo&agrave;i thực vật được quy hoạch theo hơn 20 chủ đề.</p>\r\n\r\n<table class=\"picture\" style=\"background:rgb(233, 239, 243); border-collapse:collapse; border-spacing:0px; border:1px solid rgb(238, 238, 238); box-sizing:border-box; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:14.0799999237061px; line-height:22.5279998779297px; margin-bottom:10px !important; margin-left:auto; margin-right:auto; margin-top:0px; outline:0px; padding:1px; vertical-align:baseline; width:1px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:baseline\"><a class=\"fancybox\" href=\"http://img.giaoduc.net.vn/w500/Uploaded/quynhtien/2015_09_04/1hanquoc1.png\" rel=\"gallery\" style=\"border: 0px; outline: 0px; font-size: 14.0799999237061px; vertical-align: baseline; margin: 0px; padding: 0px; box-sizing: border-box; text-decoration: none; color: rgb(19, 103, 145); background: transparent;\" title=\"\"><img alt=\"\" src=\"http://localhost/cms/uploads/news/2015_09_04/1hanquoc1.png\" style=\"background:transparent; border-style:initial; border-width:0px; box-sizing:border-box; font-size:14.0799999237061px; margin:0px; max-width:500px; outline:0px; padding:0px; vertical-align:middle\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Rời khỏi đ&ocirc; thị đ&ocirc;ng nghẹt xe hơi, tho&aacute;t khỏi đường t&agrave;u điện ngầm nườm nợp người, thả m&igrave;nh trong thung lũng &ldquo;Y&ecirc;n tĩnh&rdquo; bạn mới cảm nhận được sự hoan lạc ở nơi đ&acirc;y. Thiết kế của khu vườn cực kỳ ho&agrave;n hảo, từng g&oacute;c, từng g&oacute;c đều c&oacute; thể l&ecirc;n ảnh như một bức tranh. Khung cảnh cực kỳ thanh sạch v&agrave; đẹp đẽ. Với t&ocirc;i, chỉ khi đến đ&acirc;y t&ocirc;i mới cảm nhận hết &yacute; nghĩa của ca từ trong ca kh&uacute;c &ldquo;Thi&ecirc;n thai&rdquo;.</p>\r\n\r\n<p>Tại Khu vườn y&ecirc;n tĩnh c&ograve;n c&oacute; c&aacute;c buổi tr&igrave;nh diễn &aacute;nh s&aacute;ng trang hoảng bởi 6 triệu b&oacute;ng đ&egrave;n LED. V&agrave;o c&aacute;c ng&agrave;y c&oacute; tr&igrave;nh diễn &aacute;nh s&aacute;ng, vườn mở cửa từ 9:00 đến 21:00 trong tuần v&agrave; 9:00 đến 22:00 cuối tuần.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2015-09-04 10:11:29', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/bienhan_quoc.jpg', 4, 0, 1, 20, '', 'hàn quốc, du lịch hàn quốc, du lịch châu á', 'Hàn Quốc là một trong những quốc gia thu hút du khách bậc nhất hiện nay tại khu vực châu Á.', 1),
(21, '5,2', 'Cặp đôi chia sẻ bí quyết đi Maldives, ở resort 4 sao với chi phí chưa đến... 20 triệu', 'Thậm chí anh chàng này còn khẳng định: \"Đến Maldives hoàn toàn có thể dùng với số tiền ít hơn 20 triệu\".', '<div>\r\n<h2>Thậm ch&iacute; anh ch&agrave;ng n&agrave;y c&ograve;n khẳng định: &quot;Đến Maldives ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng với số tiền &iacute;t hơn 20 triệu&quot;.</h2>\r\n</div>\r\n\r\n<div>\r\n<div>Suốt ng&agrave;y h&ocirc;m nay, cư d&acirc;n mạng h&agrave;o hứng like v&agrave; share một album ghi lại h&agrave;nh tr&igrave;nh v&agrave; kinh nghiệm của một anh ch&agrave;ng trong chuyến đi Maldives của m&igrave;nh v&agrave; bạn g&aacute;i. Theo những g&igrave; anh ch&agrave;ng n&agrave;y chia sẻ, t&iacute;nh đến thời điểm hiện tại, cả anh lẫn bạn g&aacute;i m&igrave;nh mới chỉ ti&ecirc;u tốn chưa đến 20 triệu/người cho chuyến đi 4 ng&agrave;y ở đảo quốc thi&ecirc;n đường n&agrave;y. Tức l&agrave; ho&agrave;n to&agrave;n tr&aacute;i ngược với những g&igrave; người ta vẫn nghĩ về du lịch Maldives, thậm ch&iacute;, cặp đ&ocirc;i n&agrave;y c&ograve;n kh&ocirc;ng phải &quot;thắt lưng buộc bụng&quot; trong chuyến đi n&agrave;y.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\nLi&ecirc;n lạc với Ho&agrave;ng Anh - hiện đang sinh sống tại TpHCM - anh ch&agrave;ng &quot;th&uacute; nhận&quot; rằng m&igrave;nh cũng từng &quot;lầm tưởng&quot; l&agrave; đến thi&ecirc;n đường Maldives l&agrave; phải tốn rất rất nhiều tiền. Tuy nhi&ecirc;n, ngay khi được đặt ch&acirc;n đến Maldives, cũng như trải qua 4 ng&agrave;y nghỉ dưỡng ở thi&ecirc;n đường n&agrave;y th&igrave; Ho&agrave;ng Anh mới c&oacute; thể khẳng định một điều:&nbsp;<em>&quot;Với kh&ocirc;ng qu&aacute; 20 triệu, bạn vẫn ho&agrave;n to&agrave;n c&oacute; thể thực hiện một chuyến du lịch đến Maldives trong v&ograve;ng 4 ng&agrave;y một c&aacute;ch si&ecirc;u thoải m&aacute;i&quot;.&nbsp;</em>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Bằng chứng l&agrave; đến nay, Ho&agrave;ng Anh chỉ chi khoảng gần 17 triệu/người đ&atilde; bao gồm: v&eacute; m&aacute;y bay khứ hồi, kh&aacute;ch sạn 4 sao, buffet 3 bữa/ng&agrave;y, vui chơi, c&acirc;u c&aacute;, lặn biển,... v&agrave; được ở tại Singapore 2 ng&agrave;y để kh&aacute;m ph&aacute;. Theo đ&uacute;ng như lời Ho&agrave;ng Anh mi&ecirc;u tả th&igrave;:&nbsp;<em>&quot;Số tiền &iacute;t, nhưng m&igrave;nh vẫn c&oacute; thể vui chơi, ăn uống tẹt ga, c&oacute; chỗ ăn, chỗ ngủ thoải m&aacute;i&quot;.</em>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<div>\r\n<div id=\"btn-share-img-1\"><img alt=\"IMG_3052-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3052-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div>Ch&uacute;ng t&ocirc;i xin tr&iacute;ch đăng to&agrave;n bộ &quot;b&iacute; k&iacute;p&quot; chuyến đi Maldive &quot;ngon - bổ - rẻ&quot; của Ho&agrave;ng Anh v&agrave; bạn g&aacute;i:</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<div>&quot;Chỉ dưới 20 triệu m&igrave;nh đ&atilde; th&agrave;nh c&ocirc;ng thực hiện 1 chuyến đi Maldives 4 ng&agrave;y, nghĩ dưỡng ở resort 4 sao v&agrave; bao gồm ăn uống v&agrave; tận hưởng đầy đủ c&aacute;c tr&ograve; chơi như c&acirc;u c&aacute; đ&oacute;n ho&agrave;ng h&ocirc;n, lặn biển ngắm san h&ocirc; v&agrave; c&aacute; mập... Ai n&oacute;i đi Maldives dưới 20 triệu l&agrave; kh&ocirc;ng thể ở resort nghỉ dưỡng? L&agrave; phải ngủ bụi ở kh&aacute;ch sạn? Sai hết rồi!</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>H&ocirc;m nay m&igrave;nh l&agrave;m được th&igrave; c&aacute;c bạn cũng sẽ l&agrave;m được!</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>1. C&aacute;c phương tiện di chuyển</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>- T&igrave;m v&eacute; qua c&aacute;c website chuy&ecirc;n săn v&eacute; rẻ.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>- H&atilde;ng h&agrave;ng kh&ocirc;ng: H&atilde;y chọn Tiger Airways v&igrave; như thế bạn sẽ c&oacute; th&ecirc;m 2 ng&agrave;y vui chơi ở Singapore ở dạng transit. Chỉ tốn th&ecirc;m khoảng 1-2 triệu. Lưu &yacute; nếu bạn muốn đi Singapore h&atilde;y chọn h&agrave;nh tr&igrave;nh bay transit 29 tiếng, thế l&agrave; được đi chơi tẹt ga.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ở phần n&agrave;y m&igrave;nh tốn ‪&lrm;tổng‬ 14 triệu 500 ngh&igrave;n đồng tiền v&eacute; cho 2 người.</div>\r\n\r\n<div>‪</div>\r\n\r\n<div><strong>2. Vấn đề hải quan</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>- Transit ở Singapore: Ai bảo Singapore kh&oacute; v&agrave;o l&agrave; xạo đ&oacute;! Hải quan chỉ nh&igrave;n mặt cười v&agrave; đ&oacute;ng dấu cạch cạch, c&oacute; chăng l&agrave; hỏi qua loa v&agrave;i c&acirc;u về h&agrave;nh tr&igrave;nh. Vậy n&ecirc;n mấy bạn g&aacute;i cũng kh&ocirc;ng cần phải sợ.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style=\"text-align:center\">\r\n<div>\r\n<div id=\"btn-share-img-2\"><img alt=\"IMG_3044-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3044-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-3\"><img alt=\"IMG_3047-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3047-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n\r\n<div><em>Khung cảnh tuyệt hảo của Maldives giờ đ&acirc;y đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; tầm với của Ho&agrave;ng Anh nữa.</em></div>\r\n</div>\r\n\r\n<div>- Nhập cảnh Maldives: Theo đ&uacute;ng thủ tục c&aacute;c bạn phải chứng minh đ&atilde; đặt ph&ograve;ng kh&aacute;ch sạn, v&eacute; m&aacute;y bay 2 chiều v&agrave; thẻ t&iacute;n dụng. N&oacute; ghi vậy để h&ugrave; bạn đ&oacute;, m&igrave;nh đi qua chỉ cười l&agrave; đi qua, kh&ocirc;ng phải đưa họ xem bất cứ thứ g&igrave; v&agrave; tất cả c&aacute;c du kh&aacute;ch kh&aacute;c đều vậy. N&ecirc;n bạn kh&ocirc;ng phải lo g&igrave; đ&acirc;u, ‪mẹo‬ l&agrave; c&aacute;c bạn đi bụi c&oacute; thể đặt &quot;đại&quot; ph&ograve;ng kh&aacute;ch sạn rồi cancel lu&ocirc;n. Thế l&agrave; c&oacute; booking kh&aacute;ch sạn, c&ograve;n lại c&aacute;c bạn muốn đi đ&acirc;u, ở chỗ n&agrave;o l&agrave; tuỳ &yacute; th&iacute;ch.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>‪3. Kh&aacute;ch‬ sạn, Resort</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Kinh nghiệm qu&yacute; b&aacute;u l&agrave; x&agrave;i Agoda, Booking.com, Trip advisor. Sau khi lựa được kh&aacute;ch sạn ưng &yacute;, bạn h&atilde;y so s&aacute;nh gi&aacute; của cả 3 c&aacute;i kh&aacute;ch sạn (đọc kỹ để tr&aacute;nh c&aacute;c trường hợp gi&aacute; rẻ hơn nhưng chưa bao gồm ph&iacute;, thuế n&agrave;y nọ). H&atilde;y d&agrave;nh 1 ch&uacute;t thời gian mỗi ng&agrave;y để kiểm tra c&aacute;c deal nh&eacute;. Biết đ&acirc;u sẽ c&oacute; bất ngờ giống như m&igrave;nh.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style=\"text-align:center\">\r\n<div>\r\n<div id=\"btn-share-img-4\"><img alt=\"IMG_3048-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3048-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-5\"><img alt=\"IMG_3054-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3054-9329c.jpg\" style=\"max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-6\"><img alt=\"IMG_3065-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3065-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n\r\n<div><em>Với số tiền nhỏ nhưng cả hai vẫn dư sức c&oacute; được những trải nghiệm th&uacute; vị tại đ&acirc;y.</em></div>\r\n</div>\r\n\r\n<div>Bạn cũng n&ecirc;n lưu &yacute; rằng gi&aacute; ph&ograve;ng sẽ kh&aacute; ảo, sẽ rẻ hơn nhưng kh&ocirc;ng chắc l&agrave; được 50-60% như quảng c&aacute;o, v&igrave; nh&agrave; m&igrave;nh l&agrave;m kh&aacute;ch sạn resort n&ecirc;n biết, mấy &ocirc;ng website đ&oacute; to&agrave;n khuy&ecirc;n kh&aacute;ch sạn n&acirc;ng gi&aacute; l&ecirc;n cao rồi giảm gi&aacute;. N&ecirc;n c&acirc;n nhắc kĩ c&aacute;c lựa chọn v&iacute; dụ như ở Maldives m&igrave;nh chọn Resort Eriyadu 4 sao, đang v&agrave;o m&ugrave;a thấp điểm n&ecirc;n gi&aacute; ph&ograve;ng l&agrave; 140$/ đ&ecirc;m cho ph&ograve;ng deluxe All inclusive (bao gồm ăn buffet 3 bữa, lặn biển ngắm c&aacute; san h&ocirc;, c&aacute; mập,... được miễn ph&iacute; tham gia tour đ&aacute;nh c&aacute; ngắm ho&agrave;ng h&ocirc;n). Uống nước, ăn uống thoải m&aacute;i kh&ocirc;ng tốn tiền m&agrave; chỉ tốn th&ecirc;m khoảng 10 USD so với ph&ograve;ng chỉ bao gồm 3 bữa ăn. Dịch vụ ăn uống phải trả tiền th&ecirc;m.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>4. Ở resort Maldives c&oacute; c&aacute;c lựa chọn sau đ&acirc;y:&nbsp;</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>- ‪All‬-inclusive: bao tất cả như n&oacute;i ở tr&ecirc;n (Lưu &yacute;: đồ ăn thức uống trong ph&ograve;ng sẽ kh&ocirc;ng free, được cho 2 chai nước kho&aacute;ng v&agrave; uống thoải m&aacute;i ở quầy bar, nhưng đem về ph&ograve;ng l&agrave; t&iacute;nh tiền ri&ecirc;ng). V&igrave; mục đ&iacute;ch l&agrave; đi nghỉ dưỡng cho 2 người n&ecirc;n m&igrave;nh chọn c&aacute;i n&agrave;y, kh&ocirc;ng đi theo lối m&ograve;n của c&aacute;c b&agrave;i viết trước.</div>\r\n\r\n<div>- ‪Full‬-board: Ăn buffet 3 bữa, chơi g&igrave; uống th&ecirc;m g&igrave; t&iacute;nh ri&ecirc;ng.&nbsp;</div>\r\n\r\n<div>- &lrm;Half‬-board: Ăn s&aacute;ng v&agrave; ăn tối.</div>\r\n\r\n<div>- C&ograve;n lại l&agrave; chỉ bao ăn s&aacute;ng. Hầu như tất cả c&aacute;c resort đều cung cấp bữa s&aacute;ng cho bạn.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;M&igrave;nh ở 2 đ&ecirc;m ở đ&acirc;y chi ph&iacute; l&agrave; 280$ (chưa bao gồm 12% thuế nh&agrave; nước, v&agrave; 10% thuế dịch vụ) - đ&acirc;y l&agrave; ph&ograve;ng deluxe hạng cao cấp đang khuyến m&atilde;i. (Eriyadu Resort and Spa 4*, check ngay gi&aacute; với agoda.com).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Tổng: 370$/2 người.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style=\"text-align:center\">\r\n<div>\r\n<div id=\"btn-share-img-7\"><img alt=\"IMG_3071-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3071-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-8\"><img alt=\"IMG_3073-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_3073-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><strong>5. C&aacute;ch di chuyển tới resort</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>C&aacute;ch 1. Bạn c&oacute; thể li&ecirc;n hệ với resort qua mail để hẹn đ&oacute;n, chỉ cần cung cấp số hiệu chuyến bay (vd: TR2502) v&agrave; giờ tới. Tuỳ theo resort sẽ đ&oacute;n bạn bằng thủy phi cơ hay t&agrave;u cao tốc. Ph&iacute; lưu &yacute; l&agrave; t&iacute;nh ri&ecirc;ng, v&iacute; dụ tr&ecirc;n agoda khi bạn tới phần thanh to&aacute;n n&oacute; sẽ hiện l&ecirc;n phần ph&iacute; vận chuyển, chữ nhỏ. Đừng thấy resort gi&aacute; rẻ m&agrave; ham, n&oacute; ở xa hơn 100 c&acirc;y số bay tới mất toi 1.000$.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>C&aacute;ch 2: Bằng c&aacute;ch n&agrave;y bạn c&oacute; thể tới s&acirc;n bay v&agrave; thu&ecirc; ngay dịch vụ ở ngo&agrave;i s&acirc;n bay để tới resort, sẽ rẻ hơn nhưng h&atilde;y li&ecirc;n hệ trước với c&aacute;c h&atilde;ng dịch vụ b&ecirc;n ngo&agrave;i s&acirc;n bay để chắc chắn.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style=\"text-align:center\">\r\n<div>\r\n<div id=\"btn-share-img-9\"><img alt=\"IMG_2876-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_2876-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-10\"><img alt=\"IMG_2906-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_2906-9329c.jpg\" style=\"max-width:640px\" /></div>\r\n</div>\r\n&nbsp;\r\n\r\n<div>\r\n<div id=\"btn-share-img-11\"><img alt=\"IMG_2940-9329c\" src=\"http://localhost/cms/uploads/news/2015_09_04/img_2940-9329c.jpg\" style=\"cursor:none; max-width:640px\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div>C&aacute;ch 3. N&oacute;i chuyện với người d&acirc;n v&agrave; deal với họ (chỉ &aacute;p dụng cho resort ở gần s&acirc;n bay hoặc Male). Rẻ hơn rất nhiều nhưng tốn nhiều thời gian. C&aacute;ch n&agrave;y chỉ th&agrave;nh c&ocirc;ng khi bạn chọn sẽ ở thủ đ&ocirc; Male ng&agrave;y đầu ti&ecirc;n. Chứ tới nơi rồi kiếm kh&ocirc;ng ra th&igrave; cũng phi&ecirc;u lắm.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ở phần n&agrave;y m&igrave;nh tốn tổng: 330$/2 người.</div>\r\n\r\n<div>‪</div>\r\n\r\n<div>Hiện giờ đ&atilde; ti&ecirc;u 1.440$. Tổng l&agrave; khoảng 33.000.000 đồng cho 2 người, 1 người 16.500.000.&quot;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 10:27:06', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/img_3047-9329c.jpg', 1, 0, 1, 21, '', 'du lịch, maldives, du lịch giá rẻ, thiên đường maldives', 'Thậm chí anh chàng này còn khẳng định: \"Đến Maldives hoàn toàn có thể dùng với số tiền ít hơn 20 triệu\".', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(22, '5', 'Những trải nghiệm nhớ mãi không quên ở Hà Giang', 'Đi phiên chợ lùi ở Phố Cáo, ngồi thuyền ăn gà nướng ở Thượng Tân hay dã ngoại giữa lưng chừng núi đồi khi qua rừng thông Yên Minh là một số trải nghiệm khó quên khi đặt chân tới Hà Giang.', '<div style=\"float:left\">Đi phi&ecirc;n chợ l&ugrave;i ở Phố C&aacute;o, ngồi thuyền ăn g&agrave; nướng ở Thượng T&acirc;n hay d&atilde; ngoại giữa lưng chừng n&uacute;i đồi khi qua rừng th&ocirc;ng Y&ecirc;n Minh l&agrave; một số trải nghiệm kh&oacute; qu&ecirc;n khi đặt ch&acirc;n tới H&agrave; Giang.</div>\r\n\r\n<div id=\"left_calculator\">\r\n<div style=\"float:left\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Đi phiên chợ lùi ở Phố Cáo   Dù không nổi tiếng như chợ phiên Đồng Văn hay Bắc Hà, Lào Cai. Nhưng điều thú vị ở chợ Phố Cáo là chỉ có người địa phương nhóm hợp, hầu như hiếm thấy khách du lịch đến thăm quan. Bạn có thể hòa mình vào cuộc vui mua, bán của người dân tộc. Hay chỉ là ngồi đó nhấm nháp một chén rượu Ngô, mua ít thảo quả, hạt dẻ, ngắm đủ sắc màu qua lại trong ánh sương mờ ảo của vùng cao biên giới. Một điểm đặc biệt khác là phiên chợ này không có ngày hợp cố định mà chỉ nhóm vào ngày Tý và ngày Ngọ.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00485-jpg-5537-1441248550.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đi phi&ecirc;n chợ l&ugrave;i ở Phố C&aacute;o</strong></p>\r\n\r\n			<p>Kh&ocirc;ng nổi tiếng như chợ phi&ecirc;n Đồng Văn, H&agrave; Giang&nbsp;hay Bắc H&agrave;, L&agrave;o Cai, nhưng điều th&uacute; vị ở chợ Phố C&aacute;o l&agrave; chỉ c&oacute; người địa phương nh&oacute;m hợp, hầu như hiếm thấy kh&aacute;ch du lịch tham quan. Bạn c&oacute; thể h&ograve;a m&igrave;nh v&agrave;o cuộc vui mua, b&aacute;n của người d&acirc;n tộc. Hay đơn giản&nbsp;l&agrave; bạn&nbsp;ngồi đ&oacute; nhấm nh&aacute;p một ch&eacute;n rượu ng&ocirc;, mua &iacute;t thảo quả, hạt dẻ, ngắm đủ sắc m&agrave;u qua lại trong &aacute;nh sương mờ ảo của v&ugrave;ng cao bi&ecirc;n giới. Một điểm đặc biệt kh&aacute;c l&agrave; phi&ecirc;n chợ n&agrave;y kh&ocirc;ng họp theo thứ&nbsp;m&agrave; chỉ tập trung&nbsp;v&agrave;o ng&agrave;y T&yacute; v&agrave; Ngọ.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Đặt chân lên cột cờ Lũng Cú  Cột cờ Lũng Cú là điểm đến không thể bỏ qua của mọi du khách khi đã tới Hà Giang. Lũng Cú là vùng đất thiêng liêng của địa đầu Tổ quốc, nơi tấm lá cờ đỏ sao vàng bay phất phới trong gió. Khi đi bộ lên đỉnh cột cờ, đứng dưới lá cờ Tổ quốc, bạn sẽ cảm nhận được sự hùng dũng và niềm tự hào mang tên Việt Nam.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00613-jpg-7097-1441248550.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đặt ch&acirc;n l&ecirc;n cột cờ Lũng C&uacute;</strong></p>\r\n\r\n			<p>Cột cờ Lũng C&uacute; l&agrave; điểm đến kh&ocirc;ng thể bỏ qua của mọi du kh&aacute;ch khi tới H&agrave; Giang. Đ&acirc;y&nbsp;l&agrave; v&ugrave;ng đất thi&ecirc;ng li&ecirc;ng của địa đầu Tổ quốc, nơi tấm l&aacute; cờ đỏ sao v&agrave;ng bay phất phới trong gi&oacute;. Khi đi bộ l&ecirc;n đỉnh cột cờ, đứng dưới l&aacute; cờ Tổ quốc, bạn sẽ cảm nhận được sự h&ugrave;ng dũng v&agrave; niềm tự h&agrave;o mang t&ecirc;n Việt Nam.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Đi trên đường đèo vùng cao nguyên đá  Hà Giang còn thử thách trái tim của những người đam mê xê dịch khi chinh phục các cung đèo ngoạn mục. Nhiều con đường khúc khuỷu quanh co, sát bên là vực sâu hiểm trở, những khúc cắt ngang gần như làm cho bất cứ ai cũng cảm thấy thót tim. Trải nghiệm này là một trong những điều không thể nào quên được khi chính bạn cầm lái trên đường đi Hà Giang.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00291-jpg-3084-1441248550.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đi tr&ecirc;n đường đ&egrave;o v&ugrave;ng cao nguy&ecirc;n đ&aacute;</strong></p>\r\n\r\n			<p>H&agrave; Giang c&ograve;n thử th&aacute;ch tr&aacute;i tim của những người đam m&ecirc; x&ecirc; dịch khi chinh phục c&aacute;c cung đ&egrave;o ngoạn mục. Nhiều con đường kh&uacute;c khuỷu quanh co, s&aacute;t b&ecirc;n l&agrave; vực s&acirc;u hiểm trở, những kh&uacute;c cắt ngang gần như l&agrave;m cho bất cứ ai cũng cảm thấy th&oacute;t tim. Trải nghiệm n&agrave;y l&agrave; một trong những điều kh&ocirc;ng thể n&agrave;o qu&ecirc;n được khi ch&iacute;nh bạn cầm l&aacute;i tr&ecirc;n đường đi H&agrave; Giang.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Hóa tranh thành người dân tộc trên đèo Mã Pí Lèng  Mã Pí Lèng là một con đèo hiểm trở bậc nhất khu vực miền núi phía Bắc, nối liền giữa Đồng Văn và Mèo Bạc với tổng chiều dài khoảng 20 km. Du khách đến đây vừa được thả hồn vào quang cảnh núi rừng, vừa được ngắm nhìn dòng sông Nho Quế xanh ngắt. Trên trạm dừng chân của đèo, du khách có thể thuê những bộ trang phục của người dân tộc với giá phải chăng. Bạn cũng chớ quên chụp lại những bức hình kỷ niệm ở đây.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00746-jpg-7628-1441248551.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>H&oacute;a trang&nbsp;th&agrave;nh người d&acirc;n tộc tr&ecirc;n đ&egrave;o M&atilde; P&iacute; L&egrave;ng</strong></p>\r\n\r\n			<p>M&atilde; P&iacute; L&egrave;ng l&agrave; một con đ&egrave;o hiểm trở bậc nhất khu vực miền n&uacute;i ph&iacute;a Bắc, nối liền giữa Đồng Văn v&agrave; M&egrave;o Vạc với tổng chiều d&agrave;i khoảng 20 km. Du kh&aacute;ch đến đ&acirc;y vừa được thả hồn v&agrave;o quang cảnh n&uacute;i rừng, vừa được ngắm nh&igrave;n d&ograve;ng s&ocirc;ng Nho Quế xanh ngắt. Tr&ecirc;n trạm dừng ch&acirc;n của đ&egrave;o, du kh&aacute;ch c&oacute; thể thu&ecirc; những bộ trang phục của người d&acirc;n tộc với gi&aacute; phải chăng. Bạn cũng chớ qu&ecirc;n chụp lại những bức h&igrave;nh kỷ niệm ở đ&acirc;y.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Dã ngoại ở rừng thông Yên Minh  Đến Yên Minh, bạn dễ bắt gặp cảnh tượng của hàng nghìn cây thông tỏa bóng xanh rì rào trước gió. Ở đây, du khách có thể ghé thăm và làm điểm dã ngoại ăn trưa. Bởi cung đường từ Yên Minh đến thị trấn Đồng Văn vẫn còn xa, và thật khó tìm được hàng quán. Nên chỉ vài gói xôi, ít chả lụa hay ít lon nước ngọt cũng đủ no bụng cho tất cả mọi người. Yên Minh còn nổi tiếng với giống hồng giòn và bạn có thể mua một ít để làm bữa trưa ngon miệng hơn.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00152-jpg-3959-1441248551.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>D&atilde; ngoại ở rừng th&ocirc;ng Y&ecirc;n Minh</strong></p>\r\n\r\n			<p>Đến Y&ecirc;n Minh, bạn dễ bắt gặp cảnh tượng của h&agrave;ng ngh&igrave;n c&acirc;y th&ocirc;ng tỏa b&oacute;ng xanh r&igrave; r&agrave;o trước gi&oacute;. Ở đ&acirc;y, du kh&aacute;ch c&oacute; thể gh&eacute; thăm v&agrave; l&agrave;m điểm d&atilde; ngoại ăn trưa. Bởi cung đường từ Y&ecirc;n Minh đến thị trấn Đồng Văn vẫn c&ograve;n xa, v&agrave; thật kh&oacute; t&igrave;m được h&agrave;ng qu&aacute;n. N&ecirc;n chỉ v&agrave;i g&oacute;i x&ocirc;i, &iacute;t chả lụa hay một số&nbsp;lon nước ngọt cũng đủ no bụng cho mọi người. Y&ecirc;n Minh c&ograve;n nổi tiếng với giống hồng gi&ograve;n v&agrave; bạn c&oacute; thể mua một &iacute;t để l&agrave;m bữa trưa ngon miệng hơn.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Thăm làng dệt Lùng Tám  Lùng Tám là một làng dệt lâu đời của người Mông Hà Giang. Loại vải làm ra những tấm thổ cẩm được lấy từ sợi của cây lanh. Du khách đến đây tham quan còn được học hỏi cách làm vải thổ cẩm truyền thống. Xem các nghệ nhân tỉ mỉ dệt nên sản phẩm mới thấy hết sự gian nan và kỳ công. Tất cả các công đoạn từ trồng lanh, tách lấy vỏ lanh, dệt và nhuộm người Mông đều làm bằng tay.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00206-jpg-4759-1441248551.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thăm l&agrave;ng dệt L&ugrave;ng T&aacute;m</strong></p>\r\n\r\n			<p>L&ugrave;ng T&aacute;m l&agrave; một l&agrave;ng dệt l&acirc;u đời của người M&ocirc;ng H&agrave; Giang. Loại vải l&agrave;m ra những tấm thổ cẩm được lấy từ sợi của c&acirc;y lanh. Du kh&aacute;ch đến đ&acirc;y tham quan c&ograve;n được học hỏi c&aacute;ch l&agrave;m vải thổ cẩm truyền thống. Xem c&aacute;c nghệ nh&acirc;n tỉ mỉ dệt n&ecirc;n sản phẩm mới thấy hết sự gian nan v&agrave; kỳ c&ocirc;ng. Tất cả c&ocirc;ng đoạn từ trồng lanh, t&aacute;ch lấy vỏ, dệt v&agrave; nhuộm người M&ocirc;ng đều l&agrave;m bằng tay.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ăn các món đặc sản Đồng Văn  Đến Đồng Văn bạn nên thử các món như mèn mén, rau cải mèo xào mỡ, thịt gà đen luộc, canh đắng và say sưa vài chén rượu ngô trong tiết trời se lạnh. Bên ngoài vắng lặng, đôi lúc có tiếng người vọng lại cũng đủ làm bạn thêm yêu Đồng Văn vào một đêm tối trời nơi miền sơn cước hoang vu. Bữa ăn đêm với bạn bè giữa núi trời như thế sẽ là một kỷ niệm khó quên trong lòng bạn.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00810-jpg-4676-1441248551.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Ăn c&aacute;c m&oacute;n đặc sản Đồng Văn</strong></p>\r\n\r\n			<p>Ở cao nguy&ecirc;n đ&aacute;&nbsp;Đồng Văn bạn n&ecirc;n thử c&aacute;c m&oacute;n như m&egrave;n m&eacute;n, rau cải m&egrave;o x&agrave;o mỡ, thịt g&agrave; đen luộc, canh đắng v&agrave; say sưa v&agrave;i ch&eacute;n rượu ng&ocirc; trong tiết trời se lạnh. B&ecirc;n ngo&agrave;i vắng lặng, đ&ocirc;i l&uacute;c c&oacute; tiếng người vọng lại cũng đủ l&agrave;m bạn th&ecirc;m y&ecirc;u Đồng Văn v&agrave;o một đ&ecirc;m tối trời nơi miền sơn cước hoang vu. Bữa ăn đ&ecirc;m với bạn b&egrave; giữa n&uacute;i trời như thế sẽ l&agrave; một kỷ niệm kh&oacute; qu&ecirc;n trong l&ograve;ng bạn.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Đi thuyền ở Thượng Tân  Là một xã nhỏ thuộc huyện Bắc Mê, Thượng Tân dần trở thành nơi du lịch mới nỗi của những ai thích đi thuyền. Nơi đây có khu du lịch lòng hồ, di tích khảo cổ Yên Cường và nằm trên tuyến Bắc Mê  Phiêng Luông  Thượng Tân của hành trình du lịch sinh thái thuộc huyện Bắc Mê tổ chức. Du khách có thể thuê thuyền, thưởng thức rượu lá và nhờ người dân làm gà nướng mang lên thuyền vừa ngắm cảnh, vừa thư giản cùng bạn bè.\" src=\"http://localhost/cms/uploads/news/2015_09_04/dsc00900-jpg-6380-1441248551.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Ngồi&nbsp;thuyền ăn g&agrave; nướng&nbsp;ở Thượng T&acirc;n</strong></p>\r\n\r\n			<p>L&agrave; một x&atilde; nhỏ thuộc huyện Bắc M&ecirc;, Thượng T&acirc;n dần trở th&agrave;nh nơi du lịch mới nổi&nbsp;của những ai th&iacute;ch đi thuyền. Nơi đ&acirc;y c&oacute; khu du lịch l&ograve;ng hồ, di t&iacute;ch khảo cổ Y&ecirc;n Cường v&agrave; nằm tr&ecirc;n tuyến Bắc M&ecirc; &ndash; Phi&ecirc;ng Lu&ocirc;ng &ndash; Thượng T&acirc;n của h&agrave;nh tr&igrave;nh du lịch sinh th&aacute;i. Du kh&aacute;ch c&oacute; thể thu&ecirc; thuyền, thưởng thức rượu l&aacute; v&agrave; nhờ người d&acirc;n l&agrave;m g&agrave; nướng mang l&ecirc;n thuyền vừa ngắm cảnh, vừa thư gi&atilde;n c&ugrave;ng bạn b&egrave;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 10:50:50', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/dsc00291-jpg-3084-1441248550.jpg', 0, 0, 1, 22, '', 'du lịch hà giang, phượt, du lịch bụi', 'Đi phiên chợ lùi ở Phố Cáo, ngồi thuyền ăn gà nướng ở Thượng Tân hay dã ngoại giữa lưng chừng núi đồi khi qua rừng thông Yên Minh là một số trải nghiệm khó quên khi đặt chân tới Hà Giang.', 1),
(23, '3,1', 'Các lực lượng phô diễn sức mạnh trong lễ diễu binh', 'Lực lượng vũ trang nhân dân được dịp phô diễn sức mạnh trong buổi lễ kỷ niệm 70 năm Cách mạng tháng 8 và Quốc khánh 2/9', '<p>Lực lượng vũ trang nh&acirc;n d&acirc;n được dịp ph&ocirc; diễn sức mạnh trong buổi lễ kỷ niệm 70 năm C&aacute;ch mạng th&aacute;ng 8 v&agrave; Quốc kh&aacute;nh 2/9</p>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_04/28_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối Qu&acirc;n nhạc.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_04/12-1441164238_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối trường Sỹ quan th&ocirc;ng tin. Nh&agrave; trường c&oacute; chức năng đ&agrave;o tạo sĩ quan, c&aacute;n bộ th&ocirc;ng tin cho to&agrave;n qu&acirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_04/14-1441164282_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đại diện của Binh chủng Đặc c&ocirc;ng. Ngo&agrave;i huấn luyện, sẵn s&agrave;ng chiến đấu, c&aacute;c chiến sĩ đặc c&ocirc;ng c&ograve;n thực hiện nhiệm vụ cứu hộ, cứu nạn, nghi&ecirc;n cứu khoa học</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_04/16-1441164359_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối trường sĩ quan Lục qu&acirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2015_09_04/17-1441164367_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối Học viện Hải qu&acirc;n.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2015_09_04/19-1441164382_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối Nữ chiến sĩ cảnh s&aacute;t Đặc nhiệm.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2015_09_04/20-1441164390_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đại diện cho lực lượng Cảnh s&aacute;t cơ động, C&ocirc;ng an nh&acirc;n d&acirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2015_09_04/21-1441164398_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối sĩ quan Th&ocirc;ng tin.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2015_09_04/24-1441164424_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối nữ chiến sĩ Qu&acirc;n y.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_9\" src=\"http://localhost/cms/uploads/news/2015_09_04/25-1441164433_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khối chiến sĩ Ph&ograve;ng kh&ocirc;ng - Kh&ocirc;ng qu&acirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 10:56:01', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/16-1441164359_660x0.jpg', 0, 0, 1, 23, '', 'quốc khánh, khối quân nhạc, quân đội, duyệt binh', 'Lực lượng vũ trang nhân dân được dịp phô diễn sức mạnh trong buổi lễ kỷ niệm 70 năm Cách mạng tháng 8 và Quốc khánh 2/9', 1),
(24, '2', 'Đệ nhất phu nhân Trung Quốc nổi bật trong lễ duyệt binh', 'Đệ nhất phu nhân Bành Lệ Viện gây chú ý với chiếc váy đỏ kèm phụ kiện sang trọng, giữa rừng quan khách vận đồ đen tới dự lễ duyệt binh ở Bắc Kinh sáng qua.', '<p>Đệ nhất phu nh&acirc;n B&agrave;nh Lệ Viện g&acirc;y ch&uacute; &yacute; với chiếc v&aacute;y đỏ k&egrave;m phụ kiện sang trọng, giữa rừng quan kh&aacute;ch vận đồ đen tới dự lễ duyệt binh ở Bắc Kinh s&aacute;ng qua.</p>\r\n\r\n<div id=\"left_calculator\">\r\n<div style=\"float:left\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Đệ nhất phu nhân Bành Lệ Viên và&nbsp;Chủ tịch&nbsp;Tập Cận Bình chụp ảnh cùng vợ chồng Tổng thư ký Liên Hợp Quốc Ban Ki-moon ở Bắc Kinh hôm nay. Ảnh: Xinhua\" src=\"http://localhost/cms/uploads/news/2015_09_04/banh1-5973-1441266368.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đệ nhất phu nh&acirc;n B&agrave;nh Lệ Viện v&agrave;&nbsp;Chủ tịch&nbsp;Tập Cận B&igrave;nh chụp ảnh c&ugrave;ng vợ chồng Tổng thư k&yacute; Li&ecirc;n Hợp Quốc Ban Ki-moon ở Bắc Kinh h&ocirc;m nay. Ảnh:&nbsp;<em>Xinhua</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B&agrave; B&agrave;nh tươi cười xuất hiện cạnh chồng, Chủ tịch Tập Cận B&igrave;nh khi tiếp đ&oacute;n c&aacute;c quan chức quốc tế trước buổi lễ kỷ niệm 70 năm kết th&uacute;c Thế chiến II ở ch&acirc;u &Aacute;, tr&ecirc;n quảng trường Thi&ecirc;n An M&ocirc;n.</p>\r\n\r\n<p>B&agrave; diện chiếc v&aacute;y đỏ liền th&acirc;n tay lỡ, đeo chiếc v&ograve;ng cổ ngọc trai, chiếc v&iacute; cầm tay v&agrave; đ&ocirc;i gi&agrave;y c&ugrave;ng t&ocirc;ng trắng. M&aacute;i t&oacute;c b&uacute;i phồng c&agrave;ng ho&agrave;n thiện cho vẻ ngo&agrave;i sang trọng của b&agrave;.</p>\r\n\r\n<p>Chiếc v&aacute;y n&agrave;y cũng khiến b&agrave; nổi bật khi đứng ở h&agrave;ng đầu c&ugrave;ng &ocirc;ng Tập chụp ảnh lưu niệm tập thể. Đứng cạnh b&agrave; l&agrave; Tổng thống H&agrave;n Quốc Park Geun-hye với chiếc &aacute;o vest m&agrave;u v&agrave;ng ch&oacute;i v&agrave; chiếc quần m&agrave;u x&aacute;m tương phản.</p>\r\n\r\n<p>Theo&nbsp;<em>SCMP</em>, ngay khi h&igrave;nh ảnh của b&agrave; B&agrave;nh xuất hiện tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng, người d&ugrave;ng mạng Trung Quốc đ&atilde; hết lời ca ngợi bộ v&aacute;y thanh lịch. Nhiều người c&ograve;n hỏi chất liệu của chiếc v&aacute;y v&agrave; b&agrave;y tỏ mong muốn c&oacute; một chiếc tương tự.&nbsp;Thậm ch&iacute;, n&oacute; đ&atilde; nhanh ch&oacute;ng được b&aacute;n tr&ecirc;n Taobao, trang web mua sắm trực tuyến lớn nhất Trung Quốc.&nbsp;</p>\r\n\r\n<p>Thương hiệu nội địa Exception, nh&agrave; thiết kế của sản phẩm n&agrave;y, một lần nữa g&acirc;y được tiếng vang. T&ecirc;n tuổi của Exception chỉ được biết đến rộng r&atilde;i khi b&agrave; B&agrave;nh diện chiếc &aacute;o kho&aacute;c m&agrave;u đen v&agrave; chiếc t&uacute;i của thương hiệu n&agrave;y trong chuyến c&ocirc;ng du nước ngo&agrave;i đầu ti&ecirc;n c&ugrave;ng chồng c&aacute;ch đ&acirc;y hai năm.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"banh-8968-1441266368.jpg\" src=\"http://localhost/cms/uploads/news/2015_09_04/banh-8968-1441266368.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>B&agrave; B&agrave;nh nổi bật trong bức ảnh lưu niệm tập thể với quan kh&aacute;ch quốc tế. Ảnh:<em>Reuters&nbsp;</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Kể từ khi trở th&agrave;nh đệ nhất phu nh&acirc;n Trung Quốc, b&agrave; B&agrave;nh, 52 tuổi, được xem như một biểu tượng thời trang của phụ nữ nước n&agrave;y. Những bộ c&aacute;nh của b&agrave; lu&ocirc;n trở th&agrave;nh t&acirc;m điểm mỗi khi xuất hiện trước c&ocirc;ng ch&uacute;ng.</p>\r\n\r\n<p>B&agrave; cũng l&agrave; đệ nhất phu nh&acirc;n đầu ti&ecirc;n tiếp đ&oacute;n c&aacute;c quan kh&aacute;ch nước ngo&agrave;i tại một lễ duyệt binh của Trung Quốc. Tuy nhi&ecirc;n, b&agrave; kh&ocirc;ng theo d&otilde;i buổi lễ tại quảng trường c&ugrave;ng &ocirc;ng Tập.</p>\r\n\r\n<p>B&agrave;nh Lệ Viện vốn l&agrave; một ca sĩ nổi tiếng của qu&acirc;n đội từ l&acirc;u. B&agrave; t&iacute;ch cực tham gia v&agrave;o c&aacute;c hoạt động từ thiện v&agrave; năm 2011 được bổ nhiệm l&agrave;m đại sứ Thiện ch&iacute; về&nbsp;<span style=\"color:rgb(34, 34, 34)\">bệnh lao v&agrave; HIV/AIDS của Tổ chức Y tế Thế giới.</span></p>\r\n\r\n<p style=\"text-align:right\"><strong>Anh Ngọc</strong></p>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 11:05:23', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/banh1-5973-1441266368.jpg', 0, 0, 1, 24, '', 'bành lệ viện, đệ  nhất phu nhân, trung quốc', 'Đệ nhất phu nhân Bành Lệ Viện gây chú ý với chiếc váy đỏ kèm phụ kiện sang trọng, giữa rừng quan khách vận đồ đen tới dự lễ duyệt binh ở Bắc Kinh sáng qua.', 1),
(25, '3', '8 việc nên làm vào buổi sáng để kích thích não bộ', 'Tắm vòi hoa sen, thiền, nghe nhạc hoặc giải những câu đố vui vào buổi sáng giúp tăng cường sức mạnh cho não bộ.', '<p>Tắm v&ograve;i hoa sen, thiền, nghe nhạc hoặc giải những c&acirc;u đố vui v&agrave;o buổi s&aacute;ng gi&uacute;p tăng cường sức mạnh cho n&atilde;o bộ.</p>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_04/1-1441253182_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Tắm với v&ograve;i hoa sen sau khi ngủ dậy l&agrave; một trong những biện ph&aacute;p tốt nhất để tăng cường sức mạnh n&atilde;o bộ v&agrave;o buổi s&aacute;ng v&agrave; tăng năng suất c&ocirc;ng việc trong cả ng&agrave;y.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_04/2-1441253182_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>H&atilde;y bắt đầu ng&agrave;y mới bằng những bản nhạc tươi trẻ m&agrave; bạn th&iacute;ch. N&oacute; kh&ocirc;ng chỉ l&agrave;m loại bỏ căng thẳng m&agrave; c&ograve;n k&iacute;ch th&iacute;ch n&atilde;o bộ hoạt động tốt hơn.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_04/3-1441253182_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>H&atilde;y ngủ dậy đ&uacute;ng giờ v&agrave;o mỗi s&aacute;ng.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_04/4-1441253183_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Thưởng thức c&agrave; ph&ecirc; ở mức độ vừa phải v&agrave;o buổi s&aacute;ng.&nbsp;Theo c&aacute;c nghi&ecirc;n cứu, uống c&agrave; ph&ecirc; điều độ c&ograve;n gi&uacute;p tăng cường tr&iacute; nhớ.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2015_09_04/5-1441253183_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Bữa s&aacute;ng l&agrave;nh mạnh sẽ cung cấp năng lượng cho cơ thể, gi&uacute;p bộ n&atilde;o của bạn hoạt động t&iacute;ch cực v&agrave; tinh nhanh hơn.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2015_09_04/6-1441253184_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&ugrave;ng với bữa s&aacute;ng l&agrave;nh mạnh, bạn n&ecirc;n tập thể dục mỗi s&aacute;ng. Thiền mỗi buổi s&aacute;ng gi&uacute;p tăng cường tr&iacute; nhớ.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2015_09_04/7-1441253184_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&aacute;c c&acirc;u đố trong b&aacute;o v&agrave; tạp ch&iacute; kh&ocirc;ng chỉ l&agrave; một tr&ograve; chơi việc giải c&aacute;c c&acirc;u đố mỗi s&aacute;ng gi&uacute;p r&egrave;n luyện n&atilde;o.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2015_09_04/8-1441253185_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Một giấc ngủ tốt k&eacute;o d&agrave;i 7 tiếng sẽ l&agrave;m cho n&atilde;o bộ hoạt động mạnh mẽ. Ngủ đủ giấc lu&ocirc;n mang đến sự tươi mới cho cơ thể, cũng như t&acirc;m tr&iacute;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 11:07:23', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/1-1441253182_660x0.jpg', 0, 0, 1, 25, '', 'vòi hoa sen, tắm buổi sáng, sức khỏe, trí nhớ', 'Tắm vòi hoa sen, thiền, nghe nhạc hoặc giải những câu đố vui vào buổi sáng giúp tăng cường sức mạnh cho não bộ.', 1),
(26, '3', '4 loại nước tốt cho da và cơ thể', 'Nước dừa được coi là \"thuốc bổ da\", đặc biệt hữu ích cho da khô hay xỉn màu và ngừa nếp nhăn.', '<p>Nước dừa được coi l&agrave; &quot;thuốc bổ da&quot;, đặc biệt hữu &iacute;ch cho da kh&ocirc; hay xỉn m&agrave;u v&agrave; ngừa nếp nhăn.<img alt=\"\" class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_04/raspberries-in-water-h3zkhj-1441160858_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left\">\r\n<p>Bạn c&oacute; thể l&agrave;m cho m&igrave;nh một loại nước bổ dưỡng bằng c&aacute;ch bỏ hoa quả tươi hoặc thảo mộc v&agrave;o nước lọc. Thức uống n&agrave;y vừa th&uacute;c đẩy trao đổi chất, vừa gi&uacute;p detox cơ thể. Một số gợi &yacute; cho bạn: Cam (cung cấp vitamin C); việt quất, d&acirc;u t&acirc;y (chống oxy h&oacute;a); gừng (chống buồn n&ocirc;n v&agrave; giảm đau nhức sau khi tập luyện); bạc h&agrave; (vitamin A l&agrave;m đẹp da).</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_04/aloe-vera-clvsti-1441160861_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>L&ocirc; hội được người Ai Cập cổ đại coi l&agrave; &ldquo;c&acirc;y trường sinh&rdquo;. Từ h&agrave;ng thế kỷ nay, người ta đ&atilde; sử dụng l&ocirc; hội để chữa c&aacute;c bệnh vi&ecirc;m v&agrave; mụn. L&ocirc; hội c&ograve;n được d&ugrave;ng để trị bỏng, nhiều nghi&ecirc;n cứu chỉ ra rằng loại c&acirc;y n&agrave;y c&oacute; khả năng cải thiện bệnh ngo&agrave;i da, ngừa s&acirc;u răng v&agrave; bảo vệ gan. Nước l&ocirc; hội l&agrave; thức uống giải kh&aacute;t tuyệt vời, nhưng bạn n&ecirc;n mua thay v&igrave; tự l&agrave;m bởi qu&aacute; nhiều l&ocirc; hội c&oacute; thể dẫn đến chuột r&uacute;t.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_04/lemon-water-aessrk-1441160866_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Uống nước chanh ấm v&agrave;o buổi s&aacute;ng vừa tốt cho sức khỏe vừa l&agrave;m đẹp da. Loại nước n&agrave;y rất gi&agrave;u vitamin C, một chất chống oxy h&oacute;a tự nhi&ecirc;n gi&uacute;p da kh&ocirc;ng bị tổn thương. Nước chanh c&ograve;n chống l&atilde;o h&oacute;a da nhờ t&aacute;c dụng th&uacute;c đẩy sản sinh collagen, đồng thời hỗ trợ ti&ecirc;u h&oacute;a. Nước chanh rất an to&agrave;n, v&igrave; vậy bạn c&oacute; thể uống nhiều, chỉ cần lưu &yacute; l&agrave; d&ugrave;ng ống h&uacute;t để bảo vệ răng.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_04/coconut-water-wdwiuq-1441160872_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Nước dừa c&oacute; nhiều kali, magi&ecirc;, canxi v&agrave; &iacute;t calo hơn hầu hết loại nước &eacute;p kh&aacute;c. Nước dừa c&oacute; thể được coi l&agrave; thuốc bổ da, đặc biệt hữu &iacute;ch cho da xỉn m&agrave;u v&agrave; kh&ocirc;.&nbsp;Nhờ c&oacute; chứa cytokinin, thức uống n&agrave;y ngăn ngừa sự xuất hiện của nếp nhăn. Bạn c&ograve;n c&oacute; thể sử dụng n&oacute; để l&agrave;m sạch da. Điều tuyệt vời nhất l&agrave; nước dừa kh&ocirc;ng g&acirc;y ra t&aacute;c dụng phụ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-04 01:36:47', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/raspberries-in-water-h3zkhj-1441160858_660x0.jpg', 0, 0, 1, 26, '', 'sức khỏe, nước ép, đồ uống', 'Nước dừa được coi là \"thuốc bổ da\", đặc biệt hữu ích cho da khô hay xỉn màu và ngừa nếp nhăn.', 1),
(27, '3', '5 cách xác định tính khả thi của ý tưởng kinh doanh', 'Có rất nhiều người nghĩ ra những ý tưởng kinh doanh mới nhưng không phải tất cả chúng đều được phát triển thành các công ty thành công. Vậy làm thế nào để biết được ý tưởng của bạn thực sự có hiệu quả?', '<p><strong>C&oacute; rất nhiều người nghĩ ra những &yacute; tưởng kinh doanh mới nhưng kh&ocirc;ng phải tất cả ch&uacute;ng đều được ph&aacute;t triển th&agrave;nh c&aacute;c c&ocirc;ng ty th&agrave;nh c&ocirc;ng. Vậy l&agrave;m thế n&agrave;o để biết được &yacute; tưởng của bạn thực sự c&oacute; hiệu quả?</strong></p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; 5 c&aacute;ch x&aacute;c định t&iacute;nh khả thi của &yacute; tưởng kinh doanh do doanh nh&acirc;n Manish Bhalla - Nh&agrave; s&aacute;ng lập ki&ecirc;m CEO của C&ocirc;ng ty c&ocirc;ng nghệ FATbit Technologies chỉ ra:</p>\r\n\r\n<p><strong>Dựa v&agrave;o lợi thế</strong></p>\r\n\r\n<p>Để tr&aacute;nh mắc sai lầm, h&atilde;y x&acirc;y dựng &yacute; tưởng kinh doanh dựa tr&ecirc;n những sở th&iacute;ch v&agrave; điểm mạnh của bản th&acirc;n. Điều n&agrave;y sẽ gi&uacute;p c&ocirc;ng ty &quot;n&eacute;&quot; được những sai lầm cơ bản v&agrave; biết c&aacute;ch giải quyết rắc rối trong c&ocirc;ng việc sau n&agrave;y nhờ v&agrave;o những kỹ năng m&agrave; bạn đ&atilde; được trang bị sẵn.</p>\r\n\r\n<p>Bằng c&aacute;ch đ&oacute;, &yacute; tưởng của bạn sẽ c&oacute; lợi thế hơn hẳn so với những dự &aacute;n &quot;mới toanh&quot;.</p>\r\n\r\n<p>Bạn c&oacute; thể tự nghĩ ra &yacute; tưởng, thực hiện c&aacute;c cuộc khảo s&aacute;t thăm d&ograve; hoặc tham khảo &yacute; kiến của bạn b&egrave;. Đồng thời, n&ecirc;n thử t&iacute;nh to&aacute;n xem liệu c&ocirc;ng ty sẽ &quot;trụ&quot; được bao l&acirc;u trước khi thu về lợi nhuận. Mục ti&ecirc;u/ tầm nh&igrave;n của một doanh nh&acirc;n, đối với bạn, l&agrave; g&igrave;?</p>\r\n\r\n<p><strong>T&igrave;m hiểu thị trường cạnh tranh</strong></p>\r\n\r\n<p>Nghi&ecirc;n cứu thị trường l&agrave; bước chuẩn bị quan trọng gi&uacute;p ch&uacute;ng ta ph&acirc;n t&iacute;ch được những yếu tố then chốt c&oacute; khả năng biến sản phẩm/dịch vụ trở n&ecirc;n độc nhất khi tung ra ngo&agrave;i thị trường.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, bạn n&ecirc;n ưu ti&ecirc;n h&agrave;ng đầu cho việc x&aacute;c định đối thủ cạnh tranh của m&igrave;nh l&agrave; ai (bao gồm cả đối thủ hiện tại v&agrave; đối thủ tiềm năng) v&agrave; hiện họ chiếm bao nhi&ecirc;u thị phần? H&atilde;y thử đ&aacute;nh gi&aacute; c&aacute;c chiến lược marketing, thương hiệu trực tuyến, gi&aacute; cả cũng như chất lượng sản phẩm/dịch vụ m&agrave; họ cung cấp.&nbsp;</p>\r\n\r\n<p>C&aacute;ch n&agrave;y c&oacute; thể gi&uacute;p bạn thấu hiểu được những mong muốn của kh&aacute;ch h&agrave;ng cũng như kh&aacute;m ph&aacute; ra những nhu cầu mới chưa được ai khai th&aacute;c để từ đ&oacute; l&agrave;m h&agrave;i l&ograve;ng c&aacute;c kh&aacute;ch h&agrave;ng mục ti&ecirc;u sau n&agrave;y.</p>\r\n\r\n<p><strong>Chọn m&ocirc; h&igrave;nh kinh doanh ph&ugrave; hợp</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"ar-image-center\" style=\"border:2px solid rgb(221, 221, 221); margin:7px auto; max-width:100%; outline:none; width:50px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a class=\"lightbox-zoom\" href=\"http://www.doanhnhansaigon.vn/files/articles/2015/1091335/ban-hang-truc-tuyen-doanhnhansaigon-large.jpg\" style=\"outline: none; color: rgb(1, 44, 90); text-decoration: none;\" target=\"_blank\"><img alt=\"\" class=\"ar-photo\" src=\"http://localhost/cms/uploads/news/2015_09_04/ban-hang-truc-tuyen-doanhnhansaigon.jpg\" style=\"border-width:0px; max-width:453px; outline:none; width:500px\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:rgb(238, 238, 238)\">B&aacute;n h&agrave;ng trực tuyến l&agrave; một trong c&aacute;c h&igrave;nh thức kinh doanh phổ biến hiện nay</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Cho d&ugrave; bạn chọn m&ocirc; h&igrave;nh ph&acirc;n phối kiểu li&ecirc;n kết, B2B hay cửa h&agrave;ng thương mại điện tử th&igrave; mỗi thứ đều sở hữu những kh&aacute;ch h&agrave;ng mục ti&ecirc;u, năng lực cốt l&otilde;i cũng như gi&aacute; trị ri&ecirc;ng. Việc kiểm tra xem khả năng đ&aacute;p ứng của c&ocirc;ng ty đối với c&aacute;c y&ecirc;u cầu ri&ecirc;ng biệt của từng loại m&ocirc; h&igrave;nh sẽ x&aacute;c định được tỷ lệ th&agrave;nh c&ocirc;ng của n&oacute;, từ đ&oacute; dễ d&agrave;ng nhận diện được đ&acirc;u l&agrave; m&ocirc; h&igrave;nh ph&ugrave; hợp với dự &aacute;n kinh doanh của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c m&ocirc; h&igrave;nh kinh doanh phổ biến hiện nay l&agrave; b&aacute;n h&agrave;ng trực tuyến, b&aacute;n h&agrave;ng trực tiếp hay ph&acirc;n phối qua đại l&yacute; b&aacute;n lẻ, v.v... Tuy nhi&ecirc;n bạn đừng chọn đại một m&ocirc; h&igrave;nh bất kỳ trong số n&agrave;y khi chưa c&oacute; đủ cơ sở ph&acirc;n t&iacute;ch.&nbsp;</p>\r\n\r\n<p>H&atilde;y cố gắng thu thập th&ecirc;m th&ocirc;ng tin về doanh thu tiềm năng, cấu tr&uacute;c chi ph&iacute; cũng như những giải ph&aacute;p gi&aacute; trị của c&ocirc;ng ty trước khi lựa chọn một loại h&igrave;nh kinh doanh cụ thể.</p>\r\n\r\n<p><strong>Kiểm tra t&iacute;nh bền vững</strong></p>\r\n\r\n<p>T&iacute;nh bền vững của một &yacute; tưởng kinh doanh phụ thuộc v&agrave;o nhiều yếu tố, bao gồm nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; nguồn cung sẵn c&oacute;. Nếu sản phẩm/dịch vụ của bạn chưa c&oacute; ai l&agrave;m, hoặc ch&uacute;ng cung cấp những thứ tốt hơn c&aacute;c giải ph&aacute;p hiện c&oacute; th&igrave; chắc chắn &yacute; tưởng n&agrave;y sẽ c&oacute; tiềm năng ph&aacute;t triển l&acirc;u d&agrave;i.</p>\r\n\r\n<p>Đồng thời, việc kiểm tra nguồn cung trước khi biến &yacute; tưởng th&agrave;nh hiện thực sẽ gi&uacute;p bạn ngăn chặn bớt những thất bại trong tương lai.</p>\r\n\r\n<p>Ngo&agrave;i ra, bạn cũng cần quan t&acirc;m đến giai đoạn mở rộng sản phẩm/dịch vụ của &yacute; tưởng n&agrave;y v&agrave; t&iacute;nh to&aacute;n khả năng chi trả của kh&aacute;ch h&agrave;ng trong tương lai.</p>\r\n\r\n<p>Gộp chung tất cả những yếu tố n&agrave;y lại sẽ gi&uacute;p bạn x&aacute;c định xem liệu &yacute; tưởng kinh doanh tr&ecirc;n c&oacute; đủ khả năng sinh lợi từ thu nhập kỳ vọng hay kh&ocirc;ng.</p>\r\n\r\n<p><strong>Tham khảo &yacute; kiến chuy&ecirc;n gia marketing</strong></p>\r\n\r\n<p>Sẽ tốt hơn nếu bạn nhận được lời khuy&ecirc;n từ một chuy&ecirc;n gia marketing ngay từ l&uacute;c đầu. Bởi điều n&agrave;y sẽ hạn chế bớt những rủi ro cũng như giảm thiểu chi ph&iacute; kinh doanh nhờ v&agrave;o những kiến thức chuy&ecirc;n s&acirc;u về chiến lược quảng c&aacute;o, khuyến mại m&agrave; họ cung cấp cho bạn.</p>\r\n\r\n<p>Thực tế, c&aacute;c c&ocirc;ng ty khởi nghiệp thường &quot;lờ&quot; đi những gi&aacute; trị của marketing v&agrave; cho rằng đ&oacute; l&agrave; việc của tương lai, cho đến khi họ nhận ra những sai lầm m&agrave; họ mắc phải sau n&agrave;y vốn dĩ đ&atilde; c&oacute; thể tr&aacute;nh được ngay từ đầu nhờ v&agrave;o những hiểu biết nền tảng đ&oacute;.</p>\r\n\r\n<p>V&iacute; dụ, nếu c&ocirc;ng ty của bạn lựa chọn h&igrave;nh thức kinh doanh trực tuyến th&igrave; ngay từ đầu, bạn cần phải c&oacute; một trang web tiện &iacute;ch, c&oacute; khả năng tạo ra những trải nghiệm tốt nhất cho kh&aacute;ch h&agrave;ng. V&agrave; bằng những kinh nghiệm sẵn c&oacute;, một chuy&ecirc;n gia marketing kỹ thuật số sẽ chỉ cho bạn biết trước rằng trang web đ&oacute; phải c&oacute; url th&acirc;n thiện với c&ocirc;ng cụ t&igrave;m kiếm v&agrave; cần được x&acirc;y dựng theo đ&uacute;ng c&aacute;ch.</p>\r\n', '', '2015-09-04 14:20:23', '0000-00-00 00:00:00', '/uploads/news/2015_09_04/ban-hang-truc-tuyen-doanhnhansaigon.jpg', 0, 0, 1, 27, '', 'kinh doanh, làm giàu, ý tưởng mới', 'Có rất nhiều người nghĩ ra những ý tưởng kinh doanh mới nhưng không phải tất cả chúng đều được phát triển thành các công ty thành công. Vậy làm thế nào để biết được ý tưởng của bạn thực sự có hiệu quả?', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(28, '2,1', 'Cuộc sống của người tị nạn ở miền đất hứa', 'Khi chờ đợi chuyến tàu đến Đức, người tị nạn hô vang tên quốc gia này, nhưng họ đâu biết cuộc sống lâu dài tại đây chưa chắc đã dễ dàng như họ tưởng tượng.', '<div>Khi chờ đợi chuyến t&agrave;u đến Đức, người tị nạn h&ocirc; vang t&ecirc;n quốc gia n&agrave;y, nhưng họ đ&acirc;u biết cuộc sống l&acirc;u d&agrave;i tại đ&acirc;y chưa chắc đ&atilde; dễ d&agrave;ng như họ tưởng tượng.</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"BN-KD844-germig-M-201509040749-3786-8762\" src=\"http://localhost/cms/uploads/news/2015_09_07/bn-kd844-germig-m-201509040749-3786-8762-1441596374.jpg\" style=\"width:100%\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ghaith al Kalla, người tị nạn Syria đang sống ở Đức. Ảnh: <em>WSJ</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>H&agrave;nh tr&igrave;nh 4 th&aacute;ng của Ghaith al Kalla từ Syria kết th&uacute;c v&agrave;o một ng&agrave;y th&aacute;ng hai lạnh lẽo, khi anh đứng trong một h&agrave;ng d&agrave;i với h&agrave;ng trăm người di cư kh&aacute;c tại một trung t&acirc;m đăng k&yacute; tị nạn ở Berlin.</p>\r\n\r\n<p>6 th&aacute;ng sau đ&oacute;, ch&agrave;ng kỹ sư h&oacute;a học 27 tuổi đến từ Damascus đ&atilde; c&oacute; việc l&agrave;m v&agrave; sống trong một căn hộ c&ugrave;ng với một người Đức tại Sch&ouml;neberg, quận trung lưu ở thủ đ&ocirc; Đức.</p>\r\n\r\n<p>&quot;T&ocirc;i thậm ch&iacute; chẳng quan t&acirc;m t&ocirc;i kiếm được bao nhi&ecirc;u tiền v&igrave; hiện tại t&ocirc;i rất vui. Tất cả những g&igrave; t&ocirc;i mong muốn b&acirc;y giờ l&agrave; gia đ&igrave;nh t&ocirc;i được an to&agrave;n&quot;, Kalla n&oacute;i tiếng Anh tr&ocirc;i chảy khi đưa những suất cơm cho người đồng hương ở một trại tị nạn khẩn cấp, nơi anh bắt đầu l&agrave;m việc v&agrave;o tuần trước. Kalla l&agrave; một trong những người tị nạn may mắn.</p>\r\n\r\n<p>Đức trở th&agrave;nh &quot;miền đất hứa&quot; trong con mắt của h&agrave;ng ngh&igrave;n người đang t&igrave;m c&aacute;ch tho&aacute;t khỏi Syria, đất nước bị chiến tranh t&agrave;n ph&aacute;. Những người di cư cuối tuần trước mắc kẹt tại nh&agrave; ga trung t&acirc;m Budapest hy vọng sẽ bắt được t&agrave;u để rời khỏi Hungary. Họ h&ocirc; vang &quot;Đức, Đức&hellip;&quot;.</p>\r\n\r\n<p>Người tị nạn đến được Đức sau những chuyến đi d&agrave;i v&agrave; nguy hiểm sẽ được xếp v&agrave;o những trại tị nạn khẩn cấp v&agrave; đ&aacute;p ứng những nhu cầu cần thiết. Berlin mong muốn sự trợ gi&uacute;p như thế n&agrave;y sẽ được thực hiện tr&ecirc;n to&agrave;n ch&acirc;u &Acirc;u.</p>\r\n\r\n<p>Mục đ&iacute;ch của những việc n&agrave;y l&agrave; hướng tới hỗ trợ nh&acirc;n đạo. Tuy nhi&ecirc;n, người di cư v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n cứu trợ cho biết cả hệ thống đang phải gồng m&igrave;nh để đ&aacute;p ứng nhu cầu của người nhập cư, trong khi số người đến đang tăng l&ecirc;n nhanh ch&oacute;ng.</p>\r\n\r\n<p>Ngay cả khi người tị nạn được ch&agrave;o đ&oacute;n ở nhiều nơi tr&ecirc;n nước Đức, vẫn c&oacute; sự phản đối từ một số nh&oacute;m người, đặc biệt l&agrave; ở đ&ocirc;ng Đức. Những người tị nạn phải đối mặt với sự th&ugrave; địch v&agrave; c&aacute;c cuộc biểu t&igrave;nh đ&ocirc;i khi dẫn tới bạo lực. Nhiều vụ ph&oacute;ng hỏa xảy ra v&agrave;o đ&ecirc;m trong m&ugrave;a h&egrave; n&agrave;y, chủ yếu tại c&aacute;c t&ograve;a nh&agrave; được trưng dụng để chuyển th&agrave;nh nơi tr&uacute; ẩn. Cảnh s&aacute;t tuần trước cho biết c&oacute; 5 người bị thương trong một vụ ch&aacute;y tại to&agrave; nh&agrave; d&agrave;nh cho người tị nạn ở thị trấn Heppenheim, t&acirc;y Đức.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i đang đứng trước một th&aacute;ch thức quốc gia rất lớn&quot;, Thủ tướng Angela Merkel tuần trước n&oacute;i. &quot;Kh&ocirc;ng chỉ v&agrave;i ng&agrave;y hoặc v&agrave;i th&aacute;ng, m&agrave; sẽ l&agrave; một khoảng thời gian rất d&agrave;i&quot;.</p>\r\n\r\n<p>Đức nhận được khoảng 40% trong số 334.080 đơn xin tị nạn ở Li&ecirc;n minh ch&acirc;u &Acirc;u (EU) trong 5 th&aacute;ng đầu ti&ecirc;n của năm. C&oacute; đến 800.000 người dự kiến sẽ xin tị nạn ở nước n&agrave;y năm nay, chiếm gần 1% d&acirc;n số Đức.</p>\r\n\r\n<p>Người tị nạn được chấp nhận đơn xin sẽ được sắp xếp chỗ ở tr&ecirc;n khắp 16 tiểu bang, từ l&agrave;ng Alpine, Bavaria đến h&ograve;n đảo nghỉ m&aacute;t sang trọng Sylt tr&ecirc;n Biển Bắc. Việc sắp xếp dựa theo tiền thuế v&agrave; d&acirc;n số của từng bang, theo c&ocirc;ng thức đưa ra năm 1949. Berlin đang th&uacute;c đẩy EU &aacute;p dụng một hệ thống hạn ngạch tương tự.</p>\r\n\r\n<p>Người tị nạn c&oacute; đăng k&yacute; sẽ được cung cấp chỗ ở v&agrave; thực phẩm. Trẻ em được chăm s&oacute;c hoặc đi học trong khi đơn xin việc của cha mẹ ch&uacute;ng được xem x&eacute;t. Một người trưởng th&agrave;nh cần c&oacute; 159 USD/th&aacute;ng để ti&ecirc;u vặt v&agrave; khoảng 240 USD để trang trải nhu cầu cơ bản. Chi ph&iacute; y tế được ch&iacute;nh quyền trả.</p>\r\n\r\n<p>Hệ thống n&agrave;y được &aacute;p dụng tại Munich v&agrave;o tuần trước, khi chỉ trong hai ng&agrave;y đ&atilde; c&oacute; gần 4.000 di d&acirc;n đến đ&acirc;y bằng t&agrave;u, biến nh&agrave; ga trung t&acirc;m th&agrave;nh một trung t&acirc;m tị nạn tạm thời. Người d&acirc;n địa phương đến ga tặng họ đồ ăn v&agrave; đồ chơi, tuy nhi&ecirc;n, cảnh s&aacute;t y&ecirc;u cầu họ kh&ocirc;ng l&agrave;m vậy.</p>\r\n\r\n<p>Kh&oacute; khăn</p>\r\n\r\n<p>Farhan Yassin, một người Somalia 18 tuổi, tr&ugrave;m k&iacute;n chiếc &aacute;o của m&igrave;nh để tr&aacute;nh mưa b&ecirc;n ngo&agrave;i một ng&ocirc;i nh&agrave; tại Munich, nơi từng l&agrave; doanh trại của Đức Quốc x&atilde;.</p>\r\n\r\n<p>Sau khi g&atilde;y hai ch&acirc;n trong một tai nạn v&agrave; suốt ba th&aacute;ng trời ngủ tr&ecirc;n đường phố ở Italy, Yassin đến Munich khoảng 6 th&aacute;ng trước. Giới chức ngay lập tức đưa anh đến bệnh viện. Tại trại tị nạn, anh được ph&aacute;t thức ăn v&agrave; v&eacute; xe bu&yacute;t để c&oacute; thể đi xung quanh thị trấn.</p>\r\n\r\n<p>&quot;Họ b&oacute; bột ch&acirc;n cho t&ocirc;i v&agrave; c&ograve;n cho t&ocirc;i một đ&ocirc;i nạng&quot;, anh n&oacute;i. &quot;B&acirc;y giờ, t&ocirc;i lại c&oacute; thể chơi b&oacute;ng đ&aacute;. T&ocirc;i thậm ch&iacute; c&ograve;n đang học tiếng Đức&quot;.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, ở những nơi kh&aacute;c, hệ thống hỗ trợ nh&acirc;n đạo cho người tị nạn đang c&oacute; dấu hiệu căng thẳng.</p>\r\n\r\n<p>Một buổi tối trong tuần qua tại Trung t&acirc;m Đăng k&yacute; Tị nạn Berlin, h&agrave;ng chục người đổ về đ&acirc;y khi trung t&acirc;m đ&oacute;ng cửa trong một ng&agrave;y. Nhiều đ&agrave;n &ocirc;ng v&agrave; một số phụ nữ chen ch&uacute;c tr&ecirc;n mặt đất, che chở cho con em họ khỏi cơn mưa. Hy vọng c&oacute; được vị tr&iacute; đầu trong d&ograve;ng người v&agrave;o buổi s&aacute;ng, họ quyết định chờ đợi tr&ecirc;n đường phố.</p>\r\n\r\n<p>&quot;T&ocirc;i đ&atilde; đợi ở đ&acirc;y 10 ng&agrave;y, t&ocirc;i đ&atilde; kiệt sức&quot;, Mohamed Naus, 50 tuổi đến từ Aleppo, Syria, trả lời khi &ocirc;ng lấy điện thoại ra để xem ảnh con trai, bị thương trong một vụ đ&aacute;nh bom.</p>\r\n\r\n<p>Những nơi kh&aacute;c ở Berlin, khoảng 250 người tị nạn đ&atilde; t&igrave;m được nơi tr&uacute; ẩn trong một trường học cũ của Ph&aacute;p tại quận Reinickendorf. &quot;Nơi n&agrave;y dưới chuẩn của trại tị nạn, nhưng kh&oacute; c&oacute; thể l&agrave;m tốt hơn&quot;, Armin Wegner, người đứng đầu tổ chức gi&uacute;p thiết lập trại tị nạn cho biết. &quot;Ch&uacute;ng t&ocirc;i cố gắng kiếm th&ecirc;m giường tầng v&agrave; v&ograve;i hoa sen nhưng nhu cầu hiện giờ qu&aacute; cao. C&aacute;c nh&agrave; cung cấp thậm ch&iacute; kh&ocirc;ng c&ograve;n h&agrave;ng&quot;.</p>\r\n\r\n<p>&Ocirc;ng Wegner thu&ecirc; Kalla c&oacute; thể n&oacute;i được tiếng Anh, Arab, v&agrave; tiếng Đức kh&aacute; tr&ocirc;i chảy, để l&agrave;m việc tại trại. &Ocirc;ng Wegner hy vọng Kalla sẽ kiếm được việc trong ng&agrave;nh h&oacute;a chất, đ&uacute;ng với chuy&ecirc;n m&ocirc;n của anh.</p>\r\n\r\n<p>T&igrave;m việc l&agrave;m cho người tị nạn l&agrave; một th&aacute;ch thức rất lớn. Năm 2013, chỉ c&oacute; khoảng 27% người di cư c&oacute; thể t&igrave;m được c&ocirc;ng việc ph&ugrave; hợp, theo số liệu của Cơ quan Lao động Đức. R&agrave;o cản ng&ocirc;n ngữ, kh&ocirc;ng được đ&agrave;o tạo b&agrave;i bản v&agrave; hệ thống h&agrave;nh ch&iacute;nh l&agrave; những yếu tố khiến người tị nạn kh&oacute; c&oacute; thể kiếm được việc.</p>\r\n\r\n<p>Đức đang cố gắng th&iacute;ch ứng, tăng tốc qu&aacute; tr&igrave;nh trục xuất những người di cư bị từ chối, tăng chi ti&ecirc;u cho người tị nạn được chấp nhận v&agrave; mở lớp học tiếng Đức ph&ugrave; hợp với c&aacute;c ng&agrave;nh nghề tr&ecirc;n nước n&agrave;y.</p>\r\n\r\n<p>Nhưng ngay cả đối với những người tị nạn th&agrave;nh c&ocirc;ng như Kalla, bắt đầu một cuộc sống mới kh&ocirc;ng bao giờ l&agrave; điều dễ d&agrave;ng.</p>\r\n\r\n<p>&quot;Mọi người cứ nghĩ đến được đ&acirc;y l&agrave; mọi thứ khắc tốt đẹp, sẽ được t&ocirc;n trọng v&agrave; khẳng định được gi&aacute; trị bản th&acirc;n&quot;, Kalla n&oacute;i. &quot;Nhưng đến khi sống tại nơi n&agrave;y, bạn mới biết cuộc sống ở đ&acirc;y cũng kh&oacute; khăn như ở những nơi kh&aacute;c&quot;.</p>\r\n', '', '2015-09-07 15:24:59', '0000-00-00 00:00:00', '/uploads/news/2015_09_07/bn-kd844-germig-m-201509040749-3786-8762-1441596374.jpg', 0, 0, 1, 28, '', 'di cư, tị nạn, miền đất hứa, châu âu', 'Khi chờ đợi chuyến tàu đến Đức, người tị nạn hô vang tên quốc gia này, nhưng họ đâu biết cuộc sống lâu dài tại đây chưa chắc đã dễ dàng như họ tưởng tượng.', 1),
(29, '3,2', 'Quái ngư thời tiền sử tái xuất hiện ở các con sông nước Anh', 'Cá mút đá, một loài cá kỳ lạ tồn tại từ thời tiền sử, được bắt gặp ở một số con sông nước Anh sau khi vắng bóng từ những năm 1800.', '<div>C&aacute; m&uacute;t đ&aacute;, một lo&agrave;i c&aacute; kỳ lạ tồn tại từ thời tiền sử, được bắt gặp ở một số con s&ocirc;ng nước Anh sau khi vắng b&oacute;ng từ những năm 1800.</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Lamprey-fish-1-6222-1441431564.jpg\" src=\"http://localhost/cms/uploads/news/2015_09_07/lamprey-fish-1-6222-1441431564.jpg\" style=\"width:100%\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Lo&agrave;i c&aacute; m&uacute;t đ&aacute; đ&atilde; xuất hiện trở lại ở một số con s&ocirc;ng nước Anh. Ảnh: <em>Dave Herasimtschuk.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&aacute; m&uacute;t đ&aacute; c&oacute; h&igrave;nh d&aacute;ng giống lo&agrave;i rắn, sinh sống từ c&aacute;ch đ&acirc;y 200 triệu năm, trước cả lo&agrave;i khủng long v&agrave; l&agrave; động vật c&oacute; xương sống l&acirc;u đời nhất thế giới. Trước đ&acirc;y, c&aacute; m&uacute;t đ&aacute; l&agrave; lo&agrave;i rất phổ biến tr&ecirc;n c&aacute;c con s&ocirc;ng ở Anh.</p>\r\n\r\n<p>Điểm đặc biệt ở lo&agrave;i &quot;h&oacute;a thạch sống&quot; n&agrave;y l&agrave; ch&uacute;ng c&oacute; những chiếc răng sắc như dao cạo xếp th&agrave;nh v&ograve;ng tr&ograve;n thay v&igrave; mọc th&agrave;nh h&agrave;m. Ch&uacute;ng bị ảnh hưởng nặng nề bởi &ocirc; nhiễm trong thời kỳ C&aacute;ch mạng C&ocirc;ng nghiệp v&agrave; việc x&acirc;y dựng đập ngăn nước đ&atilde; ngăn ch&uacute;ng di cư. Hiện nay, c&aacute; m&uacute;t đ&aacute; đang c&oacute; nguy cơ tuyệt chủng ở ch&acirc;u &Acirc;u.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, theo Cơ quan bảo vệ m&ocirc;i trường của Anh, lo&agrave;i c&aacute; n&agrave;y đang dần quay trở lại m&ocirc;i trường sống cũ nhờ mức độ &ocirc; nhiễm ở c&aacute;c con s&ocirc;ng giảm xuống mức thấp nhất trong hơn 100 năm v&agrave; r&agrave;o cản di cư được x&oacute;a bỏ.</p>\r\n\r\n<p>C&aacute;c biện ph&aacute;p bảo vệ bao gồm thử nghiệm sử dụng những vi&ecirc;n gạch c&oacute; ch&oacute;p rộng h&igrave;nh n&oacute;n, cho ph&eacute;p c&aacute; m&uacute;t đ&aacute; sử dụng phần miệng giống gi&aacute;c h&uacute;t để neo giữ cơ thể khi b&ograve; về ph&iacute;a trước. Những kết quả ban đầu tr&ecirc;n s&ocirc;ng Derwent ở Yorrkshire rất đ&aacute;ng kh&iacute;ch lệ.</p>\r\n\r\n<p>C&aacute; m&uacute;t đ&aacute; c&oacute; vai tr&ograve; rất quan trọng trong việc xử l&yacute; chất dinh dưỡng ở c&aacute;c con s&ocirc;ng v&agrave; cung cấp nguồn thức ăn cho c&aacute;c lo&agrave;i c&aacute; kh&aacute;c. Sinh vật mang h&igrave;nh d&aacute;ng kỳ lạ n&agrave;y từng được coi l&agrave; m&oacute;n ăn xa xỉ d&agrave;nh cho những vị vua v&agrave; ho&agrave;ng hậu người Anh, người Viking v&agrave; La M&atilde;. C&oacute; &yacute; kiến cho rằng, Vua Henry I của Anh đ&atilde; chết sau khi ăn qu&aacute; nhiều c&aacute; m&uacute;t đ&aacute;.</p>\r\n', '', '2015-09-07 15:29:55', '0000-00-00 00:00:00', '/uploads/news/2015_09_07/lamprey-fish-1-6222-1441431564.jpg', 1, 0, 1, 29, '', 'quái ngư, tiền sử, quái vật, nước Anh', 'Cá mút đá, một loài cá kỳ lạ tồn tại từ thời tiền sử, được bắt gặp ở một số con sông nước Anh sau khi vắng bóng từ những năm 1800.', 1),
(30, '3,1', 'Nở rộ tỏi đen cô đơn giá tiền triệu', 'Với giá bán trong nước hơn một triệu đồng mỗi kg, còn xuất khẩu lên tới 3 triệu đồng, tỏi đen cô đơn đang thu hút khá nhiều hộ kinh doanh, công ty và các trung tâm nghiên cứu nhảy vào sản xuất.', '<p style=\"text-align:left\">Anh Cao Quốc Vinh, chủ doanh nghiệp chuy&ecirc;n sản xuất v&agrave; cung ứng tỏi đen đầu ti&ecirc;n ở Việt Nam cho biết, sau khi đầu tư 80.000 USD để mua c&ocirc;ng nghệ chuy&ecirc;n sản xuất tỏi đen nhiều t&eacute;p v&agrave;o năm 2009 v&agrave; kh&aacute; th&agrave;nh c&ocirc;ng, nhưng dần d&agrave; về sau kh&aacute;ch h&agrave;ng &iacute;t ưa chuộng loại n&agrave;y n&ecirc;n anh quyết định chuyển hẳn sang sản xuất tỏi đen c&ocirc; đơn (tỏi một t&eacute;p). Anh lựa chọn v&agrave; k&yacute; hợp đồng thu mua ở một số tỉnh miền Trung v&agrave; ph&iacute;a Bắc c&oacute; nguồn tỏi ổn định, chất lượng.</p>\r\n\r\n<p style=\"text-align:left\">Anh Vinh cho hay, sản xuất tỏi đen c&ocirc; đơn phức tạp hơn nhiều so với tỏi nhiều t&eacute;p cả về thời gian cũng như quy tr&igrave;nh. Thời gian đầu thử nghiệm, anh &ldquo;b&ecirc;&rdquo; nguy&ecirc;n c&ocirc;ng thức l&agrave;m tỏi nhiều t&eacute;p v&agrave;o &aacute;p dụng khiến sản phẩm&nbsp; phải đổ bỏ. Sau thất bại, anh bắt đầu điều chỉnh v&agrave; thử nghiệm nhiều lần để r&uacute;t ra c&ocirc;ng thức ri&ecirc;ng l&agrave;m tỏi c&ocirc; đơn.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"-webkit-text-stroke-width:0px; background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial; font-size:14px; font-style:normal; font-variant:normal; font-weight:normal; letter-spacing:normal; line-height:normal; margin:0px auto 10px; max-width:100%; orphans:auto; padding:0px; text-align:left; text-indent:0px; text-transform:none; white-space:normal; widows:1; width:470px; word-spacing:0px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"toi_1443001397.jpg\" src=\"http://localhost/cms/uploads/news/2015_09_24/toi-6085-1443003161.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tỏi đen c&ocirc; đơn đang được coi l&agrave; &quot;thần dược&quot; trong ph&ograve;ng chống ung thư. Ảnh:<em> MH.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:left\">&ldquo;Đối với tỏi c&ocirc; đơn, kết cấu của sản phẩm n&agrave;y chắc, h&agrave;m lượng nước &iacute;t n&ecirc;n thời gian l&ecirc;n men phải l&acirc;u hơn, nhiệt độ ở mức vừa phải. Nếu tỏi nhiều t&eacute;p l&ecirc;n men 45 ng&agrave;y th&igrave; tỏi c&ocirc; đơn phải l&ecirc;n men &iacute;t nhất tr&ecirc;n 60 ng&agrave;y. Ri&ecirc;ng kh&aacute;ch h&agrave;ng Nhật Bản v&agrave; Mỹ kh&aacute; kh&oacute; t&iacute;nh, họ lu&ocirc;n đ&ograve;i hỏi thời gian l&ecirc;n men tới 90 ng&agrave;y&rdquo;, anh Vinh chia sẻ.</p>\r\n\r\n<p style=\"text-align:left\">Nhờ sản phẩm l&agrave;m ra chất lượng, anh Vinh xuất được sang Đ&agrave;i Loan (Trung Quốc), Nhật Bản, Mỹ với gi&aacute; tr&ecirc;n 3 triệu đồng một kg. 8 th&aacute;ng đầu năm nay anh đ&atilde; xuất sang 3 thị trường n&agrave;y 1,5 tấn. Hiện, một đối t&aacute;c nước ngo&agrave;i đang c&oacute; &yacute; định đặt h&agrave;ng 4 tấn cho cuối năm.</p>\r\n\r\n<p style=\"text-align:left\">Ri&ecirc;ng về thị trường trong nước, anh Vinh c&oacute; 2 hệ thống ph&acirc;n phối tại H&agrave; Nội. Ngo&agrave;i ra, sản phẩm của anh cũng vừa được b&aacute;n trong v&agrave;i si&ecirc;u thị với gi&aacute; tr&ecirc;n 1,7 triệu đồng một kg. &quot;Hết th&aacute;ng 8, t&ocirc;i đ&atilde; b&aacute;n ra thị trường trong nước v&agrave; nước ngo&agrave;i khoảng 15 tấn, tăng 300% so với c&ugrave;ng kỳ năm ngo&aacute;i&quot;, anh cho biết.</p>\r\n\r\n<p style=\"text-align:left\">Nguyễn Văn Định, người gắn liền với việc x&acirc;y dựng thương hiệu tỏi L&yacute; Sơn cũng vừa c&ugrave;ng đối t&aacute;c nhập c&ocirc;ng nghệ về chế biến cả sản phẩm tỏi đen L&yacute; Sơn nhiều nh&aacute;nh lẫn một nh&aacute;nh. Hiện sản phẩm tỏi đen nhiều nh&aacute;nh của anh Định được một si&ecirc;u thị nước ngo&agrave;i tại TP HCM đặt h&agrave;ng với gi&aacute; b&aacute;n ra l&agrave; 950.500 đồng một kg, c&ograve;n tỏi đen c&ocirc; đơn c&oacute; gi&aacute; 1,9 triệu.</p>\r\n\r\n<p style=\"text-align:left\">&quot;Sở dĩ tỏi đen một t&eacute;p L&yacute; Sơn c&oacute; gi&aacute; b&aacute;n cao l&agrave; do nguồn tỏi tự nhi&ecirc;n hiếm, quy tr&igrave;nh chế biến cũng phức tạp v&agrave; kh&oacute; khăn hơn tỏi nhiều t&eacute;p&quot;, anh Định n&oacute;i v&agrave; cho biết hiện mỗi th&aacute;ng l&agrave;m ra 250kg tỏi đen.</p>\r\n\r\n<p style=\"text-align:left\"><span style=\"color:rgb(105, 105, 105)\"><strong>Kh&ocirc;ng chỉ c&aacute;c c&aacute; nh&acirc;n chen ch&acirc;n v&agrave;o l&agrave;m tỏi đen c&ocirc; đơn m&agrave; ngay cả trường đại học, c&aacute;c trung t&acirc;m nghi&ecirc;n cứu về dinh dưỡng cũng tranh thủ nghi&ecirc;n cứu sản xuất v&agrave; thương mại h&oacute;a sản phẩm n&agrave;y ra thị trường.</strong></span></p>\r\n\r\n<p style=\"text-align:left\">Tại cơ sở Linh Chi N&ocirc;ng L&acirc;m, th&agrave;nh vi&ecirc;n Trung t&acirc;m Ươm tạo doanh nghiệp c&ocirc;ng nghệ (Đại học N&ocirc;ng L&acirc;m TP HCM) cũng đ&atilde; nghi&ecirc;n cứu v&agrave; sản xuất ra tỏi đen c&ocirc; đơn mang thương hiệu N&ocirc;ng L&acirc;m, b&aacute;n với gi&aacute; 2,3 triệu đồng một kg.</p>\r\n\r\n<p style=\"text-align:left\">Theo đơn vị n&agrave;y, sản phẩm được l&ecirc;n men từ tỏi c&ocirc; đơn L&yacute; Sơn trong thời gian 45 ng&agrave;y, c&oacute; m&agrave;u đen, vị ngọt, kh&ocirc;ng c&ograve;n m&ugrave;i cay hăng của tỏi thường v&agrave; c&oacute; t&aacute;c dụng gấp nhiều lần tỏi thường.</p>\r\n\r\n<p style=\"text-align:left\">Trao đổi với <em>VnExpress.net, </em>Viện trưởng Viện Nghi&ecirc;n cứu c&ocirc;ng nghệ sinh học Đại học N&ocirc;ng L&acirc;m Trần Đ&igrave;nh Đ&ocirc;n cho biết, việc nghi&ecirc;n cứu sản phẩm tỏi đen, bao gồm cả tỏi đen c&ocirc; đơn được kh&aacute; nhiều sinh vi&ecirc;n trong trường chọn l&agrave;m đề t&agrave;i ngay từ khi c&ograve;n l&agrave; sinh vi&ecirc;n năm ba. Hiện, sản phẩm tỏi đen N&ocirc;ng L&acirc;m được một th&agrave;nh vi&ecirc;n của Trung t&acirc;m Ươm tạo doanh nghiệp c&ocirc;ng nghệ kết hợp với Khoa Khoa học của trường ph&aacute;t triển. Tuy nhi&ecirc;n, khi thương mại h&oacute;a sản phẩm n&agrave;y, sức ti&ecirc;u thụ c&ograve;n kh&aacute; chậm.</p>\r\n\r\n<p style=\"text-align:left\">Ngo&agrave;i Đại học N&ocirc;ng L&acirc;m, Trung t&acirc;m Nghi&ecirc;n cứu thực phẩm v&agrave; dinh dưỡng tại TP HCM cũng đang ph&acirc;n phối sản phẩm n&agrave;y ở kh&aacute; nhiều tỉnh th&agrave;nh trong nước với gi&aacute; dao động 1 - 1,7 triệu đồng một kg (t&ugrave;y loại). Đồng thời, xuất khẩu sang c&aacute;c thị trường kh&oacute; t&iacute;nh với gi&aacute; cao gấp đ&ocirc;i thị trường nội địa.</p>\r\n\r\n<p style=\"text-align:left\">B&ecirc;n cạnh c&aacute;c c&aacute; nh&acirc;n, trung t&acirc;m trường học sản xuất tỏi đen th&igrave; hiện nay c&oacute; kh&aacute; nhiều hộ gia đ&igrave;nh tự chế biến tỏi đen bằng nồi cơm điện. Thời gian l&ecirc;n men chỉ sau 25-30 ng&agrave;y l&agrave; d&ugrave;ng được thay v&igrave; đ&uacute;ng quy tr&igrave;nh l&agrave; từ 60 đến 65 ng&agrave;y. Để r&uacute;t ngắn thời gian, nhiều người chọn d&ugrave;ng tỏi nhiều t&eacute;p thay v&igrave; tỏi c&ocirc; đơn để r&uacute;t ngắn thời gian l&ecirc;n men.</p>\r\n\r\n<p style=\"text-align:left\">Đ&aacute;nh gi&aacute; về tr&agrave;o lưu tr&ecirc;n, một nh&agrave; nghi&ecirc;n cứu v&agrave; sản xuất tỏi đen tại TP HCM cho hay, kh&ocirc;ng phải sản phẩm tỏi đen n&agrave;o b&aacute;n ra thị trường cũng đạt chất lượng. Nhiều sản phẩm l&agrave;m kh&ocirc;ng đ&uacute;ng quy tr&igrave;nh, nhiệt độ v&agrave; độ ẩm cũng vẫn khiến tỏi chuyển sang m&agrave;u đen, tuy nhi&ecirc;n h&agrave;m lượng dưỡng chất tốt cho sức khỏe chứa trong sản phẩm mới l&agrave; điều quan trọng.</p>\r\n\r\n<p style=\"text-align:left\">&ldquo;Nếu mua sản phẩm để về chữa bệnh, người d&ugrave;ng cần hỏi người b&aacute;n về h&agrave;m lượng chất S-ally cysteine chứa trong tỏi. Một sản phẩm tối ưu nhất l&agrave; c&oacute; chứa 850miligram S-ally cysteine tr&ecirc;n 100gram tỏi&rdquo;, &ocirc;ng cho hay.</p>\r\n\r\n<p style=\"text-align:left\">Ngo&agrave;i ra, vị n&agrave;y cũng cho biết, hiện sản lượng tỏi c&ocirc; đơn L&yacute; Sơn kh&aacute; hiếm, gi&aacute; cao, c&oacute; l&uacute;c l&ecirc;n tới 1,2 triệu đồng một kg, lại rất kh&oacute; chế biến, thế nhưng, tr&ecirc;n thị trường nhiều cơ sở vẫn gắn m&aacute;c thương hiệu n&agrave;y v&agrave;o sản phẩm đễ dễ b&aacute;n h&agrave;ng. Do vậy, khi mua người d&ugrave;ng cần xem x&eacute;t kỹ lượng v&agrave; lựa chọn cơ sở uy t&iacute;n để c&oacute; h&agrave;ng chất lượng.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" class=\"tbl_insert\" style=\"-webkit-text-stroke-width:0px; background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial; font-size:14px; font-style:normal; font-variant:normal; font-weight:normal; letter-spacing:normal; line-height:normal; margin:0px auto 10px; max-width:100%; orphans:auto; padding:0px; text-align:left; text-indent:0px; text-transform:none; white-space:normal; widows:1; width:468px; word-spacing:0px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:rgb(204, 255, 255)\">\r\n			<p>Theo c&aacute;c chuy&ecirc;n gia y tế,&nbsp;tỏi đen c&oacute; hiệu lực mạnh kh&aacute;ng lại c&aacute;c tế b&agrave;o khối u,&nbsp;gi&uacute;p m&aacute;u lưu th&ocirc;ng, th&uacute;c đẩy tuần ho&agrave;n m&aacute;u, oxy v&agrave; dưỡng chất được cung cấp đến khắp cơ thể, giảm cảm gi&aacute;c &ecirc; ẩm, cơn đau. C&aacute;c hoạt chất trong tỏi đen c&oacute; t&aacute;c dụng chống đ&ocirc;ng m&aacute;u, ngăn kh&ocirc;ng cho c&aacute;c tiểu cầu đ&oacute;ng th&agrave;nh cục, giảm chứng cao huyết &aacute;p, thiếu m&aacute;u n&atilde;o v&agrave; tim mạch.</p>\r\n\r\n			<p>Ngo&agrave;i ra, tỏi đen c&ograve;n gi&uacute;p phụ nữ cải thiện l&agrave;n da, bảo vệ gan, chống c&aacute;c bệnh đường h&ocirc; hấp, tăng cường hệ miễn dịch...</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:right\"><strong>Hồng Ch&acirc;u</strong></p>\r\n', '', '2015-09-24 13:18:49', '0000-00-00 00:00:00', '/uploads/news/2015_09_24/toi-6085-1443003161.jpg', 0, 0, 1, 30, '', 'Tỏi đen, tỏi chữa bệnh, chữa bệnh, tỏi lý sơn', 'Với giá bán trong nước hơn một triệu đồng mỗi kg, còn xuất khẩu lên tới 3 triệu đồng, tỏi đen cô đơn đang thu hút khá nhiều hộ kinh doanh, công ty và các trung tâm nghiên cứu nhảy vào sản xuất.', 1),
(31, '3,2', 'Những siêu du thuyền của tương lai', 'Những chiếc du thuyền trong tương lai có thể lướt trên không, mang hình dáng giống tàu vũ trụ hoặc có khoang kính trong suốt để quan sát dưới nước.', '<div style=\"float:left; text-align:left\">Những chiếc du thuyền trong tương lai c&oacute; thể lướt tr&ecirc;n kh&ocirc;ng, mang h&igrave;nh d&aacute;ng giống t&agrave;u vũ trụ hoặc c&oacute; khoang k&iacute;nh trong suốt để quan s&aacute;t dưới nước.</div>\r\n\r\n<div style=\"float:left; text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left; text-align:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-1-1443061854_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Kiến tr&uacute;c sư người Anh, Zaha Hadid, l&agrave; người tạo ra thiết kế thuyền buồm độc đ&aacute;o n&agrave;y. Mang t&ecirc;n Unique Circle, thiết kế gồm 5 du thuyền d&agrave;i 90 m, do c&ocirc;ng ty đ&oacute;ng t&agrave;u Blohm+Voss của Đức chế tạo. Ch&uacute;ng l&agrave; phi&ecirc;n bản nhỏ hơn của mẫu thiết kế ban đầu c&oacute; chiều d&agrave;i 128 m. Ảnh: <em>Zaha Hadid.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-2-1443061854_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Những chiếc du thuyền c&oacute; h&igrave;nh d&aacute;ng lạ mắt. &quot;Cấu tr&uacute;c khung ngo&agrave;i của th&acirc;n tr&ecirc;n l&agrave; một mạng lưới thanh đỡ đan xen với độ d&agrave;y kh&aacute;c nhau, mang đến vẻ tự nhi&ecirc;n cho ngoại thất&quot;, Hadid cho biết. Bộ khung cũng rất giống cấu tạo xương của c&aacute;c động vật biển. <em>Zaha Hadid.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-3-1443061854_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&ocirc;ng ty 4Yacht ở Florida, Mỹ, đang l&ecirc;n kế hoạch chế tạo mẫu du thuyền hạng sang lớn nhất thế giới. Mang t&ecirc;n Double Century, du thuyền d&agrave;i 192 m sẽ do Christopher Seymour, một kiến tr&uacute;c sư người Mỹ, thiết kế. <em>Ảnh: 4Yacht.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-4-1443061855_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>&quot;Sự ra đời của Double Century l&agrave; bước tiến tiếp theo trong cuộc tiến h&oacute;a của gigayacht (những du thuyền d&agrave;i hơn 150 m)&quot;, Christopher Seymour ph&aacute;t biểu. &quot;T&ocirc;i muốn bản thiết kế phải thật tr&aacute;ng lệ v&agrave; thuyết phục bởi ch&iacute;nh bản th&acirc;n chiếc du thuyền chứ kh&ocirc;ng phải v&igrave; người sở hữu, chế tạo hay vẽ ra n&oacute;&quot;. Ảnh: <em>4Yacht.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-5-1443061855_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Double Century c&oacute; 9 tầng v&agrave; 8 thang m&aacute;y để h&agrave;nh kh&aacute;ch v&agrave; thủy thủ đo&agrave;n di chuyển thuận lợi. Du thuyền n&agrave;y trang bị mọi tiện nghi từ s&agrave;n nhảy đến rạp chiếu phim 126 chỗ. N&oacute; c&oacute; thể chở thủy thủ đo&agrave;n l&ecirc;n tới 100 người. Một phi&ecirc;n bản cỡ lớn hơn của chiếc du thuyền c&oacute; thể ra đời với chiều d&agrave;i 225 m. <em>Ảnh: 4Yacht.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-6-1443061856_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Du thuyền ba th&acirc;n Adastra tr&ocirc;ng giống một con t&agrave;u vũ trụ hơn l&agrave; phương tiện tr&ecirc;n mặt nước. Được sản xuất bởi h&atilde;ng đ&oacute;ng t&agrave;u Anh, John Shuttleworth, du thuyền d&agrave;i 42,5 m n&agrave;y l&agrave; th&agrave;nh quả thiết kế trong ba năm của c&ocirc;ng ty Shuttleworth Design nằm ở đảo Wight, Anh. Ảnh: <em>Shuttleworth Design.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-7-1443061856_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Kh&ocirc;ng chỉ mang kiểu d&aacute;ng hiện đại, du thuyền n&agrave;y c&ograve;n c&oacute; thể điều khiển từ xa với sự hỗ trợ của một chiếc iPad. Tuy nhi&ecirc;n, phạm vi nhận t&iacute;n hiệu điều khiển chỉ trong v&ograve;ng 50 m. Ảnh: <em>Shuttleworth Design.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-9-1443061858_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&ocirc;ng ty Pauley của Anh lại c&oacute; &yacute; tưởng thiết kế chuỗi du thuyền Cruiser mang những khả năng kh&aacute;c nhau. Trong đ&oacute;, Flying Cruiser c&oacute; thể thay đổi h&igrave;nh d&aacute;ng với hai c&aacute;nh nh&ocirc; ra từ th&acirc;n t&agrave;u. To&agrave;n bộ phần th&acirc;n du thuyền sẽ được n&acirc;ng khỏi mặt nước v&agrave; bay ở tốc độ 160 km/h. Ảnh: <em>Pauley.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-10-1443061858_660x0.png\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Năm 2001, c&ocirc;ng ty Giancarlo Zema Design Group&nbsp;ở Italy đ&atilde; quyết định tạo ra một chiếc du thuyền với h&igrave;nh d&aacute;ng cong. Trilobis 65 l&agrave; du thuyền hạng sang c&oacute; th&ecirc;m s&agrave;n quan s&aacute;t dưới nước, nằm dưới 4 tầng ở phần th&acirc;n. Ảnh: <em>Giancarlo Zema Design Group.</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"float:left\">\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><strong>Phương Hoa</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-24 13:24:00', '0000-00-00 00:00:00', '/uploads/news/2015_09_24/vne-the-future-shape-of-luxury-yatchs-6-1443061856_660x0.png', 3, 0, 1, 31, '', 'Du thuyền, du lịch, du thuyền tương lai, tỉ phú', 'Những chiếc du thuyền trong tương lai có thể lướt trên không, mang hình dáng giống tàu vũ trụ hoặc có khoang kính trong suốt để quan sát dưới nước.', 1),
(32, '3', 'Phát hiện hai siêu hố đen có nguy cơ lao vào nhau', 'Các nhà khoa học dự đoán, trong vòng 100.000 năm hai hố đen khổng lồ sẽ va chạm, tạo nên vụ nổ siêu lớn trong vũ trụ.', '<div style=\"float:left; text-align:left\">C&aacute;c nh&agrave; khoa học dự đo&aacute;n, trong v&ograve;ng 100.000 năm hai hố đen khổng lồ sẽ va chạm, tạo n&ecirc;n vụ nổ si&ecirc;u lớn trong vũ trụ.</div>\r\n\r\n<div id=\"left_calculator\" style=\"text-align:left\">\r\n<div style=\"float:left\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"colliding-black-holes-6444-1442974967.jp\" src=\"http://localhost/cms/uploads/news/2015_09_24/colliding-black-holes-6444-1442974967.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&ocirc; phỏng hai hố đen. Ảnh: <em>IB Times</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;Hai hố đen trong ch&ograve;m Xử Nữ đang lao v&agrave;o nhau, tạo th&agrave;nh vụ va chạm si&ecirc;u lớn&quot;, Zoltan Haiman, nh&agrave; thi&ecirc;n văn học của đại học Columbia, Mỹ, cho biết. Haiman l&agrave; đồng t&aacute;c giả nghi&ecirc;n cứu về hai hố đen đăng tr&ecirc;n tạp ch&iacute; Nature h&ocirc;m 17/9.</p>\r\n\r\n<p>Ch&uacute;ng xoay quanh nhau ở một chuẩn tinh của thi&ecirc;n h&agrave; c&aacute;ch Tr&aacute;i Đất 3,5 tỷ năm &aacute;nh s&aacute;ng, c&oacute; t&ecirc;n l&agrave; PG 1302-102. C&oacute; nghĩa l&agrave;, h&igrave;nh ảnh m&agrave; c&aacute;c nh&agrave; khoa học quan s&aacute;t được về ch&uacute;ng ch&iacute;nh l&agrave; thời điểm sự sống mới bắt đầu tr&ecirc;n Tr&aacute;i Đất, theo <em>CNN</em>.</p>\r\n\r\n<p>Trong số 20 cặp hố đen được ph&aacute;t hiện đến nay, c&aacute;c nh&agrave; khoa học tập trung quan s&aacute;t PG 1302-201 v&igrave; độ s&aacute;ng của n&oacute;. Họ ph&aacute;t hiện n&oacute; s&aacute;ng l&ecirc;n 14% sau mỗi 5 năm. Từ đ&oacute;, c&aacute;c nh&agrave; khoa học t&iacute;nh to&aacute;n được khoảng c&aacute;ch giữa ch&uacute;ng, ước t&iacute;nh chưa đầy một tuần &aacute;nh s&aacute;ng, tương đương 322 tỷ km.</p>\r\n\r\n<p>Hố to hơn c&oacute; k&iacute;ch thước gấp một tỷ lần Mặt Trời, một hố xoay quanh hố kia với vận tốc 1/10 tốc độ &aacute;nh s&aacute;ng. Ở khoảng c&aacute;ch n&agrave;y, khi va chạm, ch&uacute;ng sẽ giải ph&oacute;ng năng lượng tương đương 100 triệu vụ nổ si&ecirc;u t&acirc;n tinh, chủ yếu ở dạng s&oacute;ng hấp dẫn.</p>\r\n\r\n<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu hy vọng sẽ t&igrave;m th&ecirc;m được c&aacute;c hố đen sắp va chạm v&agrave; hy vọng, được chứng kiến một vụ va chạm trong v&ograve;ng 10 năm nữa. L&uacute;c đ&oacute;, họ sẽ nghi&ecirc;n cứu được s&oacute;ng hấp dẫn - l&yacute; thuyết m&agrave; nh&agrave; khoa học Albert Einstein đưa ra lần đầu hơn 100 năm trước.</p>\r\n\r\n<p>&quot;Việc ph&aacute;t hiện s&oacute;ng hấp dẫn cho ph&eacute;p ch&uacute;ng t&ocirc;i t&igrave;m hiểu những b&iacute; mật của lực hấp dẫn v&agrave; kiểm chứng l&yacute; thuyết của Einstein tại m&ocirc;i trường khắc nghiệt nhất của vũ trụ ch&uacute;ng ta - hố đen&quot;, Daniel D&#39;Orazio, t&aacute;c giả ch&iacute;nh của nghi&ecirc;n cứu n&oacute;i.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"gravitational-waves-6198-1442974967.png\" src=\"http://localhost/cms/uploads/news/2015_09_24/gravitational-waves-6198-1442974967.png\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Vụ va chạm sẽ giải ph&oacute;ng năng lượng cực lớn, chủ yếu ở dạng s&oacute;ng hấp dẫn. Ảnh minh họa: <em>IB Times</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n', '', '2015-09-24 13:33:20', '0000-00-00 00:00:00', '/uploads/news/2015_09_24/colliding-black-holes-6444-1442974967.jpg', 86, 0, 1, 32, '', 'Hố đe, thiên hà, vũ trụ, sao hỏa', 'Các nhà khoa học dự đoán, trong vòng 100.000 năm hai hố đen khổng lồ sẽ va chạm, tạo nên vụ nổ siêu lớn trong vũ trụ.', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(33, '5,1', 'Vẻ đẹp mùa vàng Mù Cang Chải từ dù lượn', 'Được đánh giá là một trong những địa điểm chơi dù lượn đẹp nhất Việt Nam, Mù Cang Chải mùa này nhìn từ trên dù lượn mang vẻ đẹp thi vị, hùng vĩ và mê đắm.', '<div style=\"float:left; text-align:left\">Được đ&aacute;nh gi&aacute; l&agrave; một trong những địa điểm chơi d&ugrave; lượn đẹp nhất Việt Nam, M&ugrave; Cang Chải m&ugrave;a n&agrave;y nh&igrave;n từ tr&ecirc;n d&ugrave; lượn mang vẻ đẹp thi vị, h&ugrave;ng vĩ v&agrave; m&ecirc; đắm.</div>\r\n\r\n<div style=\"float:left; text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left; text-align:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2015_09_24/1-1411989871_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Nằm trong hoạt động của &ldquo;Tuần tuần Văn h&oacute;a v&agrave; Du lịch Danh thắng Quốc gia Ruộng bậc thang M&ugrave; Cang Chải được diễn ra từ ng&agrave;y 25 đến ng&agrave;y 30/9/2014, C&acirc;u lạc bộ d&ugrave; lượn Vietwings Hanoi đ&atilde; tham gia biểu diễn tr&ecirc;n đỉnh đ&egrave;o Khau Phạ.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2015_09_24/2-1411989875_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Theo đ&aacute;nh gi&aacute; của c&aacute;c th&agrave;nh vi&ecirc;n trong C&acirc;u lạc bộ v&agrave; c&aacute;c phi c&ocirc;ng quốc tế, đ&egrave;o Khau Phạ l&agrave; một trong 4 điểm c&oacute; tiềm năng bay đẹp nhất Việt Nam, cả về điều kiện thời tiết cũng như cảnh sắc thi&ecirc;n nhi&ecirc;n v&agrave; con người.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2015_09_24/3-1411989878_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đường l&ecirc;n M&ugrave; Căng Chải đi qua đỉnh n&uacute;i Khau Phạ, đỉnh n&uacute;i cao nhất trong tứ đại đỉnh đ&egrave;o T&acirc;y Bắc.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2015_09_24/6-1411989887_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&agrave;ng l&ecirc;n cao, du kh&aacute;ch c&agrave;ng thấy th&uacute; vị bởi sự kỳ vĩ, ho&agrave;nh tr&aacute;ng của n&uacute;i rừng, bởi sự trong l&agrave;nh của kh&iacute; hậu v&agrave; bởi sự kh&eacute;o l&eacute;o để tạo n&ecirc;n tuyệt t&aacute;c ruộng bậc thang của người d&acirc;n nơi đ&acirc;y.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2015_09_24/4-1411989881_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Nằm ở độ cao khoảng 1.200 m so với mặt nước biển, Khau Phạ được bao phủ trong biển m&acirc;y bồng bềnh, kh&iacute; hậu m&aacute;t mẻ quanh năm.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2015_09_24/7-1411989890_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>V&agrave;o m&ugrave;a l&uacute;a ch&iacute;n đứng tr&ecirc;n đỉnh đ&egrave;o Khau Phạ du kh&aacute;ch sẽ được thưởng thức vẻ đẹp ngoạn mục của những thửa ruộng bậc thang tuyệt đẹp.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2015_09_24/8-1411989893_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Những con đường v&ograve;ng v&egrave;o lưng đ&egrave;o mềm như dải lụa với những kh&uacute;c cua tay &aacute;o thu v&agrave;o trong tầm mắt.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2015_09_24/5-1411989884_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Ngo&agrave;i ra, Ban tổ chức c&ograve;n chuẩn bị d&ugrave; đ&ocirc;i để du kh&aacute;ch c&ugrave;ng bay ngắm cảnh.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2015_09_24/9-1411989896_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Năm nay, chương tr&igrave;nh thu h&uacute;t sự tham gia của khoảng 120 phi c&ocirc;ng đến từ c&aacute;c c&acirc;u lạc bộ trong nước v&agrave; quốc tế.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"\" class=\"left\" id=\"vne_slide_image_9\" src=\"http://localhost/cms/uploads/news/2015_09_24/10-1411989899_660x0.jpg\" style=\"border:0px; cursor:url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto; float:none; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-align:center\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/ve-dep-mua-vang-mu-cang-chai-tu-du-luon-3086474.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v25/images/graphics/icon_total_01.png) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trong đ&oacute;, c&oacute; cả những phi c&ocirc;ng quốc tế v&agrave; du kh&aacute;ch nước ngo&agrave;i đến từ Ph&aacute;p, &Uacute;c, Mỹ c&ugrave;ng tham gia biểu diễn.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"float:left\">\r\n<p><strong>L&ecirc; Thương</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2015-09-24 13:40:12', '0000-00-00 00:00:00', '/uploads/news/2015_09_24/10-1411989899_660x0.jpg', 1, 0, 1, 33, '', 'Mù cang chải, hà giang, yên bái, phượt', 'Được đánh giá là một trong những địa điểm chơi dù lượn đẹp nhất Việt Nam, Mù Cang Chải mùa này nhìn từ trên dù lượn mang vẻ đẹp thi vị, hùng vĩ và mê đắm.', 1),
(34, '1', 'Từ 1/12, các \"ông lớn\" phải đoạn tuyệt với bất động sản, tài chính', 'Doanh nghiệp Nhà nước không được đầu tư vào bất động sản, ngân hàng, chứng khoán, trừ trường hợp đặc biệt được Chính phủ...', '<div>\r\n<h2>Doanh nghiệp Nh&agrave; nước kh&ocirc;ng được đầu tư v&agrave;o bất động sản, ng&acirc;n h&agrave;ng, chứng kho&aacute;n, trừ trường hợp đặc biệt được Ch&iacute;nh phủ...</h2>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left\"><img alt=\"Từ 1/12, các &quot;ông lớn&quot; phải đoạn tuyệt với bất động sản, tài chính\" src=\"http://localhost/cms//uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-10-1441080213_660x0.jpg\" style=\"border:0px; list-style:none outside none; margin:0px; outline:none 0px; padding:0px; width:500px\" title=\"Từ 1/12, các &quot;ông lớn&quot; phải đoạn tuyệt với bất động sản, tài chính\" />\r\n<p>Một dự &aacute;n c&oacute; vốn của Tập đo&agrave;n Dầu kh&iacute; Việt Nam. Hiện doanh nghiệp n&agrave;y cũng đang khẩn trương tho&aacute;i vốn đầu tư ngo&agrave;i ng&agrave;nh.</p>\r\n<a href=\"http://vneconomy.vn/tim-kiem-tac-gia/song-ha.htm\" rel=\"noffolow\" style=\"list-style: none outside none; margin: 0px; padding: 0px; text-decoration: none; border: 0px; font-size: 11pt; outline: none 0px; font-family: \'Roboto Condensed\'; color: rgb(153, 0, 0); font-weight: bold; text-transform: uppercase;\">SONG H&Agrave;</a>\r\n\r\n<div><strong>Từ 1/12, doanh nghiệp Nh&agrave; nước kh&ocirc;ng được đầu tư v&agrave;o bất động sản, ng&acirc;n h&agrave;ng, chứng kho&aacute;n, trừ trường hợp đặc biệt được Ch&iacute;nh phủ cho ph&eacute;p hoặc doanh nghiệp c&oacute; ng&agrave;nh nghề ch&iacute;nh l&agrave; những lĩnh vực n&ecirc;u tr&ecirc;n.</strong><br />\r\n<br />\r\nĐ&oacute; l&agrave; nội dung ch&iacute;nh của Nghị định 91/2015 về đầu tư vốn nh&agrave; nước v&agrave;o doanh nghiệp v&agrave; quản l&yacute;, sử dụng vốn, t&agrave;i sản tại doanh nghiệp vừa được Thủ tướng Nguyễn Tấn Dũng k&yacute; ban h&agrave;nh.<br />\r\n<br />\r\nTheo nghị định, doanh nghiệp Nh&agrave; nước c&oacute; quyền d&ugrave;ng vốn của m&igrave;nh để đầu tư, kinh doanh ra b&ecirc;n ngo&agrave;i, trong đ&oacute; bao gồm cả đầu tư ra nước ngo&agrave;i, nhưng phải tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c quy định hiện h&agrave;nh của Ch&iacute;nh phủ, trong đ&oacute; c&oacute; những &ldquo;v&ugrave;ng cấm&rdquo; n&oacute;i tr&ecirc;n.<br />\r\n<br />\r\nTrường hợp doanh nghiệp Nh&agrave; nước đ&atilde; g&oacute;p vốn, đầu tư v&agrave;o c&aacute;c lĩnh vực tr&ecirc;n m&agrave; kh&ocirc;ng được Thủ tướng cho ph&eacute;p, phải tiến h&agrave;nh cơ cấu lại v&agrave; chuyển nhượng to&agrave;n bộ vốn đ&atilde; đầu tư theo quy định.<br />\r\n<br />\r\nDoanh nghiệp phải c&oacute; tr&aacute;ch nhiệm bảo to&agrave;n v&agrave; ph&aacute;t triển vốn Nh&agrave; nước đ&atilde; đầu tư, mọi biến động về tăng, giảm vốn phải được b&aacute;o lại.<br />\r\n<br />\r\nTheo chủ trương của Ch&iacute;nh phủ từ nhiều năm trước, c&aacute;c tập đo&agrave;n v&agrave; tổng c&ocirc;ng ty Nh&agrave; nước phải tho&aacute;i hết vốn theo lộ tr&igrave;nh đối với c&aacute;c lĩnh vực nhạy cảm như t&agrave;i ch&iacute;nh, chứng kho&aacute;n, ng&acirc;n h&agrave;ng, bất động sản. Thời gian thực hiện tho&aacute;i vốn chậm nhất l&agrave; đến cuối 2015.<br />\r\n<br />\r\nTheo b&aacute;o c&aacute;o của Ch&iacute;nh phủ, t&iacute;nh đến cuối năm 2011, c&aacute;c tập đo&agrave;n kinh tế Nh&agrave; nước đầu tư ngo&agrave;i ng&agrave;nh gần 23.744 tỷ đồng, trong đ&oacute; lớn nhất l&agrave; lĩnh vực ng&acirc;n h&agrave;ng với 11.403 tỷ đồng, tiếp đến l&agrave; bất động sản với 9.286 tỷ đồng, bảo hiểm l&agrave; 1.682 tỷ đồng, chứng kho&aacute;n l&agrave; 696 tỷ đồng v&agrave; quỹ đầu tư l&agrave; 677 tỷ đồng.<br />\r\n<br />\r\nĐến nay, qu&aacute; tr&igrave;nh tho&aacute;i vốn khỏi 5 lĩnh vực nhạy cảm tr&ecirc;n đ&atilde; được thực hiện, nhưng vẫn chưa được ho&agrave;n tất. Tổng gi&aacute; trị tho&aacute;i được theo gi&aacute; sổ s&aacute;ch đến hết th&aacute;ng 8/2015 đạt 13.797 tỷ đồng, c&ograve;n số thực tế thu về l&agrave; 17.777 tỷ đồng.</div>\r\n</div>\r\n</div>\r\n', '', '2015-10-16 10:01:31', '0000-00-00 00:00:00', '/uploads/news/2015_09_03/vne-10-amazing-modern-architectural-wonders-1-1441080209_660x0.jpg', 3, 0, 1, 34, '', 'bất động sản, thoái vốn, tài chính, ngân hàng, dầu khí', 'Doanh nghiệp Nhà nước không được đầu tư vào bất động sản, ngân hàng, chứng khoán, trừ trường hợp đặc biệt được Chính phủ...', 1),
(35, '5,4', 'Barca mở đường sang Việt Nam', 'Nhà vô địch La Liga sẽ ký hợp tác với một doanh nghiệp Việt Nam trong tháng 3/2016, mở đường cho việc Messi và đồng đội có thể sẽ sang dải đất hình chữ S du đấu tương tự Arsenal, Man City gần đây.', '<div style=\"float:left\">Nh&agrave; v&ocirc; địch La Liga sẽ k&yacute; hợp t&aacute;c với một doanh nghiệp Việt Nam trong th&aacute;ng 3/2016, mở đường cho việc Messi v&agrave; đồng đội c&oacute; thể sẽ sang dải đất h&igrave;nh chữ S du đấu tương tự Arsenal, Man City gần đ&acirc;y.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"barca-mo-duong-sang-viet-nam\" src=\"http://localhost/cms/uploads/news/2016_02_29/a2-7512-1456707944.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Người h&acirc;m mộ Việt Nam sẽ c&oacute; cơ hội để tận mắt chi&ecirc;m ngưỡng c&aacute;c ng&ocirc;i sao của Barca.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo nguồn tin của&nbsp;<em>VnExpress</em>, th&aacute;ng sau, Barca sẽ k&yacute; hợp đồng hợp t&aacute;c với một doanh nghiệp của Việt Nam. Một ng&ocirc;i sao h&agrave;ng đầu của c&aacute;c nh&agrave; đương kim v&ocirc; địch Champions League v&agrave; La Liga sẽ hiện diện trong lễ k&yacute; kết n&agrave;y.</p>\r\n\r\n<p>&quot;Đ&acirc;y l&agrave; một tin vui, v&agrave; c&oacute; thể l&agrave; khởi đầu cho việc Barca sẽ sang Việt Nam du đấu trong tương lai kh&ocirc;ng xa&quot;, một l&atilde;nh đạo VFF giấu t&ecirc;n chia sẻ. &quot;C&aacute;c đội b&oacute;ng h&agrave;ng đầu thế giới thường chỉ đi du đấu c&aacute;c nước Đ&ocirc;ng Nam &Aacute; khi họ c&oacute; mối quan hệ l&agrave;m ăn ở đ&oacute;, th&ecirc;m v&agrave;o đ&oacute; l&agrave; chi ph&iacute; l&ecirc;n tới h&agrave;ng triệu đ&ocirc;la&rdquo;.</p>\r\n\r\n<p>Barca l&agrave; đội b&oacute;ng h&agrave;ng đầu thế giới, sở hữu h&agrave;ng loạt ng&ocirc;i sao lớn như Messi, Neymar, Suarez, Pique... Năm 2015, đội b&oacute;ng xứ Catalonya gi&agrave;nh &ldquo;c&uacute; ăn năm vĩ đại&rdquo; khi đăng quang ở cả Champions League, Si&ecirc;u Cup ch&acirc;u &Acirc;u, La Liga, Cup nh&agrave; Vua v&agrave; FIFA Club World Cup.</p>\r\n\r\n<p>Trong ba năm qua, người h&acirc;m mộ Việt Nam đ&atilde; được đ&oacute;n hai đội b&oacute;ng lừng danh thế giới l&agrave; Arsenal (năm 2013) v&agrave; Man City (năm 2015). Hai CLB của Ngoại hạng Anh đều đến Việt Nam sau khi k&yacute; hợp đồng kinh doanh với doanh nghiệp gồm Eximbank, Tập đo&agrave;n HAGL (Arsenal) v&agrave; Ng&acirc;n h&agrave;ng SHB (Man City).</p>\r\n\r\n<p>Việc mời c&aacute;c đội b&oacute;ng h&agrave;ng đầu thế giới sang Việt Nam du đấu đ&ograve;i hỏi kinh ph&iacute; rất lớn v&agrave; kh&ocirc;ng thể c&oacute; l&atilde;i. V&igrave; vậy, c&aacute;c &ocirc;ng bầu đứng ra thực hiện những thương vụ n&agrave;y, b&ecirc;n cạnh nền tảng t&agrave;i ch&iacute;nh mạnh, c&ograve;n phải c&oacute; đam m&ecirc; b&oacute;ng đ&aacute; ch&aacute;y bỏng.</p>\r\n\r\n<p style=\"text-align:right\"><strong>L&acirc;m Thoả</strong></p>\r\n</div>\r\n', '', '2016-02-29 10:10:50', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/a2-7512-1456707944.jpg', 0, 0, 1, 35, '', '', '', 1),
(36, '4', 'Các sao Man Utd dò hỏi cầu thủ Chelsea về Mourinho', 'Một số trụ cột của hai CLB là đồng đội của nhau ở đội tuyển quốc gia đã nói chuyện với nhau về HLV Bồ Đào Nha và cả lý do ông bị mất việc ở Stamford Bridge.', '<div style=\"float:left\">Một số trụ cột của hai CLB l&agrave; đồng đội của nhau ở đội tuyển quốc gia đ&atilde; n&oacute;i chuyện với nhau về HLV Bồ Đ&agrave;o Nha v&agrave; cả l&yacute; do &ocirc;ng bị mất việc ở Stamford Bridge.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Tờ&nbsp;<em>Sun Sport</em>&nbsp;số ra h&ocirc;m 28/2 tiết lộ rằng c&oacute; &iacute;t nhất hai cầu thủ của Man Utd đ&atilde; trao đổi với cầu thủ Chelsea để hiểu r&otilde; hơn về nh&agrave; cầm qu&acirc;n được cho l&agrave; nhiều khả năng sẽ thế chỗ Van Gaal v&agrave;o m&ugrave;a h&egrave; năm nay.</p>\r\n\r\n<p>Man Utd m&ugrave;a n&agrave;y thi đấu thất thường, khiến Louis van Gaal li&ecirc;n tục phải hứng chịu chỉ tr&iacute;ch. CLB n&agrave;y vẫn nằm ngo&agrave;i top bốn Ngoại hạng Anh sau khi thắng 3-2&nbsp; ứng vi&ecirc;n v&ocirc; địch Arsenal tr&ecirc;n s&acirc;n Old Trafford, h&ocirc;m 28/2.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"cac-sao-man-utd-do-hoi-cau-thu-chelsea-ve-mourinho\" src=\"http://localhost/cms/uploads/news/2016_02_29/top-2908-1456701053.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&aacute;c cầu thủ Man Utd muốn biết th&ecirc;m th&ocirc;ng tin về người rất c&oacute; thể sẽ l&agrave;m thầy của họ từ m&ugrave;a tới v&agrave; đồng nghiệp ở Chelsea l&agrave; nguồn th&ocirc;ng tin gi&aacute; trị.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Thời gian gần đ&acirc;y, một số b&aacute;o Anh li&ecirc;n tục đưa tin Mourinho c&oacute; thể sẽ trở th&agrave;nh t&acirc;n HLV Man Utd v&agrave;o m&ugrave;a giải tới, theo hợp đồng ba năm.</p>\r\n\r\n<p>Nhưng cũng c&oacute; nhiều nguồn tin tr&aacute;i ngược, cho rằng chiến lược gia người Bồ Đ&agrave;o Nha chưa c&oacute; cuộc đ&agrave;m ph&aacute;n n&agrave;o về khả năng tiếp quản ghế n&oacute;ng ở Old Trafford.</p>\r\n\r\n<p>Theo tờ&nbsp;<em>Sun</em>, ban l&atilde;nh đạo Man Utd, trong đ&oacute; c&oacute; Ph&oacute; chủ tịch điều h&agrave;nh Ed Woodward, vẫn c&ograve;n đang xem x&eacute;t nhiều vấn đề để x&aacute;c định liệu Mourinho c&oacute; phải l&agrave; một HLV th&iacute;ch hợp dẫn dắt CLB tới th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Mourinho gi&uacute;p Chelsea đoạt chức v&ocirc; địch Ngoại hạng Anh v&agrave; Cup Li&ecirc;n đo&agrave;n m&ugrave;a trước. Nhưng &ocirc;ng bị sa thải chỉ bảy th&aacute;ng sau đ&oacute;, hồi th&aacute;ng 12/2015. Gi&aacute;m đốc thể thao Chelsea, Michael Emenalo, cho biết HLV 53 tuổi phải ra đi v&igrave; &ldquo;c&oacute; mối bất h&ograve;a với c&aacute;c cầu thủ&rdquo;.</p>\r\n\r\n<p>C&aacute; t&iacute;nh v&agrave; phong c&aacute;ch cầm qu&acirc;n của Mourinho l&agrave; một mối lo ngại lớn với ban l&atilde;nh đạo Man Utd khi họ c&acirc;n nhắc lựa chọn &ocirc;ng thế chỗ Van Gaal.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Nguyễn Ph&aacute;t</strong></p>\r\n</div>\r\n', '', '2016-02-29 10:12:57', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/top-2908-1456701053.jpg', 0, 0, 1, 36, '', '', '', 1),
(37, '4', 'Ronaldo, Lampard, Zanetti, Ibra vào nhóm trò giỏi của Mourinho', '\"Người đặc biệt\" đưa ra đánh giá về những cầu thủ hay nhất mà ông từng huấn luyện trong sự nghiệp, trong đó đặc biệt đề cao Frank Lampard.', '<div style=\"float:left\">&quot;Người đặc biệt&quot; đưa ra đ&aacute;nh gi&aacute; về những cầu thủ hay nhất m&agrave; &ocirc;ng từng huấn luyện trong sự nghiệp, trong đ&oacute; đặc biệt đề cao Frank Lampard.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Lampard lu&ocirc;n chơi trong vai tr&ograve; tiền vệ, nhưng l&agrave; cầu thủ ghi b&agrave;n nhiều nhất trong lịch sử Chelsea với 211 lần lập c&ocirc;ng. Đ&acirc;y l&agrave; một trong những l&yacute; do khiến cựu HLV Jose Mourinho đ&aacute;nh gi&aacute; Lampard kh&ocirc;ng chỉ hay nhất tại Chelsea m&agrave; c&ograve;n cả nước Anh.</p>\r\n\r\n<p>&quot;Tại Chelsea, trong nhiệm kỳ đầu của t&ocirc;i, cầu thủ ưng &yacute; nhất l&agrave; Lampard. C&oacute; lẽ cậu ấy c&ograve;n l&agrave; cầu thủ hay nhất Ngoại hạng Anh trong 10 năm qua&quot;, Mourinho nhận x&eacute;t trong cuộc phỏng vấn h&ocirc;m 25/2.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"ronaldo-lampard-zanetti-ibra-vao-nhom-tro-gioi-cua-mourinho\" src=\"http://localhost/cms/uploads/news/2016_02_29/ronaldo2-7510-1456474165.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ronaldo v&agrave; Lampard c&oacute; điểm chung l&agrave; từng ghi được rất nhiều b&agrave;n thắng. Ảnh:<em>Reuters</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đ&aacute;nh gi&aacute; cao Lampard, nhưng Mourinho chưa thể chọn tiền vệ n&agrave;y l&agrave; học tr&ograve; giỏi nhất. &quot;Người đặc biệt&quot; từng dẫn dắt FC Porto, Inter v&agrave; Real Madrid, n&ecirc;n c&oacute; cơ hội l&agrave;m việc với kh&ocirc;ng &iacute;t t&agrave;i năng xuất ch&uacute;ng.</p>\r\n\r\n<p>&quot;Khi đến Inter, t&ocirc;i c&oacute; Ibrahimovic v&agrave; Zanetti. Khi tới Real, t&ocirc;i c&oacute; Ronaldo. Trong lần trở lại Chelsea vừa qua, t&ocirc;i cũng thấy một số cầu thủ h&agrave;ng đầu kh&aacute;c&quot;, Mourinho cho biết th&ecirc;m.</p>\r\n\r\n<p>Trong khi Mourinho đ&aacute;nh gi&aacute; cao Lampard, một học tr&ograve; cũ l&agrave; Deco xếp Paul Scholes ở tầm cao hơn. Nhận x&eacute;t n&agrave;y được đ&uacute;c r&uacute;t từ qu&aacute; tr&igrave;nh theo d&otilde;i suốt sự nghiệp.</p>\r\n\r\n<p>&quot;Paul Scholes c&oacute; phong c&aacute;ch kh&aacute;c biệt so với c&aacute;c tiền vệ Anh kh&aacute;c, n&ecirc;n t&ocirc;i nghĩ anh ấy l&agrave; cầu thủ Anh đ&aacute; tuyến giữa hay nhất. Scholes cũng l&agrave; một trong những cầu thủ hay nhất thế giới từng c&oacute;&quot;, Deco n&oacute;i. &quot;Hiện cũng c&oacute; một số tiền vệ đạt được ảnh hưởng tương tự như Modric tại Real, Iniesta hiện tại v&agrave; Xavi trước đ&acirc;y ở Barca&quot;.&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><strong>Lan Phương</strong></p>\r\n</div>\r\n', '', '2016-02-29 10:15:58', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/ronaldo2-7510-1456474165.jpg', 0, 0, 1, 37, '', '', '', 1),
(38, '4', 'Mourinho: \'Tôi muốn trở lại vào đầu mùa giải mới\'', 'HLV người Bồ Đào Nha cho biết điều tốt nhất ông mong đợi là làm việc ở CLB mới ngay mùa giải sang năm', '<div style=\"float:left\">HLV người Bồ Đ&agrave;o Nha cho biết điều tốt nhất &ocirc;ng mong đợi l&agrave; l&agrave;m việc ở CLB mới ngay m&ugrave;a giải sang năm.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khi chiếc ghế HLV ở Man Utd của Louis Van Gaal ng&agrave;y một lung lay, Jose Mourinho được cho l&agrave; sẽ thế chỗ trước khi m&ugrave;a giải n&agrave;y kh&eacute;p lại. Xuất hiện ở Singapore trong một sự kiện h&ocirc;m 24/2, cựu HLV Chelsea từ chối trả lời những c&acirc;u hỏi li&ecirc;n quan đến đội chủ s&acirc;n Old Trafford:&nbsp;&quot;Đ&acirc;y l&agrave; c&acirc;u hỏi đ&aacute;ng gi&aacute; một triệu đ&ocirc;la đấy&quot;, Mourinho n&oacute;i.</p>\r\n\r\n<p>HLV 53 tuổi cho biết th&ecirc;m: &quot;T&ocirc;i cảm thấy rằng tốt hơn hết l&agrave; n&ecirc;n chờ đợi, kh&ocirc;ng n&ecirc;n qu&aacute; vội v&atilde;. T&ocirc;i đang đợi một thời điểm th&iacute;ch hợp, một bước đi đ&uacute;ng đắn. Bắt đầu m&ugrave;a giải sau với một CLB mới l&agrave; điều tốt nhất đối với t&ocirc;i&quot;.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"mourinho-toi-muon-tro-lai-vao-dau-mua-giai-moi\" src=\"http://localhost/cms/uploads/news/2016_02_29/3182189000000578-3461712-image-4204-3080-1456346573.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mourinho trả lời phỏng vấn ở Singapore. Ảnh:&nbsp;<em>Reuters.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Mourinho bị Chelsea sa thải v&agrave;o th&aacute;ng 12 năm ngo&aacute;i, bảy th&aacute;ng sau khi gi&agrave;nh chức v&ocirc; địch giải Ngoại hạng Anh. &Ocirc;ng được li&ecirc;n hệ sẽ trở lại Inter Milan hay Real Madrid nhưng đều kh&ocirc;ng diễn ra. Truyền th&ocirc;ng Anh trong hai tuần qua đưa tin gần như nh&agrave; cầm qu&acirc;n người Bồ Đ&agrave;o Nha sẽ ngồi l&ecirc;n ghế n&oacute;ng ở Old Trafford.</p>\r\n\r\n<p>&quot;Kh&ocirc;ng ai biết rồi chuyện g&igrave; sẽ tới. T&ocirc;i đ&atilde; đọc được rất nhiều tin đồn. Họ bảo t&ocirc;i tới Trung Quốc, tới Italy. H&ocirc;m nay t&ocirc;i c&oacute; mặt ở đ&acirc;y v&agrave; người ta nghĩ t&ocirc;i sẽ l&agrave; HLV của tuyển quốc gia Singapore. Nhưng thực tế l&agrave; t&ocirc;i thất nghiệp v&agrave; ở thời điểm n&agrave;y, t&ocirc;i hạnh ph&uacute;c với điều đ&oacute;&quot;, Mourinho chia sẻ.</p>\r\n\r\n<p>Tuần trước, Gi&aacute;m đốc điều h&agrave;nh của Inter, b&agrave; Bedy Moratti sau bữa ăn tối th&acirc;n mật với Mourinho tiết lộ HLV người Bồ Đ&agrave;o Nha sẽ tới Man Utd.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Hữu Nhơn</strong></p>\r\n</div>\r\n', '', '2016-02-29 10:52:28', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/3182189000000578-3461712-image-4204-3080-1456346573.jpg', 0, 0, 1, 38, '', '', '', 1),
(40, '4', 'Trường đua Moto GP thu nhỏ tại Việt Nam', 'Trường đua xe chuyên nghiệp đầu tiên tại Việt Nam sắp đi vào hoạt động với quy mô và sự chuyên nghiệp cao.', '<div style=\"float:left\">Trường đua xe chuy&ecirc;n nghiệp đầu ti&ecirc;n tại Việt Nam sắp đi v&agrave;o hoạt động với quy m&ocirc; v&agrave; sự chuy&ecirc;n nghiệp cao.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2016_02_29/15-1456551147_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Toạ lạc tại&nbsp;x&atilde; Thạnh Đức, huyện Bến Lực, tỉnh Long An, trường đua xe HappyLand l&agrave; trường đua m&ocirc;t&ocirc; &ndash; &ocirc;t&ocirc; Rally theo ti&ecirc;u chuẩn quốc tế đầu ti&ecirc;n tại Việt Nam. Diện t&iacute;ch trường đua l&agrave; 139.000m2, c&oacute; sức chứa 25.000 kh&aacute;n giả.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2016_02_29/16-1456551148_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trong trường đua c&oacute; nhiều&nbsp;khu phức hợp như 1,4km đường nhựa d&agrave;nh cho xe m&ocirc; t&ocirc;; 1,1km đường offroad d&agrave;nh cho xe c&agrave;o c&agrave;o v&agrave; xe ATV, 400m đường đua Drag theo ti&ecirc;u chuẩn; 7,5km đường đua d&agrave;nh cho &ocirc; t&ocirc; Rally, 18.000m2 s&acirc;n tập d&agrave;nh cho Moto Gymkhana, 5.000m2 s&acirc;n tập xe đạp v&agrave; m&ocirc; t&ocirc; cho trẻ em từ 5 tuổi trở l&ecirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2016_02_29/17-1456551149_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đ&acirc;y l&agrave; trường đua quy m&ocirc; v&agrave; chuy&ecirc;n nghiệp đầu ti&ecirc;n tại Việt Nam đang được x&acirc;y dựng. Theo tiết lộ từ chủ dự &aacute;n, trường đua đ&atilde; ho&agrave;n th&agrave;nh phần lớn c&aacute;c hạng mục quan trọng v&agrave; đang chờ ng&agrave;y đi v&agrave;o hoạt động v&agrave;o cuối th&aacute;ng 3/2016.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2016_02_29/26-1456551149_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trường đua n&agrave;y ra đời nhằm chuy&ecirc;n nghiệp ho&aacute; m&ocirc;n đua xe tại Việt Nam hiện tại c&ograve;n ph&aacute;t triển nhỏ lẻ v&agrave; chưa thật sự chuy&ecirc;n nghiệp.&nbsp;Đ&acirc;y l&agrave; s&acirc;n chơi l&agrave;nh mạnh, an to&agrave;n cho những người đam m&ecirc; tốc độ.&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2016_02_29/43-1456551151_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>B&ecirc;n cạnh tổ chức đua xe, trường đua c&ograve;n l&agrave; nơi để đ&agrave;o tạo, giảng dạy v&agrave; huấn luyện c&aacute;c kho&aacute; về đua xe bắt đầu từ độ tuổi 5 trở l&ecirc;n.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2016_02_29/47-1456551152_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trường đua với hệ thống kh&aacute;n đ&agrave;i c&oacute; sức chưa 2000 người v&agrave; nhiều ph&ograve;ng chức năng kh&aacute;c.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2016_02_29/51-1456551153_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đường đua xe m&ocirc; t&ocirc; được ưu ti&ecirc;n v&agrave; đ&acirc;y sẽ l&agrave; địa chỉ y&ecirc;u th&iacute;ch của c&aacute;c raider khi hiện nay họ chỉ đua v&ograve;ng quanh c&aacute;c s&acirc;n vận động.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2016_02_29/57-1456551155_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Đường đua n&agrave;y b&ecirc;n cạnh nền đất th&igrave; c&ograve;n được bổ sung th&ecirc;m c&aacute;c dạng địa h&igrave;nh kh&aacute;c như đ&aacute;, b&ugrave;n, nước,...để đ&aacute;p ứng nhu cầu của bộ m&ocirc;n offroad. Đường đua offroad sẽ phục vụ cho xe hơi, m&ocirc; t&ocirc; v&agrave; cả xe đạp với khả năng đ&aacute;p ứng 24 chiếc tham gia c&ugrave;ng một l&uacute;c. Trong khu&ocirc;n khổ của đường đua offroad sẽ c&oacute; 1 đoạn đường d&agrave;i 1,5 km phục vụ cho c&aacute;c giải đua Rally xe b&aacute;n tải.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2016_02_29/happyland-circuit-flycam-panorama-1-1456551156_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Khi bắt đầu đưa v&agrave;o sử dụng, c&aacute;c chuy&ecirc;n gia về đua xe từ Malaysia, Th&aacute;i Lan sẽ trực tiếp sang Việt Nam thị s&aacute;t, giảng dạy v&agrave; truyền đạt kinh nghiệm về đua xe cho giới đam m&ecirc; tốc độ Việt Nam.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_9\" src=\"http://localhost/cms/uploads/news/2016_02_29/happyland-circuit-flycam-panorama-2-1456551157_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trong c&aacute;c ng&agrave;y 29-30/4/2016 trường đua sẽ bắt đầu tổ chức c&aacute;c giải đua, trong đ&oacute; c&oacute; Giải v&ocirc; địch m&ocirc; t&ocirc; Việt Nam v&agrave; Giải &ocirc;t&ocirc; Rally Việt Nam.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Trường đua Moto GP thu nhỏ tại Việt Nam - ảnh thể thao\" class=\"left\" id=\"vne_slide_image_10\" src=\"http://localhost/cms/uploads/news/2016_02_29/happyland-circuit-panorama-3-1456551159_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" />&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Trường đua sẽ mở cửa h&agrave;ng ng&agrave;y từ 6h s&aacute;ng đến 9h tối cho c&aacute;c VĐV, giới đam m&ecirc; tốc độ tập luyện v&agrave; thi đấu.</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"float:left\">\r\n<p style=\"text-align:right\"><strong>Đức Đồng</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2016-02-29 11:02:14', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/57-1456551155_660x0.jpg', 1, 0, 1, 40, '', '', '', 1),
(41, '4', 'Tỷ phú Iran bỏ Arsenal để đồng sở hữu Everton', 'Farhad Moshiri, doanh nhân mang hai quốc tịch Iran và Anh, mới chính thức trở thành đồng chủ sở hữu Everton, sau khi mua lại 49,9% cổ phần trong CLB này.', '<div style=\"float:left\">Farhad Moshiri, doanh nh&acirc;n mang hai quốc tịch Iran v&agrave; Anh, mới ch&iacute;nh thức trở th&agrave;nh đồng chủ sở hữu Everton, sau khi mua lại 49,9% cổ phần trong CLB n&agrave;y.</div>\r\n\r\n<div style=\"float:left\">\r\n<p>Moshiri h&ocirc;m thứ s&aacute;u 26/2 đ&atilde; b&aacute;n hết cổ phần của &ocirc;ng tại Arsenal cho đối t&aacute;c Alisher Usmanov. Trước đ&oacute;, hai nh&agrave; đầu tư n&agrave;y l&agrave; đồng sở hữu Red and White Holdings, c&ocirc;ng ty nắm giữ 30% cổ phần tại CLB Arsenal.</p>\r\n\r\n<p>Tỷ ph&uacute; 60 tuổi hiện sinh sống tại London buộc phải l&agrave;m vậy để được ph&eacute;p đầu tư lớn v&agrave;o Everton v&agrave; trở th&agrave;nh đồng chủ sở hữu CLB n&agrave;y, theo quy định của giải Ngoại hạng Anh.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"ty-phu-iran-bo-arsenal-de-dong-so-huu-everton\" src=\"http://localhost/cms/uploads/news/2016_02_29/morishi-7974-1456649841.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Everton trở th&agrave;nh đội b&oacute;ng mới nhất ở Ngoại hạng Anh được c&aacute;c nh&agrave; đầu tư ngoại mua cổ phần.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo truyền th&ocirc;ng Anh,&nbsp;<strong>Moshiri đ&atilde; phải chi 242 triệu đ&ocirc;la để ho&agrave;n tất thương vụ mua lại 49,9% cổ phần Everton.</strong>&nbsp;C&aacute;c cuộc đ&agrave;m ph&aacute;n giữa đ&ocirc;i b&ecirc;n k&eacute;o d&agrave;i hơn một năm qua. Khoản đầu tư mới n&agrave;y được cam kết sẽ d&ugrave;ng v&agrave;o việc tăng cường lực lượng đội h&igrave;nh một, v&agrave; x&acirc;y một s&acirc;n vận động mới.</p>\r\n\r\n<p>H&ocirc;m 27/2, CLB n&agrave;y đ&atilde; c&oacute; th&ocirc;ng b&aacute;o tr&ecirc;n trang web ch&iacute;nh thức.</p>\r\n\r\n<p>Trong đ&oacute;, Chủ tịch Bill Kenwright c&oacute; đoạn ph&aacute;t biểu: &ldquo;Sau thời gian d&agrave;i t&igrave;m kiếm, t&ocirc;i tin rằng ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m thấy một đối t&aacute;c ho&agrave;n hảo để c&ugrave;ng đưa CLB tiến l&ecirc;n. T&ocirc;i đ&atilde; biết r&otilde; về Farhad trong hơn 18 th&aacute;ng l&agrave;m việc vừa qua. Kiến thức về b&oacute;ng đ&aacute; cũng như khả năng t&agrave;i ch&iacute;nh của &ocirc;ng ấy đ&atilde; thuyết phục được t&ocirc;i rằng &ocirc;ng l&agrave; người th&iacute;ch hợp để hỗ trợ Everton ph&aacute;t triển&rdquo;.</p>\r\n\r\n<p>Trong khi đ&oacute;, Moshiri ph&aacute;t biểu: &ldquo;T&ocirc;i rất vui mừng khi trở th&agrave;nh một cổ đ&ocirc;ng tại Everton. T&ocirc;i rất h&agrave;o hứng khi được s&aacute;t c&aacute;nh c&ugrave;ng Chủ tịch Bill Kenwright với mục ti&ecirc;u mang th&agrave;nh c&ocirc;ng tới cho Everton trong tương lai&rdquo;.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin:0px auto 10px; max-width:100%; padding:0px; width:470px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"ty-phu-iran-bo-arsenal-de-dong-so-huu-everton-1\" src=\"http://localhost/cms/uploads/news/2016_02_29/ever-3624-1456649841.jpg\" style=\"border:0px; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; width:470px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Sự xuất hiện v&agrave; nguồn tiền của đồng chủ sở hữu ngoại quốc hứa hẹn sẽ gi&uacute;p Everton lớn mạnh hơn, bền vững hơn.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Hồi đầu th&aacute;ng n&agrave;y, Everton cũng đ&agrave;m ph&aacute;n với c&aacute;c nh&agrave; đầu tư người Mỹ, John Jay Moores v&agrave; Charles Noell. Thương vụ tiếp quản n&agrave;y được truyền th&ocirc;ng Anh cho l&agrave; c&oacute; tiến triển tốt. Nhưng cuối c&ugrave;ng CLB n&agrave;y đ&atilde; x&aacute;c định khoản đầu tư của Moshiri l&agrave; giải ph&aacute;p tốt nhất cho sự ph&aacute;t triển l&acirc;u d&agrave;i của Everton.</p>\r\n\r\n<p>Theo&nbsp;<em>Forbes,</em>&nbsp;t&agrave;i sản c&aacute; nh&acirc;n của Moshiri v&agrave;o khoảng 1,8 tỷ đ&ocirc;la. &Ocirc;ng l&agrave; người Iran gi&agrave;u thứ năm tr&ecirc;n thế giới.</p>\r\n\r\n<p>Moshiri sở hữu v&agrave; c&oacute; cổ phần trong nhiều c&ocirc;ng ty th&eacute;p v&agrave; năng lượng ở Anh v&agrave; Nga.</p>\r\n\r\n<p style=\"text-align: right;\"><strong>Nguyễn Ph&aacute;t</strong></p>\r\n</div>\r\n', '', '2016-02-29 11:17:18', '0000-00-00 00:00:00', '/uploads/news/2016_02_29/morishi-7974-1456649841.jpg', 0, 0, 1, 41, '', '', '', 1);
INSERT INTO `t_news` (`id`, `cat_id`, `title`, `brief`, `content`, `author`, `date_created`, `date_edit`, `img`, `hits`, `home`, `status`, `ordering`, `meta_title`, `meta_keyword`, `meta_description`, `type`) VALUES
(42, '5,4,1', 'Những lều ngủ đang hot cho mùa du lịch 30/4', 'Những căn lều bằng gỗ, lợp lá cọ nằm ngay bên bờ biển đang trở thành điểm đến được săn lùng nhiều nhất vào mùa hè tới bởi thiết kế độc đáo và gần gũi thiên nhiên.', '<div style=\"float:left\">Những căn lều bằng gỗ, lợp l&aacute; cọ nằm ngay b&ecirc;n bờ biển đang trở th&agrave;nh điểm đến được săn l&ugrave;ng nhiều nhất v&agrave;o m&ugrave;a h&egrave; tới bởi thiết kế độc đ&aacute;o v&agrave; gần gũi thi&ecirc;n nhi&ecirc;n.</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<div style=\"float:left\">\r\n<div>\r\n<div id=\"article_content\">\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_0\" src=\"http://localhost/cms/uploads/news/2016_04_02/1-1459478874_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p><strong>Lều du mục - Cam Ranh</strong></p>\r\n\r\n<p>Mới mở được một thời gian ngắn nhưng lều ngủ b&ecirc;n bờ biển Cam Ranh (Kh&aacute;nh H&ograve;a) đ&atilde; nhanh ch&oacute;ng lấy được cảm t&igrave;nh của giới trẻ với thiết kế độc đ&aacute;o nhưng kh&ocirc;ng k&eacute;m phần l&atilde;ng mạn. Những căn lều ngủ xinh xắn n&agrave;y nằm trong khu du lịch sinh th&aacute;i tại th&ocirc;n B&igrave;nh Lập, x&atilde; Cam Lập, TP Cam Ranh, c&aacute;ch Nha Trang khoảng 90 km. Ảnh:<em>Saobiencamranh</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_1\" src=\"http://localhost/cms/uploads/news/2016_04_02/2-1459478875_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Lều được l&agrave;m bằng gỗ, b&ecirc;n trong c&oacute; nệm vừa đủ cho 2 người ngủ, gối, chăn, đ&egrave;n, quạt b&agrave;n. Gi&aacute; lều một đ&ecirc;m l&agrave; 500.000 đồng. Tại đ&acirc;y, du kh&aacute;ch c&oacute; thể thu&ecirc; thuyền tham quan c&aacute;c đảo l&acirc;n cận, tổ chức tiệc nướng, đốt lửa trại. Ảnh:<em>Saobiencamranh</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_2\" src=\"http://localhost/cms/uploads/news/2016_04_02/4-1459478875_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>C&aacute;c lều được đặt b&ecirc;n bờ biển để tận hưởng khung cảnh kho&aacute;ng đạt hoặc dưới t&aacute;n c&acirc;y r&acirc;m m&aacute;t. Thiết kế đơn giản nhưng rất chất n&agrave;y gi&uacute;p du kh&aacute;ch c&oacute; thể h&ograve;a m&igrave;nh với thi&ecirc;n nhi&ecirc;n v&agrave; tận hưởng kh&ocirc;ng gian trong l&agrave;nh với tiếng chim, tiếng s&oacute;ng. Ảnh:&nbsp;<em>Saobiencamranh</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_3\" src=\"http://localhost/cms/uploads/news/2016_04_02/5-1459478876_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p><strong>Lều vịt - C&ocirc; T&ocirc;</strong></p>\r\n\r\n<p>Đ&atilde; đ&oacute;n kh&aacute;ch nhiều năm nhưng sức h&uacute;t của những căn lều vịt b&ecirc;n bờ biển Hồng V&agrave;n, C&ocirc; T&ocirc; (Quảng Ninh) dường như vẫn chưa giảm nhiệt. Lều được l&agrave;m bằng chất liệu th&acirc;n thiện m&ocirc;i trường như gỗ, l&aacute; cọ m&agrave; vẫn đầy đủ tiện nghi b&ecirc;n trong với giường gối, b&agrave;n, tủ v&agrave; ph&ograve;ng vệ sinh ri&ecirc;ng. Ảnh:&nbsp;<em>Coto Eco Lodge</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_4\" src=\"http://localhost/cms/uploads/news/2016_04_02/6-1459478876_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Chỉ cần mở c&aacute;nh cửa l&agrave; du kh&aacute;ch c&oacute; thể thu v&agrave;o tầm mắt l&agrave;n nước biển trong xanh nổi tiếng của C&ocirc; T&ocirc; với c&aacute;t trắng mịn m&agrave;ng. Gi&aacute; ph&ograve;ng một đ&ecirc;m tại đ&acirc;y l&agrave; 500.000 đồng cho hai người. Khu nghỉ n&agrave;y nằm c&aacute;ch trung t&acirc;m thị trấn C&ocirc; T&ocirc; khoảng 6 km. Ảnh:&nbsp;<em>Coto Eco Lodge</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_5\" src=\"http://localhost/cms/uploads/news/2016_04_02/7-1459478877_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Ngo&agrave;i nghỉ dưỡng v&agrave; tham quan c&aacute;c điểm du lịch tr&ecirc;n đảo C&ocirc; T&ocirc;, du kh&aacute;ch c&oacute; thể đặt tiệc nướng BBQ tr&ecirc;n biển để chia sẻ những gi&acirc;y ph&uacute;t l&atilde;ng mạn với gia đ&igrave;nh v&agrave; bạn b&egrave;. Set BBQ c&oacute; gi&aacute; từ 350.000 đồng một người. Ảnh:&nbsp;<em>Coto Eco Lodge</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_6\" src=\"http://localhost/cms/uploads/news/2016_04_02/14-1459479160_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p><strong>Lều gỗ - Lagi</strong></p>\r\n\r\n<p>Coco Beachcamp l&agrave; c&aacute;i t&ecirc;n kh&ocirc;ng c&ograve;n xa lạ với c&aacute;c bạn trẻ bởi phong c&aacute;ch cắm trại năng động v&agrave; ph&oacute;ng kho&aacute;ng ngay b&ecirc;n bờ biển Lagi (B&igrave;nh Thuận). Tuy nhi&ecirc;n, năm nay nơi n&agrave;y một lần nữa thu h&uacute;t những người th&iacute;ch s&aacute;ng tạo v&agrave; mới lạ với kiểu lều gỗ b&ecirc;n bờ biển (Beach Hut). Ảnh:&nbsp;<em>Coco Beachcamp</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_7\" src=\"http://localhost/cms/uploads/news/2016_04_02/12345620-506103412908071-8034651347028597910-n-1459479169_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p>Căn lều được thiết kế với gỗ v&agrave; k&iacute;nh c&ugrave;ng r&egrave;m che điệu đ&agrave;, tạo cảm gi&aacute;c vừa l&atilde;ng mạn, vừa hiện đại, rất ri&ecirc;ng tư nhưng vẫn gần gũi thi&ecirc;n nhi&ecirc;n. Gi&aacute; ph&ograve;ng một đ&ecirc;m từ 600.000 - 800.000 đồng. Ảnh:&nbsp;<em>Coco Beachcamp</em></p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"float:left; text-align:center\"><img alt=\"Những lều ngủ đang hot cho mùa du lịch 30/4\" class=\"left\" id=\"vne_slide_image_8\" src=\"http://localhost/cms/uploads/news/2016_04_02/12342825-506103372908075-3517736039483032594-n-1459479172_660x0.jpg\" style=\"border:0px; cursor:url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto; float:none; line-height:0; margin:0px; max-width:100%; padding:0px\" /><a class=\"btn_icon_show_slide_show\" href=\"http://dulich.vnexpress.net/photo/anh-video/nhung-leu-ngu-dang-hot-cho-mua-du-lich-304-3379505.html#\" style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(&quot;images/graphics/icon_total_01.png&quot;) -178px -21px no-repeat;\">&nbsp;</a></div>\r\n\r\n<div style=\"float:left\">\r\n<p><strong>Lều gỗ - Lagi</strong></p>\r\n\r\n<p>Với căn lều đầy đủ tiện nghi như m&aacute;y lạnh n&agrave;y, bạn sẽ kh&ocirc;ng phải lo nắng n&oacute;ng m&agrave; vẫn c&oacute; thể ngắm biển v&agrave; thư gi&atilde;n. Khu du lịch n&agrave;y nằm c&aacute;ch TP HCM 160 km. C&aacute;c hoạt động vui chơi giải tr&iacute; tại đ&acirc;y gồm lướt v&aacute;n, ch&egrave;o thuyền hơi, ch&egrave;o thuyền kayak, c&acirc;u c&aacute;... Ảnh:&nbsp;<em>Coco Beachcamp</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '2016-04-02 15:47:32', '0000-00-00 00:00:00', '/uploads/news/2016_04_02/4-1459478875_660x0.jpg', 6, 0, 0, 42, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_news_category`
--

CREATE TABLE `t_news_category` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Khóa chính',
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Id của danh mục cha',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên danh mục',
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'Trạng thái',
  `ordering` int(11) UNSIGNED NOT NULL COMMENT 'Thứ tự, từ nhỏ tới lớn',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Comment',
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng chứa danh mục tin tức';

--
-- Dumping data for table `t_news_category`
--

INSERT INTO `t_news_category` (`id`, `parent_id`, `name`, `img`, `home`, `date_created`, `status`, `ordering`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 0, 'Thời sự', '', 1, '0000-00-00 00:00:00', 1, 1, 'Tin tức thời sự trong ngày cập nhật liên tục 24 giờ và 7 ngày một tuần', 'Tin tức thời sự trong ngày cập nhật liên tục 24 giờ và 7 ngày một tuần', 'Tin tức thời sự trong ngày cập nhật liên tục 24 giờ và 7 ngày một tuần', 'Tin tức thời sự trong ngày cập nhật liên tục 24 giờ và 7 ngày một tuần'),
(2, 0, 'Thế giới', '', 1, '0000-00-00 00:00:00', 1, 2, 'Diễn biến thế giới trong các ngày qua, cập nhật liên tục 24 giờ và 7 ngày trong tuần', 'Diễn biến thế giới trong các ngày qua, cập nhật liên tục 24 giờ và 7 ngày trong tuần', 'Diễn biến thế giới trong các ngày qua, cập nhật liên tục 24 giờ và 7 ngày trong tuần', 'Diễn biến thế giới trong các ngày qua, cập nhật liên tục 24 giờ và 7 ngày trong tuần'),
(3, 0, 'Khoa học', '', 0, '0000-00-00 00:00:00', 1, 3, 'Tin tức khoa học công nghệ việt nam và thế giới được cập nhật liên tục 24 giờ một ngày và 7 ngày một tuần', 'Tin tức khoa họcTin tức khoa học công nghệ việt nam và thế giới được cập nhật liên tục 24 giờ một ngày và 7 ngày một tuần', 'Tin tức khoa học công nghệ việt nam và thế giới được cập nhật liên tục 24 giờ một ngày và 7 ngày một tuần', 'Tin tức khoa học công nghệ việt nam và thế giới được cập nhật liên tục 24 giờ một ngày và 7 ngày một tuần'),
(4, 0, 'Thể thao', '', 0, '0000-00-00 00:00:00', 1, 4, 'Tin tức thể thao, tin bóng đá cập nhật liên tục 24/7', 'Tin tức thể thao, tin bóng đá cập nhật liên tục 24/7', 'Tin tức thể thao, tin bóng đá cập nhật liên tục 24/7', 'Tin tức thể thao, tin bóng đá cập nhật liên tục 24/7'),
(5, 0, 'Du lịch', '', 0, '0000-00-00 00:00:00', 1, 5, 'Tin tức du lịch các vùng miền Việt Nam và thế giới', 'Tin tức du lịch các vùng miền Việt Nam và thế giới', 'Tin tức du lịch các vùng miền Việt Nam và thế giới', 'Tin tức du lịch các vùng miền Việt Nam và thế giới');

-- --------------------------------------------------------

--
-- Table structure for table `t_product`
--

CREATE TABLE `t_product` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'Khóa chính',
  `cat_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'id của danh mục',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `default_img` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ảnh đại diện',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'thông tin chi tiết sản phẩm',
  `attribute` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL COMMENT 'ngày tạo',
  `hits` int(11) UNSIGNED DEFAULT '0' COMMENT 'Số lượt xem sản phẩm',
  `status` tinyint(4) DEFAULT '1' COMMENT 'trang thái của sản phẩm: 0:  còn hàng, 1: hết hàng',
  `meta_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin sản phẩm';

--
-- Dumping data for table `t_product`
--

INSERT INTO `t_product` (`id`, `cat_id`, `name`, `code`, `price`, `default_img`, `description`, `attribute`, `ordering`, `date_created`, `hits`, `status`, `meta_title`, `author`, `meta_keyword`, `meta_description`) VALUES
(16, 2, 'Máy hút sữa bằng điện Unimom Allegro BPA free UM880106 (có mátxa silicon)', 'MHS001', 1549000, '/uploads/product/2016_04_04/may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-new-1.jpg', '<div id=\"des-nav\"><strong>M&aacute;y h&uacute;t sữa Unimom Allegro</strong>&nbsp;l&agrave; m&aacute;y h&uacute;t sữa chạy điện kh&ocirc;ng c&oacute; BPA &nbsp;đ&aacute;p ứng đầy đủ c&aacute;c điều kiện ti&ecirc;u chuẩn để được sử dụng rộng r&atilde;i tại H&agrave;n Quốc v&agrave; c&aacute;c nước Ch&acirc;u &Acirc;u, Mỹ v&agrave; được người ti&ecirc;u d&ugrave;ng đ&aacute;nh gi&aacute; rất cao.&nbsp;M&aacute;y h&uacute;t sữa điện đơn unimom allegro&nbsp;UM880106 kh&ocirc;ng c&oacute; BPA &nbsp;c&oacute; thể d&ugrave;ng tại bệnh viện, tại gia đ&igrave;nh, tại nơi l&agrave;m việc, tr&ecirc;n đường đi hoặc khi con đang ngủ.</div>\r\n\r\n<div id=\"des-content\">\r\n<div>\r\n<div id=\"pr-desc\">\r\n<p style=\"text-align:center\"><img alt=\"Máy hút sữa bằng điện Unimom Allegro BPA free UM880106\" src=\"http://localhost/cms//uploads/product/2016_04_04/unimom-allegro-um880106-kidsplaza-5_1.jpg\" style=\"-webkit-user-select:text !important; border:0px; box-sizing:content-box !important; height:500px; margin:0px; max-width:700px !important; padding:0px; vertical-align:middle; width:500px\" title=\"Máy hút sữa bằng điện Unimom Allegro BPA free UM880106\" /></p>\r\n\r\n<p style=\"text-align:center\">M&aacute;y h&uacute;t sữa với chất liệu an to&agrave;n, kh&ocirc;ng chứa BPA</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"may hut sua bang dien Unimom Allegro BPA free UM880106\" src=\"http://localhost/cms//uploads/product/2016_04_04/0003036_may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-co-matxa-silicon.jpeg\" style=\"-webkit-user-select:text !important; border:0px; box-sizing:content-box !important; height:464px; margin:0px; max-width:700px !important; padding:0px; vertical-align:middle; width:500px\" title=\"Máy hút sữa bằng điện Unimom Allegro BPA free UM880106\" /></p>\r\n\r\n<p style=\"text-align:center\"><em><span style=\"font-size:13px\">B&igrave;nh đựng với thiết kế tiện dụng</span></em></p>\r\n\r\n<h2 style=\"text-align:justify\">Đặc điểm nổi bật m&aacute;y h&uacute;t sữa bằng điện Unimom&nbsp;Allegro</h2>\r\n\r\n<p style=\"text-align:justify\">C&oacute; phễu m&aacute;t xa silicon mềm mại gi&uacute;p mẹ k&iacute;ch th&iacute;ch ra sữa tốt hơn cho khả năng h&uacute;t sữa nhẹ nh&agrave;ng, &ecirc;m &aacute;i.</p>\r\n\r\n<p style=\"text-align:justify\">M&aacute;y c&oacute; chu kỳ h&uacute;t sữa m&ocirc; phỏng giống với chu kỳ h&uacute;t - nhả - nghỉ của trẻ khi b&uacute; mẹ.</p>\r\n\r\n<p style=\"text-align:justify\">Dễ d&agrave;ng điều chỉnh &aacute;p lực h&uacute;t (7 mức độ h&uacute;t sữa).</p>\r\n\r\n<p style=\"text-align:justify\">M&agrave;n h&igrave;nh m&aacute;y h&uacute;t sữa Unimom đơn điện tử LED, hiển thị số để c&oacute; thể nh&igrave;n trong đ&ecirc;m.</p>\r\n\r\n<p style=\"text-align:justify\">Pin t&iacute;ch điện gi&uacute;p mẹ linh hoạt hơn, h&uacute;t sữa được ngay tại nơi kh&ocirc;ng c&oacute; nguồn điện.</p>\r\n\r\n<p style=\"text-align:justify\">Được thiết kế với kiểu d&aacute;ng trang nh&atilde;, kết cấu cực kỳ gọn nhẹ (0,4kg).</p>\r\n\r\n<p style=\"text-align:justify\">Gi&uacute;p nhanh ch&oacute;ng l&agrave;m dịu những cơn đau tức ngực do mẹ bị đầy sữa, thừa sữa, sữa kh&ocirc;ng h&uacute;t ra được hết.</p>\r\n\r\n<p style=\"text-align:justify\">M&aacute;y được thiết kế tốt hơn với đầu h&uacute;t ch&acirc;n kh&ocirc;ng c&oacute; vị tr&iacute; cao hơn miệng phễu chụp của m&aacute;y.</p>\r\n\r\n<p style=\"text-align:justify\">Nhờ hệ thống ngăn sữa mẹ với kh&ocirc;ng kh&iacute; h&uacute;t v&agrave;o motor, mẹ sẽ y&ecirc;n t&acirc;m hơn khi sữa mẹ được giữ vệ sinh, kh&ocirc;ng bị lọt v&agrave;o m&aacute;y g&acirc;y ra ch&aacute;y motor.</p>\r\n\r\n<p style=\"text-align:justify\">M&aacute;y h&uacute;t sữa unimom h&agrave;n quốc c&oacute; k&egrave;m theo bộ pin sạc sử dụng khi kh&ocirc;ng c&oacute; nguồn điện.</p>\r\n\r\n<p style=\"text-align:justify\">Tiện lợi hơn khi dễ d&agrave;ng chuyển th&agrave;nh&nbsp;m&aacute;y h&uacute;t sữa tay&nbsp;khi hết điện hoặc pin sạc.</p>\r\n\r\n<p style=\"text-align:justify\">M&aacute;y h&uacute;t sữa điện Unimom&nbsp;Allegro h&agrave;n quốc&nbsp;rất an to&agrave;n cho b&eacute;, kh&ocirc;ng c&oacute; chất độc hại BPA.</p>\r\n\r\n<p style=\"text-align:justify\">Bộ phụ kiện thay thế, bổ sung đầy đủ, đạt chuẩn chất lượng.</p>\r\n\r\n<p style=\"text-align:justify\">Sản xuất tại H&agrave;n Quốc</p>\r\n\r\n<p style=\"text-align:justify\">Đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn quốc tế: Ti&ecirc;u chuẩn ISO 9001:2000 v&agrave; ti&ecirc;u chuẩn ISO 13485:2003, Ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u CE (European Conformance), Ti&ecirc;u chuẩn chất lượng an to&agrave;n của Mỹ UL (Underwriters Laboratories)</p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'a:8:{i:0;a:2:{s:4:\"name\";s:10:\"Lực hút\";s:5:\"value\";s:12:\"0 - 240 mmHg\";}i:1;a:2:{s:4:\"name\";s:6:\"Loại\";s:5:\"value\";s:64:\"máy hút sữa đơn (máy này có chức năng tích điện)\";}i:2;a:2:{s:4:\"name\";s:15:\"Nguồn điện\";s:5:\"value\";s:13:\"AC adapter 5V\";}i:3;a:2:{s:4:\"name\";s:27:\"Nguồn điện đầu vào\";s:5:\"value\";s:38:\"100-240V, 50-60Hz, đầu ra 5VDC 0.8A\";}i:4;a:2:{s:4:\"name\";s:22:\"Kích cỡ đóng gói\";s:5:\"value\";s:42:\"Dài X Rộng X Cao = 17cm X 12.5cm X 19cm\";}i:5;a:2:{s:4:\"name\";s:16:\"Trọng lượng\";s:5:\"value\";s:5:\"0.4kg\";}i:6;a:2:{s:4:\"name\";s:12:\"Nhãn hiệu\";s:5:\"value\";s:20:\"Unimom (South Korea)\";}i:7;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:29:\"6 tháng cho động cơ máy\";}}', 16, '2016-04-04 03:59:58', 34, 1, '', 'admin', '', ''),
(17, 1, 'Máy hút bụi Electrolux Z1860 (Z 1860) - 1.2 lít, 1600W', 'MHB001', 1190000, '/uploads/product/2016_04_02/141038_may-hut-bui-electrolux-zar3500.jpg', '<h2>Giới thiệu sản phẩm M&aacute;y h&uacute;t bụi Electrolux Z1860 1.2L (Trắng phối đỏ)</h2>\r\n\r\n<h2><strong>M&aacute;y h&uacute;t bụi&nbsp;Electrolux Z1860&nbsp;</strong></h2>\r\n\r\n<p>M&aacute;y h&uacute;t bụi&nbsp;Electrolux Z1860&nbsp;nổi bật với thiết kế nhỏ gọn, trọng lượng chỉ 4.6kg, b&aacute;nh xe nhỏ kh&ocirc;ng chỉ gi&uacute;p người d&ugrave;ng di chuyển m&aacute;y dễ d&agrave;ng khi sử dụng m&agrave; c&ograve;n cất giữ m&aacute;y gọn g&agrave;ng, kh&ocirc;ng chiếm nhiều diện t&iacute;ch ph&ograve;ng. M&aacute;y kh&ocirc;ng d&ugrave;ng t&uacute;i chứa bụi, c&oacute; đ&egrave;n b&aacute;o khi bộ lọc đầy v&agrave; thao t&aacute;c đổ bụi cũng v&ocirc; c&ugrave;ng đơn giản. M&aacute;y h&uacute;t bụiElectrolux Z1860&nbsp;si&ecirc;u nhẹ l&agrave; sản phẩm d&agrave;nh cho người y&ecirc;u th&iacute;ch sự tiện dụng.</p>\r\n\r\n<p><strong>T&Iacute;NH NĂNG NỔI BẬT</strong></p>\r\n\r\n<p><strong>Nhỏ gọn và si&ecirc;u nhẹ</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"Máy hút bụi Electrolux Z1860\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_02/e_1180397.jpg\" style=\"border:0px; display:block; height:500px; margin:0px auto; max-width:750px !important; padding:0px; vertical-align:top; width:500px\" title=\"Máy hút bụi Electrolux Z1860\" /></p>\r\n\r\n<p>Với trọng lượng chỉ 4.6kg trong thi&ecirc;́t k&ecirc;́ nhỏ gọn, bạn kh&ocirc;ng chỉ d&ecirc;̃ dàng di chuy&ecirc;̉n máy khi sử dụng mà còn d&ecirc;̃ dàng c&acirc;́t giữ.</p>\r\n\r\n<p><strong>Đổ bụi một c&aacute;ch nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"Máy hút bụi Electrolux Z1860\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_02/78891_80815_may_hut_bui_electrolux_zar3500_4.jpg\" style=\"border:0px; display:block; height:500px; margin:0px auto; max-width:750px !important; padding:0px; vertical-align:top; width:500px\" title=\"Máy hút bụi Electrolux Z1860\" /></p>\r\n\r\n<p>Đổ sạch bụi sau khi h&uacute;t c&oacute; thể l&agrave; c&ocirc;ng việc kh&oacute; chịu nhất sau khi l&agrave;m vệ sinh. Nhưng đối với m&aacute;y h&uacute;t bụi&nbsp;Electrolux Z1860 bạn chỉ cần nhấn n&uacute;t để mở nắp bụi rồi đổ phần bụi đi rất nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng, kh&ocirc;ng l&agrave;m bụi bay lại khắp nơi như t&uacute;i đựng bụi truyền thống.</p>\r\n\r\n<p><strong>Bộ lọc HEPA - lọc sạch ngay cả những hạt bụi nhỏ nhất</strong><br />\r\nBộ lọc HEPA được chứng nhận cho hiệu quả lọc tối thiểu l&agrave; 99,97% ở k&iacute;ch thước 0,3 micron. Như vậy, những hạt bụi cực nhỏ, c&oacute; k&iacute;ch thước 0,3 micron cũng được m&aacute;y lọc sạch, trả lại kh&ocirc;ng kh&iacute; trong l&agrave;nh cho kh&ocirc;ng gian nh&agrave; ở.</p>\r\n\r\n<p><strong>Đ&egrave;n hiện thị t&igrave;nh trạng bộ lọc</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"Máy hút bụi Electrolux Z1860\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_02/14869_type7.jpg\" style=\"border:0px; display:block; height:500px; margin:0px auto; max-width:750px !important; padding:0px; vertical-align:top; width:500px\" title=\"Máy hút bụi Electrolux Z1860\" /></p>\r\n\r\n<p>Đèn hi&ecirc;̉n thị tự đ&ocirc;̣ng sáng l&ecirc;n khi b&ocirc;̣ lọc đ&acirc;̀y để người d&ugrave;ng làm sạch khoang chứa bụi.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>Electrolux&nbsp;được th&agrave;nh lập năm 1918, c&oacute; trụ sở ch&iacute;nh tại Stockholm, Thụy Điển. Sau nhiều năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển,Electrolux&nbsp;l&agrave; một trong những thương hiệu h&agrave;ng đầu tr&ecirc;n to&agrave;n cầu trong ng&agrave;nh h&agrave;ng gia dụng v&agrave; c&ocirc;ng nghiệp, mỗi năm b&aacute;n hơn 40 triệu sản phẩm cho người ti&ecirc;u d&ugrave;ng ở khắp 150 quốc gia tr&ecirc;n thế giới. Mục ti&ecirc;u của c&ocirc;ng ty l&agrave; thiết kế, cải tiến li&ecirc;n tục để đ&aacute;p ứng những nhu cầu đa dạng của người ti&ecirc;u d&ugrave;ng.&nbsp;Electrolux&nbsp;tự h&agrave;o cung cấp những sản phẩm l&agrave;m vơi đi g&aacute;nh nặng của c&ocirc;ng việc nh&agrave; để con người c&oacute; th&ecirc;m thời gian cho những nỗ lực s&aacute;ng tạo hơn.</p>\r\n', 'a:5:{i:0;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:5:\"Z1860\";}i:1;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:8:\"25x30x36\";}i:2;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:48:\"Bảo hành 24 tháng bằng phiếu bảo hành\";}i:3;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:1:\"5\";}i:4;a:2:{s:4:\"name\";s:11:\"Xuất xứ\";s:5:\"value\";s:12:\"Trung Quốc\";}}', 17, '2016-04-02 04:54:40', 85, 1, 'Vật tư nhanh', 'admin', 'Vật tư nhanh', 'Vật tư nhanh'),
(18, 3, 'Hồ bơi cầu trượt cầu vòng Gấu Pooh Intex 57136', 'DT0001', 1239000, '/uploads/product/2016_04_04/abd9101c-bb92-440d-a36d-969353bfa7c5.jpeg', '<h2>Giới thiệu sản phẩm Hồ bơi cầu trượt cầu v&ograve;ng Gấu Pooh Intex 57136</h2>\r\n\r\n<div>\r\n<div id=\"webyclip_thumbnails\">&nbsp;</div>\r\n</div>\r\n\r\n<p>Thời tiết m&ugrave;a h&egrave; n&oacute;ng bức l&agrave;m b&eacute; cảm thấy rất kh&oacute; chịu n&ecirc;n ba mẹ c&oacute; thể trang bị cho b&eacute; một bể bơi phao ngay tại nh&agrave; rất thuận tiện, kh&ocirc;ng phải tốn nhều tiền bạc, thời gian đến hồ bơi c&ocirc;ng cộng, kh&ocirc;ng lo nước ở c&aacute;c hồ bơi c&ocirc;ng cộng bị &ocirc; nhiễm, bẩn, nhiều h&oacute;a chất, thuốc tẩy g&acirc;y hại da, đau mắt.<br />\r\nĐẶC ĐIỂM NỔI BẬT<br />\r\n&nbsp;<br />\r\n- Hồ bơi phao c&oacute; cầu trượt cầu v&ograve;ng gấu Pooh sau khi bơm c&oacute; k&iacute;ch thước 282 x 173 x 107 cm<br />\r\n- Hồ được được thiết kế th&agrave;nh 2 khoang để b&eacute; c&oacute; thể trượt từ khoang n&agrave;y sang khoang kia, họa tiết hoa văn độc đ&aacute;o in h&igrave;nh hoạt h&igrave;nh gấu Pooh m&agrave;u sắc của hồ rất nổi bật v&agrave; bắt mắt &nbsp;giống như một c&ocirc;ng vi&ecirc;n nước thu nhỏ. Th&agrave;nh hồ rất d&agrave;y dặn, chất liệu bền đẹp, c&oacute; đ&aacute;y bơm hơi &ecirc;m &aacute;i, xung quanh viền bể l&agrave; h&igrave;nh rắn phun nước ngộ nghĩnh đ&aacute;ng y&ecirc;u.<br />\r\n- Hồ bơi phao cầu trượt kết hợp nhiều tr&ograve; chơi trong c&ugrave;ng một sản phẩm gi&uacute;p cho b&eacute; vận động cả về thể chất cũng như tr&iacute; tuệ qua c&aacute;c tr&ograve; chơi: tr&ograve; chơi cầu trượt nước, tr&ograve; chơi m&aacute;ng trượt b&oacute;ng, tr&ograve; chơi n&eacute;m v&ograve;ng, tr&ograve; chơi n&eacute;m b&oacute;ng qua lỗ tr&ograve;n, v&ograve;i sen phun nước.<br />\r\n- Van xả kh&iacute; ri&ecirc;ng gi&uacute;p việc xả kh&iacute; nhanh ch&oacute;ng, thuận tiện.<br />\r\n- Khi kh&ocirc;ng chơi nước, bố mẹ đổ đầy b&oacute;ng v&agrave;o cho b&eacute; chơi như nh&agrave; b&oacute;ng, hoặc cho c&aacute;c đồ chơi kh&aacute;c v&agrave;o cho b&eacute; chơi.<br />\r\n- Với hồ bơi n&agrave;y, bạn kh&ocirc;ng phải tốn nhều tiền bạc, thời gian đến hồ bơi c&ocirc;ng cộng, kh&ocirc;ng lo nước ở c&aacute;c hồ bơi c&ocirc;ng cộng bị &ocirc; nhiễm, bẩn, nhiều h&oacute;a chất, thuốc tẩy g&acirc;y hại da, đau mắt.<br />\r\n- Sản phẩm ch&iacute;nh h&atilde;ng Intex, chất liệu d&agrave;y v&agrave; bền, kh&ocirc;ng phai m&agrave;u khi sử dụng. Ngo&agrave;i ra k&egrave;m theo hồ l&agrave; miếng v&aacute; chuy&ecirc;n dụng, nếu chẳng may bị lủng, bạn vẫn c&oacute; thể v&aacute; lại d&ugrave;ng tiếp tục.<br />\r\nTH&Ocirc;NG TIN THƯƠNG HIỆU<br />\r\n&nbsp;<br />\r\nTập đo&agrave;n INTEX đặt trụ sở ch&iacute;nh tại Mỹ v&agrave; ph&acirc;n phối tất cả c&aacute;c sản phẩm tr&ecirc;n to&agrave;n thế giới. C&aacute;c d&ograve;ng sản phẩm ch&iacute;nh được INTEX cung cấp: Giường hơi, đệm hơi (airbed), gối hơi, ghế hơi (inflatable chair), thuyền bơm hơi (inflatable boat), hồ bơi phao (floating pool), phao bơi, &aacute;o phao, k&iacute;nh bơi v&agrave; phụ kiện bơi, nh&agrave; banh nh&uacute;n cho trẻ em, đồ chơi bơm hơi (inflatable toys)&hellip; v&agrave; một số phụ kiện kh&aacute;c. Tại thị trường Việt Nam, c&aacute;c sản phẩm: Giường hơi, nệm hơi, đệm hơi,... đ&atilde; được kh&aacute;ch h&agrave;ng lựa chọn v&agrave; tin d&ugrave;ng trong nhiều năm qua.</p>\r\n', 'a:8:{i:0;a:2:{s:4:\"name\";s:5:\"Model\";s:5:\"value\";s:11:\"Intex_57136\";}i:1;a:2:{s:4:\"name\";s:14:\"Kích thước\";s:5:\"value\";s:17:\"282 x 113 x 107cm\";}i:2;a:2:{s:4:\"name\";s:19:\"Thể tích nước\";s:5:\"value\";s:9:\" 200 lít\";}i:3;a:2:{s:4:\"name\";s:12:\"Độ tuổi\";s:5:\"value\";s:99:\"3 tuổi trở lên ( Nếu nhỏ tuổi hơn thì phải có sự giám sát của người lớn)\";}i:4;a:2:{s:4:\"name\";s:16:\"Trọng lượng\";s:5:\"value\";s:4:\"6 kg\";}i:5;a:2:{s:4:\"name\";s:12:\"Phụ kiện\";s:5:\"value\";s:73:\" 6 quả bóng  +  1 vòng bơm hơi + Miếng vá kèm theo sản phẩm\";}i:6;a:2:{s:4:\"name\";s:11:\"Xuất xứ\";s:5:\"value\";s:10:\"Intex Corp\";}i:7;a:2:{s:4:\"name\";s:10:\"Màu sắc\";s:5:\"value\";s:24:\"Nhiều màu kết hợp\";}}', 18, '2016-04-04 03:49:40', 33, 1, 'Điện tử, điện gia dụng', 'admin', 'Điện tử, điện gia dụng', 'Điện tử, điện gia dụng'),
(19, 2, 'Trò chơi trượt xe 2 Winwintoys', 'WST001', 339000, '/uploads/product/2016_04_04/6462_0_win_win_toys2.jpg', '<h2>Giới thiệu sản phẩm Tr&ograve; chơi trượt xe 2 Winwintoys 63092</h2>\r\n\r\n<div>\r\n<div id=\"webyclip_thumbnails\">&nbsp;</div>\r\n</div>\r\n\r\n<p>Những tr&ograve; chơi vận động với thiết kế độc đ&aacute;o c&ugrave;ng kiểu d&aacute;ng bắt mắt lu&ocirc;n sẽ gi&uacute;p b&eacute; y&ecirc;u của bạn ph&aacute;t triển một c&aacute;ch to&agrave;n diện cả về thẻ chất v&agrave; tr&iacute; tuệ. Bộ đồ chơi&nbsp;<strong>Winwintoys 63092</strong>&nbsp;được thiết kế sinh động gi&uacute;p b&eacute; ph&acirc;n biệt được m&agrave;u sắc k&iacute;ch th&iacute;ch thị gi&aacute;c ph&aacute;t triển, ngo&agrave;i ra trong khi chơi sẽ gi&uacute;p trẻ r&egrave;n luyện kỹ năng cầm, nắm v&agrave; ph&aacute;t triển x&uacute;c gi&aacute;c hiệu quả. B&eacute; c&oacute; thể học c&aacute;ch kết hợp giữa tay v&agrave; mắt, tạo sự kh&eacute;o l&eacute;o, nhanh nhẹn.&nbsp;<strong>Winwintoys 63092</strong>&nbsp;được l&agrave;m từ chất liệu gỗ cao cấp, sản phẩm kh&ocirc;ng sinh ra chất độc hại rất an to&agrave;n cho sức khỏe trẻ nhỏ. Ngo&agrave;i ra, sản phẩm c&oacute; bề mặt nhẵn mịn, kh&ocirc;ng g&oacute;c cạnh, kh&ocirc;ng g&acirc;y trầy xước hoặc c&aacute;c tổn thương kh&aacute;c đến l&agrave;n da trẻ nhỏ. Lớp sơn phủ đ&atilde; được kiểm chứng về độ an to&agrave;n, kh&ocirc;ng sử dụng h&oacute;a chất trong qu&aacute; tr&igrave;nh sản xuất</p>\r\n\r\n<div><strong>ĐẶC ĐIỂM NỔI BẬT</strong></div>\r\n\r\n<p><strong>Đồ chơi gỗ ph&aacute;t triển tư duy</strong><br />\r\nTr&ograve; chơi động k&iacute;ch th&iacute;ch t&iacute;nh t&ograve; m&ograve;, ph&aacute;t huy khả năng s&aacute;ng tạo của b&eacute; ngay từ nhỏ. B&ecirc;n cạnh đ&oacute;, trẻ học c&aacute;ch tư duy sao cho ch&iacute;nh x&aacute;c, tập cho b&eacute; biết suy nghĩ v&agrave; ham học hỏi hơn.</p>\r\n\r\n<p><strong>Cho b&eacute; ph&aacute;t triển thể chất</strong><br />\r\nTrẻ cười nhiều hơn khi chơi với tr&ograve; chơi gỗ vui nhộn n&agrave;y. C&aacute;c nh&agrave; khoa học nghi&ecirc;n cứu trẻ cười nhiều sẽ ăn ngon miệng hơn v&agrave; hệ miễn dịch sẽ tốt hơn, gi&uacute;p trẻ ph&aacute;t triển thể chất mạnh khỏe hơn.</p>\r\n\r\n<p><strong>Thiết kế xinh xắn</strong><br />\r\nSản phẩm c&oacute; thiết kế độc đ&aacute;o c&ugrave;ng m&agrave;u sắc bắt mắt tạo cho sự th&iacute;ch th&uacute; vui chơi.</p>\r\n\r\n<p><strong>Chất liệu an to&agrave;n</strong><br />\r\nĐược l&agrave;m từ chất liệu gỗ cao cấp, sản phẩm kh&ocirc;ng sinh ra chất độc hại rất an to&agrave;n cho sức khỏe trẻ nhỏ. Ngo&agrave;i ra, sản phẩm c&oacute; bề mặt nhẵn mịn, kh&ocirc;ng g&oacute;c cạnh, kh&ocirc;ng g&acirc;y trầy xước hoặc c&aacute;c tổn thương kh&aacute;c đến l&agrave;n da trẻ nhỏ. Lớp sơn phủ đ&atilde; được kiểm chứng về độ an to&agrave;n, kh&ocirc;ng sử dụng h&oacute;a chất trong qu&aacute; tr&igrave;nh sản xuất</p>\r\n\r\n<p><strong>Trẻ c&oacute; thể học c&aacute;ch ph&acirc;n biệt m&agrave;u sắc, k&iacute;ch th&iacute;ch thị gi&aacute;c ph&aacute;t triển</strong><br />\r\nTrong khi chơi sẽ gi&uacute;p trẻ r&egrave;n luyện kỹ năng cầm, nắm v&agrave; ph&aacute;t triển x&uacute;c gi&aacute;c hiệu quả. B&eacute; c&oacute; thể học c&aacute;ch kết hợp giữa tay v&agrave; mắt, tạo sự kh&eacute;o l&eacute;o, nhanh nhẹn</p>\r\n', 'a:4:{i:0;a:2:{s:4:\"name\";s:4:\"Màu\";s:5:\"value\";s:12:\"Nhiều màu\";}i:1;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:5:\"63092\";}i:2;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:11:\"28.5x28.5x8\";}i:3;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:3:\"0.4\";}}', 19, '2016-04-04 03:42:07', 1, 1, '', 'admin', '', ''),
(20, 1, 'Bình nóng lạnh gián tiếp chống giật Ariston AN15R 15L  ', 'BNN02', 2700000, '/uploads/product/2016_04_01/437.jpg', '<h2>Giới thiệu sản phẩm B&igrave;nh n&oacute;ng lạnh gi&aacute;n tiếp chống giật Ariston AN15R 15L<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">&nbsp;</span></h2>\r\n\r\n<p>H&atilde;y chăm s&oacute;c v&agrave; bảo vệ sức khỏe gia đ&igrave;nh bạn trong m&ugrave;a đ&ocirc;ng n&agrave;y bằng c&aacute;ch trang bị sản phẩm m&aacute;y nước n&oacute;ng gi&aacute;n tiếp&nbsp;<strong>Ariston AN15R</strong>&nbsp;cho ph&ograve;ng tắm nh&agrave; bạn. M&aacute;y nước n&oacute;ng gi&aacute;n tiếp&nbsp;<strong>Ariston AN15R</strong>&nbsp;l&agrave; một sản phẩm được trang bị nhiều c&ocirc;ng nghệ hiện đại với hệ thống an to&agrave;n v&agrave; lớp c&aacute;ch nhiệt th&ocirc;ng minh c&ugrave;ng thiết kế nhỏ nhỏ gọn v&agrave; tinh tế. M&aacute;y c&oacute; khả năng l&agrave;m n&oacute;ng cực nhanh nhờ c&ocirc;ng suất hoạt l&ecirc;n đến 2.5 KW m&agrave; vẫn tiết kiệm điện nhờ lớp c&aacute;ch nhiệt mật độ cao gi&uacute;p giảm thiểu sự trao đổi nhiệt với m&ocirc;i trường. Ngo&agrave;i ra, m&aacute;y hoạt động rất an to&agrave;n với c&aacute;c chức năng bảo vệ tự động h&oacute;a gi&uacute;p bạn c&oacute; thể y&ecirc;n t&acirc;m khi sử dụng sản phẩm.</p>\r\n\r\n<div><strong>ĐẶC ĐIỂM NỔI BẬT</strong></div>\r\n\r\n<p><strong>Lớp c&aacute;ch nhiệt mật độ cao</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Mọi b&igrave;nh nước n&oacute;ng gi&aacute;n tiếp Ariston đều c&oacute; khả năng giữ nước n&oacute;ng trong thời gian d&agrave;i nhờ v&agrave;o lớp nhựa c&aacute;ch nhiệt polyurethane d&agrave;y, mật độ cao nằm giữa b&igrave;nh chứa v&agrave; vỏ b&ecirc;n ngo&agrave;i. Đ&acirc;y l&agrave; r&agrave;o cản hiệu quả chống thất tho&aacute;t nhiệt, tăng hiệu suất hoạt động v&agrave; gi&uacute;p tiết kiệm điện.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"4505400ariston_an_15_r_2_5fe.jpg\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_01/6862_338.jpg\" style=\"border:0px; display:inline; height:495px; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>M&aacute;y nước n&oacute;ng gi&aacute;n tiếp Ariston AN15R</em></p>\r\n\r\n<p><strong>Hệ thống an to&agrave;n ELCB</strong><br />\r\nĐ&oacute;ng vai tr&ograve; bảo vệ người d&ugrave;ng khỏi bị điện giật trong trường hợp r&ograve; rỉ điện, hệ thống ELCB được đặt tr&ecirc;n d&acirc;y nguồn v&agrave; được hiệu chỉnh để phản ứng (cắt điện) trong thời gian 1/1000 gi&acirc;y khi ph&aacute;t hiện c&oacute; sự cố r&ograve; rỉ điện, gi&uacute;p bạn an t&acirc;m tận hưởng.</p>\r\n\r\n<p><strong>C&ocirc;ng nghệ Flexomix</strong><br />\r\nFlexomix l&agrave; hệ thống ống dẫn nước v&agrave;o với kiểu thiết kế mới cho ph&eacute;p cung cấp lượng nước n&oacute;ng nhiều hơn 10% so với c&aacute;c m&aacute;y nước n&oacute;ng c&ugrave;ng loại. Ch&iacute;nh v&igrave; vậy, với b&igrave;nh n&oacute;ng lạnh&nbsp;<strong>Ariston AN15R</strong>, bạn v&agrave; người th&acirc;n sẽ kh&ocirc;ng c&ograve;n lo hok đủ lượng nước n&oacute;ng để sử dụng khi cần thiết.</p>\r\n', 'a:4:{i:0;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:8:\"32x36x36\";}i:1;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:69:\"Bảo hành: 12 tháng (Bằng phiếu bảo hành hoặc hóa đơn)\";}i:2;a:2:{s:4:\"name\";s:16:\"Trọng lượng\";s:5:\"value\";s:3:\"7Kg\";}i:3;a:2:{s:4:\"name\";s:18:\"Sản xuất tại\";s:5:\"value\";s:10:\"Việt Nam\";}}', 20, '2016-04-01 07:31:31', 60, 1, 'Vật tư nhanh', 'admin', 'Vật tư nhanh', 'Vật tư nhanh'),
(21, 3, 'Ấm nước điện philip', 'AN001', 779000, '/uploads/product/2016_04_01/jcd_108000000.jpg', '<h2>Giới thiệu sản phẩm Ấm đun nước si&ecirc;u tốc Philips HD4646 1.5L (Trắng)</h2>\r\n\r\n<div>\r\n<div id=\"webyclip_thumbnails\">&nbsp;</div>\r\n</div>\r\n\r\n<p><span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Thời gian l&agrave; điều v&ocirc; c&ugrave;ng qu&yacute; gi&aacute;, v&igrave; vậy việc trang bị cho căn bếp của m&igrave;nh một chiếc ấm đun si&ecirc;u tốc l&agrave; một quyết định v&ocirc; c&ugrave;ng đ&uacute;ng đắn. Ấm đun si&ecirc;u tốc Philips HD4646 c&oacute; thời gian đun nước si&ecirc;u nhanh gi&uacute;p tiết kiệm thời gian cho gia đ&igrave;nh bạn. Chiếc ấm Philips HD4646 c&oacute; hệ thống an to&agrave;n bốn chiều chống hiện tượng đoản mạch v&agrave; đun s&ocirc;i kh&ocirc;, với c&ocirc;ng tắc tự động tắt khi nước s&ocirc;i hoặc khi nhấc b&igrave;nh l&ecirc;n khỏi đế v&ocirc; c&ugrave;ng an to&agrave;n cho cả thiết bị v&agrave; người sử dụng. B&ecirc;n cạnh đ&oacute;, chiếc ấm Philips HD4646 c&oacute; m&agrave;u trắng trang nh&atilde; v&agrave; thiết kế hiện đại, tất cả tạo n&ecirc;n một chiếc ấm v&ocirc; c&ugrave;ng đẹp mắt, g&oacute;p phần l&agrave;m đẹp cho kh&ocirc;ng gian bếp của gia đ&igrave;nh bạn. Từ nay, c&ocirc;ng việc bếp n&uacute;c của bạn sẽ thật th&uacute; vị v&agrave; kh&ocirc;ng c&ograve;n &ldquo;cập rập&rdquo; nhờ v&agrave;o chiếc b&igrave;nh đun si&ecirc;u tốc Philips HD4646.</span><br />\r\n<br />\r\n<strong>T&Iacute;NH NĂNG NỔI BẬT<br />\r\nChất liệu an to&agrave;n, c&ocirc;ng suất mạnh mẽ</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Ấm đun si&ecirc;u tốc Philips HD4646 c&oacute; phần th&acirc;n, thanh nhiệt v&agrave; vỏ b&ecirc;n trong b&igrave;nh được l&agrave;m từ chất liệu an to&agrave;n, kh&ocirc;ng ra ren, kh&ocirc;ng sản sinh c&aacute;c chất độc hại trong qu&aacute; tr&igrave;nh sử dụng, v&ocirc; c&ugrave;ng an to&agrave;n cho sức khỏe người d&ugrave;ng. B&ecirc;n cạnh đ&oacute;, ấm đun c&ograve;n sở hữu c&ocirc;ng suất 2200W mạnh mẽ gi&uacute;p nước nhanh s&ocirc;i v&agrave; si&ecirc;u tiết kiệm thời gian cho cả gia đ&igrave;nh của bạn. Dung t&iacute;ch ấm l&agrave; 1.5 l&iacute;t, rất ph&ugrave; hợp với nhu cầu sử dụng thường nhật.</span></p>\r\n\r\n<div style=\"text-align:center\"><img alt=\"image\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_01/dar1385459884.jpg\" style=\"border:0px; display:inline; height:500px; line-height:1.2; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></div>\r\n\r\n<p><br />\r\n<strong>Kiểu d&aacute;ng đẹp mắt, th&acirc;n thiện với người d&ugrave;ng</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Chiếc ấm Philips HD4646 c&oacute; kiểu d&aacute;ng đẹp mắt, c&ugrave;ng m&agrave;u sắc trang nh&atilde; g&oacute;p phần tạo n&ecirc;n sự sang trọng v&agrave; t&ocirc; điểm cho căn bếp của bạn. Chiếc ấm Philips HD4646 c&oacute; thanh đo mực nước hai b&ecirc;n th&acirc;n ấm thuận tiện cho cả người thuận tay phải lẫn tay tr&aacute;i, gi&uacute;p người d&ugrave;ng dễ d&agrave;ng đo lường lượng nước cần đun. B&igrave;nh đun được thiết kế th&ocirc;ng minh n&ecirc;n c&oacute; thể được r&oacute;t đầy nước th&ocirc;ng qua v&ograve;i hoặc bằng c&aacute;ch mở nắp</span><br />\r\n<br />\r\n<strong><img alt=\"image\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_04_01/binh-dan-sieu-toc-philips-hd9303-1_1.jpg\" style=\"border:0px; display:inline; float:left; height:387px; line-height:1.2; margin:0px 20px; padding:0px; vertical-align:middle; width:500px\" /></strong></p>\r\n\r\n<p><strong>Thiết kế th&ocirc;ng minh vượt trội</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Chiếc ấm Philips HD4646 được thiết kế để cuộn d&acirc;y c&oacute; thể quấn lại quanh ch&acirc;n đế, gi&uacute;p cho căn bếp th&ecirc;m ngăn nắp v&agrave; gọn g&agrave;ng. Đế ấm c&oacute; thể xoay tr&ograve;n 360&deg; kh&ocirc;ng d&acirc;y gi&uacute;p nhấc l&ecirc;n v&agrave; đặt xuống thật dễ d&agrave;ng. B&ecirc;n cạnh đ&oacute;, bộ lọc chống v&ocirc;i h&oacute;a gi&uacute;p nước v&agrave; b&igrave;nh đun được sạch hơn.</span><br />\r\n<br />\r\n<br />\r\n<strong>An to&agrave;n khi sử dụng</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Ấm si&ecirc;u tốc Philips HD4646 c&oacute; hệ thống an to&agrave;n bốn chiều nhằm chống hiện tượng đoản mạch v&agrave; đun s&ocirc;i kh&ocirc;, v&agrave; c&ocirc;ng tắc tự động tắt khi nước s&ocirc;i hoặc khi nhấc b&igrave;nh l&ecirc;n khỏi đế. V&igrave; vậy, chiếc ấm Philips HD4646 v&ocirc; c&ugrave;ng an to&agrave;n v&agrave; tiện dụng cho gia đ&igrave;nh của bạn.</span></p>\r\n\r\n<div>&nbsp;</div>\r\n', 'a:5:{i:0;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:6:\"HD4646\";}i:1;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:8:\"20x24x23\";}i:2;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:48:\"Bảo hành 12 tháng bằng phiếu bảo hành\";}i:3;a:2:{s:4:\"name\";s:16:\"Trọng lượng\";s:5:\"value\";s:3:\"1Kg\";}i:4;a:2:{s:4:\"name\";s:18:\"Sản xuất tại\";s:5:\"value\";s:12:\"Trung quốc\";}}', 21, '2016-04-01 07:21:29', 19, 1, 'Điện tử, điện gia dụng', 'admin', 'Điện tử, điện gia dụng', 'Điện tử, điện gia dụng'),
(22, 2, 'Đèn Led tiết kiệm và tích điện (9W)', 'DL001', 239000, '/uploads/product/2016_04_01/blb_b12w002.jpg', '<h2>Giới thiệu sản phẩm Đ&egrave;n Led tiết kiệm v&agrave; t&iacute;ch điện (9W)</h2>\r\n\r\n<div>\r\n<div id=\"webyclip_thumbnails\">&nbsp;</div>\r\n</div>\r\n\r\n<h2>Giới thiệu sản phẩm B&oacute;ng đ&egrave;n led t&iacute;ch điện 9W Best Light</h2>\r\n\r\n<p><span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">B&oacute;ng đ&egrave;n led t&iacute;ch điện được t&iacute;ch hợp sẵn pin sạc - khi mất điện đ&egrave;n c&oacute; thể s&aacute;ng được 5-6 giờ li&ecirc;n tục - kh&ocirc;ng lo mất điện, kh&ocirc;ng lo kh&ocirc;ng c&oacute; b&igrave;nh ắc quy dự ph&ograve;ng...Nguy&ecirc;n l&yacute; hoạt động:</span></p>\r\n\r\n<p style=\"text-align:justify\">+ Khi c&oacute; điện: Về cơ bản b&oacute;ng đ&egrave;n led 7W t&iacute;ch điện n&agrave;y sử dụng như một b&oacute;ng đ&egrave;n b&igrave;nh thường sử dụng đui xo&aacute;y E27, d&ugrave;ng thay b&oacute;ng compact. C&oacute; thể bật, tắt đ&egrave;n b&igrave;nh thường. Đồng thời vừa nạp điện cho đ&egrave;n,</p>\r\n\r\n<p style=\"text-align:justify\">+ Khi mất điện: B&oacute;ng vẫn được sử dụng b&igrave;nh thường như l&uacute;c chưa mất điện, nghĩa l&agrave; bạn vẫn bật, tắt đ&egrave;n b&igrave;nh thường như khi c&oacute; điện. L&uacute;c n&agrave;y đ&egrave;n chuyển sang sử dụng Pin gắn sẵn trong đ&egrave;n v&agrave; chỉ hoạt động 50-70% c&ocirc;ng suất đ&egrave;n để đảm bảo tiết kiệm Pin v&agrave; như thế đ&egrave;n c&oacute; thể s&aacute;ng li&ecirc;n tục từ 5-6 tiếng.</p>\r\n\r\n<p style=\"text-align:justify\">+ Hoặc bạn chỉ cần d&ugrave;ng tay tiếp x&uacute;c 2 điểm cực của đui đ&egrave;n l&agrave; đ&egrave;n c&oacute; thể s&aacute;ng</p>\r\n\r\n<p><span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Th&ocirc;ng số KT:</span></p>\r\n\r\n<p style=\"text-align:justify\">+ C&ocirc;ng suất: 9W</p>\r\n\r\n<p style=\"text-align:justify\">+ Đui xo&aacute;y: E27</p>\r\n\r\n<p style=\"text-align:justify\">+ Điện &aacute;p: 150-250VAC</p>\r\n\r\n<p style=\"text-align:justify\">+ Chip: Đ&agrave;i Loan</p>\r\n\r\n<p style=\"text-align:justify\">+ Pin: Lion 1800mAh</p>\r\n\r\n<p style=\"text-align:justify\">+ Độ s&aacute;ng: khi d&ugrave;ng điện lưới: 420 LM; Khi d&ugrave;ng Pin: 280Lm</p>\r\n\r\n<p style=\"text-align:justify\">+ &Aacute;nh s&aacute;ng: trắng (6500K)</p>\r\n\r\n<p style=\"text-align:justify\">+ Tuổi thọ: 20.000 giờ</p>\r\n\r\n<p style=\"text-align:justify\">+ K&iacute;ch thước: 70x115</p>\r\n\r\n<p style=\"text-align:justify\">+ Xuất xứ: Thai Lan - Trung Quốc</p>\r\n\r\n<p><span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Ứng dụng</span></p>\r\n\r\n<p style=\"text-align:justify\">+ Thay thế b&oacute;ng compact 11-15W sử dụng cho chiếu s&aacute;ng d&acirc;n dụng</p>\r\n\r\n<p style=\"text-align:justify\">+ Chiếu s&aacute;ng c&aacute;c vị tr&iacute; h&agrave;ng lang, lối đi... kh&ocirc;ng lo mất điện</p>\r\n\r\n<p style=\"text-align:justify\">+ Chiếu s&aacute;ng sự cố...</p>\r\n', 'a:3:{i:0;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:6:\"8x8x10\";}i:1;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:5:\"0.3Kg\";}i:2;a:2:{s:4:\"name\";s:12:\"Công suất\";s:5:\"value\";s:2:\"9W\";}}', 22, '2016-04-01 07:14:38', 3, 1, '', 'admin', '', ''),
(23, 2, 'Máy xay ép đa năng Manual Juicer 2 trong 1', 'MDN001', 377000, '/uploads/product/2016_04_01/1.gif', '<h2>Giới thiệu sản phẩm M&aacute;y xay &eacute;p đa năng Manual Juicer 2 trong 1 (Trắng phối xanh)</h2>\r\n\r\n<p>Bộ Dụng Cụ Xay Cắt Thực Phẩm V&agrave; &Eacute;p Tr&aacute;i C&acirc;y</p>\r\n\r\n<p>Bộ Dụng Cụ Xay Cắt Thực Phẩm V&agrave; &Eacute;p Tr&aacute;i C&acirc;y l&agrave; bộ dụng cụ đa năng, t&iacute;ch hợp được nhiều chức năng: xay cắt c&aacute;c loại thực phẩm v&agrave; &eacute;p nước tr&aacute;i c&acirc;y, gi&uacute;p bạn tiết kiệm được chi ph&iacute; mua sắm. m&aacute;y c&oacute; lưỡi dao l&agrave;m bằng Inox 420, đế v&agrave; cối bằng nhựa ABS, rất an to&agrave;n cho sức khỏe người d&ugrave;ng.</p>\r\n\r\n<h3><strong>C&aacute;c t&iacute;nh năng nổi bật</strong></h3>\r\n\r\n<p>- Sản phẩm được l&agrave;m bằng chất liệu cao cấp, an to&agrave;n cho sức khỏe.</p>\r\n\r\n<p>- Lưỡi dao l&agrave;m bằng Inox 420</p>\r\n\r\n<p>- Đế v&agrave; cối bằng nhựa ABS</p>\r\n', 'a:3:{i:0;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:8:\"26x13x20\";}i:1;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:104:\"Bảo hành 12 tháng (phiếu bảo hành)\r\nhàng nhập khẩu chính ngạch, hóa đơn đầy đủ\";}i:2;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:4:\"1.45\";}}', 23, '2016-04-01 06:56:52', 3, 1, 'gfsd', 'admin', 'gsdf', 'gsdff'),
(24, 2, 'Đồ chơi lego cho bé', 'DCLG001', 200000, '/uploads/product/2016_04_01/517.jpg', '<h2>Giới thiệu sản phẩm Đồ chơi xếp h&igrave;nh Xe phá hủy Lego Ninjago 70733</h2>\r\n\r\n<p>Đồ chơi Lego&nbsp;lắp gh&eacute;p lu&ocirc;n l&agrave; m&oacute;n đồ chơi gi&aacute;o dục được nhiều bậc cha mẹ ưu ti&ecirc;n lựa chọn. B&eacute; được tiếp x&uacute;c với m&oacute;n đồ chơi r&egrave;n luyện sự kh&eacute;o l&eacute;o, ki&ecirc;n nhẫn, s&aacute;ng tạo ngay từ nhỏ sẽ gi&uacute;p h&igrave;nh th&agrave;nh tư duy logic v&agrave; sự phản xạ nhanh nhẹn. H&atilde;y để bộ xếp h&igrave;nh&nbsp;<strong>Lego Ninjago 70733</strong>&nbsp;đ&aacute;nh thức tiềm năng s&aacute;ng tạo của b&eacute;. Bộ xếp h&igrave;nh&nbsp;<strong>Lego Ninjago 70733</strong>&nbsp;với những mảnh gh&eacute;p c&oacute; m&agrave;u sắc bắt mắt sẽ cho b&eacute; những giờ ph&uacute;t bay bổng c&ugrave;ng tr&iacute; tưởng tượng, v&agrave; r&egrave;n luyện sự kh&eacute;o l&eacute;o khi lắp c&aacute;c mảnh gh&eacute;p. Sản phẩm sẽ l&agrave; người bạn th&acirc;n thiết c&ugrave;ng b&eacute; vừa học vừa chơi v&agrave; l&agrave;m n&ecirc;n những m&ocirc; h&igrave;nh độc đ&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div><strong>ĐẶC ĐIỂM NỔI BẬT</strong></div>\r\n\r\n<p><strong>R&egrave;n luyện sự kh&eacute;o l&eacute;o, tỉ mỉ</strong><br />\r\nTrong suốt qu&aacute; tr&igrave;nh m&agrave;y m&ograve; lắp r&aacute;p, b&eacute; sẽ tập t&iacute;nh ki&ecirc;n tr&igrave;, nhẫn nại, hiểu được gi&aacute; trị lao động từ những thứ m&agrave; b&eacute; l&agrave;m ra.</p>\r\n\r\n<p><strong>K&iacute;ch th&iacute;ch tư duy s&aacute;ng tạo</strong><br />\r\nBộ xếp h&igrave;nh LEGO gi&uacute;p b&eacute; luyện tr&iacute; nhớ, tăng khả năng tư duy v&agrave; ph&aacute;t triển tr&iacute; n&atilde;o to&agrave;n diện. Hơn nữa, với nhiều chi tiết, b&eacute; c&oacute; thể xếp được đa dạng c&aacute;c loại m&ocirc; h&igrave;nh từ tr&iacute; tưởng tượng phong ph&uacute; của b&eacute;.</p>\r\n\r\n<p><strong>Chất liệu nhựa cao cấp, an to&agrave;n</strong><br />\r\nC&aacute;c bộ phận đều được l&agrave;m ho&agrave;n to&agrave;n bởi chất liệu nhựa cao cấp, tuyệt đối an to&agrave;n đến sức khỏe của b&eacute;. Mẹ sẽ an t&acirc;m cho b&eacute; thoải m&aacute;i chơi đ&ugrave;a m&agrave; kh&ocirc;ng lo sản phẩm g&acirc;y nguy hại b&eacute;.</p>\r\n\r\n<p><strong>Dễ xếp, cất gọn trong nh&agrave;</strong>&nbsp;Sau khi b&eacute; chơi xong, mẹ hướng dẫn b&eacute; xếp v&agrave; cất gọn g&agrave;ng v&agrave;o trong hộp, để lần sau b&eacute; thoải m&aacute;i lắp gh&eacute;p, tạo h&igrave;nh m&ocirc; h&igrave;nh mới m&agrave; kh&ocirc;ng thiếu chi tiết n&agrave;o.</p>\r\n\r\n<p><strong>K&iacute;ch th&iacute;ch tư duy s&aacute;ng tạo</strong><br />\r\nBộ xếp h&igrave;nh đồ chơi gi&uacute;p b&eacute; luyện tr&iacute; nhớ, tăng khả năng tư duy v&agrave; ph&aacute;t triển tr&iacute; n&atilde;o to&agrave;n diện. Hơn nữa, với nhiều chi tiết kh&aacute;c nhau, b&eacute; c&oacute; thể xếp được nhiều m&ocirc; h&igrave;nh kh&aacute;c nhau từ tr&iacute; tưởng tượng phong ph&uacute; của b&eacute;.</p>\r\n', 'a:5:{i:0;a:2:{s:4:\"name\";s:3:\"SKU\";s:5:\"value\";s:24:\"LE653TBAZVUZVNAMZ-815667\";}i:1;a:2:{s:4:\"name\";s:4:\"Màu\";s:5:\"value\";s:12:\"Nhiều màu\";}i:2;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:18:\"Lego Ninjago 70733\";}i:3;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:7:\"26x20x6\";}i:4;a:2:{s:4:\"name\";s:16:\"Trọng lượng\";s:5:\"value\";s:5:\"0.7Kg\";}}', 24, '2016-04-01 06:48:38', 1, 1, 'gfsd', 'admin', 'gsdf', 'gsdff'),
(25, 2, 'Nồi nướng thủy tinh', 'NNTT001', 749000, '/uploads/media/2015_11_23/noi-nuong-thuy-tinh-sunhouse-shd4118.jpg', '<h2>Giới thiệu sản phẩm L&ograve; nướng thủy tinh Saturn ST-CO9151 12L (Trắng)</h2>\r\n\r\n<p>L&ograve; nướng thủy tinh Saturn ST--CO9151 sử dụng c&ocirc;ng nghệ đ&egrave;n Halogen gi&uacute;p bạn thực hiện c&aacute;c m&oacute;n ăn một c&aacute;ch dễ d&agrave;ng m&agrave; kh&ocirc;ng mất nhiều thời gian v&agrave; c&ocirc;ng sức. L&ograve; nướng Saturn ST--CO9151 thực hiện được tất cả c&aacute;c m&oacute;n ăn theo kiểu nướng, l&agrave;m b&aacute;nh pizza, hấp b&aacute;nh, hun kh&oacute;i... v&agrave; thậm ch&iacute; thực hiện nướng được cả những thực phẩm m&agrave; kh&ocirc;ng cần r&atilde; đ&ocirc;ng. L&ograve; nướng Saturn ST--CO9151 bảo vệ sức khỏe gia đ&igrave;nh bạn bằng c&aacute;ch loại bỏ mỡ thừa trong thức ăn m&agrave; vẫn giữ được hương vị thơm ngon của thực phẩm.</p>\r\n\r\n<div><strong>T&Iacute;NH NĂNG NỔI BẬT</strong></div>\r\n\r\n<p><strong>C&ocirc;ng nghệ nướng đối lưu bằng đ&egrave;n Halogen v&agrave; mạch điều chỉnh nhiệt tự động</strong><br />\r\nL&ograve; nướng sử dụng c&ocirc;ng nghệ nướng bằng đ&egrave;n Halogen, tạo luồng kh&iacute; n&oacute;ng đối lưu đều khắp khoang l&ograve;, gi&uacute;p thực phẩm ch&iacute;n đều từ trong ra ngo&agrave;i v&agrave; giữ được hương vị thơm ngon. Mạch điều chỉnh nhiệt t&iacute;ch hợp trong l&ograve; c&oacute; khả năng điều chỉnh nhiệt tự động, tiết kiệm điện tối ưu.</p>\r\n\r\n<p><strong>Đa chức năng</strong><br />\r\nC&oacute; nhiều chức năng kh&aacute;c nhau như nướng thịt, nướng rau củ, nướng b&aacute;nh, r&atilde; đ&ocirc;ng, h&acirc;m n&oacute;ng, quay, r&ocirc;ti, chi&ecirc;n kh&ocirc;, rang, hun kh&oacute;i... Ngo&agrave;i ra, l&ograve; c&ograve;n c&oacute; chức năng hẹn giờ v&agrave; điều chỉnh nhiệt độ ph&ugrave; hợp với từng nhu cầu nấu nướng.</p>\r\n\r\n<p><strong>Thiết kế an to&agrave;n</strong><br />\r\nL&ograve; nướng thủy tinh Saturn ST--CO9151 c&oacute; thiết kế nắp an to&agrave;n, c&oacute; gi&aacute; đỡ, tự ngắt điện khi mở nắp v&agrave; kh&ocirc;ng tỏa nhiệt ra b&ecirc;n ngo&agrave;i khi nấu nướng. L&ograve; c&oacute; thiết kế dễ th&aacute;o lắp, dễ d&agrave;ng vệ sinh.</p>\r\n\r\n<p><strong>L&ograve; nướng thủy tinh 12L</strong><br />\r\nChất liệu thủy tinh cao cấp, trong suốt, c&oacute; khả năng chịu nhiệt tốt v&agrave; gi&uacute;p bạn c&oacute; thể quan s&aacute;t chi tiết qu&aacute; tr&igrave;nh chế biến thực phẩm.</p>\r\n', 'a:6:{i:0;a:2:{s:4:\"name\";s:3:\"SKU\";s:5:\"value\";s:24:\"SA709HABATFNVNAMZ-872238\";}i:1;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:10:\"	ST-CO9151\";}i:2;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:14:\"37 x 37.5 x 25\";}i:3;a:2:{s:4:\"name\";s:11:\"Bảo hành\";s:5:\"value\";s:39:\"Bảo hành 12 tháng bằng hóa đơn\";}i:4;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:3:\"6.5\";}i:5;a:2:{s:4:\"name\";s:18:\"Sản xuất tại\";s:5:\"value\";s:12:\"Chính hãng\";}}', 25, '2016-04-04 04:29:59', 3, 1, 'gfsd', 'admin', 'gsdf', 'gsdff'),
(26, 2, 'Nồi cơm điện Kangaroo KG376N 1.8L (Trắng)', 'NCĐ100', 700000, '/uploads/media/2015_11_17/23dec11-hd4729-60_l1.jpg', '<h2>Giới thiệu sản phẩm Nồi cơm điện Kangaroo KG376N 1.8L (Trắng)</h2>\r\n\r\n<p>Cuộc sống tất bật khiến bạn kh&ocirc;ng muốn mất nhiều thời gian để chuẩn bị những bữa ăn cho gia đ&igrave;nh. Th&ecirc;m v&agrave;o đ&oacute;, bạn ng&agrave;y c&agrave;ng lo lắng v&igrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh thường xuy&ecirc;n sử dụng những thực phẩm b&ecirc;n ngo&agrave;i kh&ocirc;ng đảm bảo vệ sinh v&agrave; an to&agrave;n. Giờ đ&acirc;y bạn kh&ocirc;ng cần lo lắng nữa v&igrave; đ&atilde; c&oacute; nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>. Nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;c&oacute; dung t&iacute;ch lớn l&ecirc;n đến 1.8L ph&ugrave; hợp cả với những gia đ&igrave;nh đ&ocirc;ng người. B&ecirc;n cạnh đ&oacute;, sở hữu c&ocirc;ng suất lớn l&ecirc;n đến 700W, gi&uacute;p cho c&ocirc;ng việc nấu cơm được nhanh ch&oacute;ng m&agrave; vẫn tiết kiệm lượng điện năng ti&ecirc;u thụ so với những nồi cơm điện th&ocirc;ng thường. Ngo&agrave;i ra, được thiết kế kiểu d&aacute;ng hiện đại, với lớp vỏ nhựa cao cấp m&agrave;u trắng c&oacute; hoa văn sang trọng, gi&uacute;p gian bếp nh&agrave; bạn th&ecirc;m tươi tắn. H&atilde;y để nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;gi&uacute;p gia đ&igrave;nh bạn lu&ocirc;n c&oacute; những bữa ăn ngon, những b&aacute;t cơm mềm dẻo, bổ dưỡng đảm bảo sức khỏe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nồi cơm điện\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_03_23/noi-com-ien-kangaroo-kg376n-1-8l-trang-7328-692629-1-zoom.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;kiểu d&aacute;ng sang trọng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong><br />\r\n<strong>Dung t&iacute;ch lớn</strong><br />\r\n<span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">Sở hữu dung t&iacute;ch 1.8L, nồi cơm điện&nbsp;</span><strong>Kangaroo KG376N 1.8L</strong><span style=\"color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px\">&nbsp;nấu được đến 1.5 kg gạo, c&oacute; thể đem lại bữa cơm thơm ngon cho hầu hết mọi gia đ&igrave;nh hiện nay đặc biệt th&iacute;ch hợp với cả những gia đ&igrave;nh đ&ocirc;ng người. Ngo&agrave;i ra, với n&uacute;t điều khiển cơ linh hoạt, chắc chắn, nồi cơm điện c&ograve;n mang lại khả năng sử dụng l&acirc;u d&agrave;i v&agrave; hữu &iacute;ch, gi&uacute;p bạn dễ d&agrave;ng điều chỉnh chế độ nấu hoặc h&acirc;m n&oacute;ng.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nồi cơm điện Comet CM8018\" class=\"productlazyimage\" src=\"http://localhost/cms//uploads/product/2016_03_23/so-sanh-noi-com-dien-comet-cm8018-vs-kangaroo-kg376noi-co-nao-tot-hon_3.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle; width:550px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;thiết kế hiện đại</em></p>\r\n\r\n<p><strong>Tiết kiệm điện năng</strong><br />\r\nĐ&aacute;y nồi d&agrave;y kết hợp c&ugrave;ng m&acirc;m nhiệt được thiết kế với c&ocirc;ng suất mạnh mẽ, l&agrave;m tăng khả năng hấp thụ nhiệt, gi&uacute;p cơm mau ch&iacute;n, r&uacute;t ngắn thời gian nấu. Từ đ&oacute;, bạn lu&ocirc;n c&oacute; được b&aacute;t cơm ngon với những hạt gạo nở đều chỉ trong thời gian ngắn, gi&uacute;p c&aacute;c b&agrave; nội trợ c&oacute; nhiều thời gian hơn để chăm s&oacute;c gia đ&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lưu giữ hương vị gạo, chống tr&agrave;n nước khi nấu</strong><br />\r\nNồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;sẽ l&agrave;m vừa l&ograve;ng bạn nhờ v&agrave;o thiết kế điểm l&otilde;m tr&ecirc;n nắp chống hơi nước t&iacute;ch tụ rơi xuống cơm, tr&aacute;nh cơm bị thiu. B&ecirc;n cạnh đ&oacute;, nồi c&ograve;n c&oacute; thể giữ lại hương vị cũng như giữ độ ấm của cơm trong v&agrave;i giờ ph&ograve;ng trường hợp bạn hoặc người th&acirc;n về muộn, chậm bữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chống d&iacute;nh an to&agrave;n</strong><br />\r\nL&ograve;ng nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;được l&agrave;m từ hợp kim nh&ocirc;m chống d&iacute;nh cao cấp si&ecirc;u an to&agrave;n, gi&uacute;p nồi hoạt động bền bỉ, bạn sẽ thoải m&aacute;i hơn khi nấu hoặc h&acirc;m cơm nhiều lần, tr&aacute;nh t&igrave;nh trạng thực phẩm b&aacute;m d&iacute;nh v&agrave;o th&agrave;nh nồi l&agrave;m giảm hiệu năng cũng như g&acirc;y kh&oacute; khăn trong việc vệ sinh. Ngo&agrave;i ra, nồi cơm điện&nbsp;<strong>Kangaroo KG376N 1.8L</strong>&nbsp;c&ograve;n được thiết kế tay cầm chắc chắn gi&uacute;p bạn di chuyển một c&aacute;ch dễ d&agrave;ng.</p>\r\n', 'a:4:{i:0;a:2:{s:4:\"name\";s:11:\"Điện áp\";s:5:\"value\";s:9:\"220V-50Hz\";}i:1;a:2:{s:4:\"name\";s:15:\"Khối lượng\";s:5:\"value\";s:7:\"2.35 kg\";}i:2;a:2:{s:4:\"name\";s:14:\"Kích thước\";s:5:\"value\";s:16:\"285x285x280 (mm)\";}i:3;a:2:{s:4:\"name\";s:12:\"Công suất\";s:5:\"value\";s:4:\"700W\";}}', 26, '2015-08-26 11:30:28', 2, 0, '', 'admin', '', ''),
(27, 10, 'Dung dịch tẩy rửa vết rỉ sét 300g Selleys RP7', 'DDTR001', 159000, '/uploads/product/2016_03_23/dau-chong-ri-set-selleys-rp7-chai-150g.jpg', '<h2>Giới thiệu sản phẩm Dung dịch tẩy rửa vết rỉ s&eacute;t 300g Selleys RP7</h2>\r\n\r\n<p>Dung dịch tẩy rửa ki&ecirc;m dầu nhờn b&ocirc;i trơn&nbsp;<strong>Selleys RP7</strong>&nbsp;l&agrave; một trong những sản phẩm đa năng đang được b&aacute;n chạy tại Việt Nam. Sản phẩm được sản xuất bởi h&atilde;ng Selleys của &Uacute;c, c&oacute; c&ocirc;ng thức cải tiến để dễ d&agrave;ng thấm nhanh kh&ocirc;ng những lấy đi những vết gỉ s&eacute;t cứng đầu nhất m&agrave; c&ograve;n bảo vệ kim loại khỏi bị ăn m&ograve;n v&agrave; loại bỏ tiếng k&ecirc;u kh&oacute; chịu do vật liệu bị rỉ s&eacute;t g&acirc;y ra. Dung dịch&nbsp;<strong>Selleys RP7</strong>&nbsp;c&ograve;n c&oacute; t&aacute;c dụng b&ocirc;i trơn cho c&aacute;c khớp nối bằng kim loại, khởi động lại động cơ bị thấm nước. Với trọng lượng 300g,&nbsp;<strong>Selleys RP7</strong>&nbsp;k&egrave;m theo que nối &oacute; lỗ nhỏ gi&uacute;p bạn xịt dung dịch v&agrave;o c&aacute;c lỗ k&iacute;ch thước nhỏ.</p>\r\n\r\n<div><strong>ĐẶC ĐIỂM NỔI BẬT</strong></div>\r\n\r\n<p>- Dễ thấm v&agrave; nhanh ch&oacute;ng loại bỏ những vết rỉ s&eacute;t cứng đầu nhất.<br />\r\n- Khởi động lại động cơ bị thấm nước.<br />\r\n- Loại bỏ tiếng k&ecirc;u do vật liệu bị rỉ s&eacute;t tạo ra.<br />\r\n- B&ocirc;i trơn những vật dụng bị rỉ s&eacute;t.<br />\r\n- Khối lượng tịnh: 300g<br />\r\n- Sản xuất tại: Th&aacute;i Lan</p>\r\n\r\n<p><strong>C&aacute;ch d&ugrave;ng:</strong>&nbsp;Xịt l&ecirc;n phần rỉ s&eacute;t của kim loại, đợi v&agrave;i ph&uacute;t sau đ&oacute; lấy khăn d&agrave;y lau lại cho sạch.</p>\r\n\r\n<div><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></div>\r\n\r\n<p>C&ocirc;ng ty Selleys được th&agrave;nh lập năm 1939 tại &Uacute;c, l&agrave; một những c&ocirc;ng ty đứng đầu thế giới về sản xuất dụng cụ sửa chữa tại gia v&agrave; dung dịch tẩy rửa. C&aacute;c sản phẩm của Selleys được b&aacute;n ra tr&ecirc;n to&agrave;n thế giới, v&agrave; tập trung nhiều nhất ở khu vực ch&acirc;u &Aacute;. Ngo&agrave;i ra, Selleys c&ograve;n được biết đến l&agrave; c&ocirc;ng ty của tập đo&agrave;n Dulux, một trong 200 c&ocirc;ng ty lớn nhất của &Uacute;c.</p>\r\n', 'a:5:{i:0;a:2:{s:4:\"name\";s:3:\"SKU\";s:5:\"value\";s:25:\"	SE531HLAD9EWVNAMZ-179113\";}i:1;a:2:{s:4:\"name\";s:4:\"Màu\";s:5:\"value\";s:8:\"xanh lá\";}i:2;a:2:{s:4:\"name\";s:12:\"Bảng mẫu\";s:5:\"value\";s:3:\"RP7\";}i:3;a:2:{s:4:\"name\";s:42:\"Kích thước sản phẩm (D x R x C cm)\";s:5:\"value\";s:4:\"45.5\";}i:4;a:2:{s:4:\"name\";s:21:\"Trọng lượng (KG)\";s:5:\"value\";s:3:\"0,5\";}}', 27, '2016-03-23 02:09:41', 0, 1, '', 'admin', '', '');
INSERT INTO `t_product` (`id`, `cat_id`, `name`, `code`, `price`, `default_img`, `description`, `attribute`, `ordering`, `date_created`, `hits`, `status`, `meta_title`, `author`, `meta_keyword`, `meta_description`) VALUES
(28, 56, 'Bộ lau sàn 360 độ lồng inox 2 bông lau Fujishi Speed Mop (Tím) ', 'CLN001', 358000, '/uploads/media/2015_11_17/cach-lap-dat-va-su-dung-cay-lau-nha-360-do.jpg', '<h2>Giới thiệu sản phẩm Bộ lau s&agrave;n 360 độ lồng inox 2 b&ocirc;ng lau Fujishi Speed Mop (T&iacute;m)</h2>\r\n\r\n<p><strong>Video hướng dẫn c&aacute;ch th&aacute;o lắp v&agrave; sử dụng &nbsp;Bộ c&acirc;y lau nh&agrave; xoay tay lồng inox 360&nbsp;</strong></p>\r\n\r\n<div><strong><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/cRoAvGJmOyQ\" style=\"margin: 0px; padding: 0px;\" width=\"560\"></iframe></strong></div>\r\n\r\n<p>H&ocirc;m nay, Ch&uacute;ng t&ocirc;i muốn chia sẻ tới chị em một b&iacute; quyết mới đ&oacute; ch&iacute;nh l&agrave; Bộ c&acirc;y lau nh&agrave; xoay tay lồng inox 360 Fujishi Speed Mop&nbsp; &ndash; sản phẩm mới nhất theo c&ocirc;ng nghệ th&ocirc;ng minh v&agrave; ưu việt, gi&uacute;p việc lau nh&agrave; hằng ng&agrave;y kh&ocirc;ng c&ograve;n nh&agrave;m ch&aacute;n m&agrave; trở n&ecirc;n đơn giản, nhanh ch&oacute;ng hơn rất nhiều.&nbsp;Bộ c&acirc;y lau nh&agrave; xoay tay lồng inox 360 Fujishi Speed Mop&nbsp;gồm 01 c&acirc;y lau, 01 th&ugrave;ng nước, 02 b&ocirc;ng lau nh&agrave;, gi&uacute;p bạn giữ nh&agrave; cửa lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; lau sạch mọi bụi bẩn.</p>\r\n\r\n<p><img alt=\"bo-lau-nha-fujipan-360-do-da-nang-long-inox-tim-4.jpg\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-2.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle\" /></p>\r\n\r\n<p>Bộ c&acirc;y lau nh&agrave; xoay tay lồng inox 360 Fujishi Speed Mop được tặng th&ecirc;m k&egrave;m 01 b&ocirc;ng lau thay thế</p>\r\n\r\n<p><strong>Ưu điểm:</strong>&nbsp;Bộ c&acirc;y lau nh&agrave; xoay tay lồng inox 360 Fujishi Speed Mop:&nbsp;mang lại sự thoải m&aacute;i v&agrave; kh&ocirc;ng lo mỏi tay, đau lưng. Với ti&ecirc;u ch&iacute; miễn đạp - miễn vắt - miễn cắm điện - miễn chờ đợi - kh&ocirc;ng quỳ gối. Bộ lau nh&agrave; cho chị em c&oacute; th&ecirc;m thời gian để tận hưởng cuộc sống</p>\r\n\r\n<p><img alt=\"1447108397_346_bo-lau-nha-fujipan-360-do-da-nang-long-inox-tim-2.jpg\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-5.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle\" /></p>\r\n\r\n<p>Bộ c&acirc;y lau nh&agrave; xoay tay th&ocirc;ng minh lồng inox 360 Fujishi Speed Mop&nbsp;chỉ xoay tay v&agrave; kh&ocirc;ng cần đạp ch&acirc;n l&agrave; chổi c&oacute; thể kh&ocirc; nước</p>\r\n\r\n<p>Th&ugrave;ng vắt l&agrave;m bằng Inox bền đẹp được thiết kế gọn v&agrave; cao, tiết kiệm diện t&iacute;ch v&agrave; khi vắt kh&ocirc;ng bị bắn nước ra ngo&agrave;i. . Chỉ cần hai hoặc ba lần nh&uacute;n cần lau l&agrave; đầu lau đ&atilde; tuyệt đối kh&ocirc; r&aacute;o m&agrave; kh&ocirc;ng cần phải dậm ch&acirc;n như c&acirc;y lau nh&agrave; kh&aacute;c.</p>\r\n\r\n<div><img alt=\"Bộ cây lau nhà xoay tay lồng inox 360 Fujipan Speed Mop\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-8.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle\" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Lồng vắt l&agrave;m bằng inox với cơ chế vắt ly t&acirc;m, gi&uacute;p tiết kiệm tối đa c&ocirc;ng sức v&agrave; thời gian cho việc vắt kh&ocirc; nước</div>\r\n\r\n<div>C&acirc;y lau được l&agrave;m bằng th&eacute;p mạ inox với độ bền cao, chống ăn m&ograve;n v&agrave; kh&ocirc;ng bị hoen gỉ sau một thời gian sử dụng. B&ecirc;n cạnh đ&oacute;, c&acirc;y lau c&ograve;n c&oacute; thể điều chỉnh được độ d&agrave;i, phần đầu c&oacute; khả năng xoay 360 độ, gi&uacute;p l&agrave;m sạch cả những g&oacute;c khuất kh&oacute; lau dọn như gầm giường, gầm tủ, b&agrave;n, ghế&hellip;</div>\r\n\r\n<div><img alt=\"Bộ cây lau nhà xoay tay lồng inox 360 Fujipan Speed Mop\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-11.jpg\" style=\"border:0px; color:rgb(51, 51, 51); display:inline; font-family:arial,helvetica neue,helvetica,sans-serif,zawgyi-one; font-size:15px; height:500px; line-height:1.2; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Phần th&acirc;n c&acirc;y lau nh&agrave; c&oacute; thể th&aacute;o lắp, điều chỉnh cho ph&ugrave; hợp.</div>\r\n\r\n<div>Phần b&ocirc;ng lau c&oacute; sợi d&agrave;i được l&agrave;m bằng b&ocirc;ng microfiber, kh&ocirc;ng xơ cứng n&ecirc;n kh&ocirc;ng l&agrave;m trầy xước bề mặt được lau. Sợi microfiber với khả năng thấm nước gấp 7 lần v&agrave; kh&ocirc; nhanh gấp 3 lần so với c&aacute;c khăn lau th&ocirc;ng thường kh&aacute;c gi&uacute;p lau nhanh, sạch mọi ng&oacute;c ng&aacute;ch, ngay cả những nơi kh&oacute; tiếp cận trong nh&agrave;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;<img alt=\"Bộ cây lau nhà xoay tay lồng inox 360 Fujipan Speed Mop\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-14.jpg\" style=\"border:0px; color:rgb(51, 51, 51); display:inline; font-family:arial,helvetica neue,helvetica,sans-serif,zawgyi-one; font-size:15px; height:500px; line-height:1.2; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></div>\r\n\r\n<div>Phần đầu c&acirc;y lau được nối với th&acirc;n cho ph&eacute;p sản phẩm c&oacute; thể chuyển động xoay 360 độ.&nbsp;</div>\r\n\r\n<div><img alt=\"bo-lau-nha-fujipan-360-do-da-nang-long-inox-tim-1.jpg\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-17.jpg\" style=\"border:0px; display:inline; margin:0px; padding:0px; vertical-align:middle\" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Th&ugrave;ng nước được l&agrave;m từ nhựa PP với độ bền cao c&ugrave;ng khả năng chịu lực tốt, hạn chế nứt vỡ khi c&oacute; va chạm trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;</div>\r\n\r\n<div><img alt=\"Bộ cây lau nhà xoay tay lồng inox 360 Fujipan Speed Mop\" class=\"productlazyimage\" src=\"http://localhost/cms/uploads/product/2016_03_23/bo-cay-lau-nha-xoay-tay-long-inox-360-fujipan-speed-mop-20.jpg\" style=\"border:0px; display:inline; height:500px; margin:0px; padding:0px; vertical-align:middle; width:500px\" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ph&iacute;a dưới th&ugrave;ng c&ograve;n c&oacute; b&aacute;nh xe, thuận tiện cho việc di chuyển.</div>\r\n', 'a:8:{i:0;a:2:{s:4:\"name\";s:24:\"Hãng sản xuất/Model\";s:5:\"value\";s:18:\"Fujishi Speed Mop \";}i:1;a:2:{s:4:\"name\";s:19:\"Loại sản phẩm\";s:5:\"value\";s:44:\"Bộ lau nhà đa năng xoay tay thông minh\";}i:2;a:2:{s:4:\"name\";s:10:\"Màu sắc\";s:5:\"value\";s:86:\"Xanh đọt chuối - Xanh dương - Tím ( Hàng có thể xuất màu ngẫu nhiên)\";}i:3;a:2:{s:4:\"name\";s:20:\"Chất liệu thùng\";s:5:\"value\";s:38:\"Nhựa PE, PP, APS bền và khó vỡ\";}i:4;a:2:{s:4:\"name\";s:33:\" Chất liệu thân cây, lồng\";s:5:\"value\";s:54:\"Xi inox cao cấp chống gỉ bền với thời gian\";}i:5;a:2:{s:4:\"name\";s:21:\"Sợi vải bông lau\";s:5:\"value\";s:74:\"Sợi Ru Microfiber thấm hút tốt, khô nhanh hơn, sạch bụi bẩn\";}i:6;a:2:{s:4:\"name\";s:11:\"Tính năng\";s:5:\"value\";s:94:\"Miễn đạp - miễn vắt - miễn cắm điện - miễn chờ đợi - không quỳ gối\";}i:7;a:2:{s:4:\"name\";s:24:\"Xuất xứ sản phẩm\";s:5:\"value\";s:44:\"Chính hãng Fujishi - Bảo hành 12 tháng\";}}', 28, '2015-11-17 13:30:44', 0, 1, '', 'admin', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_product_images`
--

CREATE TABLE `t_product_images` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'khóa chính',
  `product_id` int(11) UNSIGNED NOT NULL COMMENT 'id của sản phẩm',
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ảnh kích thước full',
  `ordering` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu ảnh của sản phẩm';

--
-- Dumping data for table `t_product_images`
--

INSERT INTO `t_product_images` (`id`, `product_id`, `url`, `ordering`) VALUES
(3, 1, '/uploads/product/2013/09/21/Koala.jpg', 3),
(11, 1, '/uploads/product/2013/09/21/Tulips.jpg', 11),
(279, 29, '/uploads/product/2016_02_22/chrysanthemum.jpg', 0),
(280, 29, '/uploads/product/2016_02_22/desert.jpg', 0),
(281, 26, '/uploads/product/2016_03_23/noi-com-ien-kangaroo-kg376n-1-8l-trang-7328-692629-1-zoom.jpg', 0),
(282, 26, '/uploads/product/2016_03_23/so-sanh-noi-com-dien-comet-cm8018-vs-kangaroo-kg376noi-co-nao-tot-hon_3.jpg', 0),
(283, 27, '/uploads/product/2016_03_23/144775-dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7.jpg', 0),
(284, 27, '/uploads/product/2016_03_23/dung-dich-tay-rua-vet-ri-set-300g-selleys-rp7-0969-95795-1-product.jpg', 0),
(285, 24, '/uploads/product/2016_04_01/91fhwi9fkql._sl1500_.jpg', 0),
(286, 24, '/uploads/product/2016_04_01/lego_3315_olivias_huis_friends_3.jpg', 0),
(287, 24, '/uploads/product/2016_04_01/do-choi-lego-5506-1.jpg', 0),
(288, 24, '/uploads/product/2016_04_01/lego-57491.jpg', 0),
(289, 23, '/uploads/product/2016_04_01/anself-kitchen-appliances-multifunctional-font-b-manual-b-font-font-b-juicer-b-font-practical-juicing.jpg', 0),
(290, 23, '/uploads/product/2016_04_01/anself-multifunctional-juicing-machine-detachable-fruits-font-b-hand-b-font-font-b-crank-b-font.jpg', 0),
(291, 23, '/uploads/product/2016_04_01/-font-b-hand-b-font-fruit-squeezer-lemon-citrus-orange-squeezer-font-b-manual-b.jpg', 0),
(292, 23, '/uploads/product/2016_04_01/maxresdefault.jpg', 0),
(293, 23, '/uploads/product/2016_04_01/may-xay-ep-da-nang-2in1-manual-juicer_2.jpg', 0),
(295, 22, '/uploads/product/2016_04_01/collage_photocat_zpsujstmacf.jpg', 0),
(296, 22, '/uploads/product/2016_04_01/den-led-bulb-9w-wit-b0109y-anh-sang-vang.jpg', 0),
(297, 21, '/uploads/product/2016_04_01/523686589973.jpg', 0),
(298, 21, '/uploads/product/2016_04_01/binh-dan-sieu-toc-philips-hd9303-1_1.jpg', 0),
(299, 21, '/uploads/product/2016_04_01/dar1385459884.jpg', 0),
(300, 20, '/uploads/product/2016_04_01/6862_338.jpg', 0),
(301, 20, '/uploads/product/2016_04_01/96589_binh-tam-midea-d1525eva.jpg', 0),
(302, 20, '/uploads/product/2016_04_01/binh-tam-gian-tiep-ariston-15l-an-15-r-mt.jpg', 0),
(303, 20, '/uploads/product/2016_04_01/pro_0619145739.png', 0),
(304, 28, '/uploads/product/2016_04_02/1753_3_cay_lau_nha_bamboo_thai_lan.jpg', 0),
(305, 28, '/uploads/product/2016_04_02/2453253_17245.jpg', 0),
(306, 28, '/uploads/product/2016_04_02/cay-lau-nha-360-do-long-inox.jpg', 0),
(307, 28, '/uploads/product/2016_04_02/ff4.png', 0),
(308, 17, '/uploads/product/2016_04_02/14869_type7.jpg', 0),
(309, 17, '/uploads/product/2016_04_02/78891_80815_may_hut_bui_electrolux_zar3500_4.jpg', 0),
(310, 17, '/uploads/product/2016_04_02/e_1180397.jpg', 0),
(312, 19, '/uploads/product/2016_04_04/do-choi-go-tro-choi-truot-xe_1870133468386754504_360.jpg', 0),
(313, 19, '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-1.jpg', 0),
(314, 19, '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-2.jpg', 0),
(315, 19, '/uploads/product/2016_04_04/tro-choi-lan-banh-bang-go_850x850.jpg', 0),
(316, 19, '/uploads/product/2016_04_04/tro-choi-truot-xe-62092-1m4g3-52a_2hiq6ed25i7s4_simg_19a19b_600x497_max.jpg', 0),
(317, 18, '/uploads/product/2016_04_04/be-boi-co-cau-truot-intex-57136-3.jpg', 0),
(318, 18, '/uploads/product/2016_04_04/intex-57136.jpg', 0),
(319, 18, '/uploads/product/2016_04_04/intex-57136-1.jpg', 0),
(320, 18, '/uploads/product/2016_04_04/oq3q1q9vr43qn1f0.jpg', 0),
(321, 16, '/uploads/product/2016_04_04/0003036_may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-co-matxa-silicon.jpeg', 0),
(322, 16, '/uploads/product/2016_04_04/may-hut-sua-bang-dien-unimom-allegro-bpa-free-um880106-2_logo.jpg', 0),
(323, 16, '/uploads/product/2016_04_04/unimom-allegro-um880106-kidsplaza-5_1.jpg', 0),
(324, 25, '/uploads/product/2016_04_04/lager_1375774472noinuong-vh-14t.jpg', 0),
(325, 25, '/uploads/product/2016_04_04/lo-nuong-sanaky-vh-158t-note-2.jpg', 0),
(326, 25, '/uploads/product/2016_04_04/top-5-lo-nuong-dang-mua-nhat-thang-10-1.jpg', 0),
(327, 25, '/uploads/product/2016_04_04/vinpro_ng_20150303_30090019_2.jpg', 0),
(328, 0, '/uploads/product/2016_05_05/chrysanthemum.jpg', 0),
(329, 0, '/uploads/product/2016_05_05/desert.jpg', 0),
(330, 0, '/uploads/product/2016_05_05/hydrangeas.jpg', 0),
(331, 0, '/uploads/product/2016_05_05/jellyfish.jpg', 0),
(332, 0, '/uploads/product/2016_05_05/lighthouse.jpg', 0),
(333, 0, '/uploads/product/2016_05_05/lighthouse_1.jpg', 0),
(334, 0, '/uploads/product/2016_05_05/koala.jpg', 0),
(335, 0, '/uploads/product/2016_05_05/penguins.jpg', 0),
(336, 0, '/uploads/product/2016_05_05/tulips_1.jpg', 0),
(337, 0, '/uploads/product/2016_05_05/hydrangeas_1.jpg', 0),
(338, 0, '/uploads/product/2016_05_05/tulips_2.jpg', 0),
(339, 0, '/uploads/product/2016_05_05/chrysanthemum_1.jpg', 0),
(340, 0, '/uploads/product/2016_05_05/desert_1.jpg', 0),
(341, 0, '/uploads/product/2016_05_05/hydrangeas_2.jpg', 0),
(342, 0, '/uploads/product/2016_05_05/jellyfish_1.jpg', 0),
(343, 0, '/uploads/product/2016_05_05/koala_1.jpg', 0),
(344, 0, '/uploads/product/2016_05_05/lighthouse_2.jpg', 0),
(345, 0, '/uploads/product/2016_05_05/penguins_1.jpg', 0),
(346, 0, '/uploads/product/2016_05_05/tulips_4.jpg', 0),
(347, 0, 'uploads/product/2016_05_07/chrysanthemum.jpg', 0),
(348, 0, 'uploads/product/2016_05_07/hydrangeas.jpg', 0),
(349, 0, 'uploads/product/2016_05_07/desert.jpg', 0),
(350, 0, 'uploads/product/2016_05_07/jellyfish.jpg', 0),
(351, 0, 'uploads/product/2016_05_07/koala.jpg', 0),
(352, 0, 'uploads/product/2016_05_07/chrysanthemum.jpg', 0),
(353, 0, 'uploads/product/2016_05_07/desert.jpg', 0),
(354, 0, 'uploads/product/2016_05_07/hydrangeas.jpg', 0),
(355, 0, 'uploads/product/2016_05_07/jellyfish.jpg', 0),
(356, 0, 'uploads/product/2016_05_07/koala.jpg', 0),
(357, 0, 'uploads/product/2016_05_07/lighthouse.jpg', 0),
(358, 0, 'uploads/product/2016_05_07/penguins.jpg', 0),
(359, 0, 'uploads/product/2016_05_07/tulips.jpg', 0),
(360, 0, 'uploads/product/2016_05_07/koala_1.jpg', 0),
(361, 0, 'uploads/product/2016_05_07/penguins_1.jpg', 0),
(362, 0, 'uploads/product/2016_05_07/desert_1.jpg', 0),
(363, 0, 'uploads/product/2016_05_07/hydrangeas_1.jpg', 0),
(364, 0, 'uploads/product/2016_05_07/jellyfish_1.jpg', 0),
(365, 0, 'uploads/product/2016_05_07/jellyfish_2.jpg', 0),
(366, 0, 'uploads/product/2016_05_07/koala_2.jpg', 0),
(367, 0, 'uploads/product/2016_05_07/penguins_2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_product_orders`
--

CREATE TABLE `t_product_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `list_product` text COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(2000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ghi chú',
  `payment_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: chưa xử lý, 1: đang xử lý: 2 đã hoàn tất',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `t_product_orders`
--

INSERT INTO `t_product_orders` (`id`, `list_product`, `fullname`, `phone`, `email`, `address`, `note`, `payment_type`, `status`, `date_created`) VALUES
(2, '{\"16\":5}', 'Nguyễn Đức Hạnh', '0987898875', 'hanhcoltech@gmail.com', '3D Duy Tân, Hà Nội', 'Đây là ghi chú', '', 0, '2016-04-07 09:38:59'),
(3, '{\"28\":1,\"17\":2}', 'Hanh Tony', '0987898871', 'hanhnguyen@gmail.com', '3D Duy Tân, Hà Nội', 'Giao hàng nhanh', '', 1, '2017-10-18 00:00:00'),
(6, '', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '0000-00-00 00:00:00'),
(8, '{\"18\":1,\"25\":1}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-21 22:24:56'),
(9, '{\"17\":1,\"22\":1}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-21 22:30:39'),
(10, '{\"19\":1,\"20\":3}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 22:33:10'),
(11, '{\"17\":1,\"20\":1}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 22:34:52'),
(12, '{\"17\":2}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:16:22'),
(13, '{\"17\":1,\"22\":2}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:38:10'),
(14, '{\"16\":4,\"26\":2}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:40:19'),
(15, '{\"20\":1}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:41:56'),
(16, '{\"17\":1,\"23\":2}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech2212@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:45:00'),
(17, '{\"16\":1,\"23\":1,\"26\":1}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:46:03'),
(18, '{\"20\":1}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:56:26'),
(19, '{\"20\":2}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-22 23:58:41'),
(20, '{\"18\":2}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-23 13:15:12'),
(21, '{\"20\":3}', 'Hanh Duc Nguyen', '984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-23 13:16:34'),
(22, '{\"17\":5,\"24\":1,\"25\":4}', 'Hanh Duc Nguyen', '0984558871', 'hanhcoltech@gmail.com', 'J1810 Parkview Residence, Duong Noi\r\nHa Dong', '', '', 0, '2017-10-29 00:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `t_product_relationship`
--

CREATE TABLE `t_product_relationship` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_product_relationship`
--

INSERT INTO `t_product_relationship` (`product_id`, `category_id`) VALUES
(3, 47),
(5, 49),
(5, 52),
(14, 49),
(14, 52),
(16, 1),
(16, 3),
(17, 2),
(17, 9),
(17, 10),
(18, 1),
(18, 59),
(19, 25),
(19, 59),
(20, 2),
(20, 9),
(21, 2),
(21, 8),
(21, 9),
(22, 2),
(22, 9),
(23, 2),
(23, 8),
(23, 9),
(24, 1),
(24, 25),
(24, 59),
(25, 2),
(25, 8),
(25, 9),
(26, 8),
(26, 9),
(27, 2),
(27, 10),
(28, 2),
(28, 8),
(28, 10),
(29, 30);

-- --------------------------------------------------------

--
-- Table structure for table `t_test`
--

CREATE TABLE `t_test` (
  `id` int(11) NOT NULL,
  `map` varchar(255) NOT NULL,
  `file` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_test`
--

INSERT INTO `t_test` (`id`, `map`, `file`) VALUES
(1, '21.04060735561615:105.79851150512695', '21.028190093371705:105.79125881195068'),
(2, '21.025666458725933:105.80426216125488', '21.035840851524437:105.80039978027344');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `region_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:nam, 0: nữ',
  `date_register` datetime NOT NULL,
  `birthday` datetime NOT NULL,
  `desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_latitude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_longitude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_currency_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng lưu thông tin của người dùng';

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `password`, `email`, `avatar`, `phone`, `fullname`, `city`, `address`, `region_name`, `gender`, `date_register`, `birthday`, `desc`, `website`, `last_login_time`, `last_login_ip`, `last_latitude`, `last_longitude`, `last_currency_code`, `group_id`, `status`) VALUES
(1, 'duchanhtb', '46b05d602314e8500ef4ffe36511a0ce', 'hanhcoltech@gmail.com', '', '0987898871', 'Nguyễn Đức Hạnh', '', 'Hà Nội - Việt Nam', '', 1, '2012-02-19 16:06:03', '1985-10-22 00:00:00', 'abc', 'http://nguyenduchanh.com', '2016-04-06 17:16:52', '127.0.0.1', '0', '0', '', 100, 1),
(2, 'admin', '16defcb07cbb4688fbf6c396b7c0dd42', 'hanhnguyen_rav@yahoo.com.vn', '', '', 'Nguyen Duc Hanh', '', 'address', '', 1, '2012-02-19 16:05:51', '1985-01-01 00:00:00', '', '', '2012-02-19 16:05:51', '127.0.0.1', '', '', '', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`),
  ADD KEY `level` (`level`),
  ADD KEY `last_login_ip` (`last_login_ip`),
  ADD KEY `last_login_time` (`last_login_time`),
  ADD KEY `pass` (`pass`);

--
-- Indexes for table `m_country`
--
ALTER TABLE `m_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_districts`
--
ALTER TABLE `m_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `m_language`
--
ALTER TABLE `m_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `m_options`
--
ALTER TABLE `m_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `m_page`
--
ALTER TABLE `m_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `layout` (`layout`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `m_provinces`
--
ALTER TABLE `m_provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `t_banner`
--
ALTER TABLE `t_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`(255)),
  ADD KEY `status` (`status`);

--
-- Indexes for table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `status` (`status`),
  ADD KEY `home` (`home`);

--
-- Indexes for table `t_media`
--
ALTER TABLE `t_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `object_type` (`object_type`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `username` (`username`),
  ADD KEY `object_id` (`object_id`);

--
-- Indexes for table `t_news`
--
ALTER TABLE `t_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `title` (`title`),
  ADD KEY `status` (`status`),
  ADD KEY `home` (`home`),
  ADD KEY `date_edit` (`date_edit`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `t_news_category`
--
ALTER TABLE `t_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `home` (`home`),
  ADD KEY `name` (`name`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `t_product`
--
ALTER TABLE `t_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `price` (`price`),
  ADD KEY `name` (`name`),
  ADD KEY `author` (`author`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `t_product_images`
--
ALTER TABLE `t_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `t_product_orders`
--
ALTER TABLE `t_product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `t_product_relationship`
--
ALTER TABLE `t_product_relationship`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `t_test`
--
ALTER TABLE `t_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`),
  ADD KEY `gender` (`gender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_country`
--
ALTER TABLE `m_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `m_districts`
--
ALTER TABLE `m_districts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;
--
-- AUTO_INCREMENT for table `m_language`
--
ALTER TABLE `m_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `m_options`
--
ALTER TABLE `m_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `m_page`
--
ALTER TABLE `m_page`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `m_provinces`
--
ALTER TABLE `m_provinces`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `t_banner`
--
ALTER TABLE `t_banner`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `t_media`
--
ALTER TABLE `t_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;
--
-- AUTO_INCREMENT for table `t_news`
--
ALTER TABLE `t_news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `t_news_category`
--
ALTER TABLE `t_news_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_product`
--
ALTER TABLE `t_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Khóa chính', AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `t_product_images`
--
ALTER TABLE `t_product_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'khóa chính', AUTO_INCREMENT=368;
--
-- AUTO_INCREMENT for table `t_product_orders`
--
ALTER TABLE `t_product_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `t_test`
--
ALTER TABLE `t_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
