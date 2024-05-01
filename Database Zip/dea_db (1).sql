-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 07:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dea_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_ID` int(11) NOT NULL,
  `Item_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Item_Name` varchar(70) DEFAULT NULL,
  `M_Year` varchar(10) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Total_Price` double DEFAULT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_ID`, `Item_ID`, `User_ID`, `Item_Name`, `M_Year`, `Price`, `Total_Price`, `Quantity`) VALUES
(171, 53, 29, 'lap2', '2000', 20000, 20000, 1),
(172, 52, 28, 'lap', '11', 1223, 1223, 1),
(173, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(174, 52, 28, 'lap', '11', 1223, 1223, 1),
(175, 52, 28, 'lap', '11', 1223, 1223, 1),
(176, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(177, 52, 28, 'lap', '11', 1223, 1223, 1),
(178, 52, 28, 'lap', '11', 1223, 1223, 1),
(179, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(180, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(181, 52, 28, 'lap', '11', 1223, 1223, 1),
(182, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(183, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(184, 52, 28, 'lap', '11', 1223, 1223, 1),
(185, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(186, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(187, 52, 28, 'lap', '11', 1223, 1223, 1),
(188, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(189, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(190, 52, 28, 'lap', '11', 1223, 1223, 1),
(191, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(192, 52, 28, 'lap', '11', 1223, 1223, 1),
(193, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(194, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(195, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(196, 52, 28, 'lap', '11', 1223, 1223, 1),
(197, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(198, 52, 28, 'lap', '11', 1223, 1223, 1),
(199, 52, 28, 'lap', '11', 1223, 1223, 1),
(200, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(201, 52, 28, 'lap', '11', 1223, 1223, 1),
(202, 52, 28, 'lap', '11', 1223, 1223, 1),
(203, 52, 28, 'lap', '11', 1223, 1223, 1),
(204, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(205, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(206, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(207, 52, 28, 'lap', '11', 1223, 1223, 1),
(208, 53, 28, 'lap2', '2000', 20000, 20000, 1),
(209, 56, 28, 'sanjeewa', '2001', 100000, 100000, 1),
(210, 60, 28, 'kaviya', '1111', 230.3, 230.3, 1),
(211, 52, 28, 'lap', '11', 1223, 1223, 1),
(212, 52, 28, 'lap', '11', 1223, 1223, 1),
(213, 52, 28, 'lap', '11', 1223, 1223, 1),
(214, 52, 28, 'lap', '11', 1223, 1223, 1),
(215, 52, 28, 'lap', '11', 1223, 1223, 1),
(216, 52, 28, 'lap', '11', 1223, 1223, 1),
(217, 64, 28, 'lap2', '2021', 150, 150, 1),
(218, 63, 28, 'lap1', '2011', 150, 150, 1),
(219, 63, 28, 'lap1', '2011', 150, 150, 1),
(220, 63, 28, 'lap1', '2011', 150, 150, 1),
(221, 63, 28, 'lap1', '2011', 150, 150, 1),
(222, 63, 34, 'lap1', '2011', 150, 150, 1),
(223, 63, 34, 'lap1', '2011', 150, 150, 1),
(224, 63, 34, 'lap1', '2011', 150, 150, 1),
(225, 63, 34, 'lap1', '2011', 150, 150, 1),
(226, 64, 34, 'lap2', '2021', 150, 150, 1),
(227, 63, 34, 'lap1', '2011', 150, 150, 1),
(228, 64, 34, 'lap2', '2021', 150, 150, 1),
(229, 63, 34, 'lap1', '2011', 150, 150, 1),
(230, 64, 34, 'lap2', '2021', 150, 150, 1),
(231, 63, 28, 'lap1', '2011', 150, 150, 1),
(232, 64, 28, 'lap2', '2021', 150, 150, 1),
(233, 65, 28, 'lap3', '2023', 340, 340, 1),
(234, 66, 28, 'lap5', '2023', 340, 340, 1),
(235, 63, 28, 'lap1', '2011', 150, 150, 1),
(236, 64, 28, 'lap2', '2021', 150, 150, 1),
(237, 65, 28, 'lap3', '2023', 340, 340, 1),
(238, 66, 28, 'lap5', '2023', 340, 340, 1),
(239, 63, 28, 'lap1', '2011', 150, 150, 1),
(240, 64, 28, 'lap2', '2021', 150, 150, 1),
(241, 63, 28, 'lap1', '2011', 150, 150, 1),
(242, 63, 28, 'lap1', '2011', 150, 150, 1),
(243, 64, 28, 'lap2', '2021', 150, 150, 1),
(244, 65, 28, 'lap3', '2023', 340, 340, 1),
(245, 63, 28, 'lap1', '2011', 150, 150, 1),
(246, 64, 28, 'lap2', '2021', 150, 150, 1),
(247, 65, 28, 'lap3', '2023', 340, 340, 1),
(248, 66, 28, 'lap5', '2023', 340, 340, 1),
(249, 63, 46, 'lap1', '2011', 150, 150, 1),
(250, 64, 46, 'lap2', '2021', 150, 150, 1),
(251, 65, 46, 'lap3', '2023', 340, 340, 1),
(252, 67, 46, 'ABCD', '2023', 340, 340, 1),
(253, 67, 47, 'ABCD', '2023', 340, 340, 1),
(254, 67, 28, 'ABCD', '2023', 340, 340, 1),
(255, 69, 28, 'osadi', '2002', 100000000000, 100000000000, 1),
(256, 67, 28, 'ABCD', '2023', 340, 340, 1),
(257, 67, 28, 'ABCD', '2023', 340, 340, 1),
(258, 67, 28, 'ABCD', '2023', 340, 340, 1),
(259, 67, 28, 'ABCD', '2023', 340, 340, 1),
(260, 67, 28, 'ABCD', '2023', 340, 340, 1),
(261, 67, 28, 'ABCD', '2023', 340, 340, 1),
(262, 67, 28, 'ABCD', '2023', 340, 340, 1),
(263, 74, 28, 'lakshan', '200', 10, 10, 1),
(264, 72, 28, 'i pad 1', '2000', 200000, 200000, 1),
(265, 73, 28, 'disal', '2001', 10, 10, 1),
(266, 70, 28, 'pabasara', '2000', 10000, 10000, 1),
(267, 70, 28, 'pabasara', '2000', 10000, 10000, 1),
(268, 70, 28, 'pabasara', '2000', 10000, 10000, 1),
(269, 70, 28, 'pabasara', '2000', 10000, 10000, 1),
(270, 74, 28, 'lakshan', '200', 10, 10, 1),
(271, 70, 28, 'pabasara', '2000', 10000, 10000, 1),
(272, 75, 28, 'I PHONE 14', '2002', 120000, 120000, 1),
(273, 76, 28, 'I PHONE 14', '2002', 120000, 120000, 1),
(274, 76, 28, 'I PHONE 14', '2002', 120000, 120000, 1),
(275, 76, 28, 'I PHONE 14', '2002', 120000, 120000, 1),
(276, 76, 28, 'I PHONE 14', '2002', 120000, 120000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_data`
--

