-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 03:32 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin'),
(4, 'col.btk@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5dcd67e0964dc', '5dcd67e096edf'),
('5dcd67e09a77f', '5dcd67e09b44f'),
('5dcd67e09e9e5', '5dcd67e09ffe0'),
('5dcd67e0a2edf', '5dcd67e0a3849'),
('5dcd67e0a60a4', '5dcd67e0a6a89'),
('5dcd681ed778d', '5dcd681ed7f02'),
('5dcd681edaa09', '5dcd681edb1be'),
('5dcd681eddc10', '5dcd681ede1e1'),
('5dcd681ee0bf8', '5dcd681ee1428'),
('5dcd681ee4ad1', '5dcd681ee5276'),
('5dcdd36d32fdf', '5dcdd36d502f1'),
('5dcdd36da0ca0', '5dcdd36dabc2d');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5dcfb50976e9a', 'Collins Bitok', 'collins.bitok@strathmore.edu', 'math ', 'qwert5y6tu7iuoglj,mndbxc klujkdnc ', '2019-11-16', '09:36:25am'),
('5dde650ed6948', 'Collins Kipkoech', 'collins.bitok@strathmore.edu', 'test', 'wertytu', '2019-11-27', '12:59:10pm'),
('5dde674c4f126', 'Collins Kipkoech', 'collins.bitok@strathmore.edu', 'test', 'wer', '2019-11-27', '01:08:44pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('admin@admin.com', '5dcdd2089cada', 4, 2, 2, 0, '2019-11-14 22:21:46'),
('collins.bitok@strathmore.edu', '5dcd67f97101e', 2, 5, 3, 2, '2019-11-18 18:35:41'),
('col.btk@gmail.com', '5dcd67f97101e', 6, 5, 4, 1, '2019-11-25 12:27:03'),
('col.btk@gmail.com', '5dcdd2089cada', 1, 2, 1, 1, '2019-11-25 14:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5dcd67e0964dc', '2', '5dcd67e096edf'),
('5dcd67e0964dc', '3', '5dcd67e096efa'),
('5dcd67e0964dc', '4', '5dcd67e096f12'),
('5dcd67e0964dc', '5', '5dcd67e096f2d'),
('5dcd67e09a77f', '4', '5dcd67e09b44f'),
('5dcd67e09a77f', '5', '5dcd67e09b463'),
('5dcd67e09a77f', '6', '5dcd67e09b465'),
('5dcd67e09a77f', '7', '5dcd67e09b467'),
('5dcd67e09e9e5', '', '5dcd67e09ffe0'),
('5dcd67e09e9e5', '', '5dcd67e09ffe9'),
('5dcd67e09e9e5', '', '5dcd67e09ffeb'),
('5dcd67e09e9e5', '', '5dcd67e09ffec'),
('5dcd67e0a2edf', '', '5dcd67e0a3849'),
('5dcd67e0a2edf', '', '5dcd67e0a3851'),
('5dcd67e0a2edf', '', '5dcd67e0a3853'),
('5dcd67e0a2edf', '', '5dcd67e0a3855'),
('5dcd67e0a60a4', '', '5dcd67e0a6a89'),
('5dcd67e0a60a4', '', '5dcd67e0a6a90'),
('5dcd67e0a60a4', '', '5dcd67e0a6a92'),
('5dcd67e0a60a4', '', '5dcd67e0a6a93'),
('5dcd681ed778d', '2', '5dcd681ed7f02'),
('5dcd681ed778d', '3', '5dcd681ed7f09'),
('5dcd681ed778d', '4', '5dcd681ed7f0e'),
('5dcd681ed778d', '5', '5dcd681ed7f11'),
('5dcd681edaa09', '4', '5dcd681edb1be'),
('5dcd681edaa09', '5', '5dcd681edb1c5'),
('5dcd681edaa09', '6', '5dcd681edb1c6'),
('5dcd681edaa09', '7', '5dcd681edb1c8'),
('5dcd681eddc10', '', '5dcd681ede1e1'),
('5dcd681eddc10', '', '5dcd681ede1e9'),
('5dcd681eddc10', '', '5dcd681ede1eb'),
('5dcd681eddc10', '', '5dcd681ede1ec'),
('5dcd681ee0bf8', '', '5dcd681ee1428'),
('5dcd681ee0bf8', '', '5dcd681ee1432'),
('5dcd681ee0bf8', '', '5dcd681ee1434'),
('5dcd681ee0bf8', '', '5dcd681ee1436'),
('5dcd681ee4ad1', '', '5dcd681ee5276'),
('5dcd681ee4ad1', '', '5dcd681ee527b'),
('5dcd681ee4ad1', '', '5dcd681ee527d'),
('5dcd681ee4ad1', '', '5dcd681ee527e'),
('5dcdd36d32fdf', 'HypoTentialMarkingLand', '5dcdd36d502ea'),
('5dcdd36d32fdf', 'Hyper Text Markup Language', '5dcdd36d502f1'),
('5dcdd36d32fdf', 'Hypering Texting Message Language', '5dcdd36d502f2'),
('5dcdd36d32fdf', 'Non Of The Above', '5dcdd36d502f3'),
('5dcdd36da0ca0', 'set title for project', '5dcdd36dabc25'),
('5dcdd36da0ca0', 'set File name ', '5dcdd36dabc2c'),
('5dcdd36da0ca0', 'set Tittle for file in web page ', '5dcdd36dabc2d'),
('5dcdd36da0ca0', 'None of the above', '5dcdd36dabc2e');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5dcd66a012028', '5dcd67e0964dc', '1+1=', 4, 1),
('5dcd66a012028', '5dcd67e09a77f', '2+2=', 4, 2),
('5dcd66a012028', '5dcd67e09e9e5', '', 4, 3),
('5dcd66a012028', '5dcd67e0a2edf', '', 4, 4),
('5dcd66a012028', '5dcd67e0a60a4', '', 4, 5),
('5dcd67f97101e', '5dcd681ed778d', '1+1=', 4, 1),
('5dcd67f97101e', '5dcd681edaa09', '2+2=', 4, 2),
('5dcd67f97101e', '5dcd681eddc10', '', 4, 3),
('5dcd67f97101e', '5dcd681ee0bf8', '', 4, 4),
('5dcd67f97101e', '5dcd681ee4ad1', '', 4, 5),
('5dcdd2089cada', '5dcdd36d32fdf', 'What is HTML in full', 4, 1),
('5dcdd2089cada', '5dcdd36da0ca0', '<title>Career Guidance</title>  Is used for ?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5dcd67f97101e', 'Maths', 2, 2, 5, 5, '', 'maths', '2019-11-14 14:43:05'),
('5dcdd2089cada', 'Html', 2, 1, 2, 5, 'Hyper Text Markup Language', 'html', '2019-11-14 22:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('col.btk@gmail.com', 3, '2019-11-25 14:14:56'),
('collins.bitok@strathmore.edu', 2, '2019-11-18 18:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `email`, `mob`, `password`, `isActive`) VALUES
('Collins Bitok', 'M', 'col.btk@gmail.com', '0715011121', 'e10adc3949ba59abbe56e057f20f883e', 1),
('Collins', 'M', 'coll@gmail.com', '0715011121', 'e10adc3949ba59abbe56e057f20f883e', 1),
('Collins Bitok', 'M', 'collins.bitok@strathmore.edu', '254715011121', 'e10adc3949ba59abbe56e057f20f883e', 1),
('Jesse', 'M', 'okaljesse23@gmail.com', '+254775390133', '546e9245238881d7fafc771957846448', 1),
('Joseph', 'M', 'sydney@gmail.com', '0775390133', 'e10adc3949ba59abbe56e057f20f883e', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
