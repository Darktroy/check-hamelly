-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2020 at 11:04 AM
-- Server version: 10.3.15-MariaDB
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
-- Database: `ryde2`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `device_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_commission` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `profile`, `email`, `country_code`, `mobile_number`, `vat_number`, `password`, `remember_token`, `status`, `device_type`, `device_id`, `language`, `address`, `city`, `state`, `country`, `postal_code`, `company_commission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '', 'admin@trioangle.com', '91', '9876543210', NULL, '$2y$10$u96FFzgbvUywMbr26v18PeK3tnhJrN7wpwNaLOSLhhzZh6ScmVEIq', NULL, 'Active', NULL, '', '', NULL, NULL, NULL, '', NULL, '0', NULL, NULL, NULL),
(2, 'shenouda shehata', '', 'sheno7@yahoo.com', '1', '01228332078', NULL, '$2y$10$U0UEeP79y0ZH8CrCIkQVpeoqCCJCdJIP0UAweNHb.ydGjL0FfWIim', NULL, 'Pending', NULL, '', '', NULL, NULL, NULL, '', NULL, '0', '2019-10-09 10:37:35', '2019-10-09 10:37:35', NULL),
(1200, 'Iessa darktroy', 'http://bsamat.com/demo/ryde/public/images/companies/3/profile1574250835.jpg', 'eng.iessa.mostafa@gmail.com', '20', '01002433739', NULL, '$2y$10$.BYaNVp3zAXsAOMEMP.FdeetzULxjkWECxHkGgZs0bP8Kx.cZfP6e', NULL, 'Active', NULL, '', '', '128 khlouse', 'cairo', 'None (International)', '20', '12013', '0', '2019-11-20 19:51:58', '2019-11-20 19:53:55', NULL),
(4, 'Company test', 'http://157.245.237.176/hamelly/public/images/companies/4/profile1575196528.jpg', 'iessa@test.com', '93', '0123456789', '123456', '$2y$10$fb15zxQhKqwc7nhI.f7FbucewXTt/050bPU9C0sR7d9oGKlq9ZgUu', NULL, 'Active', NULL, '', '', '128 khlouse', 'cairo', 'None (International)', '93', '12013', '10', '2019-12-01 12:35:28', '2019-12-01 12:35:28', NULL),
(0, 'FreeLancer', '', '', '', '', NULL, '', NULL, 'Active', NULL, '', '', NULL, NULL, 'active', '', NULL, '0', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
