-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2018 lúc 04:21 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `abc_company`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departs`
--

CREATE TABLE `departs` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departs`
--

INSERT INTO `departs` (`id`, `name`) VALUES
(61, 'CNTT'),
(83, 'Du lich'),
(84, 'Kinh Doanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `records`
--

CREATE TABLE `records` (
  `id` int(10) NOT NULL,
  `type` bit(1) DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `staffusername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `records`
--

INSERT INTO `records` (`id`, `type`, `reason`, `date`, `staffusername`) VALUES
(1, b'1', 'abc', '2018-01-01', 'admin'),
(2, b'0', 'đi làm muộn', '2020-02-04', 'tamhbpd01932');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staffs`
--

CREATE TABLE `staffs` (
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salary` double(100,2) NOT NULL,
  `notes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departid` int(10) DEFAULT NULL,
  `role` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `staffs`
--

INSERT INTO `staffs` (`username`, `password`, `name`, `gender`, `birthday`, `photo`, `email`, `phone`, `salary`, `notes`, `departid`, `role`) VALUES
('admin', '123', 'admin', 'Male', '2018-01-01', NULL, 'admin@abc.com', '099999', 99999.00, '10', 61, b'0'),
('tamhbpd01932', '123', 'Tam', 'Male', '1998-12-05', NULL, 'tamhbpd01932@fpt.edu.vn', '01628612289', 10000.00, 'a', 61, b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `departs`
--
ALTER TABLE `departs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_fk` (`staffusername`);

--
-- Chỉ mục cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`username`) USING BTREE,
  ADD UNIQUE KEY `email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `phone_unique` (`phone`) USING BTREE,
  ADD KEY `depart_fk` (`departid`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `departs`
--
ALTER TABLE `departs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `records`
--
ALTER TABLE `records`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `record_fk` FOREIGN KEY (`staffusername`) REFERENCES `staffs` (`username`);

--
-- Các ràng buộc cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `depart_fk` FOREIGN KEY (`departid`) REFERENCES `departs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