CREATE TABLE `item_data` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(40) DEFAULT NULL,
  `M_Year` varchar(10) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Photo` varchar(30) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `User_Email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_data`
--

INSERT INTO `item_data` (`Item_ID`, `Item_Name`, `M_Year`, `Price`, `Photo`, `Category`, `Status`, `User_Email`) VALUES
(78, 'iPhone 13', '2024', 399, '13.jpg', 'IPhone', 'Active', 'admin'),
(79, 'iPhone 13 Pro', '2024', 449, '13pro.jpg', 'IPhone', 'Active', 'admin'),
(80, 'iPhone 14', '2024', 499, '14.jpg', 'IPhone', 'Active', 'admin'),
(81, 'iPhone 14 Pro', '2024', 549, '14pro.jpg', 'IPhone', 'Active', 'admin'),
(82, 'iPhone 15', '2024', 599, '15.jpg', 'IPhone', 'Active', 'admin'),
(83, 'iPhone 15 Pro', '2024', 649, '15pro.jpg', 'IPhone', 'Active', 'admin'),
(84, 'MacBook Air M1', '2024', 799, 'airM1.jpg', 'Laptop', 'Active', 'admin'),
(85, 'MacBook Air M2', '2024', 849, 'airM2.jpg', 'Laptop', 'Active', 'admin'),
(86, 'MacBook Air M3', '2024', 949, 'airM3.jpg', 'Laptop', 'Active', 'admin'),
(87, 'MacBook Pro M1', '2024', 969, 'proM1.jpg', 'Laptop', 'Active', 'admin'),
(88, 'MacBook Pro M2', '2024', 999, 'proM2.jpg', 'Laptop', 'Active', 'admin'),
(89, 'MacBook Pro M3', '2024', 879, 'proM3.jpg', 'Laptop', 'Active', 'admin'),
(90, 'Apple Watch Series 7', '2024', 549, 'watch7.jpg', 'Watches', 'Active', 'admin'),
(91, 'Apple Watch Series 8', '2024', 649, 'watch8.jpg', 'Watches', 'Active', 'admin'),
(92, 'Apple Watch Series 9', '2024', 749, 'watch9.jpg', 'Watches', 'Active', 'admin'),
(94, 'iPad Air (4th Gen)', '2024', 499, 'pad4.jpg', 'IPad', 'Active', 'admin'),
(95, 'iPad Air (5th Gen)', '2024', 599, 'pad5.jpg', 'IPad', 'Active', 'admin'),
(96, 'iPad Air (6th Gen)', '2024', 599, 'pad6.jpg', 'IPad', 'Active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `order_detailes`
--

CREATE TABLE `order_detailes` (
  `Order_ID` int(45) NOT NULL,
  `ID` int(11) NOT NULL,
  `User_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `item_Name` varchar(40) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `payment_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detailes`
