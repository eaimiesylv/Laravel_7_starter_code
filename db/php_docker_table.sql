-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Mar 31, 2023 at 06:24 PM
-- Server version: 5.7.41
-- PHP Version: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_docker`
--

-- --------------------------------------------------------

--
-- Table structure for table `php_docker_table`
--

CREATE TABLE `php_docker_table` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `body` varchar(150) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `php_docker_table`
--

INSERT INTO `php_docker_table` (`id`, `title`, `body`, `created_at`) VALUES
(1, 'first title', 'this is it', '2023-03-22'),
(2, 'second title', 'this is now it is', '2023-03-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php_docker_table`
--
ALTER TABLE `php_docker_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php_docker_table`
--
ALTER TABLE `php_docker_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
