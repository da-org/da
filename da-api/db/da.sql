-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 06:59 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `da`
--

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboys_accounts`
--

CREATE TABLE IF NOT EXISTS `deliveryboys_accounts` (
  `deliveryBoy_Id` int(11) NOT NULL AUTO_INCREMENT,
  `email_Id` varchar(35) NOT NULL,
  `acc_pwd` varchar(500) NOT NULL,
  `SurName` varchar(60) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(60) NOT NULL,
  `mob_code` varchar(3) NOT NULL,
  `mobileNumber` int(10) NOT NULL,
  PRIMARY KEY (`deliveryBoy_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboys_info`
--

CREATE TABLE IF NOT EXISTS `deliveryboys_info` (
  `deliveryBoy_Id` int(11) NOT NULL AUTO_INCREMENT,
  `aadharCardNumber` varchar(15) NOT NULL,
  `aadharCardLink` varchar(100) NOT NULL,
  `aadharCardStatus` varchar(10) NOT NULL,
  `panCardNumber` varchar(15) NOT NULL,
  `panCardLink` varchar(100) NOT NULL,
  `panCardStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`deliveryBoy_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveryboys_info`
--
ALTER TABLE `deliveryboys_info`
  ADD CONSTRAINT `deliveryboys_info_ibfk_1` FOREIGN KEY (`deliveryBoy_Id`) REFERENCES `deliveryboys_accounts` (`deliveryBoy_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
