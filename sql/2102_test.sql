-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 07:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2102_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidateid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` text NOT NULL,
  `nicno` varchar(20) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `expsalary` float NOT NULL,
  `position` varchar(20) NOT NULL,
  `wrkschedule` varchar(25) NOT NULL,
  `eduqual` varchar(50) NOT NULL,
  `profqual` varchar(50) NOT NULL,
  `workcomp` varchar(20) NOT NULL,
  `workdesig` varchar(20) NOT NULL,
  `workfrom` date DEFAULT NULL,
  `workto` date DEFAULT NULL,
  `recmgr_assignemail` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userRole` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidateid`, `firstname`, `lastname`, `fullname`, `dob`, `gender`, `nationality`, `nicno`, `contactno`, `email`, `telephone`, `address`, `department`, `expsalary`, `position`, `wrkschedule`, `eduqual`, `profqual`, `workcomp`, `workdesig`, `workfrom`, `workto`, `recmgr_assignemail`, `password`, `userRole`, `status`, `isDelete`) VALUES
(87, 'Kate', 'Peter', 'Kate Peter', '1999-10-04', 'Female', 'srilankan', '993456789V', '0710787877', 'katepeter@gmail.com', '0710787877', '28, Richard Street, Kollupitiya, Colombo - 03', 'IT', 50000, 'Manager', '', 'B.Sc in Computer Science', '', '', '', '0000-00-00', '0000-00-00', 'katepeter@gmail.com', '$2y$10$BBRUgv3v89YI3iMOEzg9z.RHDijBDyQCSOYMscpwMRA', 'employee', 'selected', 1),
(88, 'Amila', 'Amaratunge', 'Amila Amaratunge', '1998-10-08', '', 'srilankan', '983456789V', '0710777777', 'amila@gmail.com', '2567904786', 'abc street', 'Marketing', 40000, 'Sales Executive', '', 'BBA in Marketing', 'CIMA', '', '', '0000-00-00', '0000-00-00', 'amila@gmail.com', '$2y$10$aiXR31gYNJqGCUTSDi.a4ezsCL1xXUG2WnDGz.9SJeOa0YD9Z6E4.', 'employee', 'selected', 1),
(89, 'Jill', 'Samuel', 'Jill Samuel', '1999-11-03', 'Female', 'srilankan', '990756789V', '0710666689', 'jillsamuel@gmail.com', '0710666689', '20, White Street, Kollupitiya, Colombo - 03', 'IT', 50000, 'Manager', '', 'BSc in Computer Science', '', '', '', '0000-00-00', '0000-00-00', 'jillsamuel@gmail.com', '$2y$10$S.YpZpJI5tVNggtS0rnoIOX5MK1mMlyUW/BahyfTjkb06L2oi2pha', 'employee', 'selected', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDelete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `email`, `password`, `userRole`, `isDelete`) VALUES
(1, 'employee@gmail.com', '$2y$10$Q4ptT4iA3dHc6CcGVUTzT.5B1DNksQca84X4sxg/VQS6ihASk2WyK', 'employee', 1),
(2, 'employeeTwo', '$2y$10$3av7i8Zk8kGU5VOB1HesoOJRGXjgAFu8C9BPLxp4OKzT4DLp0hbSy', 'employee', 1),
(3, 'employeeThree', '$2y$10$LhPg4B0FPx13mCXRS3P/h.Z/SWRat61KvzQh0.HrGQWfAZZjJmmku', 'employee', 1),
(4, 'manager', '$2y$10$53aZps9JSyz51ZZm238Rne24ZioIgYass3JAHXgmdI0nT1nYb6iya', 'hr-manager', 1),
(5, 'admin', '$2y$10$7OEi1hwvU9KmOoa33MDZ3OKgcw.T4Tt8O4tvdQhVdS.DYhcxYyLNG', 'admin', 1),
(6, 'leave manager', '$2y$10$P7HsQEA8H2apS00Jx0Tc7erfwE.J9Xsj6.AutQ4evn0PAr6bDCSwK', 'leave-manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employeereg`
--

CREATE TABLE `employeereg` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managerreg`
--

CREATE TABLE `managerreg` (
  `empId` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDelete` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `managerreg`
--

INSERT INTO `managerreg` (`empId`, `name`, `gender`, `userRole`, `department`, `mobile`, `address`, `email`, `password`, `isDelete`) VALUES
(15, 'Dileepa Lakmina Bandara', 'male', 'recruitment-manager', 'x', '0763451084', 'example', 'dileepal1213@gmail.com', '$2y$10$CrCCLgUYAmJNR0Ezs77ojuGS9XEvNXGJTn4j4J.BDqVjUhF8maMmm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `empId` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDelete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`empId`, `username`, `password`, `position`, `isDelete`) VALUES
(1, 'manager', '$2y$10$SKali3ffnh0jy3npgCALoezR5PeEb1SBiTWsyQ0NVTbeff5UczFEy', 'hr-manager', 1),
(2, 'admin', '$2y$10$pIi8mCM0cDjyydSVi2zuEeN75vdfrT46wan8ebB.Cx4MfI/v0c.ya', 'admin', 1),
(3, 'leave manager', '$2y$10$yjTnqd.bIyOA8tgw5kWzvO6cGnUsP0uBWj/pIskdHcgRXKbAJlJru', 'leave-manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userRole` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `email`, `password`, `userRole`) VALUES
(1, 'as', '$2y$10$0Xp6xsfHK.63gGRoGLZjc.FioViO819tkAMYyCmQIb5ByT2jEi.SO', 'hr-manager');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `position`) VALUES
(17, 'employee', '$2y$10$ZdlFSb4kDvhhgUPPhJviDuLkNTbGqhWkE/loVzaL3hvLrHLkOx51K', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidateid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `employeereg`
--
ALTER TABLE `employeereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managerreg`
--
ALTER TABLE `managerreg`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeereg`
--
ALTER TABLE `employeereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managerreg`
--
ALTER TABLE `managerreg`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
