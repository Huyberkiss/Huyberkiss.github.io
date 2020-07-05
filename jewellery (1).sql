-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 05:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
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
-- Table structure for table `bill`
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

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
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
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brId` int(11) NOT NULL,
  `brName` varchar(30) DEFAULT NULL,
  `brLogo` varchar(50) DEFAULT NULL,
  `brDescription` varchar(30) DEFAULT NULL,
  `brStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(30) DEFAULT NULL,
  `categoryDescription` varchar(30) DEFAULT NULL,
  `categoryStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
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
  `cDescription` varchar(30) DEFAULT NULL,
  `cStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `cName`, `cUser`, `cPass`, `cDob`, `cAddress`, `cPhone`, `cEmail`, `cGender`, `cDescription`, `cStatus`) VALUES
(1, 'Nguyen Duy Quang Huy', 'ndqhbadao', 'e10adc3949ba59abbe56e057f20f883e', '2000-12-25 00:00:00', '66/25 abc disctrict , xyz city', '0934543232', 'nva@gmail.com', 0, 'Hello everyone , my name is Hu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hId` int(11) NOT NULL,
  `aId` int(11) DEFAULT NULL,
  `activity` varchar(30) DEFAULT NULL,
  `hDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `imgId` int(11) NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `linkIMG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payID` int(11) NOT NULL,
  `payName` varchar(20) DEFAULT NULL,
  `payDescription` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pName` varchar(30) DEFAULT NULL,
  `pSalePrice` float DEFAULT NULL,
  `pBrandId` int(11) DEFAULT NULL,
  `pType` int(11) DEFAULT NULL,
  `pCategoryId` int(11) DEFAULT NULL,
  `pBillId` int(11) DEFAULT NULL,
  `pQuantity` int(11) DEFAULT NULL,
  `PDescription` varchar(100) DEFAULT NULL,
  `pRating` int(11) DEFAULT NULL,
  `pStatusId` int(11) DEFAULT NULL,
  `pImageId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(11) NOT NULL,
  `userNameId` int(11) DEFAULT NULL,
  `productName` varchar(30) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `ratingPoint` float DEFAULT NULL,
  `ratingActive` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `rId` int(11) NOT NULL,
  `rName` varchar(30) DEFAULT NULL,
  `rDescription` varchar(50) DEFAULT NULL,
  `rStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statusbill`
--

CREATE TABLE `statusbill` (
  `sbID` int(11) NOT NULL,
  `sbName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statusproduct`
--

CREATE TABLE `statusproduct` (
  `spID` int(11) NOT NULL,
  `spName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `vId` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `vDate` datetime DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`),
  ADD KEY `rId` (`rId`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`bdId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imgId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rId`);

--
-- Indexes for table `statusbill`
--
ALTER TABLE `statusbill`
  ADD PRIMARY KEY (`sbID`);

--
-- Indexes for table `statusproduct`
--
ALTER TABLE `statusproduct`
  ADD PRIMARY KEY (`spID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`vId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`rId`) REFERENCES `role` (`rId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
