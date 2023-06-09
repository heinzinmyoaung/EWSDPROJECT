-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 14, 2022 at 04:57 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewsd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(30) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  `adminPassword` text NOT NULL,
  `adminPhone` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `adminEmail`, `adminPassword`, `adminPhone`) VALUES
(1, 'Admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '09254325731');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `category`) VALUES
(1, 'Exam'),
(2, 'Fresher Welcome'),
(3, 'Marking Scheme'),
(4, 'In campus competitions'),
(5, 'Student Activities'),
(6, 'Canteen'),
(7, 'Suggestions');

-- --------------------------------------------------------

--
-- Table structure for table `closuredate`
--

CREATE TABLE `closuredate` (
  `cdId` int(11) NOT NULL,
  `academicYear` varchar(50) DEFAULT NULL,
  `closureDate` date DEFAULT NULL,
  `finalClosureDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closuredate`
--

INSERT INTO `closuredate` (`cdId`, `academicYear`, `closureDate`, `finalClosureDate`) VALUES
(2, '2022-2023', '2022-06-02', '2022-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `comment` text,
  `ideaId` int(11) DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  `qamId` int(11) DEFAULT NULL,
  `qacId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `comment`, `ideaId`, `adminId`, `qamId`, `qacId`, `staffId`) VALUES
(1, 'hello lewis', 23, NULL, 2, NULL, NULL),
(2, 'hi 1', 21, NULL, 2, NULL, NULL),
(3, 'blah', 21, NULL, 2, NULL, NULL),
(4, 'hi hi blah', 21, NULL, 2, NULL, NULL),
(5, 'hola', 19, NULL, 2, NULL, NULL),
(6, 'this is comment by arkar', 21, NULL, NULL, 5, NULL),
(7, 'this is jonas', 21, NULL, 3, NULL, NULL),
(8, 'this is zane', 25, NULL, NULL, 3, NULL),
(9, 'mg mg comment', 25, NULL, NULL, NULL, 1),
(10, 'post comment on my idea', 26, NULL, NULL, 5, NULL),
(14, 'test comment', 26, NULL, NULL, 4, NULL),
(15, 'comment noti test', 26, NULL, NULL, 4, NULL),
(16, 'wala wala', 25, 1, NULL, NULL, NULL),
(17, 'this is my assumption on arkar post by admin', 26, 1, NULL, NULL, NULL),
(18, 'latest blah blah', 24, NULL, NULL, 4, NULL),
(19, 'heyo safari comment by luke', 9, NULL, NULL, 4, NULL),
(20, 'admin comment noti from admin', 26, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptId` int(11) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptId`, `department`) VALUES
(2, 'Art Department'),
(3, 'Science School'),
(4, 'Computer Science'),
(5, 'Law School'),
(6, 'Business & Management'),
(7, 'Math Department'),
(8, 'Engineering Department'),
(9, 'Cyber Security'),
(12, 'Library Department');

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `ideaId` int(11) NOT NULL,
  `qamId` int(11) DEFAULT NULL,
  `qacId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `idea` text,
  `document` text,
  `anonymousStatus` tinyint(1) DEFAULT NULL,
  `uploadDate` date DEFAULT NULL,
  `uploadTime` time DEFAULT NULL,
  `thumbUp` int(11) NOT NULL,
  `thumbDown` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`ideaId`, `qamId`, `qacId`, `staffId`, `adminId`, `categoryId`, `idea`, `document`, `anonymousStatus`, `uploadDate`, `uploadTime`, `thumbUp`, `thumbDown`) VALUES
(1, NULL, NULL, 2, NULL, 3, 'hello', 'sample2.pdf', 0, '2022-03-22', '16:47:35', 0, 0),
(2, 1, NULL, NULL, NULL, 7, 'abc', NULL, 0, '2022-03-24', '19:37:30', 0, 0),
(5, NULL, NULL, NULL, 1, 1, 'Exam will start', NULL, 0, '2022-03-24', '20:00:59', 0, 0),
(6, NULL, 3, NULL, NULL, 3, 'something', NULL, 1, '2022-03-24', '20:41:30', 0, 0),
(7, NULL, 3, NULL, NULL, 7, 'something blah blah', NULL, 1, '2022-03-24', '20:41:51', 0, 0),
(8, NULL, 3, NULL, NULL, 3, 'mocha by zane', NULL, 0, '2022-03-24', '20:42:55', 0, 0),
(9, 2, NULL, NULL, NULL, 5, 'heyo safari nnd jsdh fdsjf sdlkj lsdj fsldkjfklsjfklsjdlkfjsd jfsdkl fjskld flksdj flsdj flsdj f sdfljsdlkfjsdlkf sdf jdskj ljdlheyo safari nnd jsdh fdsjf sdlkj lsdj fsldkjfklsjfklsjdlkfjsd jfsdkl fjskld flksdj flsdj flsdj f sdfljsdlkfjsdlkf sdf jdskj ljdlheyo safari nnd jsdh fdsjf sdlkj lsdj fsldkjfklsjfklsjdlkfjsd jfsdkl fjskld flksdj flsdj flsdj f sdfljsdlkfjsdlkf sdf jdskj ljdlheyo safari nnd jsdh fdsjf sdlkj lsdj fsldkjfklsjfklsjdlkfjsd jfsdkl fjskld flksdj flsdj flsdj f sdfljsdlkfjsdlkf sdf jdskj ljdl', NULL, 0, '2022-03-24', '20:47:06', 0, 0),
(10, NULL, NULL, 1, NULL, 4, 'campus', NULL, 0, '2022-03-24', '20:57:11', 0, 0),
(11, NULL, NULL, NULL, 1, 4, 'heyo', NULL, 1, '2022-03-30', '15:24:16', 0, 0),
(12, NULL, NULL, NULL, 1, 4, 'hee hee', NULL, 1, '2022-03-30', '15:28:21', 0, 0),
(13, NULL, NULL, NULL, 1, 3, 'ha ha', NULL, 0, '2022-03-30', '15:30:49', 0, 0),
(18, NULL, NULL, 1, NULL, 5, 'mg', NULL, 0, '2022-04-02', '19:16:22', 0, 0),
(19, NULL, NULL, NULL, 1, 3, 'hi', NULL, 0, '2022-04-02', '19:29:18', 0, 0),
(20, NULL, NULL, 1, NULL, 2, 'hi mg', NULL, 0, '2022-04-02', '19:34:17', 0, 0),
(21, NULL, NULL, 1, NULL, 3, 'hello mg mg ', NULL, 0, '2022-04-02', '19:47:08', 0, 0),
(22, NULL, NULL, 1, NULL, 4, 'hello mg mg 2', 'superman.pdf', 0, '2022-04-02', '19:48:48', 0, 0),
(23, 2, NULL, NULL, NULL, 5, 'hi lewis', NULL, 0, '2022-04-02', '20:12:13', 0, 0),
(24, NULL, NULL, 1, NULL, 4, 'hello latest mg mg', NULL, 1, '2022-04-02', '21:03:01', 0, 0),
(25, NULL, NULL, 1, NULL, 4, 'something', NULL, 0, '2022-04-13', '00:31:15', 0, 0),
(26, NULL, 5, NULL, NULL, 2, 'This is my introduction. I am Arkar. blah blah blah............', 'arkar.pdf', 0, '2022-04-14', '16:08:39', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qac`
--

CREATE TABLE `qac` (
  `qacId` int(11) NOT NULL,
  `qacName` varchar(30) DEFAULT NULL,
  `qacPhone` varchar(22) DEFAULT NULL,
  `qacEmail` varchar(50) DEFAULT NULL,
  `qacPassword` text,
  `qacAddress` text,
  `status` tinyint(1) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qac`
--

INSERT INTO `qac` (`qacId`, `qacName`, `qacPhone`, `qacEmail`, `qacPassword`, `qacAddress`, `status`, `deptId`) VALUES
(1, 'John', '09383738921', 'john@gmail.com', '$2y$10$qhfbwFus465GERmQNm1Vt.oHp3gy.vUhRXOZcE96/AQ9nMkXiZuy6', 'yangon', 1, 5),
(2, 'Mark', '098237238723', 'mark@gmail.com', '$2y$10$d8wnlXUxNcBSCfPb6PPNT.hoi.xB0xJgOvrpZeXb4wAaEBOD3AsOG', 'bago', 1, 9),
(3, 'Zane', '094844384393', 'zane@gmail.com', '$2y$10$lTa83T2O/OzZPe/uAQa4L../rU16sochx8nfXDQCbT/z/nLBz.KOS', 'ahlone, yangon', 1, 2),
(4, 'Luke', '096837388321', 'luke@gmail.com', '$2y$10$hHBNr1V9UYU6D2nKZKI9Y.kln921wMl0WoabSd/0VM.C6A2kU4AAC', 'London, England', 1, 5),
(5, 'Arkar', '09254252626', 'minkokolinn8@gmail.com', '$2y$10$ctmkdUNqxqeCOQVMa478MuyJeNv5z04qVz6Kq0qi1BA7z.dhNbb9i', '', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `qam`
--

CREATE TABLE `qam` (
  `qamId` int(11) NOT NULL,
  `qamName` varchar(30) NOT NULL,
  `qamPhone` varchar(22) NOT NULL,
  `qamEmail` varchar(50) NOT NULL,
  `qamPassword` text NOT NULL,
  `qamAddress` text,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qam`
--

INSERT INTO `qam` (`qamId`, `qamName`, `qamPhone`, `qamEmail`, `qamPassword`, `qamAddress`, `status`) VALUES
(1, 'David Martinnn', '09283932832', 'dm@gmail.com', '$2y$10$.4N1qDIDYP30pkUiYMN4oeNYl4nx/FyScGqj.v3qbYr9rE3rB7az6', 'bago', 1),
(2, 'Lewis Capaldi', '093837832', 'lc@gmail.com', '$2y$10$Xv36U.DS6rUuKnDKgr6GOeQ9nBPupAr3LYU7dIQaT.4/HvmsAxfle', 'bagan, mid', 1),
(3, 'Jonas Denk', '09282382323', 'jd@gmail.com', '$2y$10$hyijZqryodtrlcd1vkTW8uFou8YXV9tyOwaUtbGiInnrQb4ZSE.lW', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_info`
--

CREATE TABLE `rating_info` (
  `rating_info_id` int(11) NOT NULL,
  `ideaId` int(11) DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  `qamId` int(11) DEFAULT NULL,
  `qacId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `rating_action` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_info`
--

INSERT INTO `rating_info` (`rating_info_id`, `ideaId`, `adminId`, `qamId`, `qacId`, `staffId`, `rating_action`) VALUES
(1, 21, NULL, NULL, 1, NULL, '1'),
(2, 20, NULL, 2, NULL, NULL, '1'),
(3, 23, NULL, 2, NULL, NULL, '1'),
(4, 21, NULL, 2, NULL, NULL, '1'),
(5, 21, NULL, NULL, 4, NULL, '1'),
(6, 21, NULL, NULL, 5, NULL, '0'),
(7, 23, NULL, NULL, 5, NULL, '0'),
(8, 23, NULL, NULL, 4, NULL, '0'),
(9, 23, NULL, NULL, NULL, 2, '1'),
(10, 21, NULL, 3, NULL, NULL, '0'),
(11, 25, NULL, 3, NULL, NULL, '1'),
(12, 25, NULL, NULL, 3, NULL, '1'),
(13, 25, NULL, NULL, NULL, 1, '0'),
(14, 23, NULL, NULL, NULL, 1, '1'),
(15, 26, NULL, NULL, 5, NULL, '1'),
(18, 26, 1, NULL, NULL, NULL, '0'),
(19, 25, 1, NULL, NULL, NULL, '1'),
(20, 25, NULL, NULL, 4, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` int(11) NOT NULL,
  `staffName` varchar(50) DEFAULT NULL,
  `staffPhone` varchar(20) DEFAULT NULL,
  `staffEmail` varchar(100) DEFAULT NULL,
  `staffPassword` text,
  `staffAddress` text,
  `status` tinyint(1) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `staffName`, `staffPhone`, `staffEmail`, `staffPassword`, `staffAddress`, `status`, `deptId`) VALUES
(1, 'Mg', '095423232399', 'mg@gmail.com', '$2y$10$lGLBaoe/KBENeorvSPOoFuBHwNRN/jrPtuepb4eZtTNqGgdReWoWO', 'mawlamyaing', 1, 8),
(2, 'Min', '0974237878238', 'min@gmail.com', '$2y$10$BxZ.PFHRnA2qDVTDY.HnZeuDzGacrRS9Jor6Z3aujvJNOliffoRhq', 'yangon', 1, 7),
(3, 'Linn', '097787683831', 'linn@gmail.com', '$2y$10$s9k0TQhcOLwiTQxQTh0LyeyZHdn9YbZpT1ds39gQtCIN90YSl6Y9C', 'yangon', 0, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `closuredate`
--
ALTER TABLE `closuredate`
  ADD PRIMARY KEY (`cdId`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `ideaId` (`ideaId`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `qamId` (`qamId`),
  ADD KEY `qacId` (`qacId`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`ideaId`),
  ADD KEY `qamId` (`qamId`),
  ADD KEY `qacId` (`qacId`),
  ADD KEY `staffId` (`staffId`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `qac`
--
ALTER TABLE `qac`
  ADD PRIMARY KEY (`qacId`),
  ADD KEY `deptId` (`deptId`);

--
-- Indexes for table `qam`
--
ALTER TABLE `qam`
  ADD PRIMARY KEY (`qamId`);

--
-- Indexes for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD PRIMARY KEY (`rating_info_id`),
  ADD KEY `ideaId` (`ideaId`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `qamId` (`qamId`),
  ADD KEY `qacId` (`qacId`),
  ADD KEY `staffId` (`staffId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`),
  ADD KEY `deptId` (`deptId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `closuredate`
--
ALTER TABLE `closuredate`
  MODIFY `cdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `ideaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `qac`
--
ALTER TABLE `qac`
  MODIFY `qacId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qam`
--
ALTER TABLE `qam`
  MODIFY `qamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating_info`
--
ALTER TABLE `rating_info`
  MODIFY `rating_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ideaId`) REFERENCES `idea` (`ideaId`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`),
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`qamId`) REFERENCES `qam` (`qamId`),
  ADD CONSTRAINT `comment_ibfk_4` FOREIGN KEY (`qacId`) REFERENCES `qac` (`qacId`),
  ADD CONSTRAINT `comment_ibfk_5` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`);

--
-- Constraints for table `idea`
--
ALTER TABLE `idea`
  ADD CONSTRAINT `idea_ibfk_1` FOREIGN KEY (`qamId`) REFERENCES `qam` (`qamId`),
  ADD CONSTRAINT `idea_ibfk_2` FOREIGN KEY (`qacId`) REFERENCES `qac` (`qacId`),
  ADD CONSTRAINT `idea_ibfk_3` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`),
  ADD CONSTRAINT `idea_ibfk_4` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`),
  ADD CONSTRAINT `idea_ibfk_5` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`);

--
-- Constraints for table `qac`
--
ALTER TABLE `qac`
  ADD CONSTRAINT `qac_ibfk_1` FOREIGN KEY (`deptId`) REFERENCES `department` (`deptId`);

--
-- Constraints for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD CONSTRAINT `rating_info_ibfk_1` FOREIGN KEY (`ideaId`) REFERENCES `idea` (`ideaId`),
  ADD CONSTRAINT `rating_info_ibfk_2` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`),
  ADD CONSTRAINT `rating_info_ibfk_3` FOREIGN KEY (`qamId`) REFERENCES `qam` (`qamId`),
  ADD CONSTRAINT `rating_info_ibfk_4` FOREIGN KEY (`qacId`) REFERENCES `qac` (`qacId`),
  ADD CONSTRAINT `rating_info_ibfk_5` FOREIGN KEY (`staffId`) REFERENCES `staff` (`staffId`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`deptId`) REFERENCES `department` (`deptId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
