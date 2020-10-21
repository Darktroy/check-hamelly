-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2020 at 09:58 PM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsamat_ryde`
--

-- --------------------------------------------------------

--
-- Table structure for table `manage_fare`
--

CREATE TABLE `manage_fare` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT 0,
  `base_fare` decimal(5,2) NOT NULL,
  `capacity` int(11) NOT NULL,
  `min_fare` decimal(5,2) NOT NULL,
  `per_min` decimal(5,2) NOT NULL,
  `per_km` decimal(5,2) NOT NULL,
  `schedule_fare` decimal(5,2) NOT NULL,
  `schedule_cancel_fare` decimal(5,2) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_peak` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_night` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrance_30_100` decimal(10,2) NOT NULL,
  `distrance_100_400` decimal(10,2) NOT NULL,
  `distrance_400_600` decimal(10,2) NOT NULL,
  `distrance_600_800` decimal(10,2) NOT NULL,
  `distrance_800` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_fare`
--

INSERT INTO `manage_fare` (`id`, `location_id`, `vehicle_id`, `base_fare`, `capacity`, `min_fare`, `per_min`, `per_km`, `schedule_fare`, `schedule_cancel_fare`, `currency_code`, `apply_peak`, `apply_night`, `distrance_30_100`, `distrance_100_400`, `distrance_400_600`, `distrance_600_800`, `distrance_800`) VALUES
(1, 1, 1, 10.00, 2, 10.00, 2.00, 2.00, 10.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(2, 1, 3, 20.00, 4, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(3, 1, 2, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(12, 1, 6, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'Yes', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(11, 1, 5, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(10, 1, 4, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(13, 2, 3, 55.00, 3, 1.00, 1.00, 1.00, 12.00, 0.00, 'USD', 'No', 'No', 1.70, 400.00, 600.00, 800.00, 777.00),
(14, 3, 1, 100.00, 1, 1.00, 1.00, 1.00, 1.00, 0.00, 'USD', 'No', 'No', 1.70, 1.27, 0.99, 0.85, 0.75),
(15, 3, 3, 400.00, 4, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(16, 3, 2, 200.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(17, 3, 6, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'Yes', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(18, 3, 5, 500.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00),
(19, 3, 4, 20.00, 11, 20.00, 3.00, 4.00, 2.00, 0.00, 'USD', 'No', 'No', 1.70, 0.00, 0.00, 0.00, 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_fare_currency_code_foreign` (`currency_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manage_fare`
--
ALTER TABLE `manage_fare`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
