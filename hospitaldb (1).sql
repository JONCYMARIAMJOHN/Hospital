-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 11:33 AM
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
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `Did` int(11) NOT NULL,
  `Dname` varchar(30) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Slot` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `Did`, `Dname`, `Uname`, `Date`, `Slot`, `Status`) VALUES
(6, 3, 'John', 'joncy', '2020-01-23', '12 PM', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Did` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `MobileNo` bigint(20) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `Nationalid` varchar(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `ClinicAddress` varchar(50) NOT NULL,
  `ClinicTiming` varchar(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Did`, `Name`, `MobileNo`, `Emailid`, `Nationalid`, `Qualification`, `Experience`, `Department`, `ClinicAddress`, `ClinicTiming`, `Username`, `Password`, `Status`) VALUES
(1, 'Sreeja Hari', 9846730957, 'sreeja@gmail.com', '1209364738', 'MBBS MD', '2 years experience', 'Gynaecology', 'Sreeja Clinic TVM', '9 AM - 6 PM', 'sreeja', 'sreeja123', 'Approved'),
(2, 'Job', 9348932716, 'job@gmail.com', '12983746456', 'MBBS MD', '1 year', 'ENT', 'Job clinic', '24 hours', 'job', 'job123', 'Approved'),
(3, 'John', 9395949393, 'john@gmail.com', '1232093402439', 'MBBS MD', '3 years', 'Neurology', 'John Clinic Kottarakara', '24 hours', 'john', 'john321', 'Approved'),
(4, 'Jeevan Joy', 8674647575, 'jeevan@gmail.com', '1838579857', 'MBBS MD', '5 years', 'Cardiology', 'Jeevan Clinic Kottayam', '24 hours', 'jeevan', 'jeevan123', 'Approved'),
(10, 'jemy', 8765424567, 'jemy@gmail.com', '123456789', 'MBBS', '5 yrs', 'Cardiology', 'Jemy Clinic Kollam', '9 AM - 5 PM', 'jemy', 'jemy123', 'Rejected'),
(11, 'Alan A', 6463473838, 'alan@gmail.com', '234', 'MBBS MD', '1 yr', 'ENT', 'Alan Hospital Kozhikode', 'Fullday', 'alan', 'alan123', 'Approved'),
(12, 'Alexander', 845834939339, 'hdij@gmail.com', '12345678', 'MBBS', '10 yrs', 'Gynaecology', 'Alex Memorial Hospital TVM', '24 hours', 'alex', 'alex123', 'Approved'),
(13, 'Sarah Thomas', 74646363272, 'rfghbn@gmail.com', '123456y', 'MBBS MD', '0 yrs', 'Neurology', 'Sarah Clinic', 'Fullday', 'sarah', 'sarah123', 'Approved'),
(14, 'Anjima Balu', 8484939229, 'anjima@gmail.com', '74838393948', 'MBBS MD', '15 yrs', 'Neurology', 'Anjima Hospital Aroor', '8 AM - 10 PM', 'anjima', 'anjima123', 'Approved'),
(21, 'Renuka', 9472218740, 'renu@gmail.com', '12345', 'MBBS MD', '1 year', 'Paediatry', 'Renus Clinic', '24 hours', 'renuka', 'renu123', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `MobileNo` bigint(11) NOT NULL,
  `NationalId` bigint(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Uid`, `Name`, `Gender`, `Age`, `Emailid`, `MobileNo`, `NationalId`, `Username`, `Password`) VALUES
(1, 'Joncy', 'Female', 24, 'joncymariam@gmail.com', 9645924853, 302482851233, 'joncy', 'joncy321'),
(2, 'Jeseena L', 'Female', 24, 'jeseena@gmail.com', 9475848385, 8284757483432, 'jeseena', 'jeseena123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
