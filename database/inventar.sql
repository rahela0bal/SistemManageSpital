-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 09:50 AM
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
-- Table structure for table `inventar`
--

CREATE TABLE `inventar` (
  `nume` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `cantitate` int(11) NOT NULL,
  `prag_minim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventar`
--

INSERT INTO `inventar` (`nume`, `categorie`, `cantitate`, `prag_minim`) VALUES
('Paracetamol', 'medicamente', 150, 20),
('Ibuprofen', 'medicamente', 120, 15),
('Amoxicilina', 'medicamente', 80, 10),
('Metformin', 'medicamente', 95, 10),
('Aspirina', 'medicamente', 200, 25),
('Omeprazol', 'medicamente', 110, 15),
('Enalapril', 'medicamente', 75, 10),
('Metoprolol', 'medicamente', 60, 8),
('Amlodipina', 'medicamente', 85, 10),
('Furosemid', 'medicamente', 70, 8),
('Diazepam', 'medicamente', 45, 5),
('Tramadol', 'medicamente', 55, 8),
('Ciprofloxacin', 'medicamente', 90, 10),
('Doxiciclina', 'medicamente', 65, 8),
('Prednison', 'medicamente', 50, 5),
('Insulina', 'medicamente', 40, 5),
('Heparina', 'medicamente', 35, 5),
('Morfina', 'medicamente', 25, 3),
('Ketamina', 'medicamente', 20, 3),
('Midazolam', 'medicamente', 30, 5),
('Adrenalina', 'medicamente', 45, 5),
('Atropina', 'medicamente', 40, 5),
('Lidocaina', 'medicamente', 55, 8),
('Vitamina C', 'medicamente', 180, 20),
('Vitamina D', 'medicamente', 160, 20),
('Zinc', 'medicamente', 140, 15),
('Magneziu', 'medicamente', 130, 15),
('Acid Folic', 'medicamente', 120, 15),
('Calciu', 'medicamente', 110, 15),
('Fier', 'medicamente', 100, 12),
('Stetoscop', 'echipamente', 25, 5),
('Tensiometru', 'echipamente', 20, 4),
('Termometru', 'echipamente', 50, 10),
('Pulsoximetru', 'echipamente', 18, 3),
('Electrocardiograf', 'echipamente', 8, 2),
('Defibrilator', 'echipamente', 6, 1),
('Ventilator', 'echipamente', 10, 2),
('Pompa de perfuzie', 'echipamente', 30, 5),
('Monitor pacient', 'echipamente', 15, 3),
('Ecograf', 'echipamente', 5, 1),
('Laringoscop', 'echipamente', 12, 2),
('Otoscop', 'echipamente', 15, 3),
('Oftalmoscop', 'echipamente', 10, 2),
('Glucometru', 'echipamente', 25, 5),
('Negatoscop', 'echipamente', 8, 2),
('Pat spital', 'echipamente', 60, 10),
('Scaun cu rotile', 'echipamente', 20, 4),
('Targa', 'echipamente', 15, 3),
('Stativ perfuzie', 'echipamente', 40, 8),
('Bisturiu', 'echipamente', 100, 15),
('Foarfece chirurgical', 'echipamente', 80, 10),
('Pensa chirurgicala', 'echipamente', 90, 10),
('Ac de sutura', 'echipamente', 200, 30),
('Seringa 5ml', 'echipamente', 500, 50),
('Seringa 10ml', 'echipamente', 400, 50),
('Manusi chirurgicale', 'echipamente', 600, 80),
('Masca chirurgicala', 'echipamente', 800, 100),
('Halat medical', 'echipamente', 150, 20),
('Bandaj', 'echipamente', 300, 40),
('Leucoplast', 'echipamente', 250, 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
