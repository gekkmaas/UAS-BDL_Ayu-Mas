-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 11:28 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `booking_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `booking`
--
DELIMITER $$
CREATE TRIGGER `SetBookingDate` BEFORE INSERT ON `booking` FOR EACH ROW BEGIN
    SET NEW.booking_date = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bookingdetails`
--
CREATE TABLE `bookingdetails` (
`booking_id` int(11)
,`user_username` varchar(50)
,`ticket_id` int(11)
,`quantity` int(11)
,`booking_date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password_hash`, `email`, `full_name`, `phone_number`) VALUES
(1, 'john_doe', 'hashed_password_here', 'john.doe@email.com', 'John Doe', '+1234567890'),
(2, 'jane_smith', 'hashed_password_here', 'jane.smith@email.com', 'Jane Smith', '+1987654321');

-- --------------------------------------------------------

--
-- Structure for view `bookingdetails`
--
DROP TABLE IF EXISTS `bookingdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bookingdetails`  AS  select `b`.`booking_id` AS `booking_id`,`u`.`username` AS `user_username`,`b`.`ticket_id` AS `ticket_id`,`b`.`quantity` AS `quantity`,`b`.`booking_date` AS `booking_date` from (`booking` `b` join `user` `u` on((`b`.`user_id` = `u`.`user_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
