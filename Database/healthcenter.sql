-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 10:54 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_receipt`
--

CREATE TABLE IF NOT EXISTS `active_receipt` (
  `receipt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_receipt`
--

INSERT INTO `active_receipt` (`receipt_id`) VALUES
(10000001),
(10000002),
(10000003),
(10000004),
(10000005),
(10000006),
(10000007),
(10000008),
(10000009);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `staff_id` int(10) NOT NULL,
  `in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `out_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buffer`
--

CREATE TABLE IF NOT EXISTS `buffer` (
  `receipt_id` int(10) NOT NULL,
  `mp_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(10) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback`) VALUES
(1, 'Hello'),
(2, 'shobhit is a nice person ');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE IF NOT EXISTS `pharmacy` (
  `mp_id` int(10) NOT NULL,
  `mp_name` varchar(50) NOT NULL,
  `present_qty` int(10) NOT NULL,
  `initial_qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `stock_limit` int(10) NOT NULL,
  `s_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `receipt_id` int(10) NOT NULL,
  `mp_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `medical_info` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `receipt_id` int(10) NOT NULL,
  `roll_no` int(10) NOT NULL,
  `doc_id` int(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `general_remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10000010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `roll_no`, `doc_id`, `date_time`, `general_remarks`) VALUES
(10000001, 101503211, 80001, '2017-11-25 18:57:04', NULL),
(10000002, 101510023, 80001, '2017-11-26 19:02:44', NULL),
(10000003, 101503203, 80001, '2017-11-26 19:53:49', NULL),
(10000004, 101503217, 80001, '2017-11-27 05:46:03', NULL),
(10000005, 101503208, 80001, '2017-11-27 12:35:29', NULL),
(10000006, 101503205, 80001, '2017-11-27 12:36:41', NULL),
(10000007, 101503213, 80001, '2017-11-30 02:50:30', NULL),
(10000008, 101503211, 80001, '2017-11-30 03:29:41', NULL),
(10000009, 101503208, 80001, '2017-11-30 04:07:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `department` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `specialization` varchar(30) DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80004 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `mail_id`, `contact_no`, `address`, `dob`, `doj`, `department`, `gender`, `specialization`, `admin`, `username`, `password`) VALUES
(80001, 'Shahrukh', 'Khan', 'srk@gmail.com', 9816129887, 'Thapar University', '1972-08-26', '2010-11-01', 'Doctor', 'M', 'Medicine', 1, 'iamsrk', 'Password@123'),
(80002, 'Ramesh', 'Singh', 'ramesh@gmail.com', 9418475888, 'Thapar University', '1997-10-02', '2015-07-03', 'Pharmacy', 'M', NULL, 0, 'ramesh', 'Password@123'),
(80003, 'Anika', 'Verma', 'anika@gmail.com', 1111199999, 'Thapar University', '1988-09-27', '2015-07-29', 'Doctor', 'F', 'Gynecology', 1, 'anika123', 'Password@123');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE IF NOT EXISTS `student_data` (
  `roll_no` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `year` int(2) NOT NULL,
  `branch` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `blood_group` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`roll_no`, `first_name`, `last_name`, `contact_no`, `hostel`, `year`, `branch`, `dob`, `gender`, `blood_group`) VALUES
(0, '', '', 0, '', 0, '', '0000-00-00', '', ''),
(101503203, 'Savir', 'Gupta', 7042674123, 'Day Schola', 1, 'COE', '1997-04-03', 'F', 'A-'),
(101503204, 'Sharda', 'Kashyap', 8546971237, 'Day Schola', 3, 'COE', '1995-11-05', 'M', 'AB+'),
(101503205, 'Shashank', 'Shukla', 9874561245, 'Hostel J', 3, 'COE', '1996-04-03', 'M', 'A-'),
(101503208, 'Shivam', 'Sharma', 9034401912, 'Hostel J', 3, 'COE', '1996-12-19', 'M', 'A+'),
(101503211, 'Shobhit', 'Jain', 8195912496, 'Hostel J', 3, 'COE', '1996-08-24', 'M', 'O+'),
(101503213, 'Shreya', 'Aggarwal', 9855885451, 'Hostel I', 3, 'COE', '1997-10-12', 'F', 'O+'),
(101503216, 'Shubham', 'Acharya', 1234567891, 'Hostel A', 3, 'COE', '1995-11-02', 'O', 'A+'),
(101503217, 'Shubham', 'Arora', 7307420244, 'Hostel J', 3, 'COE', '1997-01-19', 'M', 'B+'),
(101503222, 'dskhb', 's,cj', 1235684, 'Hostel A', 3, 'COE', '1999-12-11', 'M', 'A-'),
(101510023, 'Devesh', 'Garg', 7042674801, 'Hostel J', 3, 'CML', '1996-11-15', 'M', 'B+'),
(111222333, 'shbm', 'kdjbcn', 56513, 'Hostel A', 0, 'COE', '1998-12-12', 'F', 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_receipt`
--
ALTER TABLE `active_receipt`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `buffer`
--
ALTER TABLE `buffer`
  ADD PRIMARY KEY (`receipt_id`,`mp_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`mp_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `s_id_2` (`s_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`receipt_id`,`mp_id`),
  ADD KEY `mp_id` (`mp_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `roll_no` (`roll_no`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`roll_no`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `supplier_contact_no` (`contact_no`),
  ADD KEY `s_id` (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `mp_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10000010;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80004;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_receipt`
--
ALTER TABLE `active_receipt`
  ADD CONSTRAINT `receipt_no` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`receipt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `staff_id` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `s_id` FOREIGN KEY (`s_id`) REFERENCES `supplier` (`s_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `mp_id` FOREIGN KEY (`mp_id`) REFERENCES `pharmacy` (`mp_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `receipt_id` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`receipt_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `doc_id` FOREIGN KEY (`doc_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `roll_no` FOREIGN KEY (`roll_no`) REFERENCES `student_data` (`roll_no`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
