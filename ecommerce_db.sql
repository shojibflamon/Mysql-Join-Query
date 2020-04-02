-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 11:21 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `email`, `telephone`, `approved`, `date_added`) VALUES
(1, 'Michel', 'Ambia', 'test@email.com', '01913700000', 1, '2014-11-30 13:59:01'),
(2, 'Ambia', 'Alam', 'test1@email.com', '01903700000', 1, '2014-12-02 14:16:34'),
(3, 'Mofizur', 'Michel', 'test2@email.com', '01713789000', 1, '2014-12-06 14:56:06'),
(4, 'Jon', 'Paul', 'test3@email.com', '01913787860', 0, '2015-01-06 11:26:39'),
(5, 'Michel', 'Schofield', 'test4@email.com', '01913776543', 0, '2015-03-11 01:13:03'),
(6, 'Paul', 'Callerman', 'test5@email.com', '01678099999', 1, '2015-04-15 14:27:21'),
(7, 'Michel', 'Callerman', 'test6@email.com', '01954499898', 0, '2015-04-20 13:54:32'),
(8, 'Imran', 'Paul', 'tes7@email.com', '01711999034', 0, '2015-05-07 13:08:04'),
(9, 'Jon', 'Uji', 'test8@email.com', '01835698989', 0, '2015-05-20 10:58:09'),
(10, 'Abidur', 'Jon', 'test9@email.com', '01289671199', 0, '2015-05-25 23:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(128) NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(3) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `customer_id`, `payment_method`, `total`, `order_status_id`, `currency_code`, `date_added`) VALUES
(1, 1, 'Cash On Delivery', '14990.0000', 0, 'BDT', '2013-10-06 12:22:54'),
(2, 3, 'Bank Payment', '26977.8750', 0, 'BDT', '2014-10-31 21:59:04'),
(3, 3, 'Credit Card / Debit Card', '14490.0000', 0, 'BDT', '2014-10-31 22:12:43'),
(4, 3, 'Credit Card / Debit Card (DBBL)', '30480.0000', 0, 'BDT', '2014-11-02 20:31:05'),
(5, 3, 'Credit Card / Debit Card (BRAC)', '30480.0000', 0, 'BDT', '2014-11-02 20:31:52'),
(6, 2, 'Credit Card / Debit Card (DBBL)', '500.0000', 0, 'BDT', '2014-11-03 15:33:52'),
(7, 5, 'Credit Card / Debit Card (CITY)', '27070.0000', 0, 'BDT', '2014-11-24 04:34:53'),
(8, 6, 'Credit Card / Debit Card (DBBL)', '34765.0000', 0, 'BDT', '2014-11-26 02:15:28'),
(9, 7, 'Credit Card / Debit Card (DBBL)', '34765.0000', 0, 'BDT', '2014-11-26 02:16:45'),
(10, 9, 'Credit Card / Debit Card (BRAC)', '34765.0000', 0, 'BDT', '2014-11-26 02:19:48'),
(11, 8, 'Credit Card / Debit Card (BRAC)', '34765.0000', 0, 'BDT', '2014-11-26 04:41:36'),
(12, 5, 'Credit Card / Debit Card (DBBL)', '34765.0000', 0, 'BDT', '2014-11-26 05:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Order Processing'),
(3, 'Delivery Processing(Partial)'),
(4, 'Delivery Processing'),
(5, 'Delivered'),
(6, 'Transferred'),
(7, 'Canceled'),
(8, 'Returned'),
(9, 'Refund Canceled'),
(10, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(14, 'Expired'),
(15, 'Processed'),
(16, 'Voided'),
(17, 'Voided (IP Banned)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
