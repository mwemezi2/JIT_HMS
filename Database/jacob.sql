-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 04:48 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jacob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'jacobmalale226@gmail.com', '123456', '2016-04-04 20:31:45', '2019-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, 'STBATE', 'ICT', 'Information and Communication Technology', '2019-05-17 07:51:31'),
(9, 'PC5409', 'PC O Level', 'Private Candidates Ordinary Level', '2019-05-17 07:51:50'),
(10, 'PC5409', 'PC A Level', 'Private Candidates Advanced Level', '2019-05-17 07:52:03'),
(11, 'PC5409', 'QT', 'Qualified Test ', '2019-05-17 07:52:16'),
(12, 'STBATE', 'Short Course(ICT)', 'Short Course in Information Technology', '2019-05-18 07:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 5, 50, 400000, 1, '2019-05-16', 12, 'Information and Communication Technology', 226, 'JACOB', 'COSMAS', 'MALALE', 'male', 255777754226, 'jacobmalale23@gmail.com', 753004758, 'COSMAS KULWA MALALE', 'GRACE MOHAMED HADE', 255755729093, 'Tanzania, Tabora, Igunga, Nyandekwa, P.O.BOX 166, cosmaskulwa008@gmail.com', 'TABORA, cosmaskulwa008@gmail.com', 'Mwanza', 3980, 'Tanzania, Tabora, Igunga, Nyandekwa, P.O.BOX 166, cosmaskulwa008@gmail.com', 'TABORA, cosmaskulwa008@gmail.com', 'Mwanza', 3980, '2019-05-21 11:33:56', ''),
(2, 4, 50, 400000, 1, '2018-07-10', 12, 'Private Candidates Advanced Level', 1, 'AMANI ', 'ELIMU', 'MPELEKA', 'male', 629188705, 'elimumpeleka@gmail.com', 255765463582, 'ELIMU MPELEKA', 'JOHN BONIVETURE', 753004758, '203 RUKWA', 'Rukwa', 'Sumbawanga', 203, '203 RUKWA', 'Rukwa', 'Sumbawanga', 203, '2019-05-22 03:25:33', ''),
(3, 1, 6, 400000, 0, '2019-02-02', 9, 'Qualified Test ', 1, 'FATUMA', 'SHABAN ', 'ALLY', 'female', 777754226, 'fettyreshacious@gmail.com', 629188705, 'SHABAN ALLY', 'MAYASA OMARY', 765746993, ' SLP 394 SINGIDA MISUNA', 'SINGIDA', 'Singida', 226, ' SLP 394 SINGIDA MISUNA', 'SINGIDA', 'Singida', 226, '2019-06-03 10:55:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(6, 6, 1, 400000, '2019-05-17 07:58:54'),
(7, 50, 4, 400000, '2019-05-17 07:59:12'),
(8, 50, 5, 400000, '2019-05-17 07:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Arusha'),
(2, 'Dar es Salaam'),
(3, 'Dodoma'),
(4, 'Geita'),
(5, 'Iringa'),
(6, 'Bukoba'),
(7, 'Mpanda'),
(8, 'Kigoma'),
(9, 'Moshi'),
(10, 'Lindi'),
(11, 'Babati'),
(12, 'Musoma'),
(13, 'Mbeya'),
(14, 'Zanzibar City'),
(15, 'Morogoro'),
(16, 'Mtwara'),
(17, 'Mwanza'),
(18, 'Njombe'),
(19, 'Wete'),
(20, 'Chake-Chake'),
(21, 'Kibaha'),
(22, 'Sumbawanga'),
(23, 'Songea'),
(24, 'Shinyanga'),
(25, 'Bariadi'),
(26, 'Singida'),
(27, 'Vwawa'),
(28, 'Tabora'),
(29, 'Tanga'),
(30, 'Mkokotoni'),
(31, 'Koani');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', '::1', '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', '::1', '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', '::1', '', '', '2016-06-26 16:40:57'),
(7, 21, 'emadmk18@gmail.com', '::1', '', '', '2019-05-17 07:41:55'),
(8, 21, 'emadmk18@gmail.com', '::1', '', '', '2019-05-17 08:18:04'),
(9, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-17 10:40:54'),
(10, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-17 12:11:12'),
(11, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-18 07:10:22'),
(12, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-18 07:45:50'),
(13, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-20 09:45:37'),
(14, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-20 09:51:03'),
(15, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-21 08:27:36'),
(16, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-21 08:34:27'),
(17, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-21 08:57:41'),
(18, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-21 08:58:17'),
(19, 22, 'cosmaskulwa008@gmail.com', '::1', '', '', '2019-05-21 09:01:24'),
(20, 24, 'jacobmalale23@gmail.com', '::1', '', '', '2019-05-21 11:32:02'),
(21, 26, 'elimumpeleka@gmail.com', '::1', '', '', '2019-05-22 03:21:01'),
(22, 26, 'elimumpeleka@gmail.com', '::1', '', '', '2019-05-24 11:46:39'),
(23, 25, 'jacobmalale23@gmail.com', '::1', '', '', '2019-06-02 18:16:24'),
(24, 28, 'fettyreshacious@gmail.com', '::1', '', '', '2019-06-03 10:49:25'),
(25, 25, 'jacobmalale23@gmail.com', '::1', '', '', '2019-06-07 12:03:16'),
(26, 25, 'jacobmalale23@gmail.com', '::1', '', '', '2019-06-09 12:20:11'),
(27, 29, 'technology@gmail.com', '::1', '', '', '2019-06-09 13:18:29'),
(28, 25, 'jacobmalale23@gmail.com', '::1', '', '', '2019-06-12 19:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(23, 'ITT067', 'EMMANUEL', 'AMOSI', 'DAMKA', 'male', 753821203, 'emadmk18@gmail.com', '0753821203', '2019-05-21 09:30:07', '', ''),
(25, '226', 'JACOB', 'COSMAS', 'MALALE', 'male', 255777754226, 'jacobmalale23@gmail.com', '123456', '2019-05-21 11:31:40', '07-06-2019 05:34:39', ''),
(26, '1', 'AMANI ', 'ELIMU', 'MPELEKA', 'male', 629188705, 'elimumpeleka@gmail.com', '123456', '2019-05-22 03:20:30', '', ''),
(27, '0112', 'SYLAS', 'EMANUEL', 'COSMAS', 'male', 629188705, 'sylasemanuel112@gmail.com', '123456', '2019-06-02 18:21:02', '', ''),
(28, '1', 'FATUMA', 'SHABAN ', 'ALLY', 'female', 777754226, 'fettyreshacious@gmail.com', '123456', '2019-06-03 10:49:06', '', ''),
(29, '003', 'peter', 'j', 'g', 'male', 629188705, 'technology@gmail.com', '12345', '2019-06-09 13:18:04', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
