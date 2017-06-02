-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2016 at 02:20 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE IF NOT EXISTS `drugs` (
  `s_no` int(4) NOT NULL AUTO_INCREMENT,
  `drug` varchar(100) DEFAULT NULL,
  `chem` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `weight` int(5) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`s_no`, `drug`, `chem`, `status`, `weight`) VALUES
(1, 'Parecetamol', 'paracentamol', 'A', 1000),
(2, 'Asmal', 'Brufen and cadiatic', 'A', 20001),
(3, 'Actm', 'Quininine and atimalrial drug', 'I', 3000),
(4, 'Brufen', 'Amoxillin', 'I', 5000),
(5, 'Sleep', 'Navirapine', 'A', 200);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_test`
--

CREATE TABLE IF NOT EXISTS `laboratory_test` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visit_no` varchar(4) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `attended` varchar(1) NOT NULL DEFAULT '0',
  `test` varchar(200) DEFAULT NULL,
  `result` varchar(200) DEFAULT NULL,
  `conducted_by` varchar(54) DEFAULT NULL,
  `submited_by` varchar(54) DEFAULT NULL,
  PRIMARY KEY (`visit_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory_test`
--

INSERT INTO `laboratory_test` (`date`, `visit_no`, `reg_no`, `attended`, `test`, `result`, `conducted_by`, `submited_by`) VALUES
('2016-09-09 04:59:52', '32', 'ci/00098/102', '4', 'Malaria', 'result positive', ' ', 'Abraham Ogol'),
('2016-08-04 01:00:50', '38', 'ci/00098/102', '1', 'typhoid', NULL, NULL, 'Abraham Ogol');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fromm` varchar(32) NOT NULL,
  `too` varchar(32) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `message` varchar(100) NOT NULL,
  `read` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`time`, `fromm`, `too`, `subject`, `message`, `read`) VALUES
('2016-07-26 01:12:49', '', 'abramogol@gmail.com', 'Mcogol', 'i love&nbsp; you soo much ', 1),
('2016-07-26 01:12:49', '', 'abramogol@gmail.com', 'Mcogol', 'Much Much love lol ', 1),
('2016-07-26 01:12:49', 'abramogol@gmail.com', 'abramogol@gmail.com', 'let me try again', 'I love you Jesus ', 1),
('2016-07-29 15:55:43', 'evansobuya@gmail.com', 'evansobuya@gmail.com', 'My account settings', 'My account has an update failure please reffer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `sno` int(4) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(12) NOT NULL,
  `last_name` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT 'maseno',
  `level` varchar(1) NOT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `id_no` varchar(22) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `active` text,
  `profile_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sno`, `first_name`, `last_name`, `username`, `password`, `level`, `dob`, `email`, `id_no`, `tel`, `sex`, `address`, `status`, `active`, `profile_image`) VALUES
(2, 'Joan', 'Amollo', 'joanamollo', 'd41d8cd98f00b204e9800998ecf8427e', '2', '1995/13/10', 'joanamollo@gmail.com', '343432344', '755454546', 'M', 'Kombewa', 1, 'YES', NULL),
(3, 'Abraham', 'Ogol', 'Masterabram', '215583c4df76d89cd21a12744cee7b4d', '5', '1995/11/11', 'abramogol@gmail.com', '32361391', '790463533', 'M', 'Maseno', 1, 'YES', NULL),
(4, 'Evans', 'Obuya', 'obuyaevans', 'fc4f3b64bedd0882dc8b34922e61f423', '0', '1998/07/07', 'evansobuya@gmail.com', '212343', '2147483647', 'M', 'Osiri', 1, 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_kin`
--

CREATE TABLE IF NOT EXISTS `staff_kin` (
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(23) NOT NULL,
  `reg_no` varchar(23) NOT NULL,
  `contact` varchar(23) DEFAULT NULL,
  `d_o_b` varchar(12) NOT NULL,
  `profile_image` varchar(54) DEFAULT NULL,
  `sex` varchar(9) NOT NULL,
  `relationship` varchar(23) NOT NULL,
  `health_info` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_kin`
--

INSERT INTO `staff_kin` (`first_name`, `last_name`, `reg_no`, `contact`, `d_o_b`, `profile_image`, `sex`, `relationship`, `health_info`) VALUES
('John', 'Wick', 'ci/1111/1112', '123456789', '2016/08/01', '', 'M', 'son', NULL),
('Stephen', 'Ondeche', 'cb/0098/212', '', '2016/08/01', '1470259129_20150722_183245.jpg', 'M', 'wife', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_patient`
--

CREATE TABLE IF NOT EXISTS `staff_patient` (
  `first_name` varchar(23) NOT NULL,
  `last_name` varchar(23) NOT NULL,
  `reg_no` varchar(22) NOT NULL,
  `its_email` varchar(50) NOT NULL,
  `email` varchar(43) NOT NULL,
  `d_o_b` varchar(10) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `fuculty` varchar(34) NOT NULL,
  `position` varchar(23) NOT NULL,
  `status` varchar(8) NOT NULL,
  `health_info` varchar(100) DEFAULT NULL,
  `address` varchar(30) NOT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_patient`
--

INSERT INTO `staff_patient` (`first_name`, `last_name`, `reg_no`, `its_email`, `email`, `d_o_b`, `contact`, `profile_image`, `fuculty`, `position`, `status`, `health_info`, `address`) VALUES
('Eliakim', 'Wanyore', 'cb/0098/212', 'abramogol@gmail.com', 'abramog@logo.com', '2016/08/01', '1234567890', '1470258755_20150722_183145.jpg', 'Computing', 'Lecturer', 'married', '', 'Pwani'),
('Mr. Abraham', 'Ogoll', 'ci/00097/014', 'aogol@student.maseno.ac.ke', 'abramogol@gmail.com', '2016/07/12', '1234567890', '', 'Mathematics', 'lecturer', 'married', '', 'osiri'),
('Wekesa', 'Noah', 'ci/1111/1112', 'noa@gmail.com', 'noa@gmail.com', '2016/08/01', '0123455678', '', 'Computing', 'Lecturer', 'married', '', 'Kisumu');

-- --------------------------------------------------------

--
-- Table structure for table `student_patient`
--

CREATE TABLE IF NOT EXISTS `student_patient` (
  `first_name` varchar(11) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `reg_no` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(23) NOT NULL,
  `d_o_b` varchar(10) NOT NULL,
  `contact` varchar(23) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `course` varchar(40) DEFAULT NULL,
  `fuculty` varchar(40) DEFAULT NULL,
  `health_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_patient`
--

INSERT INTO `student_patient` (`first_name`, `last_name`, `reg_no`, `address`, `email`, `d_o_b`, `contact`, `profile_image`, `course`, `fuculty`, `health_info`) VALUES
('Andrew', 'Ogol', 'BS/00001/014', 'Kisumu', 'andrew@gmail.com', '2001/10/13', '0726412357', '2.jpg', 'Bcom', 'Computing', 'none'),
('Conie', 'Mayai', 'ci/00019/01', 'nyawita', 'conie@gmail.com', '2016/09/01', '1234567890', '1472860780_1.jpg', 'css', 'Medicine', 'ggggggggg'),
('Abraham', 'Ogol', 'ci/00098/102', 'nyawita', 'abramogol@gmail.com', '1995/10/13', '0790463533', '1.jpg', 'BSC IT', 'Computing', 'None'),
('Stella', 'Morra', 'ci/00098/14', 'Kamaeron', 'abramogol@gmail.com', '2014/10/13', '1234567890', '', 'BEd', 'Arts and Social Sciences', 'None'),
('JACOB', 'MOTH', 'ED/00023/021', 'Kisumu', 'abramogol@gmail.com', '2013/08/03', '0704497273', '1470264612_IMG_20150708_135031.jpg', 'BEc Econ', 'Medicine', '');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE IF NOT EXISTS `treatment` (
  `visit_no` varchar(5) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `signs` varchar(50) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `attended` int(1) NOT NULL DEFAULT '0',
  `prescription` varchar(100) DEFAULT NULL,
  `druged_by` varchar(30) DEFAULT NULL,
  `seen_by` varchar(33) DEFAULT NULL,
  `prescribed_by` varchar(33) DEFAULT NULL,
  PRIMARY KEY (`visit_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`visit_no`, `reg_no`, `signs`, `notes`, `attended`, `prescription`, `druged_by`, `seen_by`, `prescribed_by`) VALUES
('32', 'ci/00098/102', '<ol>\r\n	<li>fever</li>\r\n	<li>hadache</li>\r\n	<li>col', '<p>sighns of malaria</p>', 3, '<ol>\r\n	<li>P', 'Abraham Ogol', 'Abraham Ogol', 'Abraham Ogol'),
('33', 'ci/00098/14', '<p>Hass the following signs</p>\r\n\r\n<ol>\r\n	<li>feve', '<p>food poisoning may have caoused the same</p>', 3, '<ol>\r\n	<li>p', 'Abraham Ogol', 'Abraham Ogol', 'Abraham Ogol'),
('35', 'ci/00098/14', '<p>Savere head injuries</p>', '<p>exterla injury</p>', 0, NULL, NULL, 'Abraham Ogol', NULL),
('38', 'ci/00098/102', '<p>fever and hadache</p>', '<p>lab prescription</p>', 0, NULL, NULL, 'Abraham Ogol', NULL),
('40', 'ci/00098/14', '<p>Fever , hadache, diarrhear and vomit</p>', '<p>No serious signs jas&nbsp; an antimalerial drug would do</p>', 3, '<p>Malaria tabs and ACTMS </p>', 'Abraham Ogol', 'Abraham Ogol', 'Abraham Ogol');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reg_no` varchar(20) NOT NULL,
  `visit_no` int(20) NOT NULL AUTO_INCREMENT,
  `case` int(1) NOT NULL,
  `attended` int(1) DEFAULT '0',
  `temp` varchar(5) DEFAULT NULL,
  `bp` varchar(5) DEFAULT NULL,
  `examined_by` varchar(32) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`visit_no`),
  KEY `visit_no` (`visit_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`date`, `reg_no`, `visit_no`, `case`, `attended`, `temp`, `bp`, `examined_by`, `created_by`) VALUES
('2016-07-21 03:31:39', 'ci/00098/102', 32, 0, 3, '34.0', '100', 'Abraham Ogol', ''),
('2016-07-21 03:31:44', 'ci/00098/14', 33, 0, 3, '35.6', '100', 'Abraham Ogol', ''),
('2016-07-22 14:37:24', 'ci/00098/102', 34, 0, 0, NULL, NULL, NULL, ''),
('2016-07-22 14:42:34', 'ci/00098/14', 35, 0, 2, '34.11', '100', 'Abraham Ogol', ''),
('2016-07-22 14:44:57', 'ci/00098/102', 36, 0, 0, NULL, NULL, NULL, ''),
('2016-07-22 14:48:04', 'ci/00098/14', 37, 0, 0, NULL, NULL, NULL, ''),
('2016-07-22 14:57:16', 'ci/00098/102', 38, 0, 4, '36.7', '100', 'Abraham Ogol', ''),
('2016-07-22 19:31:02', 'ci/00098/102', 39, 0, 0, NULL, NULL, NULL, ''),
('2016-07-22 19:31:09', 'ci/00098/14', 40, 0, 3, '32.4', '112', 'Abraham Ogol', ''),
('2016-08-01 19:12:47', 'ci/00097/014', 41, 0, 0, NULL, NULL, NULL, ''),
('2016-08-03 20:39:31', 'ci/1111/1112', 42, 0, 0, NULL, NULL, NULL, 'Abraham Ogol'),
('2016-09-02 23:59:58', 'ci/00019/01', 43, 0, 0, NULL, NULL, NULL, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
