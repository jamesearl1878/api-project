-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 03:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Id` int(11) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Id`, `Last_Name`, `Email`, `Department`, `First_Name`) VALUES
(1192445, 'Garcia', 'liam.garcia@example.com', 'IT', 'Liam'),
(1192456, 'Santos', 'ava.santos@example.com', 'HR', 'Ava'),
(1192457, 'Cruz', 'mika.cruz@example.com', 'Finance', 'Mika'),
(1192458, 'James Earl', 'gamerstevenjay032@gmail.com', 'Hm', 'Nacario'),
(1192459, 'Nacario ', 'senseijames18@gmail.com', 'HM', 'James Earl '),
(1192460, 'James Earl', 'senseijames18@gmail.com', 'IT', 'Nacario'),
(1192461, 'Villamor', 'senseijames18@gmail.com', 'Engineering', 'Daisy'),
(1192462, 'jakdsjkdasj', 'senseijames18@gmail.com', 'IT', 'djaskdasj'),
(1192463, 'james ', 'senseijames18@gmail.com', 'IT', 'nacario'),
(1192464, 'migancillo', 'admin@school.com', 'IT', 'cjax');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1192465;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
