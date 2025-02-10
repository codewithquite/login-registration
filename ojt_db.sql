-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2025 at 09:43 AM
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
-- Database: `ojt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `contactnum` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `contactnum`, `username`, `email`, `password`) VALUES
(1, 'admin', 'quite', '123124124', 'asdawdasf@gmail.com', 'ejhdawd@gmail.com', '$2y$10$4RYFRz7g1hoUUpVpmhUjue.7v6Yj/XgLp9tl5lsZbk4WVpnT0ECqa'),
(2, 'justine', 'lagasca', '09123228421', 'justine123', 'justinelagasca@gmail.com', '$2y$10$42g.3eozE4eyvDc1aXcH6.ya8UjVil2xA5LgJBwL8r0MKa/B41Zka'),
(3, '', '', '', '', '', '$2y$10$kDu9BztJ31WRcOkCCfWRqu/kOIPSdLAqdSsViIW.X/adH9TO.Q0mK'),
(4, '', '', '', '', '', '$2y$10$QBqHyQ49d0xoKM9jQ0aVgeK7ddVuFnp9HwhcDDHQniIG7EwfxyA9i'),
(5, 'azar', 'azar', '012398124', 'azar123', 'asdawd@gmail.com', '$2y$10$cAOP2YwNyLqhv8KK.ZOy9.F3aEbAOMQmrrbbXb35C475rUpX.nV.e'),
(6, '', '', '', '', '', '$2y$10$cvfyxABwcZ9P4zxKlpA2H.QfNN8xDN1PZFQuJVWBWHZVY.4puo5Hi'),
(7, '', '', '', '', '', '$2y$10$n4J0.lTUT80OatlMTRvsQ.QszMmddb1OCOozhE2TzUv4OoayAnEt6'),
(8, '', '', '', '', '', '$2y$10$s8ajOsoLNfcz.pVjZgjtaOwB5.OSQkkgeioWGwBQYLAFNaugc4CIe'),
(9, '', '', '', '', '', '$2y$10$qa6z1HF4n0aTFJEHvlKgmuB.ipYZ5BtjhwftiCnzpOfgBz94Ptg8W'),
(10, '', '', '', '', '', '$2y$10$FN1NLtklOZn6BMUcX1JF1u5lab.OyC/DcQxMix9mseDpgni3.SUTq'),
(11, 'admin', 'adminn', '2412412412', 'admin123', 'admin123@gmail.com', '$2y$10$hzGoQhhzOWAdVOtmq8QFouSjYfkYpWT2xvUXWqbHOkM8TY0AuHDqq'),
(12, 'admina', 'asdajf', 'a0294102', 'admin12345', 'awfjaiwf@gmail.com', '$2y$10$caP/iJp1vw1T.vrEosWqpO7QuR8//OB6guEonKLFqYhUz7LlJQJ0i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
