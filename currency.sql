-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 04:37 AM
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
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default_currency` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_currency` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `rate`, `status`, `default_currency`, `paypal_currency`) VALUES
(1, 'SAR', 'SAR', 'SAR', '1.00', 'Active', '1', 'Yes'),
(2, 'Pound Sterling', 'GBP', '&pound;', '0.65', 'Active', '0', 'No'),
(3, 'Europe', 'EUR', '&euro;', '0.88', 'Active', '0', 'Yes'),
(4, 'Australian Dollar', 'AUD', '&#36;', '1.41', 'Active', '0', 'Yes'),
(5, 'Singapore', 'SGD', '&#36;', '1.41', 'Active', '0', 'No'),
(6, 'Swedish Krona', 'SEK', 'kr', '8.24', 'Active', '0', 'No'),
(7, 'Danish Krone', 'DKK', 'kr', '6.58', 'Active', '0', 'Yes'),
(8, 'Mexican Peso', 'MXN', '$', '16.83', 'Active', '0', 'No'),
(9, 'Brazilian Real', 'BRL', 'R$', '3.88', 'Active', '0', 'No'),
(10, 'Malaysian Ringgit', 'MYR', 'RM', '4.31', 'Active', '0', 'No'),
(11, 'Philippine Peso', 'PHP', 'P', '46.73', 'Active', '0', 'No'),
(12, 'Swiss Franc', 'CHF', '&euro;', '0.97', 'Active', '0', 'No'),
(13, 'India', 'INR', '&#x20B9;', '66.24', 'Active', '0', 'No'),
(14, 'Argentine Peso', 'ARS', '&#36;', '9.35', 'Active', '0', 'No'),
(15, 'Canadian Dollar', 'CAD', '&#36;', '1.33', 'Active', '0', 'Yes'),
(16, 'Chinese Yuan', 'CNY', '&#165;', '6.37', 'Active', '0', 'No'),
(17, 'Czech Republic Koruna', 'CZK', 'K&#269;', '23.91', 'Active', '0', 'Yes'),
(18, 'Hong Kong Dollar', 'HKD', '&#36;', '7.75', 'Active', '0', 'Yes'),
(19, 'Hungarian Forint', 'HUF', 'Ft', '276.41', 'Active', '0', 'No'),
(20, 'Indonesian Rupiah', 'IDR', 'Rp', '14249.50', 'Active', '0', 'No'),
(21, 'Israeli New Sheqel', 'ILS', '&#8362;', '3.86', 'Active', '0', 'Yes'),
(22, 'Japanese Yen', 'JPY', '&#165;', '120.59', 'Active', '0', 'No'),
(23, 'South Korean Won', 'KRW', '&#8361;', '1182.69', 'Active', '0', 'No'),
(24, 'Norwegian Krone', 'NOK', 'kr', '8.15', 'Active', '0', 'No'),
(25, 'New Zealand Dollar', 'NZD', '&#36;', '1.58', 'Active', '0', 'No'),
(26, 'Polish Zloty', 'PLN', 'z&#322;', '3.71', 'Active', '0', 'No'),
(27, 'Russian Ruble', 'RUB', 'p', '67.75', 'Active', '0', 'No'),
(28, 'Thai Baht', 'THB', '&#3647;', '36.03', 'Active', '0', 'No'),
(29, 'Turkish Lira', 'TRY', '&#8378;', '3.05', 'Active', '0', 'No'),
(30, 'New Taiwan Dollar', 'TWD', '&#36;', '32.47', 'Active', '0', 'No'),
(31, 'Vietnamese Dong', 'VND', '&#8363;', '22471.00', 'Active', '0', 'No'),
(32, 'South African Rand', 'ZAR', 'R', '13.55', 'Active', '0', 'No'),
(33, 'US Dollar', 'USD', '&#36;', '1.00', 'Active', '0', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
