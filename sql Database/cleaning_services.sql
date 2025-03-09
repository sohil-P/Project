-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2025 at 01:34 PM
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
-- Database: `cleaning services`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `A_ID` int(5) NOT NULL,
  `AdminName` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`A_ID`, `AdminName`, `Password`) VALUES
(1, 'Hiten@user123', 'shw3%@3$35');

-- --------------------------------------------------------

--
-- Table structure for table `basic_service`
--

CREATE TABLE `basic_service` (
  `BS_ID` int(5) NOT NULL,
  `BSName` varchar(30) NOT NULL,
  `Frequency` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Worker_Group` varchar(25) NOT NULL,
  `Workers` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basic_service`
--

INSERT INTO `basic_service` (`BS_ID`, `BSName`, `Frequency`, `Date`, `Time`, `Price`, `Worker_Group`, `Workers`) VALUES
(1, 'Carpet and Window Cleaning', 'monthly', '2025-01-29', '18:40:00.000000', '$1060', 'male', 9),
(2, 'Carpet and Window Cleaning', 'monthly', '2025-01-29', '18:40:00.000000', '$1060', 'male', 9),
(3, 'Carpet and Window Cleaning', 'monthly', '2025-01-29', '19:31:00.000000', '$480', 'male', 4),
(4, 'Carpet and Window Cleaning', 'monthly', '2025-03-01', '08:54:00.000000', '$1060', 'male', 9),
(5, 'Carpet and Window Cleaning', 'monthly', '2025-03-01', '08:54:00.000000', '$600', 'male', 5),
(6, 'Carpet and Window Cleaning', 'monthly', '2025-03-01', '08:54:00.000000', '$600', 'male', 5),
(7, 'Carpet and Window Cleaning', 'monthly', '2025-03-01', '08:54:00.000000', '$480', 'male', 4),
(8, 'Carpet and Window Cleaning', 'monthly', '2025-03-01', '08:54:00.000000', '$940', 'combine', 8),
(9, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-01', '08:54:00.000000', '$960', 'combine', 4),
(10, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(11, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(12, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(13, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(14, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(15, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(16, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(17, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(18, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(19, 'Carpet and Window Cleaning', 'monthly', '2025-01-28', '16:55:00.000000', '$700', 'female', 6),
(20, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-04', '00:11:00.000000', '$2120', 'combine', 9),
(21, 'Carpet and Window Cleaning', 'monthly', '2025-02-12', '02:04:00.000000', '$1060', 'female', 9),
(22, 'Carpet and Window Cleaning', 'monthly', '2025-02-12', '02:04:00.000000', '$1060', 'female', 9),
(23, 'Carpet and Window Cleaning', 'two_monthly', '2025-02-12', '02:04:00.000000', '$2120', 'female', 9),
(24, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$3150', 'female', 9),
(25, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$3150', 'female', 9),
(26, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$1750', 'female', 5),
(27, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$5600', 'female', 16),
(28, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$5600', 'combine', 16),
(29, 'Carpet and Window Cleaning', 'three_monthly', '2025-02-12', '02:04:00.000000', '$5600', 'combine', 16),
(30, 'Carpet and Window Cleaning', 'monthly', '2025-03-07', '22:51:00.000000', '$700', 'combine(male & ', 6),
(31, 'Carpet and Window Cleaning', 'monthly', '2025-03-07', '22:51:00.000000', '$700', 'combine(male & ', 6),
(32, 'Carpet and Window Cleaning', 'monthly', '2025-03-07', '22:51:00.000000', '$700', 'combine(male & female)', 6),
(33, 'Carpet and Window Cleaning', 'monthly', '2025-03-07', '22:51:00.000000', '$820', 'combine(male & female)', 6),
(34, 'Carpet and Window Cleaning', 'monthly', '2025-03-07', '22:51:00.000000', '$940', 'combine(male & female)', 6),
(35, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-06', '23:02:00.000000', '$1400', 'combine(male & female)', 0),
(36, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-06', '23:02:00.000000', '$4040', 'combine(male & female)', 17),
(37, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-07', '11:12:00.000000', '$1400', 'combine(male & female)', 6),
(38, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-07', '11:12:00.000000', '$1640', 'combine(male & female)', 6),
(39, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-07', '11:12:00.000000', '$1880', 'combine(male & female)', 6),
(40, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-07', '11:12:00.000000', '$1880', 'combine(male & female)', 6),
(41, 'Carpet and Window Cleaning', 'two_monthly', '2025-03-07', '11:12:00.000000', '$1880', 'combine(male & female)', 6);

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `B_ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNo` decimal(10,0) NOT NULL,
  `Address` varchar(10) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `S_ID` int(5) DEFAULT NULL,
  `BS_ID` int(5) DEFAULT NULL,
  `SS_ID` int(5) DEFAULT NULL,
  `PS_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`B_ID`, `Name`, `Email`, `MobileNo`, `Address`, `City`, `State`, `Pincode`, `S_ID`, `BS_ID`, `SS_ID`, `PS_ID`) VALUES
(49, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 1, 0, NULL, NULL),
(50, 'Happy Prajapati', 'happyprajapati585@gmail.com', 6358789425, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 11, 0, NULL, NULL),
(52, 'Sohil Prajapati', 'ps8929382@gmail.com', 6378894050, 'Bhalusana', 'Satlasana', 'Gujarat ', 384330, 1, 0, NULL, NULL),
(53, 'Meet Prajapati', 'Mit123@gmail.com', 9999999999, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 1, 0, NULL, NULL),
(54, 'kjnk', 'sp8983@gmail.com', 552222222, 'xcvfdbf', 'xc cxb v', 'fxbdfbf', 380009, 0, 0, NULL, NULL),
(55, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'm m ', 'm mm m mnb', 265954, 7, 0, NULL, NULL),
(56, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'm dggrdgfr', 'm mm m mnb', 265954, 7, 0, NULL, NULL),
(57, 'sddff', 'sp8983@gmail.com', 7896541230, 'xdd', 'njnnnjj', 'jjjjj', 6666, 20, 0, NULL, NULL),
(58, 'Deep Suthar', 'deep2213@gmail.com', 8899987086, 'kkfvbdknk', 'knkc vnkvc', 'cvkfcn', 885855, 21, 0, NULL, NULL),
(59, 'Sohil Prajapati', 'sp8983@gmail.com', 6378894050, 'Moti Bhalu', 'ahmedabad', 'fxbdfbf', 857466, NULL, 19, NULL, NULL),
(60, 'preet', 'preet122@gmail.com', 123654789, 'xdcdc', 'mj', 'mm', 0, 23, NULL, NULL, NULL),
(61, 'Happy Prajapati', 'happyprajapati585@gmail.com', 6352588175, 'Visnagar', 'Visnagar', 'Gujarat ', 384310, NULL, NULL, NULL, NULL),
(62, 'dfbd', 'vimal123@gmail.com', 6378894050, 'mjnm', 'm m ', 'mmn', 896574, NULL, 20, NULL, NULL),
(63, 'cfdkj', 'deep2213@gmail.com', 6546616564, 'c fvbfd', 'cvbfdgf', 'xvfbgf', 565665, 24, NULL, NULL, NULL),
(64, 'cjvdbvfjb', 'happyprajapati585@gmail.com', 8745963210, 'cxbfd', 'cbcvb', 'xcvcfvb', 587469, NULL, NULL, NULL, NULL),
(65, 'dgrgrthth', 'happyprajapati585@gmail.com', 8745963210, 'dvvcvc', 'cbcvb', 'xcvcfvb', 587469, NULL, NULL, NULL, 3),
(66, 'bfffbfgbgf', 'sp8983@gmail.com', 6352588175, 'Bhalusana', 'ahmedabad', 'xcvcfvb', 6666, NULL, NULL, 7, NULL),
(67, 'Happy Prajapati', 'hitenprajapati6659@gmail.com', 6352588175, 'Visnagar', 'Visnagar', 'Gujarat ', 384310, NULL, NULL, NULL, 4),
(68, 'Mit Prajapati', 'Mit123@gmail.com', 8899987086, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, NULL, NULL, NULL, 5),
(69, 'Happy Prajapati', 'happyprajapati585@gmail.com', 6352588175, 'Sheshpur', 'Satlasana', 'Gujrat', 384330, NULL, NULL, NULL, 6),
(70, 'Santosh Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 25, NULL, NULL, NULL),
(71, 'Santosh Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 26, NULL, NULL, NULL),
(72, 'Santosh Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 27, NULL, NULL, NULL),
(73, 'Santosh Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 28, NULL, NULL, NULL),
(74, 'Sohil Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 29, NULL, NULL, NULL),
(75, 'Sohil Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 30, NULL, NULL, NULL),
(76, 'Sohil Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 31, NULL, NULL, NULL),
(77, 'Sohil Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 32, NULL, NULL, NULL),
(78, 'Sohil Prajapati', 'ps8929382@gmail.com', 2750147786, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 33, NULL, NULL, NULL),
(79, 'Deep Suthar', 'deep2213@gmail.com', 6378894050, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 34, NULL, NULL, NULL),
(80, 'Deep Suthar', 'deep2213@gmail.com', 6378894050, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 36, NULL, NULL, NULL),
(81, 'Deep Suthar', 'deep2213@gmail.com', 6378894050, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 37, NULL, NULL, NULL),
(82, 'Ahesan Ali', 'Ahesan@gmail.com', 1236547890, 'vadnagar', 'vadnagar', 'Gujarat ', 384310, NULL, NULL, 8, NULL),
(83, 'Ahesan Ali', 'Ahesan@gmail.com', 1236547890, 'vadnagar', 'vadnagar', 'Gujarat ', 384310, NULL, NULL, 9, NULL),
(84, 'Ahesan Ali', 'Ahesan@gmail.com', 1236547890, 'vadnagar', 'vadnagar', 'Gujarat ', 384310, NULL, NULL, 10, NULL),
(85, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 38, NULL, NULL, NULL),
(86, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 39, NULL, NULL, NULL),
(87, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 40, NULL, NULL, NULL),
(88, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 41, NULL, NULL, NULL),
(89, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 21, NULL, NULL),
(90, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 22, NULL, NULL),
(91, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 23, NULL, NULL),
(92, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 24, NULL, NULL),
(93, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 25, NULL, NULL),
(94, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 26, NULL, NULL),
(95, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 27, NULL, NULL),
(96, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 28, NULL, NULL),
(97, 'Santosh Prajapati', 'sp8983@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 587469, NULL, 29, NULL, NULL),
(98, 'Santosh Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, NULL, 11, NULL),
(99, 'Santosh Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, NULL, 12, NULL),
(100, 'Santosh Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, NULL, 13, NULL),
(101, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 42, NULL, NULL, NULL),
(102, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 43, NULL, NULL, NULL),
(103, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 6378894050, 'Vajapur', 'Visnagar', 'Gujrat', 384330, 44, NULL, NULL, NULL),
(104, 'Santosh Prajapati', 'happyprajapati585@gmail.com', 6358789425, 'Vajapur', 'vadnagar', '55', 33, 45, NULL, NULL, NULL),
(105, 'kamo', 'kamo@gmail.com', 9999999999, '1616', 'jhvhv vhgv', 'hvhvvgvhvh', 55555, 46, NULL, NULL, NULL),
(106, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 47, NULL, NULL, NULL),
(107, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, 48, NULL, NULL, NULL),
(108, 'Deep Suthar', 'deep2213@gmail.com', 2750147786, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 49, NULL, NULL, NULL),
(109, 'Santosh Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Vajapur', 'Satlasana', 'Gujarat ', 384330, 50, NULL, NULL, NULL),
(110, 'kamo', 'kamo@gmail.com', 8780874064, 'bavada', 'ahmedabad', 'Gujarat ', 384330, NULL, 30, NULL, NULL),
(111, 'kamo', 'kamo@gmail.com', 8780874064, 'bavada', 'ahmedabad', 'Gujarat ', 384330, NULL, 31, NULL, NULL),
(112, 'kamo', 'kamo@gmail.com', 8780874064, 'bavada', 'ahmedabad', 'Gujarat ', 384330, NULL, 32, NULL, NULL),
(113, 'kamo', 'kamo@gmail.com', 8780874064, 'bavada', 'ahmedabad', 'Gujarat ', 384330, NULL, 33, NULL, NULL),
(114, 'kamo', 'kamo@gmail.com', 8780874064, 'bavada', 'ahmedabad', 'Gujarat ', 384330, NULL, 34, NULL, NULL),
(115, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 35, NULL, NULL),
(116, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 36, NULL, NULL),
(117, 'kamo', 'sp8983@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 37, NULL, NULL),
(118, 'kamo', 'sp8983@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 38, NULL, NULL),
(119, 'kamo', 'sp8983@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 39, NULL, NULL),
(120, 'kamo', 'sp8983@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 40, NULL, NULL),
(121, 'kamo', 'sp8983@gmail.com', 8780874064, 'Mumanvas', 'Satlasana', 'Gujarat ', 384330, NULL, 41, NULL, NULL),
(122, 'het raval', 'het@gmail.com', 5555555555, '55xcvfd', 'xvjndfkj', 'xcvcjn cvk', 88888, NULL, NULL, 14, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback-details`
--

CREATE TABLE `feedback-details` (
  `F_ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` text NOT NULL,
  `MobileNo` decimal(10,0) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback-details`
--

INSERT INTO `feedback-details` (`F_ID`, `Name`, `Address`, `MobileNo`, `Message`) VALUES
(1, 'Hiten Prajapati', 'At.PO: mumanvas ta: satlasana dist:mehsana 384330 ', 8780874064, 'Very amazing website'),
(2, 'sohil prajapati', 'At.PO: Bhalusana ta: satlasana dist:mehsana 384330', 6359623257, 'very amazing website in thidsdvkjhdddvkjv vkcjh'),
(3, 'sohil prajapati', 'At.PO: Bhalusana ta: satlasana dist:mehsana 384330', 6359623257, 'very amazing website');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_ID` int(5) NOT NULL,
  `B_ID` int(5) NOT NULL,
  `Payment Method` varchar(20) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_ID`, `B_ID`, `Payment Method`, `Date`) VALUES
(1, 0, 'Cash on Delivery', '2025-03-04 21:01:54.000000'),
(2, 0, 'Cash on Delivery', '2025-03-04 21:03:25.000000'),
(3, 0, 'Cash on Delivery', '2025-03-04 21:04:25.000000'),
(4, 0, 'cash on delivery', '2025-03-05 22:18:49.000000'),
(5, 0, 'Cash on Delivery', '2025-03-04 22:37:52.000000'),
(6, 0, 'Cash on Delivery', '2025-03-04 22:39:08.000000'),
(7, 0, 'Cash on Delivery    ', '2025-03-04 22:39:34.000000'),
(8, 0, 'Cash on Delivery    ', '2025-03-04 22:58:27.000000'),
(9, 0, 'Cash on Delivery    ', '2025-03-04 22:58:43.000000'),
(10, 0, 'Cash on Delivery', '2025-03-05 12:59:56.000000'),
(11, 0, 'Cash on Delivery', '2025-03-05 13:01:15.000000'),
(12, 0, 'Cash on Delivery', '2025-03-05 13:04:59.000000'),
(13, 0, 'Cash on Delivery', '2025-03-05 13:07:50.000000'),
(14, 0, 'Cash on Delivery', '2025-03-05 13:11:19.000000'),
(15, 0, 'Cash on Delivery', '2025-03-05 13:12:49.000000'),
(16, 0, 'Cash on Delivery', '2025-03-05 13:13:01.000000'),
(17, 0, 'Cash on Delivery', '2025-03-05 13:28:11.000000'),
(18, 0, 'Cash on Delivery', '2025-03-05 13:31:08.000000'),
(19, 0, 'Cash on Delivery', '2025-03-05 13:33:33.000000'),
(20, 0, 'Cash on Delivery', '2025-03-05 13:36:05.000000'),
(21, 0, 'Cash on Delivery', '2025-03-05 13:37:05.000000'),
(22, 0, 'Cash on Delivery', '2025-03-05 13:37:41.000000'),
(23, 0, 'Cash on Delivery', '2025-03-05 13:38:12.000000'),
(24, 0, 'Cash on Delivery', '2025-03-05 13:38:25.000000'),
(25, 0, 'Cash on Delivery', '2025-03-06 21:36:53.000000'),
(26, 0, 'Cash on Delivery', '2025-03-06 21:38:07.000000'),
(27, 0, 'Cash on Delivery', '2025-03-06 21:40:49.000000'),
(28, 0, 'Cash on Delivery', '2025-03-06 21:45:08.000000'),
(29, 0, 'Cash on Delivery', '2025-03-06 21:46:42.000000'),
(30, 0, 'Cash on Delivery', '2025-03-06 22:17:24.000000'),
(31, 0, 'Cash on Delivery', '2025-03-06 22:20:03.000000'),
(32, 0, 'Cash on Delivery', '2025-03-06 22:55:56.000000'),
(33, 0, 'Cash on Delivery', '2025-03-06 22:56:20.000000'),
(34, 0, 'Cash on Delivery', '2025-03-07 10:18:38.000000'),
(35, 0, 'Cash on Delivery', '2025-03-07 10:23:58.000000'),
(36, 0, 'Cash on Delivery', '2025-03-07 10:24:23.000000'),
(37, 0, 'Cash on Delivery', '2025-03-07 10:25:56.000000');

-- --------------------------------------------------------

--
-- Table structure for table `premium_service`
--

CREATE TABLE `premium_service` (
  `PS_ID` int(5) NOT NULL,
  `PSName` text NOT NULL,
  `Frequency` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Worker Group` varchar(25) NOT NULL,
  `Workers` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premium_service`
--

INSERT INTO `premium_service` (`PS_ID`, `PSName`, `Frequency`, `Date`, `Time`, `Price`, `Worker Group`, `Workers`) VALUES
(1, 'Kitchen Cleaning,Window Cleaning,Carpet Cleaning,Office Cleaning,Medical Cleaning,Event Cleaning', 'monthly', '2025-01-06', '19:33:00.000000', '$1200', 'male', 10),
(2, 'Furniture Cleaning,Kitchen Cleaning,Car Cleaning,Bathroom Cleaning,Window Cleaning,Carpet Cleaning,Office Cleaning,Medical Cleaning', 'two_monthly', '2025-03-06', '21:27:00.000000', '$3360', 'combine', 14),
(3, 'Furniture Cleaning,Kitchen Cleaning,Car Cleaning,Bathroom Cleaning,Window Cleaning,Carpet Cleaning,Office Cleaning,Medical Cleaning', 'three_monthly', '2025-03-06', '21:27:00.000000', '$4900', 'combine', 14),
(4, 'All services', 'three_monthly', '2025-02-22', '22:54:00.000000', '$3500', 'male', 10),
(5, 'Furniture Cleaning,Kitchen Cleaning,Car Cleaning,Window Cleaning,Carpet Cleaning', 'monthly', '2025-03-01', '22:18:00.000000', '$600', 'female', 5),
(6, 'Furniture Cleaning,Carpet Cleaning,Office Cleaning,Resturant Cleaning,Event Cleaning', 'three_monthly', '2025-03-01', '08:41:00.000000', '$2450', 'female', 7);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `S_ID` int(5) NOT NULL,
  `Sname` varchar(20) NOT NULL,
  `Frequency` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Worker_Group` varchar(25) NOT NULL,
  `Workers` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`S_ID`, `Sname`, `Frequency`, `Date`, `Time`, `Price`, `Worker_Group`, `Workers`) VALUES
(1, 'Window Cleaning', 'monthly', '2025-02-22', '19:20:00.000000', '$840', 'male', 7),
(2, 'Window Cleaning', 'monthly', '2025-02-22', '19:20:00.000000', '$840', 'male', 7),
(3, 'Window Cleaning', 'monthly', '2025-02-22', '19:20:00.000000', '$840', 'male', 7),
(4, 'Carpet Cleaning', 'monthly', '2025-02-22', '18:56:00.000000', '$360', 'male', 3),
(5, 'Carpet Cleaning', 'monthly', '2025-02-22', '18:56:00.000000', '$360', 'male', 3),
(6, 'Carpet Cleaning', 'monthly', '2025-02-22', '18:56:00.000000', '$360', 'male', 3),
(7, 'Bathroom Cleaning', 'two_monthly', '2025-03-01', '10:00:00.000000', '$480', 'Male', 2),
(8, 'Furniture Cleaning', 'two_monthly', '2025-03-01', '22:00:00.000000', '$940', 'female', 4),
(9, 'Furniture Cleaning', 'two_monthly', '2025-03-01', '22:00:00.000000', '$940', 'female', 4),
(10, 'Bathroom Cleaning', 'monthly', '2025-02-28', '17:18:00.000000', '$120', 'Male', 1),
(11, 'Bathroom Cleaning', 'monthly', '2025-02-28', '17:18:00.000000', '$120', 'Male', 1),
(12, 'Window Cleaning', 'three_monthly', '2025-02-13', '17:21:00.000000', '$1045', 'male', 3),
(13, 'Bathroom Cleaning', 'monthly', '2025-03-01', '10:30:00.000000', '$120', 'Male', 1),
(14, 'Window Cleaning', 'two_monthly', '2025-03-01', '11:00:00.000000', '$940', 'male', 4),
(15, 'Window Cleaning', 'monthly', '2025-02-28', '11:00:00.000000', '$360', 'male', 3),
(16, 'Window Cleaning', 'monthly', '2025-11-25', '18:02:00.000000', '$480', 'male', 4),
(17, 'Window Cleaning', 'two_monthly', '2025-02-09', '18:16:00.000000', '$480', 'male', 2),
(18, 'Bathroom Cleaning', 'monthly', '2025-02-28', '18:25:00.000000', '$360', 'Female', 3),
(19, 'Bathroom Cleaning', 'two_monthly', '2025-02-28', '18:25:00.000000', '$700', 'Female', 3),
(20, 'Window Cleaning', 'two_monthly', '2025-02-19', '18:38:00.000000', '$1180', 'combine', 5),
(21, 'Furniture Cleaning', 'three_monthly', '2025-03-07', '18:39:00.000000', '$1045', 'combine', 3),
(22, 'Window Cleaning', 'two_monthly', '2025-03-07', '02:55:00.000000', '$2380', 'combine', 10),
(23, 'Window Cleaning', 'two_monthly', '2025-03-07', '02:55:00.000000', '$2380', 'combine', 10),
(24, 'Window Cleaning', 'two_monthly', '2025-03-01', '00:04:00.000000', '$480', 'combine', 2),
(25, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$700', 'male', 3),
(26, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$1420', 'male', 6),
(27, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$4060', 'male', 17),
(28, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$2140', 'male', 9),
(29, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$2140', 'male', 9),
(30, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$2140', 'male', 9),
(31, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$2140', 'male', 9),
(32, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$2140', 'male', 9),
(33, 'Furniture Cleaning', 'two_monthly', '2025-03-06', '20:45:00.000000', '$1180', 'male', 5),
(34, 'Furniture Cleaning', 'two_monthly', '2025-03-19', '21:01:00.000000', '$940', 'female', 4),
(35, 'Furniture Cleaning', 'two_monthly', '2025-03-19', '21:01:00.000000', '$940', 'female', 4),
(36, 'Furniture Cleaning', 'two_monthly', '2025-03-19', '21:01:00.000000', '$940', 'female', 4),
(37, 'Furniture Cleaning', 'two_monthly', '2025-03-19', '21:01:00.000000', '$940', 'female', 4),
(38, '', 'two_monthly', '2025-03-01', '13:00:00.000000', '', 'female', 0),
(39, ':', 'two_monthly', '2025-03-01', '13:00:00.000000', ':', 'female', 0),
(40, ':', 'two_monthly', '2025-03-01', '13:00:00.000000', ':', 'female', 0),
(41, ':', 'two_monthly', '2025-03-01', '13:00:00.000000', ':', 'female', 0),
(42, ':', 'two_monthly', '2025-03-07', '21:37:00.000000', '$1180', 'female', 5),
(43, '', 'two_monthly', '2025-03-07', '21:37:00.000000', '$700', 'female', 3),
(44, '', 'two_monthly', '2025-03-08', '21:41:00.000000', '$940', 'combine', 4),
(45, 'Window Cleaning', 'monthly', '2025-03-28', '13:44:00.000000', '$840', 'male', 7),
(46, 'Carpet Cleaning', 'monthly', '2025-03-07', '13:46:00.000000', '$360', 'male', 3),
(47, 'Bathroom Cleaning', 'two_monthly', '2025-03-14', '22:17:00.000000', '$480', 'Male', 0),
(48, 'Bathroom Cleaning', 'two_monthly', '2025-03-14', '22:17:00.000000', '$700', 'Male', 0),
(49, 'Furniture Cleaning', 'two_monthly', '2025-03-05', '22:23:00.000000', '$1660', 'male', 7),
(50, 'Bathroom Cleaning', 'two_monthly', '2025-03-06', '22:23:00.000000', '$700', 'Male', 3);

-- --------------------------------------------------------

--
-- Table structure for table `standard_service`
--

CREATE TABLE `standard_service` (
  `SS_ID` int(5) NOT NULL,
  `SSName` text NOT NULL,
  `Frequency` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Worker Group` varchar(25) NOT NULL,
  `Workers` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standard_service`
--

INSERT INTO `standard_service` (`SS_ID`, `SSName`, `Frequency`, `Date`, `Time`, `Price`, `Worker Group`, `Workers`) VALUES
(1, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-01-30', '20:37:00.000000', '', 'male', 7),
(2, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-01-30', '20:37:00.000000', '', 'male', 7),
(3, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-01-04', '21:12:00.000000', '$840', 'male', 7),
(4, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-02-01', '22:44:00.000000', '$600', 'combine', 5),
(5, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-02-01', '22:44:00.000000', '$600', 'combine', 5),
(6, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-02-27', '10:00:00.000000', '$1320', 'combine', 11),
(7, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'two_monthly', '2025-03-08', '21:33:00.000000', '$3020', 'combine', 13),
(8, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-03-13', '12:28:00.000000', '$840', 'male', 7),
(9, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-03-13', '12:28:00.000000', '$840', 'male', 7),
(10, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-03-13', '12:28:00.000000', '$840', 'male', 7),
(11, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '0000-00-00', '14:10:00.000000', '$1080', 'male', 9),
(12, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '0000-00-00', '14:10:00.000000', '$1080', 'male', 9),
(13, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '0000-00-00', '14:10:00.000000', '$1200', 'male', 10),
(14, 'Furniture,Kitchen,Car,Bathroom Cleaning', 'monthly', '2025-03-14', '10:21:00.000000', '$720', 'male', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `SR.NO` int(5) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`SR.NO`, `Email`, `Password`, `Date`) VALUES
(1, 'hitenprajapati6659@gmail.com', 'hiten@2912', '2025-01-21 17:07:17'),
(2, 'happyprajapati585@gmail.com', 'happy@585', '2025-02-14 09:04:36'),
(3, 'sp8983@gmail.com', 'sohil#1234', '2025-02-14 09:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `U_ID` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`U_ID`, `Username`, `Email`, `Password`, `Date`) VALUES
(1, 'Hiten Prajapati', 'hitenprajapati6659@gmail.com', 'hiten@2912', '2025-01-21 17:05:41.000000'),
(2, 'Happy Prajapati', 'happyprajapati585@gmail.com', 'happy@585', '2025-02-14 09:04:23.000000'),
(3, 'Sohil Prajapati', 'sp8983@gmail.com', 'sohil#1234', '2025-02-14 09:18:02.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `basic_service`
--
ALTER TABLE `basic_service`
  ADD PRIMARY KEY (`BS_ID`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`B_ID`),
  ADD KEY `sid_fk` (`S_ID`),
  ADD KEY `bs_id_fk` (`BS_ID`),
  ADD KEY `ss_id_fk` (`SS_ID`),
  ADD KEY `ps_id_fk` (`PS_ID`);

--
-- Indexes for table `feedback-details`
--
ALTER TABLE `feedback-details`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `book_id_fk` (`B_ID`);

--
-- Indexes for table `premium_service`
--
ALTER TABLE `premium_service`
  ADD PRIMARY KEY (`PS_ID`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `standard_service`
--
ALTER TABLE `standard_service`
  ADD PRIMARY KEY (`SS_ID`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`SR.NO`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`U_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `A_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_service`
--
ALTER TABLE `basic_service`
  MODIFY `BS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `feedback-details`
--
ALTER TABLE `feedback-details`
  MODIFY `F_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `P_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `premium_service`
--
ALTER TABLE `premium_service`
  MODIFY `PS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `S_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `standard_service`
--
ALTER TABLE `standard_service`
  MODIFY `SS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `SR.NO` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `U_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
