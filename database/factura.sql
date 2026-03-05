-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 09:56 AM
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
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `factura_id` int(11) NOT NULL,
  `pacient_id` int(11) NOT NULL,
  `factura_data` date NOT NULL,
  `cost` int(11) NOT NULL,
  `metoda_plata` varchar(255) NOT NULL,
  `factura_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`factura_id`, `pacient_id`, `factura_data`, `cost`, `metoda_plata`, `factura_status`) VALUES
(1, 34, '2023-08-09', 3942, 'Insurance', 'Pending'),
(2, 32, '2023-06-09', 4158, 'Insurance', 'Paid'),
(3, 48, '2023-06-28', 3732, 'Insurance', 'Paid'),
(4, 25, '2023-09-01', 4800, 'Insurance', 'Failed'),
(5, 40, '2023-07-06', 582, 'Credit Card', 'Pending'),
(6, 45, '2023-06-19', 1381, 'Insurance', 'Pending'),
(7, 1, '2023-04-09', 534, 'Cash', 'Failed'),
(8, 16, '2023-05-24', 3414, 'Cash', 'Failed'),
(9, 39, '2023-03-05', 4541, 'Credit Card', 'Paid'),
(10, 5, '2023-01-13', 1596, 'Cash', 'Paid'),
(11, 22, '2023-11-12', 4672, 'Cash', 'Failed'),
(12, 29, '2023-05-07', 771, 'Insurance', 'Pending'),
(13, 3, '2023-08-16', 4705, 'Cash', 'Paid'),
(14, 12, '2023-05-25', 2082, 'Credit Card', 'Paid'),
(15, 26, '2023-01-15', 956, 'Insurance', 'Pending'),
(16, 16, '2023-06-30', 2686, 'Insurance', 'Paid'),
(17, 37, '2023-07-11', 1655, 'Credit Card', 'Pending'),
(18, 22, '2023-11-14', 1782, 'Insurance', 'Pending'),
(19, 29, '2023-02-06', 1883, 'Insurance', 'Pending'),
(20, 14, '2023-12-05', 4114, 'Credit Card', 'Failed'),
(21, 28, '2023-04-24', 2926, 'Insurance', 'Failed'),
(22, 5, '2023-11-14', 1901, 'Credit Card', 'Failed'),
(23, 47, '2023-05-09', 3247, 'Credit Card', 'Pending'),
(24, 49, '2023-06-21', 3723, 'Cash', 'Pending'),
(25, 30, '2023-02-25', 1727, 'Cash', 'Failed'),
(26, 46, '2023-03-17', 2361, 'Insurance', 'Paid'),
(27, 5, '2023-11-14', 1048, 'Insurance', 'Pending'),
(28, 12, '2023-10-29', 1315, 'Credit Card', 'Paid'),
(29, 16, '2023-06-25', 3565, 'Insurance', 'Paid'),
(30, 26, '2023-08-29', 1316, 'Credit Card', 'Pending'),
(31, 26, '2023-04-04', 2863, 'Credit Card', 'Pending'),
(32, 48, '2023-11-06', 3691, 'Insurance', 'Paid'),
(33, 21, '2023-09-23', 981, 'Credit Card', 'Paid'),
(34, 39, '2023-06-13', 3053, 'Cash', 'Failed'),
(35, 36, '2023-04-18', 1655, 'Insurance', 'Failed'),
(36, 33, '2023-01-08', 4833, 'Cash', 'Pending'),
(37, 30, '2023-03-28', 2676, 'Insurance', 'Failed'),
(38, 37, '2023-02-23', 4127, 'Credit Card', 'Failed'),
(39, 23, '2023-04-17', 2976, 'Insurance', 'Failed'),
(40, 10, '2023-03-27', 695, 'Cash', 'Failed'),
(41, 5, '2023-01-01', 3349, 'Credit Card', 'Paid'),
(42, 36, '2023-03-21', 4781, 'Insurance', 'Pending'),
(43, 34, '2023-03-29', 3207, 'Insurance', 'Failed'),
(44, 31, '2023-09-20', 4186, 'Insurance', 'Paid'),
(45, 10, '2023-09-28', 4479, 'Cash', 'Paid'),
(46, 19, '2023-12-20', 1526, 'Cash', 'Paid'),
(47, 32, '2023-05-02', 1454, 'Insurance', 'Failed'),
(48, 1, '2023-01-16', 3249, 'Credit Card', 'Failed'),
(49, 5, '2023-04-30', 2350, 'Credit Card', 'Pending'),
(50, 45, '2023-08-16', 4279, 'Cash', 'Failed'),
(51, 4, '2023-02-04', 4550, 'Credit Card', 'Failed'),
(52, 16, '2023-07-12', 2090, 'Cash', 'Paid'),
(53, 24, '2023-02-12', 1566, 'Insurance', 'Pending'),
(54, 16, '2023-12-16', 4012, 'Cash', 'Failed'),
(55, 2, '2023-10-06', 1737, 'Cash', 'Failed'),
(56, 49, '2023-01-02', 4202, 'Insurance', 'Paid'),
(57, 28, '2023-04-15', 2407, 'Credit Card', 'Paid'),
(58, 32, '2023-05-09', 3504, 'Cash', 'Failed'),
(59, 27, '2023-03-09', 930, 'Cash', 'Pending'),
(60, 20, '2023-11-22', 3307, 'Insurance', 'Pending'),
(61, 24, '2023-01-15', 2533, 'Credit Card', 'Paid'),
(62, 12, '2023-06-14', 3140, 'Cash', 'Paid'),
(63, 50, '2023-06-29', 1256, 'Insurance', 'Failed'),
(64, 35, '2023-05-31', 3816, 'Cash', 'Paid'),
(65, 33, '2023-04-24', 4383, 'Insurance', 'Failed'),
(66, 33, '2023-05-10', 1475, 'Credit Card', 'Pending'),
(67, 43, '2023-08-10', 931, 'Credit Card', 'Pending'),
(68, 37, '2023-03-14', 606, 'Credit Card', 'Failed'),
(69, 12, '2023-03-29', 3389, 'Credit Card', 'Paid'),
(70, 3, '2023-08-26', 3232, 'Cash', 'Pending'),
(71, 1, '2023-01-26', 2960, 'Cash', 'Paid'),
(72, 33, '2023-06-12', 1544, 'Credit Card', 'Pending'),
(73, 40, '2023-12-24', 2259, 'Credit Card', 'Failed'),
(74, 10, '2023-07-23', 3175, 'Credit Card', 'Failed'),
(75, 43, '2023-05-08', 2735, 'Cash', 'Failed'),
(76, 44, '2023-11-27', 4945, 'Credit Card', 'Pending'),
(77, 29, '2023-12-14', 1114, 'Credit Card', 'Paid'),
(78, 13, '2023-09-17', 3628, 'Credit Card', 'Paid'),
(79, 12, '2023-12-26', 2319, 'Insurance', 'Paid'),
(80, 31, '2023-06-26', 2427, 'Credit Card', 'Pending'),
(81, 46, '2023-01-06', 3729, 'Insurance', 'Pending'),
(82, 2, '2023-01-20', 3616, 'Insurance', 'Pending'),
(83, 50, '2023-11-07', 4961, 'Credit Card', 'Pending'),
(84, 35, '2023-05-31', 1078, 'Insurance', 'Pending'),
(85, 23, '2023-02-18', 968, 'Credit Card', 'Paid'),
(86, 17, '2023-10-29', 3760, 'Cash', 'Pending'),
(87, 26, '2023-10-19', 3103, 'Cash', 'Pending'),
(88, 8, '2023-05-02', 1734, 'Cash', 'Paid'),
(89, 29, '2023-02-14', 857, 'Cash', 'Pending'),
(90, 26, '2023-06-01', 885, 'Insurance', 'Paid'),
(91, 10, '2023-06-11', 4524, 'Credit Card', 'Paid'),
(92, 26, '2023-01-30', 1363, 'Credit Card', 'Failed'),
(93, 34, '2023-04-09', 1955, 'Credit Card', 'Failed'),
(94, 41, '2023-04-08', 1520, 'Cash', 'Failed'),
(95, 7, '2023-05-09', 2097, 'Cash', 'Failed'),
(96, 4, '2023-07-07', 812, 'Credit Card', 'Pending'),
(97, 50, '2023-05-06', 2836, 'Cash', 'Failed'),
(98, 45, '2023-03-17', 804, 'Credit Card', 'Paid'),
(99, 11, '2023-07-04', 4102, 'Credit Card', 'Pending'),
(100, 29, '2023-03-02', 1552, 'Credit Card', 'Failed'),
(101, 36, '2023-09-21', 2930, 'Credit Card', 'Paid'),
(102, 25, '2023-10-25', 4460, 'Credit Card', 'Pending'),
(103, 21, '2023-01-24', 3429, 'Credit Card', 'Pending'),
(104, 36, '2023-04-18', 2898, 'Credit Card', 'Failed'),
(105, 10, '2023-08-14', 1960, 'Cash', 'Pending'),
(106, 37, '2023-10-29', 1999, 'Credit Card', 'Paid'),
(107, 9, '2023-04-17', 3513, 'Credit Card', 'Pending'),
(108, 24, '2023-04-21', 4974, 'Cash', 'Paid'),
(109, 35, '2023-07-29', 3478, 'Cash', 'Pending'),
(110, 49, '2023-07-19', 3010, 'Cash', 'Failed'),
(111, 35, '2023-05-22', 3788, 'Credit Card', 'Paid'),
(112, 48, '2023-01-11', 2593, 'Insurance', 'Pending'),
(113, 36, '2023-11-24', 771, 'Insurance', 'Pending'),
(114, 18, '2023-08-08', 3030, 'Cash', 'Pending'),
(115, 49, '2023-10-25', 4809, 'Insurance', 'Paid'),
(116, 39, '2023-07-07', 1289, 'Cash', 'Paid'),
(117, 32, '2023-06-20', 3605, 'Credit Card', 'Paid'),
(118, 24, '2023-08-09', 1404, 'Insurance', 'Failed'),
(119, 23, '2023-12-18', 2911, 'Credit Card', 'Failed'),
(120, 32, '2023-12-08', 935, 'Insurance', 'Paid'),
(121, 37, '2023-04-07', 2527, 'Credit Card', 'Pending'),
(122, 12, '2023-07-11', 3903, 'Insurance', 'Failed'),
(123, 49, '2023-02-28', 2064, 'Credit Card', 'Paid'),
(124, 13, '2023-03-16', 3492, 'Credit Card', 'Pending'),
(125, 23, '2023-02-18', 4080, 'Insurance', 'Failed'),
(126, 25, '2023-11-02', 4672, 'Credit Card', 'Pending'),
(127, 35, '2023-11-13', 1556, 'Credit Card', 'Pending'),
(128, 41, '2023-04-15', 2297, 'Credit Card', 'Pending'),
(129, 30, '2023-08-25', 1186, 'Insurance', 'Pending'),
(130, 17, '2023-02-23', 4966, 'Insurance', 'Failed'),
(131, 49, '2023-05-11', 4672, 'Credit Card', 'Failed'),
(132, 20, '2023-07-26', 2930, 'Credit Card', 'Failed'),
(133, 48, '2023-03-23', 4289, 'Insurance', 'Paid'),
(134, 25, '2023-10-17', 2844, 'Insurance', 'Failed'),
(135, 22, '2023-09-09', 3306, 'Credit Card', 'Pending'),
(136, 13, '2023-05-13', 901, 'Credit Card', 'Failed'),
(137, 19, '2023-10-25', 3899, 'Credit Card', 'Pending'),
(138, 49, '2023-12-26', 1075, 'Cash', 'Paid'),
(139, 36, '2023-10-10', 4217, 'Insurance', 'Pending'),
(140, 12, '2023-02-05', 4019, 'Cash', 'Pending'),
(141, 41, '2023-06-15', 3689, 'Insurance', 'Pending'),
(142, 19, '2023-11-01', 663, 'Insurance', 'Paid'),
(143, 12, '2023-09-21', 1864, 'Insurance', 'Failed'),
(144, 9, '2023-08-16', 1684, 'Insurance', 'Failed'),
(145, 7, '2023-11-11', 2121, 'Insurance', 'Paid'),
(146, 28, '2023-01-05', 894, 'Insurance', 'Pending'),
(147, 14, '2023-11-13', 4716, 'Insurance', 'Failed'),
(148, 31, '2023-12-06', 2992, 'Cash', 'Paid'),
(149, 19, '2023-07-26', 1875, 'Credit Card', 'Failed'),
(150, 47, '2023-08-16', 2286, 'Credit Card', 'Paid'),
(151, 16, '2023-01-28', 2512, 'Cash', 'Pending'),
(152, 5, '2023-04-14', 3203, 'Cash', 'Failed'),
(153, 35, '2023-07-08', 2821, 'Cash', 'Paid'),
(154, 12, '2023-03-06', 4637, 'Cash', 'Failed'),
(155, 25, '2023-01-03', 2736, 'Insurance', 'Failed'),
(156, 21, '2023-11-22', 4965, 'Credit Card', 'Failed'),
(157, 36, '2023-05-12', 4331, 'Insurance', 'Failed'),
(158, 23, '2023-07-12', 1438, 'Credit Card', 'Paid'),
(159, 16, '2023-04-08', 4688, 'Credit Card', 'Pending'),
(160, 39, '2023-12-17', 1024, 'Cash', 'Paid'),
(161, 45, '2023-06-17', 4179, 'Insurance', 'Paid'),
(162, 42, '2023-01-01', 2213, 'Cash', 'Paid'),
(163, 39, '2023-06-27', 4451, 'Insurance', 'Pending'),
(164, 14, '2023-07-28', 4406, 'Credit Card', 'Failed'),
(165, 31, '2023-04-04', 4127, 'Cash', 'Failed'),
(166, 5, '2023-01-12', 4055, 'Cash', 'Failed'),
(167, 35, '2023-11-15', 1871, 'Credit Card', 'Pending'),
(168, 23, '2023-09-29', 864, 'Credit Card', 'Failed'),
(169, 29, '2023-07-24', 2313, 'Credit Card', 'Pending'),
(170, 43, '2023-03-03', 1281, 'Cash', 'Failed'),
(171, 11, '2023-04-18', 3627, 'Insurance', 'Failed'),
(172, 18, '2023-03-09', 2057, 'Cash', 'Paid'),
(173, 47, '2023-06-04', 4890, 'Insurance', 'Pending'),
(174, 12, '2023-10-31', 3384, 'Cash', 'Paid'),
(175, 9, '2023-10-22', 4201, 'Cash', 'Paid'),
(176, 10, '2023-04-26', 1096, 'Credit Card', 'Paid'),
(177, 44, '2023-08-16', 4379, 'Insurance', 'Pending'),
(178, 17, '2023-01-17', 4652, 'Cash', 'Pending'),
(179, 38, '2023-03-08', 2692, 'Cash', 'Failed'),
(180, 7, '2023-01-07', 3228, 'Credit Card', 'Paid'),
(181, 46, '2023-09-03', 3942, 'Credit Card', 'Failed'),
(182, 13, '2023-04-12', 1287, 'Insurance', 'Paid'),
(183, 40, '2023-02-03', 2762, 'Cash', 'Pending'),
(184, 42, '2023-02-26', 2294, 'Insurance', 'Pending'),
(185, 9, '2023-03-21', 1159, 'Cash', 'Pending'),
(186, 50, '2023-03-27', 2154, 'Insurance', 'Paid'),
(187, 27, '2023-02-13', 807, 'Credit Card', 'Pending'),
(188, 2, '2023-04-12', 616, 'Cash', 'Paid'),
(189, 5, '2023-10-05', 1108, 'Insurance', 'Failed'),
(190, 29, '2023-11-16', 4834, 'Credit Card', 'Paid'),
(191, 37, '2023-04-12', 2973, 'Credit Card', 'Failed'),
(192, 38, '2023-08-31', 4846, 'Insurance', 'Paid'),
(193, 19, '2023-09-15', 2446, 'Cash', 'Failed'),
(194, 8, '2023-04-06', 1903, 'Cash', 'Pending'),
(195, 48, '2023-08-19', 2778, 'Credit Card', 'Failed'),
(196, 45, '2023-10-26', 2478, 'Cash', 'Pending'),
(197, 1, '2023-04-01', 975, 'Cash', 'Pending'),
(198, 22, '2023-05-15', 3384, 'Cash', 'Failed'),
(199, 17, '2023-05-01', 1472, 'Credit Card', 'Paid'),
(200, 7, '2023-12-30', 3288, 'Insurance', 'Paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`factura_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `factura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
