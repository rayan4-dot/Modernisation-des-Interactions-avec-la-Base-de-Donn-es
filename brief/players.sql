-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 31, 2024 at 03:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 0 and 100),
  `pace` int(11) DEFAULT NULL CHECK (`pace` between 0 and 100),
  `shooting` int(11) DEFAULT NULL CHECK (`shooting` between 0 and 100),
  `passing` int(11) DEFAULT NULL CHECK (`passing` between 0 and 100),
  `dribbling` int(11) DEFAULT NULL CHECK (`dribbling` between 0 and 100),
  `defending` int(11) DEFAULT NULL CHECK (`defending` between 0 and 100),
  `physical` int(11) DEFAULT NULL CHECK (`physical` between 0 and 100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `name`, `position`, `rating`, `pace`, `shooting`, `passing`, `dribbling`, `defending`, `physical`) VALUES
(1, 'ali', 'gk', 98, 10, 99, 99, 76, 98, 78),
(2, 'ayman', 'AMF', 98, 98, 99, 99, 76, 98, 78),
(3, 'messi', 'AMF', 98, 98, 99, 99, 76, 98, 78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
