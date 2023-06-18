-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 04:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_details`
--

CREATE TABLE `basic_details` (
  `Id` varchar(10) NOT NULL,
  `User_Id` varchar(10) NOT NULL,
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Phone_Number` int(12) NOT NULL,
  `Email_address` varchar(60) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Objective` varchar(500) NOT NULL,
  `Headline` varchar(500) NOT NULL,
  `Profile_img_url` varchar(300) DEFAULT NULL,
  `Language` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `id` varchar(10) NOT NULL,
  `User_Id` varchar(10) NOT NULL,
  `Institution_Name` varchar(50) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `Major` varchar(100) NOT NULL,
  `Start_date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expirience`
--

CREATE TABLE `expirience` (
  `Id` varchar(10) NOT NULL,
  `User_Id` varchar(10) NOT NULL,
  `Organisation_Name` varchar(30) DEFAULT 'N/A',
  `Location` varchar(100) DEFAULT 'N/A',
  `Start_date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Description` varchar(200) NOT NULL DEFAULT 'N/A',
  `Responsibility` varchar(200) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

CREATE TABLE `other_details` (
  `Id` varchar(10) NOT NULL,
  `User_Id` varchar(10) NOT NULL,
  `Git_hub_url` varchar(200) NOT NULL DEFAULT 'N/A',
  `LinkedIn_url` varchar(200) NOT NULL DEFAULT 'N/A',
  `Twitter_url` varchar(200) NOT NULL DEFAULT 'N/A',
  `Facebook_url` varchar(200) NOT NULL DEFAULT 'N/A',
  `Youtube_url` varchar(200) NOT NULL DEFAULT 'N/A',
  `Portfolio_url` varchar(200) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_id`
--

CREATE TABLE `user_id` (
  `Id` varchar(10) NOT NULL,
  `User_Id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `expirience`
--
ALTER TABLE `expirience`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `other_details`
--
ALTER TABLE `other_details`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `user_id`
--
ALTER TABLE `user_id`
  ADD PRIMARY KEY (`User_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD CONSTRAINT `basic_details_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_id` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `education_details`
--
ALTER TABLE `education_details`
  ADD CONSTRAINT `education_details_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_id` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `expirience`
--
ALTER TABLE `expirience`
  ADD CONSTRAINT `expirience_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_id` (`User_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `other_details`
--
ALTER TABLE `other_details`
  ADD CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user_id` (`User_Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
