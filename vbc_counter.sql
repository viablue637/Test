-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 04:11 PM
-- Server version: 5.7.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viabluem_courier_220`
--

-- --------------------------------------------------------

--
-- Table structure for table `vbc_counter`
--

CREATE TABLE `vbc_counter` (
  `counter_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `counter_name` varchar(150) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `counter_longitude` decimal(10,6) DEFAULT NULL,
  `counter_latitude` decimal(10,6) DEFAULT NULL,
  `profile_image` varchar(50) DEFAULT 'default.png',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `is_disabled` int(11) NOT NULL DEFAULT '0',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vbc_counter`
--
ALTER TABLE `vbc_counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vbc_counter`
--
ALTER TABLE `vbc_counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
