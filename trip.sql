-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 08:03 PM
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
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `srno` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`srno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'Devraj Bagul ', 22, 'male', 'admin@gmail.com', '9284438720', '', '2024-01-03 00:12:39'),
(2, 'Devraj ', 22, 'male', 'admin@gmail.com', '9284438720', ' ', '2024-01-03 00:24:06'),
(3, 'Devraj ', 22, 'male', 'admin@gmail.com', '9284438720', ' ', '2024-01-03 00:24:12'),
(4, 'Devraj ', 22, 'male', 'admin@gmail.com', '9284438720', ' ', '2024-01-03 00:24:15'),
(5, 'Devraj  ', 22, 'male', 'admin@gmail.com', '9284438720', ' ', '2024-01-03 00:24:25'),
(6, 'raj ', 44, 'male', 'yash@gmail.com', '43434343434', ' ds', '2024-01-03 00:24:45'),
(7, 'aniket ', 66, 'male', 'user@gmail.com', '54545445454', ' DE', '2024-01-03 00:25:18'),
(8, 'monas ', 19, 'female', 'mona@gmail.com', '8884774646', ' She Lives Flower ', '2024-01-03 00:27:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `srno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
