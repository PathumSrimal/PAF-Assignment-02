-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 11:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funder`
--

-- --------------------------------------------------------

--
-- Table structure for table `funder`
--

CREATE TABLE `funder` (
  `funderID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funder`
--

INSERT INTO `funder` (`funderID`, `name`, `email`, `contact`, `type`) VALUES
(1, 'pathum', 'pathum@gmail.com', 775213454, 'max'),
(2, 'Maheshavi', 'mahesha@gmail.com', 777543674, 'minimum'),
(4, 'Aviya', 'aviya@gmail.com', 774356370, 'Medium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funder`
--
ALTER TABLE `funder`
  ADD PRIMARY KEY (`funderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funder`
--
ALTER TABLE `funder`
  MODIFY `funderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
