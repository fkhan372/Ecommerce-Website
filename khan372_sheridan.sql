-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2022 at 04:42 PM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khan372_sheridan`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(2, 'Phone', 800),
(3, 'TV', 1200),
(4, 'Tablet', 455),
(5, 'tv', 100),
(6, 'tv1', 200),
(7, 'Cable', 40),
(8, 'test', 100),
(9, 'test5', 50),
(10, 'soap', 50),
(11, 'soap', 50),
(12, 'soap', 100),
(13, 'free smoke', 123),
(14, 'powder', 234);

-- --------------------------------------------------------

--
-- Table structure for table `tblUsers`
--

CREATE TABLE `tblUsers` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUsers`
--

INSERT INTO `tblUsers` (`username`, `password`) VALUES
('faisal', 'hashedpassword'),
('test', '$2y$10$Bual.oaxqtKV8ljHX0WmUeDgz4trlPklQs8mXep.siIC6u8OVUNI6'),
('test123', '$2y$10$oMdtet6R1.Sa2u3zUA0r2eATt5lUBPK2Uyl/UONrPKBaH6bQQuvRy'),
('khan372', '$2y$10$gDcG9y0PjPY8UyO/SIVw4ewHU7scSCKd5UfOaQI4yRy5fyF6v/Lyq'),
('test11', '$2y$10$JZ4SOSYxRJ40R5ZyP.Tl.OTojyK9ONKmIIZ.fnI.rETnODkgtdV8i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
