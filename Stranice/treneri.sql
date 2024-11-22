-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 01:52 PM
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
-- Database: `treneri`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `ime` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pitanje` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`ime`, `email`, `pitanje`) VALUES
('Aleksandar Mikita', 'biciklo@gmail.com', 'Koliko se placa za 1 mesec'),
('Marko', '', 'Malo para'),
('Boris Bajic', 'borisbajic@gmail.com', 'Koliko je clanarina za 2 meseca'),
('Dejan', 'Filipovic', 'Koliko sprava ima u teretani'),
('Aleksa', 'aleksandarkijo2@gmail.com', 'afadcd');

-- --------------------------------------------------------

--
-- Table structure for table `radnici`
--

CREATE TABLE `radnici` (
  `id` int(10) UNSIGNED NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `status` enum('zauzet','slobodan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `radnici`
--

INSERT INTO `radnici` (`id`, `ime`, `prezime`, `mail`, `status`) VALUES
(1, 'Zdravko', 'Čolić', 'Zdravkocolic@gmail.com', 'slobodan'),
(2, 'Nenad', 'Mirković', 'Nenadmirkovic@gmail.com', 'zauzet'),
(3, 'Dušan', 'Bajić', 'Dusanbajic@gmail.com', 'slobodan'),
(4, 'Miroslav', 'Stanković', 'Miroslavstankovic@gmail.com', 'slobodan'),
(5, 'Ognjen', 'Vig', 'Ognjenvig@gmail.com', 'zauzet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `radnici`
--
ALTER TABLE `radnici`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `radnici`
--
ALTER TABLE `radnici`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
