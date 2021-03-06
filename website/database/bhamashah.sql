-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 02:20 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhamashah`
--

-- --------------------------------------------------------

--
-- Table structure for table `earningskill`
--

CREATE TABLE `earningskill` (
  `Id` int(11) NOT NULL,
  `Bid` varchar(11) NOT NULL,
  `Skill1` varchar(25) NOT NULL,
  `Skill2` varchar(25) NOT NULL,
  `Skill3` varchar(25) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earningskill`
--

INSERT INTO `earningskill` (`Id`, `Bid`, `Skill1`, `Skill2`, `Skill3`, `DateCreated`) VALUES
(1, '78945612301', 'craft', 'weav', 'sing', '2018-07-07 20:55:58'),
(2, '98989898981', 'stitch', 'sing', 'dance', '2018-07-08 00:09:00'),
(3, '97979797971', 'craft', 'cook', 'bt', '2018-07-08 00:15:05'),
(4, '97979797971', 'cook', 'weav', 'bt', '2018-07-08 00:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `existingskill`
--

CREATE TABLE `existingskill` (
  `Id` int(11) NOT NULL,
  `Bid` varchar(11) NOT NULL,
  `Skill` varchar(25) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `existingskill`
--

INSERT INTO `existingskill` (`Id`, `Bid`, `Skill`, `DateCreated`) VALUES
(1, '78945612301', 'Cooking,Knit', '2018-07-07 20:20:20'),
(6, '78945612301', 'k,pp', '2018-07-07 20:32:38'),
(7, '98989898981', 'k,p,c', '2018-07-08 00:10:13'),
(8, '98989898981', 'a', '2018-07-08 00:12:15'),
(9, '97979797971', 'p,q,r', '2018-07-08 00:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `learningskill`
--

CREATE TABLE `learningskill` (
  `Id` int(11) NOT NULL,
  `Bid` varchar(11) NOT NULL,
  `Skill1` varchar(25) NOT NULL,
  `Skill2` varchar(25) NOT NULL,
  `Skill3` varchar(25) NOT NULL,
  `Skill4` varchar(25) NOT NULL,
  `Skill5` varchar(25) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learningskill`
--

INSERT INTO `learningskill` (`Id`, `Bid`, `Skill1`, `Skill2`, `Skill3`, `Skill4`, `Skill5`, `DateCreated`) VALUES
(1, '', 'stitch', 'craft', 'dance', 'ct', 'bt', '2018-07-07 20:24:46'),
(2, '', 'stitch', 'craft', 'dance', 'ct', 'bt', '2018-07-07 20:25:31'),
(3, '', 'stitch', 'craft', 'dance', 'ct', 'bt', '2018-07-07 20:26:05'),
(4, '78945612301', 'cook', 'cook', 'cook', 'cook', 'cook', '2018-07-07 20:32:38'),
(5, '98989898981', 'cook', 'cook', 'cook', 'cook', 'cook', '2018-07-08 00:10:13'),
(6, '98989898981', 'cook', 'cook', 'cook', 'cook', 'cook', '2018-07-08 00:12:15'),
(7, '97979797971', 'craft', 'weav', 'paint', 'ct', 'dance', '2018-07-08 00:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PhoneNo` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `CAddress` varchar(100) NOT NULL,
  `PAddress` varchar(100) NOT NULL,
  `BAC` varchar(20) NOT NULL,
  `Aadhar` varchar(12) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Comp` tinyint(1) NOT NULL,
  `Apply` tinyint(1) NOT NULL,
  `Amount` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Id`, `Name`, `PhoneNo`, `DOB`, `CAddress`, `PAddress`, `BAC`, `Aadhar`, `Username`, `Password`, `Comp`, `Apply`, `Amount`, `DateCreated`) VALUES
(9, 'a', 2147483647, '2018-07-06', 'a', 'a', '9876549874', '9876549874', 'a', '0', 1, 1, 39999, '2018-07-07 22:20:28'),
(10, 'k', 2147483647, '2018-07-27', 'a', 'a', '9876549874', '987654321654', 'AA', '0', 0, 0, 0, '2018-07-07 22:23:35'),
(11, 'abc', 2147483647, '2018-07-01', 'abc', 'abc', '78787878780', '78787878780', 'aba', 'aba', 1, 0, 0, '2018-07-08 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `CAddress` varchar(75) NOT NULL,
  `PAddress` varchar(75) NOT NULL,
  `Aadhar` varchar(12) NOT NULL,
  `Bid` varchar(11) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Learner` tinyint(1) NOT NULL DEFAULT '0',
  `Earner` tinyint(1) NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `PhoneNo`, `DOB`, `CAddress`, `PAddress`, `Aadhar`, `Bid`, `Password`, `Learner`, `Earner`, `DateCreated`) VALUES
(1, ' fdh', 2147483647, '2018-07-19', 'sdg', 'dfbgdf', '2147483647', '21474836470', '123', 0, 0, '2018-07-07 18:29:30'),
(3, ' Apurv', 2147483647, '2018-07-14', 'rgdvf', 'dvs', '789456123012', '78945612301', '1234', 1, 1, '2018-07-07 19:17:52'),
(4, ' abc', 2147483647, '2007-06-21', 'abc', 'abc', '989898989800', '98989898981', '123', 0, 0, '2018-07-07 23:44:05'),
(5, ' q', 2147483647, '2016-07-07', 'abc', 'abc', '979797979712', '97979797971', '123', 1, 1, '2018-07-08 00:13:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `earningskill`
--
ALTER TABLE `earningskill`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `existingskill`
--
ALTER TABLE `existingskill`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `learningskill`
--
ALTER TABLE `learningskill`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Aadhar` (`Aadhar`,`Username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Aadhar` (`Aadhar`,`Bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `earningskill`
--
ALTER TABLE `earningskill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `existingskill`
--
ALTER TABLE `existingskill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learningskill`
--
ALTER TABLE `learningskill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
