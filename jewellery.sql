-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2020 lúc 06:03 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewellery`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `aId` int(11) NOT NULL,
  `rId` int(11) DEFAULT NULL,
  `aUser` varchar(30) DEFAULT NULL,
  `aPass` varchar(32) DEFAULT NULL,
  `aName` varchar(30) DEFAULT NULL,
  `aDob` datetime DEFAULT NULL,
  `aAdrress` varchar(100) DEFAULT NULL,
  `aPhone` varchar(12) DEFAULT NULL,
  `aEmail` varchar(75) DEFAULT NULL,
  `aGender` int(11) DEFAULT NULL,
  `aDescription` varchar(30) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bId` int(11) NOT NULL,
  `cId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `vId` int(11) DEFAULT NULL,
  `payId` int(11) DEFAULT NULL,
  `sbID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bId`, `cId`, `pId`, `address`, `phone`, `productPrice`, `quantity`, `vId`, `payId`, `sbID`) VALUES
(1, 1, 1, '66/25 abc disctrict , xyz city', '0934543232', 59.5, 1, 0, 1, 0),
(2, 1, 1, '66/25 abc disctrict , xyz city', '0934543232', 59.5, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `bdId` int(11) NOT NULL,
  `bId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `categoryId` varchar(30) NOT NULL,
  `categoryName` varchar(30) DEFAULT NULL,
  `categoryDescription` varchar(30) DEFAULT NULL,
  `categoryStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `cName` varchar(30) DEFAULT NULL,
  `cUser` varchar(30) DEFAULT NULL,
  `cPass` varchar(32) DEFAULT NULL,
  `cDob` datetime DEFAULT NULL,
  `cAddress` varchar(100) DEFAULT NULL,
  `cPhone` varchar(12) DEFAULT NULL,
  `cEmail` varchar(75) DEFAULT NULL,
  `cGender` int(11) DEFAULT NULL,
  `cDescription` varchar(100) DEFAULT NULL,
  `cStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cId`, `cName`, `cUser`, `cPass`, `cDob`, `cAddress`, `cPhone`, `cEmail`, `cGender`, `cDescription`, `cStatus`) VALUES
(1, 'Nguyen Duy Quang Huy', 'ndqhbadao', 'e10adc3949ba59abbe56e057f20f883e', '2000-12-25 00:00:00', '66/25 abc disctrict , xyz city', '0934543232', 'nva@gmail.com', 0, 'Hello everyone , my name is Huy', 0),
(2, 'Nguyá»?n Duy Quang Huy', 'ad', 'e10adc3949ba59abbe56e057f20f883e', '0002-02-03 00:00:00', '66/25 Nguyá»?n Truyá»?n Thanh', '0868953925', 'ndqhbadao@223gmail.com', 0, NULL, 0),
(3, 'a', 'ndqhbadao', '202cb962ac59075b964b07152d234b70', '0004-02-02 00:00:00', 'aawd', '23345543345', '@cc.com', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `hId` int(11) NOT NULL,
  `aId` int(11) DEFAULT NULL,
  `activity` varchar(30) DEFAULT NULL,
  `hDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `imgID` varchar(30) NOT NULL,
  `pID` int(11) NOT NULL,
  `linkIMG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`imgID`, `pID`, `linkIMG`) VALUES
('pd1', 1, 'pd1.jpg'),
('pd2', 2, 'pd2.jpg'),
('pd3', 3, 'pd3.jpg'),
('pd4', 4, 'pd4.jpg'),
('pd5', 5, 'pd5.jpg'),
('pd6', 6, 'pd6.jpg'),
('pd7', 7, 'pd7.jpg'),
('pd8', 8, 'pd8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payID` int(11) NOT NULL,
  `payName` varchar(20) DEFAULT NULL,
  `payDescription` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pName` varchar(100) DEFAULT NULL,
  `pSalePrice` float DEFAULT NULL,
  `pBrand` varchar(30) DEFAULT NULL,
  `pType` varchar(20) DEFAULT NULL,
  `pCategoryId` varchar(30) DEFAULT NULL,
  `pQuantity` int(11) DEFAULT NULL,
  `color` varchar(20) NOT NULL,
  `length` varchar(20) NOT NULL,
  `pDescription` varchar(100) DEFAULT NULL,
  `pStatusId` int(11) DEFAULT NULL,
  `pImageID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pId`, `pName`, `pSalePrice`, `pBrand`, `pType`, `pCategoryId`, `pQuantity`, `color`, `length`, `pDescription`, `pStatusId`, `pImageID`) VALUES
(1, 'SWAROVSKI SYMBOLIC TREE OF LIFE NECKLACE, WHITE, RHODIUM PLATED', 59.5, 'Swa', 'Rhodium plated', 'necklace', 21, 'white', '5/8 inches', 'It combines perfectly with other pieces from the Angelic family.', 0, 'pd1'),
(2, 'ATTRACT STUD PIERCED EARRINGS, GREEN, RHODIUM PLATED', 29.5, 'Swa', 'Rhodium plated', 'earing', 0, 'green', '1/4 inches', 'Shine with vibrant style in this delicate pair of stud earrings. The rhodium plated design features ', 0, 'pd2'),
(3, 'ANGELIC BRACELET, WHITE, RHODIUM PLATED', 79.5, 'Swa', 'Rhodium plated', 'bracelet', 19, 'white', '6/8 inches', 'Pure, timeless sophistication. This rhodium-plated bracelet features a row of round clear crystals, ', 0, 'pd3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `rId` int(11) NOT NULL,
  `rName` varchar(30) DEFAULT NULL,
  `rDescription` varchar(50) DEFAULT NULL,
  `rStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statusbill`
--

CREATE TABLE `statusbill` (
  `sbID` varchar(20) NOT NULL,
  `sbName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statusproduct`
--

CREATE TABLE `statusproduct` (
  `spID` int(11) NOT NULL,
  `spName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `vId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `vDate` datetime DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`),
  ADD UNIQUE KEY `aUser` (`aUser`,`aPhone`,`aEmail`),
  ADD KEY `rId` (`rId`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bId`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`bdId`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`),
  ADD UNIQUE KEY `cUser` (`cUser`,`cPhone`,`cEmail`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hId`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rId`);

--
-- Chỉ mục cho bảng `statusbill`
--
ALTER TABLE `statusbill`
  ADD PRIMARY KEY (`sbID`);

--
-- Chỉ mục cho bảng `statusproduct`
--
ALTER TABLE `statusproduct`
  ADD PRIMARY KEY (`spID`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`vId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`rId`) REFERENCES `role` (`rId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
