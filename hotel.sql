-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 07:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(6, 'admin', '1234', 'admin', 'admin@admin.com'),
(12, 'beem', '112', 'Beem', 'beemgurock@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_cat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(28, 'Super Comfort', '2021-02-18', '2021-02-26', 'à¹„à¸¡à¹ˆà¹€à¸—à¹ˆà¹€à¸«à¸¡à¸·à¸­à¸™ à¸­à¸²à¸ˆà¸²à¸£à¸¢à¹Œà¸ªà¸¸à¸£à¸´à¸¢à¸²', 654788191, 'true'),
(33, 'Duplex', '2021-02-18', '2021-02-19', 'jiwly', 654788191, 'true'),
(38, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '2021-02-18', '2021-05-19', 'à¹„à¸¡à¹ˆà¹€à¸—à¹ˆà¹€à¸«à¸¡à¸·à¸­à¸™ à¸­à¸²à¸ˆà¸²à¸£à¸¢à¹Œà¸ªà¸¸à¸£à¸´à¸¢à¸²', 654788191, 'true'),
(39, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(40, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(41, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(42, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(43, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(44, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(45, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(46, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(47, 'à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', '0000-00-00', '0000-00-00', '', 0, 'false'),
(48, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(49, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(50, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(51, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(52, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(53, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(54, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(55, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(56, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(57, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(58, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(59, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(60, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(61, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(62, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(63, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(64, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(65, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(66, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(67, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(68, 'Super Comfort', '0000-00-00', '0000-00-00', '', 0, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `roomname` text NOT NULL,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `no_bed` int(11) NOT NULL,
  `bedtype` text CHARACTER SET utf8 NOT NULL,
  `facility` text CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`roomname`, `room_qnty`, `available`, `booked`, `no_bed`, `bedtype`, `facility`, `price`) VALUES
('à¸«à¹‰à¸­à¸‡à¹€à¸—à¹ˆà¹†', 10, 10, 0, 1, 'single', 'à¹„à¸¡à¹ˆà¸¡à¸µ', 30000),
('Duplex', 10, 10, 0, 1, 'single', ' TV, Wifi, Breakfast', 500),
('Family', 1, 1, 0, 2, 'double', 'Sofa, TV, WIFI, Pool, Breakfast', 900),
('Super Comfort', 10, 10, 0, 1, 'double', 'TV, WIFI, Breakfast', 700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`roomname`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
