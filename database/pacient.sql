-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 09:42 AM
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
-- Database: `spital`
--

-- --------------------------------------------------------

--
-- Table structure for table `pacient`
--

CREATE TABLE `pacient` (
  `pacient_id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `data_nasterii` date NOT NULL,
  `telefon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacient`
--

INSERT INTO `pacient` (`pacient_id`, `nume`, `sex`, `data_nasterii`, `telefon`) VALUES
(1, 'David Williams', 'F', '1955-06-04', 2147483647),
(2, 'Emily Smith', 'F', '1984-10-12', 2147483647),
(3, 'Laura Jones', 'M', '1977-08-21', 2147483647),
(4, 'Michael Johnson', 'F', '1981-02-20', 2147483647),
(5, 'David Wilson', 'M', '1960-06-23', 2147483647),
(6, 'Linda Jones', 'M', '1963-06-16', 2147483647),
(7, 'Alex Johnson', 'F', '1989-06-08', 2147483647),
(8, 'David Davis', 'F', '1976-07-05', 2147483647),
(9, 'Laura Davis', 'M', '1971-12-11', 2147483647),
(10, 'Michael Taylor', 'M', '2001-10-13', 2147483647),
(11, 'Emily Jones', 'F', '1966-12-04', 2147483647),
(12, 'Laura Davis', 'F', '1991-12-08', 2147483647),
(13, 'Laura Johnson', 'F', '1990-03-28', 2147483647),
(14, 'Alex Taylor', 'M', '1968-02-27', 2147483647),
(15, 'Sara Johnson', 'M', '1964-05-11', 2147483647),
(16, 'Michael Taylor', 'M', '2000-07-22', 2147483647),
(17, 'Jane Jones', 'M', '1991-05-01', 2147483647),
(18, 'Laura Wilson', 'M', '1979-09-24', 2147483647),
(19, 'Sarah Miller', 'M', '1975-05-24', 2147483647),
(20, 'Jane Moore', 'F', '2003-06-06', 2147483647),
(21, 'Michael Wilson', 'M', '2002-03-01', 2147483647),
(22, 'John Brown', 'M', '1955-05-10', 2147483647),
(23, 'Linda Johnson', 'M', '1994-02-22', 2147483647),
(24, 'Sarah Brown', 'F', '1991-11-04', 2147483647),
(25, 'Robert Wilson', 'M', '1966-08-14', 2147483647),
(26, 'John Taylor', 'M', '2003-11-28', 2147483647),
(27, 'Linda Moore', 'F', '1998-06-29', 2147483647),
(28, 'Alex Moore', 'M', '1993-04-13', 2147483647),
(29, 'David Smith', 'M', '2005-05-15', 2147483647),
(30, 'Emily Moore', 'M', '1964-12-23', 2147483647),
(31, 'Robert Miller', 'M', '1987-01-14', 2147483647),
(32, 'Alex Moore', 'M', '1981-01-08', 2147483647),
(33, 'Michael Wilson', 'F', '1970-02-06', 2147483647),
(34, 'Alex Smith', 'F', '1950-01-26', 2147483647),
(35, 'David Wilson', 'F', '1993-04-13', 2147483647),
(36, 'Michael Wilson', 'M', '1997-12-26', 2147483647),
(37, 'Robert Williams', 'M', '1999-02-05', 2147483647),
(38, 'David Smith', 'M', '1991-06-25', 2147483647),
(39, 'Jane Wilson', 'F', '1950-12-12', 2147483647),
(40, 'Emily Williams', 'M', '1972-05-30', 2147483647),
(41, 'Robert Williams', 'M', '1951-06-19', 2147483647),
(42, 'Jane Smith', 'F', '1954-08-22', 2147483647),
(43, 'Linda Brown', 'M', '1980-03-25', 2147483647),
(44, 'Robert Taylor', 'F', '1976-03-11', 2147483647),
(45, 'Linda Miller', 'F', '1966-04-25', 2147483647),
(46, 'Michael Taylor', 'F', '1986-09-01', 2147483647),
(47, 'Jane Moore', 'M', '1995-12-13', 2147483647),
(48, 'Emily Miller', 'M', '1983-03-24', 2147483647),
(49, 'David Moore', 'M', '1972-11-26', 2147483647),
(50, 'Laura Wilson', 'M', '1993-12-27', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pacient`
--
ALTER TABLE `pacient`
  ADD PRIMARY KEY (`pacient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pacient`
--
ALTER TABLE `pacient`
  MODIFY `pacient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
