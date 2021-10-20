-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 09:50 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'PRANAV VERMA', 'vermapranav3827@gmail.com', 'admin', 'pranav', '0000-00-00 00:00:00'),
(2, 'VIKAS', 'prasadvvikas@gmail.com', 'admin', 'vikas', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(10, 'R.K. NARAYAN', '2020-03-20 09:12:30', NULL),
(11, 'CHETAN BHAGAT', '2020-03-20 09:12:45', NULL),
(12, 'J.K. ROWLING', '2020-03-20 09:13:22', NULL),
(13, 'STEPHEN KING', '2020-03-20 09:13:36', NULL),
(14, 'MARK TWAIN', '2020-03-20 09:13:45', NULL),
(15, 'MAX TEGMARK', '2020-03-29 08:06:48', NULL),
(16, 'SHOSHANA ZUBOFF', '2020-03-29 08:07:51', NULL),
(17, 'LAWRENCE ANTHONY', '2020-03-29 08:11:34', NULL),
(18, 'ELIZABETH KOLBERT', '2020-03-29 08:12:32', NULL),
(19, 'WILLIAM SHAKESPEAR\'S', '2020-03-29 08:17:10', NULL),
(20, 'NICHOLAS SPARKS', '2020-03-29 08:20:55', NULL),
(21, 'JOHN GREEN', '2020-03-29 08:21:34', NULL),
(22, 'STEPHEN R.COVEY', '2020-03-29 08:25:43', NULL),
(23, 'PETER F.DRUCKER', '2020-03-29 08:26:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'THE INEVITABLE', 8, 12, 56555, 100, '2020-03-20 09:21:01', NULL),
(5, 'GOOD TO GREAT', 11, 13, 65567, 200, '2020-03-20 09:21:46', NULL),
(6, 'THE GIRL IN ROOM 105', 9, 11, 654368, 150, '2020-03-20 09:22:50', NULL),
(7, 'CRY OF THE KALAHARI', 10, 14, 98477, 300, '2020-03-20 09:23:33', NULL),
(8, 'ROMEO & JULIET', 12, 12, 11729, 300, '2020-03-20 09:24:18', NULL),
(9, 'LIFE 3.0', 8, 15, 76875, 250, '2020-03-29 08:09:14', NULL),
(10, 'THE AGE OF SURVEILLANCE CAPITALISM', 8, 16, 98721, 340, '2020-03-29 08:10:23', NULL),
(11, 'THE ELEPHANT WHISPERER', 10, 17, 2324, 150, '2020-03-29 08:14:12', NULL),
(12, 'THE SIXTH EXTINCTION', 10, 18, 84536, 550, '2020-03-29 08:15:58', NULL),
(13, 'HAMLET', 12, 19, 87542, 450, '2020-03-29 08:18:44', NULL),
(14, 'MACBETH', 12, 19, 98748, 650, '2020-03-29 08:19:42', NULL),
(15, 'THE NOTEBOOK', 9, 20, 45735, 430, '2020-03-29 08:22:54', NULL),
(16, 'THE FAULT IN OUR STARS', 9, 21, 9734, 560, '2020-03-29 08:24:30', NULL),
(17, 'THE 7 HABITS OF HIGHLY EFFECTIVE PEOPLE', 11, 22, 98728, 1000, '2020-03-29 08:27:54', NULL),
(18, 'THE EFFECTIVE EXECUTIVE', 11, 23, 9199, 1500, '2020-03-29 08:28:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'TECHNOLOGY', 1, '2020-03-20 09:01:06', '0000-00-00 00:00:00'),
(9, 'ROMANTIC', 1, '2020-03-20 09:01:19', '0000-00-00 00:00:00'),
(10, 'WILDLIFE', 1, '2020-03-20 09:02:28', '0000-00-00 00:00:00'),
(11, 'MANAGEMENT', 1, '2020-03-20 09:03:09', '0000-00-00 00:00:00'),
(12, 'DRAMA', 1, '2020-03-20 09:06:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 7, 'SID012', '2020-03-20 09:34:48', '2020-03-20 09:44:20', 1, 50),
(8, 4, 'SID012', '2020-03-20 09:35:48', '2020-03-20 09:44:14', 1, 40),
(9, 6, 'SID012', '2020-03-20 09:36:27', '2020-03-20 09:44:09', 1, 30),
(10, 5, 'SID012', '2020-03-20 09:36:50', '2020-03-20 09:44:02', 1, 20),
(15, 11, 'SID016', '2020-04-05 07:45:39', '2020-04-05 07:47:16', 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'PRANAV', 'vermapranav3827@gmail.com', '9599467022', '9e1135ff4157f14358c7c94c79aad47d', 1, '2020-03-19 10:04:04', '2020-03-20 09:46:58'),
(12, 'SID013', 'RISHABH VERMA', 'rsihu@gmail.com', '7646347775', 'rishabh', 1, '2020-03-29 08:34:44', NULL),
(13, 'SID014', 'PRANSHU', 'pranshu@gmail.com', '6777778513', 'pranshu', 1, '2020-03-29 08:41:27', NULL),
(14, 'SID015', 'ABHAY CHAUHAN', 'abhay@gmail.com', '8366732732', 'ABHAY', 1, '2020-03-29 08:47:29', NULL),
(15, 'SID016', 'SAGAR', 'sagar@gmail.com', '5261739520', 'sagar', 1, '2020-03-29 08:48:43', NULL),
(16, 'SID017', 'AMIT', 'amit@gmail.com', '1838746892', 'amit', 1, '2020-03-29 08:51:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