--

INSERT INTO `order_detailes` (`Order_ID`, `ID`, `User_Name`, `Email`, `Address`, `Phone`, `item_Name`, `Price`, `payment_type`) VALUES
(28, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap', 1223, 'c'),
(29, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap2', 20000, 'c'),
(30, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap2', 20000, 'c'),
(31, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap', 1223, 'c'),
(32, 29, 'kavindu', 'naveen@gmail.com', ',,,', '1223', 'lap', 1223, 'c'),
(33, 29, 'kavindu', 'naveen@gmail.com', 'asdf,asdfgh,1111111,11111', '1223', 'lap2', 20000, 'c'),
(34, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap1', 150, 'c'),
(35, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap1', 150, 'c'),
(36, 34, 'kavindu', 'naveen@gmail.com', ',,,', '', 'lap1', 150, 'c'),
(37, 28, 'Naveen', '', ',,,', '1234345666', 'lap1', 150, 'c'),
(38, 28, 'Naveen', '', ',,,', '1234345666', 'lap2', 150, 'c'),
(39, 28, 'Naveen', '', ',,,', '1234345666', 'lap3', 340, 'c'),
(40, 28, 'Naveen', '', ',,,', '1234345666', 'lap5', 340, 'c'),
(41, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap1', 150, 'c'),
(42, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap2', 150, 'c'),
(43, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap3', 340, 'c'),
(44, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'lap5', 340, 'c'),
(45, 46, 'Heshan', 'heshan@gmail.com', ',,,', '', 'lap1', 150, 'c'),
(46, 46, 'Heshan', 'heshan@gmail.com', ',,,', '', 'ABCD', 340, 'c'),
(47, 47, 'osadi', 'osandikiriella@gmail.com', ',,,', '', 'ABCD', 340, 'c'),
(48, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'ABCD', 340, 'c'),
(49, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'ABCD', 340, 'c'),
(50, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'lakshan', 10, 'c'),
(54, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'I PHONE 14', 120000, 'c'),
(55, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'I PHONE 14', 120000, 'c'),
(56, 28, 'Naveen', 'kavi@gmail.com', ',,,', '1234345666', 'I PHONE 14', 120000, 'c'),
(57, 28, 'Naveen', 'kavi@gmail.com', 'kavi@gmail.com,kavi@gmail.com,,', '1234345666', 'I PHONE 14', 120000, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phonenumber` varchar(10) DEFAULT NULL,
  `Password` varchar(10) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Landmark` varchar(20) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Phonenumber`, `Password`, `Address`, `Landmark`, `City`, `State`, `Zip`) VALUES
(28, 'Naveen', 'kavi@gmail.com', '1234345666', '1234', NULL, NULL, NULL, NULL, NULL),
(32, 'kavindu', 'admin@gmail.com', NULL, 'admin', NULL, NULL, NULL, NULL, NULL),
(34, 'kavindu', 'naveen@gmail.com', NULL, '1234', NULL, NULL, NULL, NULL, NULL),
(44, 'Supun', 'Naveen@gmail.com', NULL, '1234', NULL, NULL, NULL, NULL, NULL),
(45, 'Ravindu', 'Naveen@gmail.com', NULL, '1234', NULL, NULL, NULL, NULL, NULL),
(46, 'Heshani', 'heshan@gmail.com', '', '12345', NULL, NULL, NULL, NULL, NULL),
(47, 'osadi', 'osandikiriella@gmail.com', NULL, 'osadi', NULL, NULL, NULL, NULL, NULL),
(48, 'abcd', 'tttt@gmail.com', NULL, '1234', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_ID`);

--
-- Indexes for table `item_data`
--
ALTER TABLE `item_data`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `order_detailes`
--
ALTER TABLE `order_detailes`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Cart_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `item_data`
--
ALTER TABLE `item_data`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `order_detailes`
--
ALTER TABLE `order_detailes`
  MODIFY `Order_ID` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
