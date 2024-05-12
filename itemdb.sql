-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 04:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itemdb`
--
CREATE DATABASE IF NOT EXISTS `itemdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `itemdb`;

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE IF NOT EXISTS `item_details` (
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` blob NOT NULL,
  `minimum_price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`name`, `description`, `image`, `minimum_price`) VALUES
('name1', 'desc1', '', ''),
('name2', 'desc2', '', ''),
('name3', 'desc3', '', '97.25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/* actually turns out we need longblob and just blob is not enough*/;

ALTER TABLE `item_details` CHANGE `image` `image` LONGBLOB NOT NULL;