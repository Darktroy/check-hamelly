-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 04:59 AM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `country_code`, `mobile_number`, `remember_token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$8/p1JZYgsap23nVPdvuLn.DrhrgkKJ5OmO65Tth46TS6ghBsx4Bvy', '', '', NULL, 'Active', '2016-04-16 22:00:00', '2019-09-09 11:16:00', NULL),
(2, 'dispatcher', 'dispatcher@trioangle.com', '$2y$10$jaagCZwtLVs0W3brfFkmEezVOTYdnOCEXZrexTiVVziXTxXzbxrt.', '', '', NULL, 'Active', '2016-04-16 22:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_credentials`
--

CREATE TABLE `api_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_credentials`
--

INSERT INTO `api_credentials` (`id`, `name`, `value`, `site`) VALUES
(1, 'key', 'AIzaSyB6lCQnISdsSUVFdcQYxaHxXXjvKDn9wcs', 'GoogleMap'),
(2, 'server_key', 'AIzaSyB6lCQnISdsSUVFdcQYxaHxXXjvKDn9wcs', 'GoogleMap'),
(3, 'key', 'a03c1c99', 'Nexmo'),
(4, 'secret', 'cc82f5862ae6e916', 'Nexmo'),
(5, 'from', 'Gofer', 'Nexmo'),
(6, 'server_key', 'AAAA-kRPDUI:APA91bF1e_auIfI4UY4fTjIwhYKYq2BQxJYVfe3RwJciWuRpqZYo4JwS12NvqOKHp1FPw2ARrmO5GSQI7VMgn_R6AV6O6T5LpNXS6q3h4xWcxQqXZI2H8pMqGFoGvxtBPVVj8yRULP68', 'FCM'),
(7, 'sender_id', 'fywWxKhU7QY:APA91bHTBfR54IcodfT4b02Eh5xPWTQsCl1voH2qpgdlz_OYn-lej7tJGRRciMcYhI120qKVw2O2v3qySSEozrP_xc2ZcGunx468d8xqO7kw3cjC8Es2tQY8t7g6TSWkWx26Cl1aWoZQ', 'FCM'),
(8, 'client_id', '1105678852897547', 'Facebook'),
(9, 'client_secret', '64c4d6d3dc2ba3471297c17585a60aff', 'Facebook'),
(10, 'account_kit_id', '247798396156171', 'Facebook'),
(11, 'account_kit_secret', 'dbf19abccb6e2ceb6631e41180370068', 'Facebook'),
(12, 'client_id', '200332964350-lkr7e12upf315qpg404a402s31f4qncn.apps.googleusercontent.com', 'Google'),
(13, 'client_secret', 'SPe8bYCFXpv8oDyygaWrofJw', 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `user_id`, `holder_name`, `account_number`, `bank_name`, `bank_location`, `code`, `created_at`, `updated_at`) VALUES
(1, 10023, '1sdv', '1225', 'swef', 'werf', '5524', '2019-11-04 08:23:14', '2019-11-04 08:23:14'),
(2, 10044, 'testAccountHolder', '234324432222222', 'test', 'tesyt', '12013', '2019-12-29 08:51:40', '2019-12-29 08:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled_by` enum('Rider','Driver') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel`
--

INSERT INTO `cancel` (`id`, `trip_id`, `user_id`, `cancel_reason`, `cancel_comments`, `cancelled_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10001, 'Wrong address shown', '', 'Driver', '2019-09-09 12:49:49', '2019-09-09 12:49:49', NULL),
(2, 2, 10002, 'My driver cancelled', '', 'Rider', '2019-09-09 12:50:14', '2019-09-09 12:50:14', NULL),
(3, 20, 10009, 'The ETA was too long', 'driver is very far', 'Rider', '2019-10-14 13:43:30', '2019-10-14 13:43:30', NULL),
(4, 34, 10018, 'Wrong address shown', 'jfhf', 'Driver', '2019-10-17 08:16:31', '2019-10-17 08:16:31', NULL),
(5, 35, 10009, 'My driver cancelled', '', 'Rider', '2019-10-17 08:41:58', '2019-10-17 08:41:58', NULL),
(6, 37, 10009, 'My driver cancelled', '', 'Rider', '2019-10-17 11:15:27', '2019-10-17 11:15:27', NULL),
(7, 39, 10023, 'ارتفاع درجة الحراره', '', 'Driver', '2019-11-04 05:30:09', '2019-11-04 05:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id`, `car_name`, `description`, `vehicle_image`, `active_image`, `status`) VALUES
(1, 'MahGO', 'MahGo', 'gofergo.png', 'gofergo.png', 'Active'),
(2, 'MahrX', 'GoferX', 'goferx.png', 'goferx.png', 'Active'),
(3, 'MahrXL', 'GoferXL', 'goferxl.png', 'goferxl.png', 'Active'),
(4, 'ters', 'GoferXL', 'vehicle_image1577265461.jpg', 'active_image1577265461.jpg', 'Active'),
(5, 't5', 'GoferXL', 'vehicle_image1577265461.jpg', 'active_image1577265461.jpg', 'Active'),
(6, 't6', 'GoferXL', 'vehicle_image1577265461.jpg', 'active_image1577265461.jpg', 'Active');

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

-- --------------------------------------------------------

--
-- Table structure for table `company_documents`
--

CREATE TABLE `company_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `license_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_exp_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance_exp_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_documents`
--

INSERT INTO `company_documents` (`id`, `company_id`, `license_photo`, `license_exp_date`, `insurance_photo`, `insurance_exp_date`) VALUES
(1, 3, '', NULL, '', NULL),
(2, 4, 'http://157.245.237.176/hamelly/public/images/companies/4/license1575196528.jpg', '03/11/2020', 'http://157.245.237.176/hamelly/public/images/companies/4/insurance1575196528.jpg', '03/14/2020');

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_credentials`
--

CREATE TABLE `company_payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('paypal','stripe') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_payout_preference`
--

CREATE TABLE `company_payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_type` enum('Individual','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_kanji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn_last_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_country` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `short_name`, `long_name`, `iso3`, `num_code`, `phone_code`, `stripe_country`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93', 'No'),
(2, 'AL', 'Albania', 'ALB', '8', '355', 'No'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213', 'No'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1684', 'No'),
(5, 'AD', 'Andorra', 'AND', '20', '376', 'No'),
(6, 'AO', 'Angola', 'AGO', '24', '244', 'No'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1264', 'No'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0', 'No'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268', 'No'),
(10, 'AR', 'Argentina', 'ARG', '32', '54', 'No'),
(11, 'AM', 'Armenia', 'ARM', '51', '374', 'No'),
(12, 'AW', 'Aruba', 'ABW', '533', '297', 'No'),
(13, 'AU', 'Australia', 'AUS', '36', '61', 'Yes'),
(14, 'AT', 'Austria', 'AUT', '40', '43', 'Yes'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994', 'No'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1242', 'No'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973', 'No'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880', 'No'),
(19, 'BB', 'Barbados', 'BRB', '52', '1246', 'No'),
(20, 'BY', 'Belarus', 'BLR', '112', '375', 'No'),
(21, 'BE', 'Belgium', 'BEL', '56', '32', 'Yes'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501', 'No'),
(23, 'BJ', 'Benin', 'BEN', '204', '229', 'No'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1441', 'No'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975', 'No'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591', 'No'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387', 'No'),
(28, 'BW', 'Botswana', 'BWA', '72', '267', 'No'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0', 'No'),
(30, 'BR', 'Brazil', 'BRA', '76', '55', 'No'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246', 'No'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673', 'No'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359', 'No'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226', 'No'),
(35, 'BI', 'Burundi', 'BDI', '108', '257', 'No'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855', 'No'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237', 'No'),
(38, 'CA', 'Canada', 'CAN', '124', '1', 'Yes'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238', 'No'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1345', 'No'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236', 'No'),
(42, 'TD', 'Chad', 'TCD', '148', '235', 'No'),
(43, 'CL', 'Chile', 'CHL', '152', '56', 'No'),
(44, 'CN', 'China', 'CHN', '156', '86', 'No'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61', 'No'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672', 'No'),
(47, 'CO', 'Colombia', 'COL', '170', '57', 'No'),
(48, 'KM', 'Comoros', 'COM', '174', '269', 'No'),
(49, 'CG', 'Congo', 'COG', '178', '242', 'No'),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242', 'No'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682', 'No'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506', 'No'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225', 'No'),
(54, 'HR', 'Croatia', 'HRV', '191', '385', 'No'),
(55, 'CU', 'Cuba', 'CUB', '192', '53', 'No'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357', 'No'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420', 'No'),
(58, 'DK', 'Denmark', 'DNK', '208', '45', 'Yes'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253', 'No'),
(60, 'DM', 'Dominica', 'DMA', '212', '1767', 'No'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1809', 'No'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593', 'No'),
(63, 'EG', 'Egypt', 'EGY', '818', '20', 'No'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503', 'No'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240', 'No'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291', 'No'),
(67, 'EE', 'Estonia', 'EST', '233', '372', 'No'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251', 'No'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 'No'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298', 'No'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679', 'No'),
(72, 'FI', 'Finland', 'FIN', '246', '358', 'Yes'),
(73, 'FR', 'France', 'FRA', '250', '33', 'Yes'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594', 'No'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689', 'No'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0', 'No'),
(77, 'GA', 'Gabon', 'GAB', '266', '241', 'No'),
(78, 'GM', 'Gambia', 'GMB', '270', '220', 'No'),
(79, 'GE', 'Georgia', 'GEO', '268', '995', 'No'),
(80, 'DE', 'Germany', 'DEU', '276', '49', 'Yes'),
(81, 'GH', 'Ghana', 'GHA', '288', '233', 'No'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350', 'No'),
(83, 'GR', 'Greece', 'GRC', '300', '30', 'No'),
(84, 'GL', 'Greenland', 'GRL', '304', '299', 'No'),
(85, 'GD', 'Grenada', 'GRD', '308', '1473', 'No'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590', 'No'),
(87, 'GU', 'Guam', 'GUM', '316', '1671', 'No'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502', 'No'),
(89, 'GN', 'Guinea', 'GIN', '324', '224', 'No'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245', 'No'),
(91, 'GY', 'Guyana', 'GUY', '328', '592', 'No'),
(92, 'HT', 'Haiti', 'HTI', '332', '509', 'No'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 'No'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39', 'No'),
(95, 'HN', 'Honduras', 'HND', '340', '504', 'No'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852', 'Yes'),
(97, 'HU', 'Hungary', 'HUN', '348', '36', 'No'),
(98, 'IS', 'Iceland', 'ISL', '352', '354', 'No'),
(99, 'IN', 'India', 'IND', '356', '91', 'No'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62', 'No'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98', 'No'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964', 'No'),
(103, 'IE', 'Ireland', 'IRL', '372', '353', 'Yes'),
(105, 'IT', 'Italy', 'ITA', '380', '39', 'Yes'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1876', 'No'),
(107, 'JP', 'Japan', 'JPN', '392', '81', 'Yes'),
(108, 'JO', 'Jordan', 'JOR', '400', '962', 'No'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7', 'No'),
(110, 'KE', 'Kenya', 'KEN', '404', '254', 'No'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686', 'No'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 'No'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82', 'No'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965', 'No'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996', 'No'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 'No'),
(117, 'LV', 'Latvia', 'LVA', '428', '371', 'No'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961', 'No'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266', 'No'),
(120, 'LR', 'Liberia', 'LBR', '430', '231', 'No'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 'No'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423', 'No'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370', 'No'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352', 'Yes'),
(125, 'MO', 'Macao', 'MAC', '446', '853', 'No'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 'No'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261', 'No'),
(128, 'MW', 'Malawi', 'MWI', '454', '265', 'No'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60', 'No'),
(130, 'MV', 'Maldives', 'MDV', '462', '960', 'No'),
(131, 'ML', 'Mali', 'MLI', '466', '223', 'No'),
(132, 'MT', 'Malta', 'MLT', '470', '356', 'No'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692', 'No'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596', 'No'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222', 'No'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230', 'No'),
(137, 'YT', 'Mayotte', NULL, NULL, '269', 'No'),
(138, 'MX', 'Mexico', 'MEX', '484', '52', 'No'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691', 'No'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373', 'No'),
(141, 'MC', 'Monaco', 'MCO', '492', '377', 'No'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976', 'No'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1664', 'No'),
(144, 'MA', 'Morocco', 'MAR', '504', '212', 'No'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258', 'No'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95', 'No'),
(147, 'NA', 'Namibia', 'NAM', '516', '264', 'No'),
(148, 'NR', 'Nauru', 'NRU', '520', '674', 'No'),
(149, 'NP', 'Nepal', 'NPL', '524', '977', 'No'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31', 'Yes'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599', 'No'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687', 'No'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64', 'Yes'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505', 'No'),
(155, 'NE', 'Niger', 'NER', '562', '227', 'No'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234', 'No'),
(157, 'NU', 'Niue', 'NIU', '570', '683', 'No'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672', 'No'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670', 'No'),
(160, 'NO', 'Norway', 'NOR', '578', '47', 'Yes'),
(161, 'OM', 'Oman', 'OMN', '512', '968', 'No'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92', 'No'),
(163, 'PW', 'Palau', 'PLW', '585', '680', 'No'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970', 'No'),
(165, 'PA', 'Panama', 'PAN', '591', '507', 'No'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675', 'No'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595', 'No'),
(168, 'PE', 'Peru', 'PER', '604', '51', 'No'),
(169, 'PH', 'Philippines', 'PHL', '608', '63', 'No'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0', 'No'),
(171, 'PL', 'Poland', 'POL', '616', '48', 'No'),
(172, 'PT', 'Portugal', 'PRT', '620', '351', 'Yes'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1787', 'No'),
(174, 'QA', 'Qatar', 'QAT', '634', '974', 'No'),
(175, 'RE', 'Reunion', 'REU', '638', '262', 'No'),
(176, 'RO', 'Romania', 'ROM', '642', '40', 'No'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70', 'No'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250', 'No'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290', 'No'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869', 'No'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1758', 'No'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508', 'No'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784', 'No'),
(184, 'WS', 'Samoa', 'WSM', '882', '684', 'No'),
(185, 'SM', 'San Marino', 'SMR', '674', '378', 'No'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239', 'No'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966', 'No'),
(188, 'SN', 'Senegal', 'SEN', '686', '221', 'No'),
(189, 'RS', 'Serbia and Montenegro', NULL, NULL, '381', 'No'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248', 'No'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232', 'No'),
(192, 'SG', 'Singapore', 'SGP', '702', '65', 'Yes'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421', 'No'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386', 'No'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677', 'No'),
(196, 'SO', 'Somalia', 'SOM', '706', '252', 'No'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27', 'No'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 'No'),
(199, 'ES', 'Spain', 'ESP', '724', '34', 'Yes'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94', 'No'),
(201, 'SD', 'Sudan', 'SDN', '736', '249', 'No'),
(202, 'SS', 'South Sudan', 'SSD', '728', '211', 'No'),
(203, 'SR', 'Suriname', 'SUR', '740', '597', 'No'),
(204, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47', 'No'),
(205, 'SZ', 'Swaziland', 'SWZ', '748', '268', 'No'),
(206, 'SE', 'Sweden', 'SWE', '752', '46', 'Yes'),
(207, 'CH', 'Switzerland', 'CHE', '756', '41', 'Yes'),
(208, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963', 'No'),
(209, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886', 'No'),
(210, 'TJ', 'Tajikistan', 'TJK', '762', '992', 'No'),
(211, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255', 'No'),
(212, 'TH', 'Thailand', 'THA', '764', '66', 'No'),
(213, 'TL', 'Timor-Leste', NULL, NULL, '670', 'No'),
(214, 'TG', 'Togo', 'TGO', '768', '228', 'No'),
(215, 'TK', 'Tokelau', 'TKL', '772', '690', 'No'),
(216, 'TO', 'Tonga', 'TON', '776', '676', 'No'),
(217, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868', 'No'),
(218, 'TN', 'Tunisia', 'TUN', '788', '216', 'No'),
(219, 'TR', 'Turkey', 'TUR', '792', '90', 'No'),
(220, 'TM', 'Turkmenistan', 'TKM', '795', '7370', 'No'),
(221, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649', 'No'),
(222, 'TV', 'Tuvalu', 'TUV', '798', '688', 'No'),
(223, 'UG', 'Uganda', 'UGA', '800', '256', 'No'),
(224, 'UA', 'Ukraine', 'UKR', '804', '380', 'No'),
(225, 'AE', 'United Arab Emirates', 'ARE', '784', '971', 'No'),
(226, 'GB', 'United Kingdom', 'GBR', '826', '44', 'Yes'),
(227, 'US', 'United States', 'USA', '840', '1', 'Yes'),
(228, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1', 'No'),
(229, 'UY', 'Uruguay', 'URY', '858', '598', 'No'),
(230, 'UZ', 'Uzbekistan', 'UZB', '860', '998', 'No'),
(231, 'VU', 'Vanuatu', 'VUT', '548', '678', 'No'),
(232, 'VE', 'Venezuela', 'VEN', '862', '58', 'No'),
(233, 'VN', 'Viet Nam', 'VNM', '704', '84', 'No'),
(234, 'VG', 'Virgin Islands, British', 'VGB', '92', '1284', 'No'),
(235, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340', 'No'),
(236, 'WF', 'Wallis and Futuna', 'WLF', '876', '681', 'No'),
(237, 'EH', 'Western Sahara', 'ESH', '732', '212', 'No'),
(238, 'YE', 'Yemen', 'YEM', '887', '967', 'No'),
(239, 'ZM', 'Zambia', 'ZMB', '894', '260', 'No'),
(240, 'ZW', 'Zimbabwe', 'ZWE', '716', '263', 'No');

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

-- --------------------------------------------------------

--
-- Table structure for table `driver_address`
--

CREATE TABLE `driver_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_line1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_address`
--

INSERT INTO `driver_address` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`) VALUES
(1, 10001, 'bdbdn', 'hdhdydhd', 'mdy', 'hdyd', 'hdhd'),
(2, 10003, '', '', 'Agadir', 'Souss-Massa', '80000'),
(3, 10005, '', '', '', '', ''),
(4, 10007, '', '', 'Giza', '', ''),
(5, 10014, '', '', 'Alexandria', '', ''),
(6, 10015, '', '', 'Egypt', '', ''),
(7, 10017, '', '', 'cairo', '', ''),
(8, 10018, '', '', 'giza', '', ''),
(9, 10025, '', '', 'asd', '', ''),
(10, 10028, '', '', '56', '', ''),
(11, 10029, '', '', 'jdjf', '', ''),
(12, 10030, '', '', 'ppp', '', ''),
(13, 10031, '', '', '....', '', ''),
(14, 10032, '', '', '....', '', ''),
(15, 10033, '', '', '....', '', ''),
(16, 10034, '', '', 'cairo', '', ''),
(17, 10038, '', '', 'sssss', '', ''),
(18, 10041, '', '', 'tanta', '', ''),
(19, 10042, '', '', 'tanta', '', ''),
(20, 10044, 'test', 'yesy', 'cairo', 'cairo', '12013'),
(21, 10047, '', '', 'tanta', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_documents`
--

CREATE TABLE `driver_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `license_front` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_back` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_documents`
--

INSERT INTO `driver_documents` (`id`, `user_id`, `license_front`, `license_back`, `document_count`) VALUES
(1, 10001, 'https://rydetogo.com/images/users/10001/1930fd33.jpg', 'https://rydetogo.com/images/users/10001/a749a7cb.png', 0),
(2, 10003, '', '', 0),
(3, 10005, '', '', 0),
(4, 10007, 'https://rydetogo.com/images/users/10007/2096c3d5.png', 'https://rydetogo.com/images/users/10007/c0cc7b66.jpg', 2),
(5, 10014, 'https://rydetogo.com/images/users/10014/1107b49b.jpg', 'https://rydetogo.com/images/users/10014/cf2df5b2.jpg', 2),
(6, 10015, 'https://rydetogo.com/images/users/10015/de1ec287.jpg', 'https://rydetogo.com/images/users/10015/ca70cb99.jpg', 2),
(7, 10017, 'https://rydetogo.com/images/users/10017/06ad32e1.jpg', 'https://rydetogo.com/images/users/10017/18e494f1.jpg', 2),
(8, 10018, 'https://rydetogo.com/images/users/10018/41ac150d.jpg', 'https://rydetogo.com/images/users/10018/67d119ee.jpg', 2),
(9, 10023, '', 'http://api-ksa.com/demo/ryde/public/images/users/10023/47d2a24e.jpg', 1),
(10, 10025, 'http://192.168.1.142:8000/images/users/10025/24bd179e.jpg', 'http://192.168.1.142:8000/images/users/10025/69353ee0.jpg', 2),
(11, 10029, '', '', 0),
(12, 10028, 'http://api-ksa.com/demo/ryde/public/images/users/10028/79b78beb.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10028/bb7adf7e.jpg', 2),
(13, 10034, 'http://api-ksa.com/demo/ryde/public/images/users/10034/6c7638a1.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10034/badea8f3.jpg', 2),
(14, 10038, 'http://api-ksa.com/demo/ryde/public/images/users/10038/67038cd1.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10038/eaacbf4e.jpg', 2),
(15, 10040, '', '', 0),
(16, 10044, 'http://192.168.1.152:8000/images/users/10044/license_front1577609500.jpg', 'http://192.168.1.152:8000/images/users/10044/license_back1577609500.jpg', 0),
(17, 10047, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver_location`
--

CREATE TABLE `driver_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `status` enum('Online','Offline','Trip') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Offline'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_location`
--

INSERT INTO `driver_location` (`id`, `user_id`, `latitude`, `longitude`, `car_id`, `status`) VALUES
(15, 10025, '29.96032', '31.254145', 1, 'Online'),
(24, 10043, '', '', 1, 'Offline'),
(25, 10047, '30.047242', '31.239397', 1, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `driver_payment`
--

CREATE TABLE `driver_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `last_trip_id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` decimal(7,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `name`, `value`) VALUES
(1, 'driver', 'smtp'),
(2, 'host', 'smtp.gmail.com'),
(3, 'port', '25'),
(4, 'from_address', 'trioangle1@gmail.com'),
(5, 'from_name', 'Gofer'),
(6, 'encryption', 'tls'),
(7, 'username', 'trioangle1@gmail.com'),
(8, 'password', 'hismljhblilxdusd'),
(9, 'domain', 'sandboxcc51fc42882e46ccbffd90316d4731e7.mailgun.org'),
(10, 'secret', 'key-3160b23116332e595b861f60d77fa720');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_sos`
--

CREATE TABLE `emergency_sos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_sos`
--

INSERT INTO `emergency_sos` (`id`, `user_id`, `name`, `country_code`, `mobile_number`) VALUES
(1, 10023, '830-006-1601', '91', '8300061601'),
(5, 10023, 'test2', '91', '8300061601'),
(6, 10023, 'اختبار 1', '91', '8300061601'),
(7, 10023, 'ter', '02', '01002587');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `value`) VALUES
(1, 'access_fee', '10'),
(2, 'driver_peak_fare', '70'),
(3, 'driver_access_fee', '10');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` mediumblob DEFAULT NULL,
  `suggested` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE `help_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_category_lang`
--

CREATE TABLE `help_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_subcategory`
--

CREATE TABLE `help_subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_sub_category_lang`
--

CREATE TABLE `help_sub_category_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_translations`
--

CREATE TABLE `help_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `help_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `join_us`
--

INSERT INTO `join_us` (`id`, `name`, `value`) VALUES
(1, 'facebook', 'https://www.facebook.com/Trioangle.Technologies/'),
(2, 'google_plus', ''),
(3, 'twitter', 'https://twitter.com/TrioangleTech'),
(4, 'linkedin', 'https://www.linkedin.com/company/13184720'),
(5, 'pinterest', 'https://in.pinterest.com/TrioangleTech/'),
(6, 'youtube', 'https://www.youtube.com/channel/UC2EWcEd5dpvGmBh-H4TQ0wg'),
(7, 'instagram', 'https://www.instagram.com/trioangletech'),
(8, 'app_store_rider', 'https://itunes.apple.com/in/app/gofer-on-demand-service/id1253818335?mt=8'),
(9, 'app_store_driver', 'https://itunes.apple.com/in/app/gofer-driver-on-demand-service/id1253819680?mt=8'),
(10, 'play_store_rider', 'https://play.google.com/store/apps/details?id=com.trioangle.gofer&hl=en'),
(11, 'play_store_driver', 'https://play.google.com/store/apps/details?id=com.trioangle.goferdriver&hl=en');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default_language` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `value`, `is_translatable`, `status`, `default_language`) VALUES
(1, 'English', 'en', '1', 'Active', '1'),
(2, 'Persian', 'fa', '1', 'Active', ''),
(3, 'Arabic', 'ar', '1', 'Active', ''),
(4, 'Spanish', 'es', '1', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `coordinates`, `status`) VALUES
(1, 'madura', 'POLYGON((30.609122 25.962960, 31.609302 32.492165, 29.155756 33.061780, 22.951613 35.236515, 22.057718 27.676301,30.609122 25.962960 ))', 'Active'),
(3, 'Saudi Ariabia', 'POLYGON((30.057347 38.830486, 30.067186 48.732195, 25.936304 50.643816, 25.995568 56.071062, 20.136400 55.148210, 19.226095 50.490007, 17.138684 47.062273, 17.474329 42.052507, 21.123441 40.206804, 23.964161 38.097429, 27.291730 36.339616, 29.303639 36.163835, 30.057347 38.830486 ))', 'Active');

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
(1, 1, 1, '10.00', 2, '10.00', '2.00', '2.00', '10.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(2, 1, 3, '20.00', 4, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(3, 1, 2, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(12, 1, 6, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'Yes', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(11, 1, 5, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(10, 1, 4, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(13, 2, 3, '55.00', 3, '1.00', '1.00', '1.00', '12.00', '0.00', 'USD', 'No', 'No', '1.70', '400.00', '600.00', '800.00', '777.00'),
(14, 3, 1, '100.00', 1, '1.00', '1.00', '1.00', '1.00', '0.00', 'USD', 'No', 'No', '1.70', '1.27', '0.99', '0.85', '0.75'),
(15, 3, 3, '400.00', 4, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(16, 3, 2, '200.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(17, 3, 6, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'Yes', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(18, 3, 5, '500.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00'),
(19, 3, 4, '20.00', 11, '20.00', '3.00', '4.00', '2.00', '0.00', 'USD', 'No', 'No', '1.70', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, '/', 'Home Page', 'Home Page', ''),
(2, 'signin', 'Sign In', 'Sign In', ''),
(3, 'signin_driver', 'Sign In Driver', 'Sign In Driver', ''),
(4, 'signin_rider', 'Sign In Rider', 'Sign In Rider', ''),
(5, 'signup', 'Sing Up', 'Sing Up', ''),
(6, 'signup_driver', 'Sign Up Driver', 'Sign Up Driver', ''),
(7, 'signup_rider', 'Sign Up Rider', 'Sign Up Rider', ''),
(8, 'ride', 'Rider Home Page', 'Rider Home Page', ''),
(9, 'drive', 'Driver Home Page', 'Driver Home Page', ''),
(10, 'safety', 'Trip safety', 'Trip safety', ''),
(11, 'how_it_works', 'How its works', 'How its works', ''),
(12, 'requirements', 'Driver requirements', 'Driver requirements', ''),
(13, 'driver_app', 'Driver App', 'Driver App', ''),
(14, 'drive_safety', 'Driver Safety', 'Driver Safety', ''),
(15, 'driver_profile', 'Driver Profile', 'Driver Profile', ''),
(16, 'documents/{id}', 'Driver Documents', 'Driver Documents', ''),
(17, 'driver_payment', 'Driver Payment', 'Driver Payment', ''),
(18, 'driver_invoice', 'Driver Invoice', 'Driver Invoice', ''),
(19, 'driver_trip', 'Driver Trips', 'Driver Trips', ''),
(20, 'driver_trip_detail/{id}', 'Driver Trips Details', 'Driver Trips Details', ''),
(21, 'download_invoice/{id}', 'Invoice', 'Invoice', ''),
(22, 'trip', 'Trips', 'Trips', ''),
(23, 'profile', 'Profile', 'Profile', ''),
(24, 'forgot_password_driver', 'Forgot Password', 'Forgot Password', ''),
(25, 'reset_password', 'Reset Password', 'Reset Password', ''),
(26, 'forgot_password_rider', 'Forgot Password', 'Forgot Password', ''),
(27, 'forgot_password_link/{id}', 'Forgot Password Link', 'Forgot Password Link', ''),
(28, 'payout_preferences/{id}', 'Payout Preferences', 'Payout Preferences', ''),
(29, 'help', 'Help Center', 'Help Center', ''),
(30, 'help/topic/{id}/{category}', 'Help Center', 'Help Center', ''),
(31, 'help/article/{id}/{question}', 'Help Center', 'Help Center', ''),
(32, 'signin_company', 'Sign In Company', 'Sign In Company', ''),
(33, 'signup_company', 'Sign Up Company', 'Sign Up Company', ''),
(34, 'forgot_password_company', 'Forgot Password', 'Forgot Password', ''),
(35, 'company/reset_password', 'Reset Password', 'Reset Password', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_095317_create_companies_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_17_142217_create_session_table', 1),
(5, '2015_08_23_070159_create_site_settings_table', 1),
(6, '2015_08_25_160119_create_country_table', 1),
(7, '2015_09_24_163220_create_admins_table', 1),
(8, '2016_03_25_173347_create_pages_table', 1),
(9, '2016_03_27_084526_create_join_us_table', 1),
(10, '2016_04_02_160807_create_metas_table', 1),
(11, '2016_05_09_140352_create_help_category_table', 1),
(12, '2016_05_09_140411_create_help_subcategory_table', 1),
(13, '2016_05_09_140500_create_help_table', 1),
(14, '2016_10_13_114638_create_currency_table', 1),
(15, '2017_04_18_070421_create_profile_picture_table', 1),
(16, '2017_04_18_080501_create_driver_documents_table', 1),
(17, '2017_04_24_071834_create_driver_address_table', 1),
(18, '2017_04_24_141629_create_car_type_table', 1),
(19, '2017_04_25_063221_create_driver_location_table', 1),
(20, '2017_04_27_101812_create_request_table', 1),
(21, '2017_05_09_044810_create_trips_table', 1),
(22, '2017_05_23_060535_create_rider_location_table', 1),
(23, '2017_05_24_092403_create_rating_table', 1),
(24, '2017_05_24_095833_create_cancel_table', 1),
(25, '2017_06_01_130626_create_fees_table', 1),
(26, '2017_06_08_085929_create_api_credentials_table', 1),
(27, '2017_06_08_102833_create_payment_gateway_table', 1),
(28, '2017_06_16_112151_create_payment_table', 1),
(29, '2017_06_16_112152_create_driver_payment_table', 1),
(30, '2017_09_21_115741_create_jobs_table', 1),
(31, '2017_11_12_133719_create_wallet_table', 1),
(32, '2017_11_17_071107_create_promo_code_table', 1),
(33, '2017_11_17_072500_create_users_promo_code_table', 1),
(34, '2018_03_09_193432_create_help_category_lang_table', 1),
(35, '2018_03_09_193447_create_help_sub_category_lang_table', 1),
(36, '2018_04_02_130448_create_language_table', 1),
(37, '2018_05_26_000018_create_payout_preference_table', 1),
(38, '2018_05_26_000020_create_payment_method_table', 1),
(39, '2018_07_13_063641_CreateEmergencySosTable', 1),
(40, '2018_07_13_073129_create_schedule_ride_table', 1),
(41, '2018_07_16_063607_entrust_setup_tables', 1),
(42, '2019_01_09_111401_create_locations_table', 1),
(43, '2019_01_09_115510_create_manage_fare_table', 1),
(44, '2019_01_09_120028_create_peak_fare_details_table', 1),
(45, '2019_01_19_062416_create_email_settings_table', 1),
(46, '2019_01_19_132454_create_payout_credentials', 1),
(47, '2019_02_06_055025_create_help_translations_table', 1),
(48, '2019_03_07_131731_create_schedule_cancel_table', 1),
(49, '2019_04_01_100347_create_company_documents_table', 1),
(50, '2019_04_08_125114_create_company_payout_credentials_table', 1),
(51, '2019_04_09_051226_create_company_payout_preference_table', 1),
(52, '2019_04_11_115908_create_vehicle_table', 1),
(53, '2019_04_17_063955_create_bank_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `under` enum('company','discover','hosting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Service', 'terms_of_service', 'yes', 'company', '&nbsp;&nbsp;&nbsp; <h1>Terms of Service&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1><p>PLEASE READ THESE TERMS OF SERVICE CAREFULLY AS THEY CONTAIN IMPORTANT INFORMATION REGARDING YOUR LEGAL RIGHTS, REMEDIES AND OBLIGATIONS. THESE INCLUDE VARIOUS LIMITATIONS AND EXCLUSIONS, A CLAUSE THAT GOVERNS THE JURISDICTION AND VENUE OF DISPUTES, AND OBLIGATIONS TO COMPLY WITH APPLICABLE LAWS AND REGULATIONS.</p><p>IN PARTICULAR, HOSTS SHOULD UNDERSTAND HOW THE LAWS WORK IN THEIR RESPECTIVE CITIES. SOME CITIES HAVE LAWS THAT RESTRICT THEIR ABILITY TO HOST PAYING GUESTS FOR SHORT PERIODS. THESE LAWS ARE OFTEN PART OF A CITY\'S ZONING OR ADMINISTRATIVE CODES. IN MANY CITIES, HOSTS MUST REGISTER, GET A PERMIT, OR OBTAIN A LICENSE BEFORE LISTING A PROPERTY OR ACCEPTING GUESTS. CERTAIN TYPES OF SHORT-TERM BOOKINGS MAY BE PROHIBITED ALTOGETHER. LOCAL GOVERNMENTS VARY GREATLY IN HOW THEY ENFORCE THESE LAWS. PENALTIES MAY INCLUDE FINES OR OTHER ENFORCEMENT. HOSTS SHOULD REVIEW LOCAL LAWS BEFORE LISTING A SPACE ON SITE_NAME.</p><p>Last Updated: Jan 1, 2016</p><p><b><u>TERMS OF SERVICE</u></b></p><p>If you are using the Site, Application or Services and you reside in the USA, you are contracting with SITE_NAME, Inc. with respect to use of the SITE_NAME Site, Application or Services, and with SITE_NAME Payments, Inc. with respect to any payments or payouts from or to you conducted through the Site, Application or Services. If you reside outside of the USA, you are contracting with SITE_NAME Ireland with respect to use of the SITE_NAME Site, Application or Services, and with SITE_NAME Payments UK Ltd. with respect to any payments or payouts from or to you conducted through the Site, Application or Services. If you initially reside in the USA and contract with SITE_NAME, Inc. and/or SITE_NAME Payments, Inc., but subsequently change your residence to outside of the USA, you will contract with SITE_NAME Ireland from the date on which your place of residence changes, and vice versa. (SITE_NAME, Inc., SITE_NAME Ireland, SITE_NAME Payments UK Ltd. and SITE_NAME Payments, Inc. (the last two solely with respect to payments and payouts related activity) are each hereinafter referred to as \"<b>SITE_NAME</b>\", \"<b>we</b>\", \"<b>us</b>\", or \"<b>our</b>\"). SITE_NAME Payments, Inc. and SITE_NAME Payments UK Ltd. shall individually and collectively, as appropriate, be referred to herein as \"<b>SITE_NAME Payments</b>\".</p><p>SITE_NAME provides an online platform that connects hosts who have accommodations to rent with guests seeking to rent such accommodations (collectively, the \"<b>Services</b>\"), which Services are accessible at&nbsp;<a target=\"_blank\" href=\"SITE_URL\">SITE_URL</a> and any other websites through which SITE_NAME makes the Services available (collectively, the \"<b>Site</b>\") and as applications for mobile devices (the \"<b>Application</b>\"). By using the Site or Application, you agree to comply with and be legally bound by the terms and conditions of these Terms of Service (\"<b>Terms</b>\"), whether or not you become a registered user of the Services. These Terms govern your access to and use of the Site, Application and Services and all Collective Content (defined below), and your participation in the Referral Program (defined below), and constitute a binding legal agreement between you and SITE_NAME. Please also read carefully our Privacy Policy at <a target=\"_blank\" href=\"SITE_URL/privacy_policy\">SITE_URL/privacy_policy</a>. If you do not agree to these Terms, you have no right to obtain information from or otherwise continue using the Site, Application or Services. Failure to use the Site, Application or Services in accordance with these Terms may subject you to civil and criminal penalties.</p><p>THE SITE, APPLICATION AND SERVICES COMPRISE AN ONLINE PLATFORM THROUGH WHICH HOSTS MAY CREATE LISTINGS FOR ACCOMMODATIONS AND GUESTS MAY LEARN ABOUT AND BOOK ACCOMMODATIONS DIRECTLY WITH THE HOSTS. YOU UNDERSTAND AND AGREE THAT SITE_NAME IS NOT A PARTY TO ANY AGREEMENTS ENTERED INTO BETWEEN HOSTS AND GUESTS, NOR IS SITE_NAME A REAL ESTATE BROKER, AGENT OR INSURER. SITE_NAME HAS NO CONTROL OVER THE CONDUCT OF HOSTS, GUESTS AND OTHER USERS OF THE SITE, APPLICATION AND SERVICES OR ANY ACCOMMODATIONS, AND DISCLAIMS ALL LIABILITY IN THIS REGARD TO THE MAXIMUM EXTENT PERMITTED BY LAW.</p><p><b>Key Terms</b></p><p>\"<b>SITE_NAME Content</b>\" means all Content that SITE_NAME makes available through the Site, Application, or Services, including any Content licensed from a third party, but excluding Member Content. <br></p><p>\"<b>Booking Request Period</b>\" means the time period starting from the time when a booking is requested by a Guest (as determined by SITE_NAME in its sole discretion), within which a Host may decide whether to confirm or reject that booking request, as stated on the Site, Application or Services. Different Booking Request Periods may apply in different places. <br></p><p>\"<b>Collective Content</b>\" means Member Content and SITE_NAME Content. <br></p><p>\"<b>Content</b>\" means text, graphics, images, music, software (excluding the Application), audio, video, information or other materials. <br></p><p>\"<b>Guest</b>\" means a Member who requests from a Host a booking of an Accommodation via the Site, Application or Services, or a Member who stays at an Accommodation and is not the Host for such Accommodation. <br></p><p>\"<b>Host</b>\" means a Member who creates a Listing via the Site, Application and Services. <br></p><p>\"<b>Listing</b>\" means an Accommodation that is listed by a Host as available for rental via the Site, Application, and Services. <br></p><p>\"<b>Member</b>\" means a person who completes SITE_NAME\'s account registration process, including but not limited to Hosts and Guests, as described under \"Account Registration\" below. <br></p><p>\"<b>Member Content</b>\" means all Content that a Member posts, uploads, publishes, submits, transmits, or includes in their Listing or Member profile to be made available through the Site, Application or Services. <br></p><p>\"<b>Tax</b>\" or \"<b>Taxes</b>\" mean any sales taxes, value added taxes (VAT), goods and services taxes (GST), transient occupancy taxes, tourist or other visitor taxes, accommodation or lodging taxes, fees (such as convention center fees) that accommodation providers may be required by law to collect and remit to governmental agencies, and other similar municipal, state, federal and national indirect or other withholding and personal or corporate income taxes.</p><p>Certain areas of the Site and Application (and your access to or use of certain aspects of the Services or Collective Content) may have different terms and conditions posted or may require you to agree with and accept additional terms and conditions. If there is a conflict between these Terms and terms and conditions posted for a specific area of the Site, Application, Services, or Collective Content, the latter terms and conditions will take precedence with respect to your use of or access to that area of the Site, Application, Services, or Collective Content.</p><p>YOU ACKNOWLEDGE AND AGREE THAT, BY ACCESSING OR USING THE SITE, APPLICATION OR SERVICES OR BY DOWNLOADING OR POSTING ANY CONTENT FROM OR ON THE SITE, VIA THE APPLICATION OR THROUGH THE SERVICES, YOU ARE INDICATING THAT YOU HAVE READ, AND THAT YOU UNDERSTAND AND AGREE TO BE BOUND BY THESE TERMS, WHETHER OR NOT YOU HAVE REGISTERED WITH THE SITE AND APPLICATION. IF YOU DO NOT AGREE TO THESE TERMS, THEN YOU HAVE NO RIGHT TO ACCESS OR USE THE SITE, APPLICATION, SERVICES, OR COLLECTIVE CONTENT. If you accept or agree to these Terms on behalf of a company or other legal entity, you represent and warrant that you have the authority to bind that company or other legal entity to these Terms and, in such event, \"you\" and \"your\" will refer and apply to that company or other legal entity.</p><p><b>Modification</b></p><p>SITE_NAME reserves the right, at its sole discretion, to modify the Site, Application or Services or to modify these Terms, including the Service Fees, at any time and without prior notice. If we modify these Terms, we will either post the modification on the Site or via the Application or otherwise provide you with notice of the modification. We will also update the \"Last Updated Date\" at the top of these Terms. By continuing to access or use the Site, Application or Services after we have posted a modification on the Site or via the Application or have provided you with notice of a modification, you are indicating that you agree to be bound by the modified Terms. If the modified Terms are not acceptable to you, your only recourse is to cease using the Site, Application and Services.</p><p><b>Eligibility</b></p><p>The Site, Application and Services are intended solely for persons who are 18 or older. Any access to or use of the Site, Application or Services by anyone under 18 is expressly prohibited. By accessing or using the Site, Application or Services you represent and warrant that you are 18 or older.</p><p><b>How the Site, Application and Services Work</b></p><p>The Site, Application and Services can be used to facilitate the listing and booking of residential and other properties (\"<b>Accommodations</b>\"). Such Accommodations are included in Listings on the Site, Application and Services by Hosts. You may view Listings as an unregistered visitor to the Site, Application and Services; however, if you wish to book an Accommodation or create a Listing, you must first register to create an SITE_NAME Account (defined below).</p><p>As stated above, SITE_NAME makes available an online platform or marketplace with related technology for Guests and Hosts to meet online and arrange for bookings of Accommodations directly with each other. SITE_NAME is not an owner or operator of properties, including, but not limited to, hotel rooms, motel rooms, other lodgings or Accommodations, nor is it a provider of properties, including, but not limited to, hotel rooms, motel rooms, other lodgings or Accommodations and SITE_NAME does not own, sell, resell, furnish, provide, rent, re-rent, manage and/or control properties, including, but not limited to, hotel rooms, motel rooms, other lodgings or Accommodations or transportation or travel services. Unless explicitly specified otherwise in the SITE_NAME platform, SITE_NAME\'s responsibilities are limited to: (i) facilitating the availability of the Site, Application and Services and (ii) serving as the limited payment collection agent of each Host for the purpose of accepting payments from Guests on behalf of the Host.</p><p>PLEASE NOTE THAT, AS STATED ABOVE, THE SITE, APPLICATION AND SERVICES ARE INTENDED TO BE USED TO FACILITATE HOSTS AND GUESTS CONNECTING AND BOOKING ACCOMMODATIONS DIRECTLY WITH EACH OTHER. SITE_NAME CANNOT AND DOES NOT CONTROL THE CONTENT CONTAINED IN ANY LISTINGS AND THE CONDITION, LEGALITY OR SUITABILITY OF ANY ACCOMMODATIONS. SITE_NAME IS NOT RESPONSIBLE FOR AND DISCLAIMS ANY AND ALL LIABILITY RELATED TO ANY AND ALL LISTINGS AND ACCOMMODATIONS. ACCORDINGLY, ANY BOOKINGS WILL BE MADE OR ACCEPTED AT THE MEMBER\'S OWN RISK.</p><p><b>Account Registration</b></p><p>In order to access certain features of the Site and Application, and to book an Accommodation or create a Listing, you must register to create an account (\"<b>SITE_NAME Account</b>\") and become a Member. You may register to join the Services directly via the Site or Application or as described in this section.</p><p>You can also register to join by logging into your account with certain third-party social networking sites (\"<b>SNS</b>\") (including, but not limited to, Facebook; each such account, a \"<b>Third-Party Account</b>\"), via our Site or Application, as described below. As part of the functionality of the Site, Application and Services, you may link your SITE_NAME Account with Third-Party Accounts, by either: (i) providing your Third-Party Account login information to SITE_NAME through the Site, Services or Application; or (ii) allowing SITE_NAME to access your Third-Party Account, as permitted under the applicable terms and conditions that govern your use of each Third-Party Account. You represent that you are entitled to disclose your Third-Party Account login information to SITE_NAME and/or grant SITE_NAME access to your Third-Party Account (including, but not limited to, for use for the purposes described herein), without breach by you of any of the terms and conditions that govern your use of the applicable Third-Party Account and without obligating SITE_NAME to pay any fees or making SITE_NAME subject to any usage limitations imposed by such third-party service providers. By granting SITE_NAME access to any Third-Party Accounts, you understand that SITE_NAME will access, make available and store (if applicable) any Content that you have provided to and stored in your Third-Party Account (\"<b>SNS Content</b>\") so that it is available on and through the Site, Services and Application via your SITE_NAME Account and SITE_NAME Account profile page. Unless otherwise specified in these Terms, all SNS Content, if any, will be considered to be Member Content for all purposes of these Terms. Depending on the Third-Party Accounts you choose and subject to the privacy settings that you have set in such Third-Party Accounts, personally identifiable information that you post to your Third-Party Accounts will be available on and through your SITE_NAME Account on the Site, Services and Application. Please note that if a Third-Party Account or associated service becomes unavailable or SITE_NAME\'s access to such Third-Party Account is terminated by the third-party service provider, then SNS Content will no longer be available on and through the Site, Services and Application. You have the ability to disable the connection between your SITE_NAME Account and your Third-Party Accounts, at any time, by accessing the \"Settings\" section of the Site and Application. PLEASE NOTE THAT YOUR RELATIONSHIP WITH THE THIRD-PARTY SERVICE PROVIDERS ASSOCIATED WITH YOUR THIRD-PARTY ACCOUNTS IS GOVERNED SOLELY BY YOUR AGREEMENT(S) WITH SUCH THIRD-PARTY SERVICE PROVIDERS. SITE_NAME makes no effort to review any SNS Content for any purpose, including but not limited to for accuracy, legality or non-infringement and SITE_NAME is not responsible for any SNS Content.</p><p>Your SITE_NAME Account and your SITE_NAME Account profile page will be created for your use of the Site and Application based upon the personal information you provide to us or that we obtain via an SNS as described above. You may not have more than one (1) active SITE_NAME Account. You agree to provide accurate, current and complete information during the registration process and to update such information to keep it accurate, current and complete. SITE_NAME reserves the right to suspend or terminate your SITE_NAME Account and your access to the Site, Application and Services if you create more than one (1) SITE_NAME Account, or if any information provided during the registration process or thereafter proves to be inaccurate, fraudulent, not current or incomplete. You are responsible for safeguarding your password. You agree that you will not disclose your password to any third party and that you will take sole responsibility for any activities or actions under your SITE_NAME Account, whether or not you have authorized such activities or actions. You will immediately notify SITE_NAME of any unauthorized use of your SITE_NAME Account.</p><p><b>Accommodation Listings</b></p><p>As a Member, you may create Listings. To create a Listing, you will be asked a variety of questions about the Accommodation to be listed, including, but not limited to, the location, capacity, size, features, and availability of the Accommodation and pricing and related rules and financial terms. In order to be featured in Listings via the Site, Application and Services, all Accommodations must have valid physical addresses. Listings will be made publicly available via the Site, Application and Services. Other Members will be able to book your Accommodation via the Site, Application and Services based upon the information provided in your Listing. You understand and agree that once a Guest requests a booking of your Accommodation, you may not request the Guest to pay a higher price than in the booking request.</p><p>You acknowledge and agree that you alone are responsible for any and all Listings and Member Content you post. Accordingly, you represent and warrant that any Listing you post and the booking of, or a Guest\'s stay at, an Accommodation in a Listing you post (i) will not breach any agreements you have entered into with any third parties, such as homeowners association, condominium, lease or rental agreements, and (ii) will (a) be in compliance with all applicable laws (such as zoning laws and laws governing rentals of residential and other properties), Tax requirements, and rules and regulations that may apply to any Accommodation included in a Listing you post (including having all required permits, licenses and registrations), and (b) not conflict with the rights of third parties. Please note that SITE_NAME assumes no responsibility for a Host\'s compliance with any agreements with or duties to third parties, applicable laws, rules and regulations. SITE_NAME reserves the right, at any time and without prior notice, to remove or disable access to any Listing for any reason, including Listings that SITE_NAME, in its sole discretion, considers to be objectionable for any reason, in violation of these Terms, or otherwise harmful to the Site, Application or Services.</p><p>If you are a Host, you understand and agree that SITE_NAME does not act as an insurer or as your contracting agent. If a Guest requests a booking of your Accommodation and stays at your Accommodation, any agreement you enter into with such Guest is between you and the Guest and SITE_NAME is not a party to it. Notwithstanding the foregoing, SITE_NAME Payments serves as the limited authorized payment collection agent of the Host for the purpose of accepting, on behalf of the Host, payments from Guests of such amounts stipulated by the Host (including cleaning or other fees and/or Taxes).</p><p>When you create a Listing, you may also choose to include certain requirements which must be met by the Members who are eligible to request a booking of your Accommodation, such as requiring Members to have a profile picture or verified phone number, in order to book your Accommodation. Any Member wishing to book Accommodations included in Listings with such requirements must meet these requirements. More information on how to set such requirements is available via the \"Hosting\" section of the Site, Application and Services.</p><p>If you are a Host, SITE_NAME makes certain tools available to you to help you to make informed decisions about which Members you choose to confirm or preapprove for booking for your Accommodation. You acknowledge and agree that, as a Host, you are responsible for your own acts and omissions and are also responsible for the acts and omissions of any individuals who reside at or are otherwise present at the Accommodation at your request or invitation, excluding the Guest (and the individuals the Guest invites to the Accommodation, if applicable.)</p><p>SITE_NAME recommends that Hosts obtain appropriate insurance for their Accommodations. Please review any insurance policy that you may have for your Accommodation carefully, and in particular please make sure that you are familiar with and understand any exclusions to, and any deductibles that may apply for, such insurance policy, including, but not limited to, whether or not your insurance policy will cover the actions or inactions of Guests (and the individuals the Guest invites to the Accommodation, if applicable) while at your Accommodation.</p><p>SITE_NAME may offer Hosts the option of having photographers take photographs of their Accommodations. If you as a Host choose to have a photographer do this, the photographs taken will be made available to you to include in your Listing with a watermark or tag bearing the words \"SITE_NAME.com Verified Photo\" or similar wording (\"<b>Verified Images</b>\"). You agree that you alone are responsible for ensuring that your Listing is accurately represented in the Verified Images. You alone are responsible for using the Verified Images and you warrant that you will cease to use the Verified Images or any other images if such images cease to accurately represent your Listing. All images, materials and content created by these photographers, including Verified Images, constitute SITE_NAME Content, regardless of whether you include them in your Listing. You agree that SITE_NAME may use the Verified Images&nbsp;for advertising, marketing, commercial and other business purposes in any media or platform, whether in relation to your Listing or otherwise, without further notice or compensation.</p><p><b>No Endorsement</b></p><p>SITE_NAME does not endorse any Member or any Accommodation. You understand that Verified Images are intended only to indicate a photographic representation of the Accommodation at the time the photograph was taken. Verified Images are therefore not an endorsement by SITE_NAME of any Member or any Accommodation. Members are required by these Terms to provide accurate information, and although SITE_NAME may undertake additional checks and processes designed to help verify or check the identities or backgrounds of users, we do not make any representations about, confirm, or endorse any Member or the Member\'s purported identity or background.</p><p>Any references in the Site, Application or Services to a Member being \"verified\" or \"connected\" (or similar language) only indicate that the Member has completed a relevant verification process, and does not represent anything else. Any such description is not an endorsement, certification or guarantee by SITE_NAME about any Member, including of the Member\'s identity and whether the Member is trustworthy, safe or suitable. Instead, any such description is intended to be useful information for you to evaluate when you make your own decisions about the identity and suitability of others whom you contact or interact with via the Site, Application and Services. We therefore recommend that you always exercise due diligence and care when deciding whether to stay with a Host or to accept a booking request from a Guest, or to have any other interaction with any other Member. Except as provided in the SITE_NAME <a href=\"SITE_URL/host_guarantee\">Host Guarantee Terms and Conditions</a> (\"<b>SITE_NAME Host Guarantee</b>\"), which is an agreement between SITE_NAME and Hosts, we are not responsible for any damage or harm resulting from your interactions with other Members.</p><p>By using the Site, Application or Services, you agree that any legal remedy or liability that you seek to obtain for actions or omissions of other Members or other third parties will be limited to a claim against the particular Members or other third parties who caused you harm. You agree not to attempt to impose liability on or seek any legal remedy from SITE_NAME with respect to such actions or omissions. Accordingly, we encourage you to communicate directly with other Members on the Site and Services regarding any bookings or Listings made by you. This limitation shall not apply to any claim by a Host against SITE_NAME regarding the remittance of payments received from a Guest by SITE_NAME on behalf of a Host, which instead shall be subject to the limitations described in the section below entitled \"Limitation of Liability\".</p><p><b>Bookings and Financial Terms</b></p><p><i>Key definitions</i></p><p>\"<b>Accommodation Fees</b>\" means the amounts that are due and payable by a Guest in exchange for that Guest\'s stay in an Accommodation. The Host alone, and not SITE_NAME, is responsible for the Accommodation Fees for his or her Listing. The Host may in his or her sole discretion decide to include in these amounts (i) a cleaning fee or any other fee permitted on the SITE_NAME platform, or (ii) Taxes that the Host determines that he or she has to collect. <br></p><p>\"<b>Guest Fees</b>\" means the fee that SITE_NAME charges a Guest for the use of the Services, which is calculated as a percentage of the applicable Accommodation Fees. The Guest Fees will be displayed to the Guest when the Guest is asked whether to send a booking request to a Host. <br></p><p>\"<b>Host Fees</b>\" means the fee that SITE_NAME charges a Host for the use of the Services, which is calculated as a percentage of the applicable Accommodation Fees. The Host Fees will be displayed to the Host when the Host is asked whether to confirm or reject a booking request from a prospective Guest. <br></p><p>\"<b>Service Fees</b>\" means collectively the Guest Fees and the Host Fees. <br></p><p>\"<b>Total Fees</b>\" means collectively the Accommodation Fees and the Guest Fees plus any Taxes.</p><p><i>Bookings and Financial Terms for Hosts and Guests</i></p><p>If you are a Host and a booking is requested for your Accommodation via the Site, Application or Services, you will be required to either confirm or reject the booking request within the Booking Request Period, otherwise the booking request will automatically expire. When a booking is requested via the Site, Application or Services, we will share with you (i) the first and last name of the Guest who has requested the booking, (ii) a link to the Guest\'s SITE_NAME Account profile page, (iii) if the Guest and Host have both connected their SITE_NAME accounts to SNS, the names of any members of an SNS with whom you are \"friends\" or associated on the SNS if such individuals are also \"friends\" or associated with the Guest on such SNS, and (iv) an indication of whether or not the Guest has provided other information to SITE_NAME, such as a verified email address, connection to SNSs, or a government ID. If you are unable to confirm or decide to reject a booking request within the Booking Request Period, any amounts collected by SITE_NAME for the requested booking will be refunded to the applicable Guest\'s credit card and any pre-authorization of such credit card will be released. When you confirm a booking requested by a Guest, SITE_NAME will send you an email, text message or message via the Application confirming such booking, depending on the selections you make via the Site, Application and Services.</p><p>SITE_NAME Payments will collect the Total Fees at the time of booking confirmation (i.e. when the Host confirms the booking request) and will initiate payment of the Accommodation Fees (less SITE_NAME\'s Host Fees and any Taxes in respect of the Host Fees, such as VAT in Europe) to the Host within 24 hours of when the Guest arrives at the applicable Accommodation (except to the extent that a refund is due to the Guest). The time it takes for the Host to receive payouts may depend upon the payout method chosen by the Host. Some methods involve the use of third-party payment processors, who may impose their own additional charges for the use of their services on the Host, including by deducting their charges from the payout amount.</p><p>If you owe or agree to pay any amount via SITE_NAME Payments to SITE_NAME (whether as a result of your bookings or actions as a Guest or otherwise), then SITE_NAME Payments may (but is not obliged to) withhold the amount owing to SITE_NAME from any payout amounts due to you as a Host, and use the withheld amount to setoff the amount owed by you to SITE_NAME. If SITE_NAME Payments does so, then your obligation to pay SITE_NAME will be extinguished to the extent of the amount withheld by SITE_NAME Payments, and SITE_NAME will cease to owe to you any obligations (including, but not limited to, any obligation to pay you) with respect to the amount withheld. In addition to the amount due, if your account is delinquent or you otherwise have chargebacks on your account, you may be charged fees that are incidental to our collection of these delinquent amounts and chargebacks. Such fees or charges may include collection fees, convenience fees, or other third party charges. You hereby explicitly agree that all communication in relation to delinquent accounts will be made by electronic mail or by phone, as provided to SITE_NAME by you. Such communication may be made by SITE_NAME or by anyone on its behalf, including but not limited to a third party collection agent.</p><p><i>Appointment of SITE_NAME Payments as Limited Payment Collection Agent for Host</i></p><p>Each Host hereby appoints SITE_NAME Payments as the Host\'s limited payment collection agent solely for the purpose of accepting the Accommodation Fees from Guests.</p><p>Each Host agrees that payment made by a Guest through SITE_NAME Payments, shall be considered the same as a payment made directly to the Host, and the Host will make the Accommodation available to the Guest in the agreed-upon manner as if the Host has received the Accommodation Fees. Each Host agrees that SITE_NAME may, in accordance with the cancellation policy selected by the Host and reflected in the relevant Listing, (i) permit the Guest to cancel the booking and (ii) refund (via SITE_NAME Payments) to the Guest that portion of the Accommodation Fees specified in the applicable cancellation policy. Each Host understands that as SITE_NAME Payments accepts payments from Guests as the Host\'s limited payment collection agent and that SITE_NAME Payments\' obligation to pay the Host is subject to and conditional upon successful receipt of the associated payments from Guests. SITE_NAME does not guarantee payments to Hosts for amounts that have not been successfully received by SITE_NAME Payments from Guests. In accepting appointment as the limited authorized agent of the Host, SITE_NAME Payments assumes no liability for any acts or omissions of the Host.</p><p>Please note that SITE_NAME does not currently charge fees for the creation of Listings. However, you as a Host acknowledge and agree that SITE_NAME reserves the right, in its sole discretion, to charge you for and collect fees from you for the creation of Listings. Please note that SITE_NAME will provide notice of any Listing fee collection via the Site, Application and Services, prior to implementing such a Listing fee feature.</p><p><i>Bookings and Financial Terms for Guests</i></p><p>The Hosts, not SITE_NAME, are solely responsible for honoring any confirmed bookings and making available any Accommodations reserved through the Site, Application and Services. If you, as a Guest, choose to enter into a transaction with a Host for the booking of an Accommodation, you agree and understand that you will be required to enter into an agreement with the Host and you agree to accept any terms, conditions, rules and restrictions associated with such Accommodation imposed by the Host. You acknowledge and agree that you, and not SITE_NAME, will be responsible for performing the obligations of any such agreements, that SITE_NAME is not a party to such agreements, and that, with the exception of its payment obligations hereunder, SITE_NAME disclaims all liability arising from or related to any such agreements. You acknowledge and agree that, notwithstanding the fact that SITE_NAME is not a party to the agreement between you and the Host, SITE_NAME Payments acts as the Host\'s payment collection agent for the limited purpose of accepting payments from you on behalf of the Host. Upon your payment of the Total Fees to SITE_NAME Payments, your payment obligation to the Host for the Accommodation Fees is extinguished, and SITE_NAME Payments is responsible for remitting the Accommodation Fees (less the Host Fees and any Taxes in respect of the Host Fees, such as VAT in Europe), in the manner described in these Terms. In the event that SITE_NAME Payments does not remit any such amounts as described in these Terms, such Host will have recourse only against such SITE_NAME entity.</p><p>The Total Fees payable will be displayed to a Guest before the Guest sends a booking request to a Host. As noted above, the Host is required to either confirm or reject the booking request within the Booking Request Period; otherwise, the requested booking will be automatically cancelled. If a requested booking is cancelled (i.e. not confirmed by the applicable Host), any amounts collected by SITE_NAME Payments will be refunded to such Guest, depending on the selections the Guest makes via the Site and Application, and any pre-authorization of such Guest\'s credit card will be released, if applicable.</p><p>You as a Guest agree to pay SITE_NAME for the Total Fees for any booking requested in connection with your SITE_NAME Account if such requested bookings are confirmed by the applicable Host. In order to establish a booking pending the applicable Host\'s confirmation of your requested booking, you understand and agree that SITE_NAME Payments, on behalf of the Host, reserve the right, in its sole discretion, to (i) obtain a pre-authorization via your credit card for the Total Fees or (ii) charge your credit card a nominal amount, not to exceed one dollar ($1), or a similar sum in the currency in which you are transacting (e.g. one euro or one British pound), to verify your credit card. As a general rule, SITE_NAME Payments will collect the Total Fees due once SITE_NAME receives confirmation of your booking from the applicable Host; if necessary, Total Fees may instead be collected at a later point. Please note that SITE_NAME cannot control any fees that may be charged to a Guest by his or her bank related to SITE_NAME\'s collection of the Total Fees, and SITE_NAME disclaims all liability in this regard.</p><p>In connection with your requested booking, you will be asked to provide customary billing information such as name, billing address and credit card information either to SITE_NAME Payments or its third-party payment processor(s). You agree to pay SITE_NAME Payments for any confirmed bookings made in connection with your SITE_NAME Account in accordance with these Terms by one of the methods described on the Site or Application, e.g. by PayPal or credit card. You hereby authorize the collection of such amounts by charging the credit card provided as part of requesting the booking, either directly by SITE_NAME Payments or indirectly, via a third-party online payment processor or by one of the payment methods described on the Site or Application. You also authorize SITE_NAME Payments to charge your credit card in the event of damage caused at an Accommodation as contemplated under \"Damage to Accommodations\" below and for Security Deposits, if applicable. If you are directed to SITE_NAME Payments\' third-party payment processor(s), you may be subject to terms and conditions governing use of that third party\'s service and that third party\'s personal information collection practices. Please review such terms and conditions and privacy policy before using the services. Once your confirmed booking transaction is complete you will receive a confirmation email summarizing your confirmed booking.</p><p><b>Security Deposits</b></p><p>Hosts may choose to include security deposits in their Listings (\"<b>Security Deposits</b>\"). Each Listing will describe whether a Security Deposit is required for the applicable Accommodation. If a Security Deposit is included in a Listing for a confirmed booking of an Accommodation, and a Host makes a claim against such Security Deposit, SITE_NAME Payments will, in its capacity as the payment collection agent of the Host, use its commercially reasonable efforts to charge the Guest\'s payment method in the amount of the Security Deposit, within a reasonable period of time after the Guest\'s check-out from the Host\'s Accommodation. SITE_NAME will also use its commercially reasonable efforts to address Hosts\' requests and claims related to Security Deposits, but SITE_NAME is not responsible for administering or accepting any claims by Hosts related to Security Deposits, and disclaims any and all liability in this regard.</p><p><b>Service Fees</b></p><p>In consideration for the use of SITE_NAME\'s online marketplace and platform, SITE_NAME charges the Service Fees. Where applicable, Taxes (such as VAT in Europe) may also be charged in respect of the Host Fees and Guest Fees. SITE_NAME Payments deducts the Host Fees from the Accommodation Fees before remitting the balance to the Host as described in these Terms. Guest Fees are, as noted above, included in the Total Fees.</p><p>Balances will be remitted by SITE_NAME Payments to Hosts via check, PayPal, direct deposit or other payment methods, as described on the Site or via the Application, in the Host\'s currency of choice, depending upon the selections the Host makes via the Site, Application and Services. Amounts may be rounded up or down as described the \"Rounding Off\" section below.</p><p>Please note that SITE_NAME Payments, may impose or deduct foreign currency processing costs on or from any payments or payouts by SITE_NAME in currencies other than U.S. dollars. More information on any such costs or deductions will be available via the Site and Application. Except as otherwise provided herein, Service Fees are non-refundable.</p><p><b>General Booking and Financial Terms</b></p><p><i>Cancellations and Refunds</i></p><p>If, as a Guest, you cancel your requested booking before the requested booking is confirmed by a Host, SITE_NAME Payments will cancel any pre-authorization to your credit card and/or refund any nominal amounts charged to your credit card in connection with the requested booking within a commercially reasonable time. If, as a Guest, you wish to cancel a confirmed booking made via the Site, Application and Services, either prior to or after arriving at the Accommodation, the cancellation policy of the Host contained in the applicable Listing will apply to such cancellation. Our ability to refund the Accommodation Fees and other amounts charged to you will depend upon the terms of the applicable cancellation policy. Details regarding refunds and cancellation policies are available via the Site and Application. The Guest Fee is non-refundable regardless of the cancellation policy selected by the Host.</p><p>If a Host cancels a confirmed booking made via the Site, Services, and Application, (i) SITE_NAME Payments will refund the Total Fees for such booking to the applicable Guest within a commercially reasonable time of the cancellation and (ii) the Guest will receive an email or other communication from SITE_NAME containing alternative Listings and other related information. If the Guest requests a booking from one of the alternative Listings and the Host associated with such alternative Listing confirms the Guest\'s requested booking, then the Guest agrees to pay SITE_NAME the Total Fees relating to the confirmed booking for the Accommodation in the alternative Listing, in accordance with these Terms. If a Host cancelled a confirmed booking and you, as a Guest, have not received an email or other communication from SITE_NAME.</p><p>If, as a Host, you cancel a confirmed booking, you agree that SITE_NAME may apply penalties or consequences to you or your Listing, including (i) publishing an automated review on your Listing indicating that a reservation was cancelled, (ii) keeping the calendar for your Listing unavailable or blocked for the dates of the cancelled booking, or (iii) imposing a cancellation fee (to be withheld from your future payouts or charged to the&nbsp;credit card on file in your SITE_NAME Account). You will be notified of the situations in which a cancellation fee applies before you decide to cancel.</p><p>In certain circumstances, SITE_NAME may decide, in its sole discretion, that it is necessary or desirable to cancel a confirmed booking made via the Site, Application and Services. This may be for reasons set forth or for any other reason. SITE_NAME Payments may also determine, in its sole discretion, to refund to the Guest part or all of the amounts charged to the Guest in accordance with the <a href=\"SITE_URL/guest_refund\">Guest Refund Policy</a>. You agree that SITE_NAME and the relevant Guest or Host will not have any liability for such cancellations or refunds.</p><p>If, as a Host, your Guest cancels a confirmed booking or SITE_NAME decides that it is necessary to cancel a confirmed booking, and SITE_NAME issues a refund to the Guest in accordance with the Guest Refund Policy or other applicable cancellation policies, you agree that in the event you have already been paid SITE_NAME shall be entitled to recover the amount of any such Guest refund from you, including by subtracting such refund amount out from any future Accommodation Fees due to you.</p><p><i>Recurring Payments</i></p><p>In some instances, Guests may be required to make recurring, incremental payments toward the Total Fees owed for a confirmed booking before beginning his or her stay at the applicable Accommodation (collectively, \"<b>Recurring Payments</b>\"). More information on Recurring Payments will be made available via the Site, Application and Services, if applicable. If Recurring Payments apply to a confirmed booking, then the Guest authorizes SITE_NAME Payments, on behalf of the Host, to collect the Total Fees and the Host agrees that such SITE_NAME entity will initiate payouts to the Host, in the increments and at the frequency associated with the applicable Recurring Payments, each as identified on the Site, Application and Services.</p><p><i>Rounding Off</i></p><p>SITE_NAME may, in its sole discretion, round up or round down amounts that are payable from or to Guests or Hosts to the nearest whole functional base unit in which the currency is denominated (e.g. to the nearest dollar, euro or other supported currency); for example, SITE_NAME will round up an amount of $101.50 to $102.00, and $101.49 to $101.00.</p><p>Some currencies are denominated in large numbers. In those cases, SITE_NAME may determine the functional base unit in which those currencies are denominated to be 10, 100 or 1,000 of the currency; the corresponding examples for such currencies would be for SITE_NAME to round up an amount of 1,045 up to 1,050 and 1,044 down to 1,040, or 35,450 up to 35,500 and 35,449 down to 35,400, or 837,500 up to 838,000 and 837,499 down to 837,000.</p><p><i>Payment Processing Errors</i></p><p>We will take steps to rectify any payment processing errors that we become aware of. These steps may include crediting or debiting (as appropriate) the same payment method used for the original payout to or payment by you, so that you end up receiving or paying the correct amount.&nbsp;</p><p><i>Donations</i></p><p>Some Hosts may pledge to donate a portion of the funds they receive from confirmed bookings made via the Site, Application and Services to a particular cause or charity. We do not take any responsibility or liability for whether the Host does in fact make the donation he or she pledged to make. In such cases, the Host in question is responsible for his or her own compliance with all laws and regulations applicable to such pledges and/or fund-raising.</p><p><b>Taxes</b></p><p>Tax regulations may require us to collect appropriate tax information from our Hosts, or to withhold taxes from payouts to Hosts, or both. For instance, IRS regulations stipulate that we must collect an IRS Form W-9 from our US Hosts, and an appropriate IRS Form W-8 (e.g. Form W-8BEN) from non-US hosts with at least one Listing in the US. You as a Host are solely responsible for keeping the information in your tax forms current, complete and accurate. If you as a Host fail to provide us with documentation that we determine to be sufficient to alleviate our obligation (if any) to withhold taxes from payments to you (e.g. where you are a US Host and you fail to provide us with a completed IRS Form W-9), we reserve the right in our sole discretion to freeze all payouts to you until resolution, to withhold such amounts as required by law, or to do both.</p><p>You as a Host understand and agree that you are solely responsible for determining (i) your applicable Tax reporting requirements, and (ii) the Taxes that should be included, and for including Taxes to be collected or obligations relating to applicable Taxes in Listings. You are also solely responsible for remitting to the relevant authority any Taxes included or received by you. SITE_NAME cannot and does not offer Tax-related advice to any Members.</p><p>Where applicable, or based upon request from a Host, SITE_NAME may issue a valid VAT invoice to such Host.</p><p>You understand and acknowledge that appropriate governmental agencies, departments or authorities (the \"<b>Tax Authority</b>\") where your Accommodation is located may require Taxes to be collected from Guests or Hosts on the amount paid for the right to use and/or occupancy of accommodations, and to be remitted to the respective Tax Authority. The laws in jurisdictions may vary, but these taxes may be required to be collected and remitted as a percentage of the rent or Accommodation Fees set by Hosts, a set amount per day, or other variations, and are sometimes called \"occupancy taxes,\" \"hotel taxes,\" \"lodging taxes,\" \"transient taxes,\" \"sales and use taxes,\" \"value added taxes,\" \"room taxes\" or \"tourist taxes\" (hereafter, \"<b>Occupancy Taxes</b>\").</p><p><i>Occupancy Tax Collection and Remittance</i></p><p>In certain jurisdictions, SITE_NAME may decide in its sole discretion to facilitate collection and remittance of Occupancy Taxes from or on behalf of Guests or Hosts, in accordance with your directions in this Agreement (\"Collection and Remittance\") if such tax jurisdiction asserts SITE_NAME or Hosts have a tax collection and remittance obligation. In any jurisdiction in which we decide to facilitate direct Collection and Remittance, whether you are a Guest or Host, in lieu of the Host collecting Occupancy taxes from Guests and remitting to the Tax Authority, you hereby instruct and authorize SITE_NAME to collect Occupancy Taxes from Guests on the Host\'s behalf at the time Accommodation Fees are collected, and to remit such Occupancy Taxes to the Tax Authority. When SITE_NAME facilitates Collection and Remittance of Occupancy Taxes in a jurisdiction for the first time, SITE_NAME will provide notice to existing Hosts with Listings for Accommodations in such jurisdictions. When a new listing is created in a jurisdiction where SITE_NAME facilitates Collection and Remittance of Occupancy Taxes, the Host will be notified in the listing creation flow. &nbsp;</p><p>The amount of Occupancy Taxes, if any, collected and remitted by SITE_NAME will be visible to and separately stated to both Guests and Hosts on their respective transaction documents. Where SITE_NAME is directly facilitating Collection and Remittance, Guests and Hosts agree that Hosts are not permitted to attempt collection, or collect any Occupancy Taxes relating to their Accommodations on SITE_NAME in that such jurisdiction. You expressly agree to release, defend, indemnify, and hold SITE_NAME and its affiliates and subsidiaries, and their officers, directors, employees and agents, harmless from and against any claims, liabilities, damages, losses, debts, obligations, and expenses, including, without limitation, reasonable legal and/or accounting fees, arising out of or in any way related to Occupancy Taxes, including, without limitation, the applicability of, calculation, collection or remittance of Occupancy Taxes in any amount or at all as to your transactions or Accommodations. &nbsp;&nbsp;For any jurisdiction in which we facilitate Collection and Remittance, Hosts and Guests expressly grant us permission, without further notice, to store, transfer and disclose data and other information relating to them or to their Transactions, Bookings, Accommodations and Occupancy Taxes, including, but not limited to, personally identifiable information such as Host or Guest\'s name, listing addresses, transaction dates and amounts, tax identification number(s), the amount of taxes collected from Guests or allegedly due, contact information and similar information, to the relevant Tax Authority.</p><p><i>Opt-in to Host Remittance of Taxes</i></p><p>In other jurisdictions, SITE_NAME may decide in its sole discretion to facilitate Occupancy Tax collection on behalf of Hosts and Guests in accordance with a Host\'s direction to opt in to a specific Occupancy Tax line item in the booking process, in which the Host directs that Occupancy Taxes from Guests be sent directly to the Host so that the Host will remit such taxes directly to Tax Authority -(-\"Opt-in for Host Remittance\"). In any jurisdiction in which we decide to facilitate Collection by Opt-in for Host Remittance, whether you are a Guest or Host, you hereby instruct and authorize SITE_NAME to send Occupancy Taxes received from Guests at the time Accommodation Fees are collected to the Host who is obligated to send such taxes to the Tax Authority directly. If SITE_NAME offers and a Host selects Opt-in for Host Remittance in any jurisdiction, Hosts and Guests remain solely responsible and liable for the payment and remittance of any and all taxes that may apply to Accommodations; you agree and understand that SITE_NAME is not responsible for, and will not send any such Occupancy Taxes to the Tax Authority under Opt-in to Host Remittance of Taxes. &nbsp;You hereby agree that through third party payment processors, SITE_NAME is merely processing Your election and direction to have Occupancy Taxes from Guests sent directly to the Host for remittance by the Host to the Tax Authority, and that You will remit all amounts collected from Guests as Occupancy Taxes to such Tax Authority. &nbsp;You expressly agree to release, defend, indemnify, and hold SITE_NAME and its affiliates and subsidiaries, and their officers, directors, employees and agents, harmless from and against any claims, liabilities, damages, losses, debts, obligations, and expenses, including, without limitation, reasonable legal and/or accounting fees, arising out of or in any way related to Occupancy Taxes, &nbsp;including, without limitation, the applicability of, calculation of, collection of Occupancy Taxes in any amount or at all as to your transactions or Accommodations. &nbsp;For any jurisdiction in which we facilitate Opt-in for Host Remittance, Hosts and Guests expressly grant us permission, without further notice, to store, transfer and disclose data and other information relating to them or to their Transactions, Bookings, Accommodations and Occupancy Taxes, including, but not limited to, personally identifiable information such as Host or Guest\'s name, listing addresses, transaction dates and amounts, tax identification number(s), the amount of taxes received by Hosts from Guests, or allegedly due, contact information and similar information, to the relevant Tax Authority.</p><p><i>Miscellaneous Occupancy Tax Provisions</i></p><p>Whether you are a Guest or Host, you agree that any claim or cause of action relating to SITE_NAME\'s facilitation of Opt-in Remittance or Collection and Remittance of Taxes shall not extend to any supplier or vendor that may be used by SITE_NAME in connection with facilitation of Opt-in Remittance or Collection and Remittance&nbsp;of Occupancy Taxes, if any. Guests and Hosts agree that we may seek additional amounts from You in the event that the Taxes collected and/or remitted are insufficient to fully discharge your obligations to the Tax Authority, and agree that your sole remedy for Occupancy Taxes collected is a refund of Occupancy Taxes collected by SITE_NAME from the applicable Tax Authority in accordance with applicable procedures set by that Tax Authority.</p><p>In any jurisdiction in which we have not provided notice of, or are not facilitating (or are no longer facilitating) the collection or remittance of Occupancy Taxes by Collection and Remittance, Opt-in for Host Remittance or any other means or method, in your jurisdiction, Hosts and Guests remain solely responsible and liable for the collection and/or remittance of any and all Occupancy Taxes that may apply to Accommodations.</p><p>Hosts and Guests acknowledge and agree that in some jurisdictions, SITE_NAME may decide not to facilitate collection or remittance of Occupancy Taxes or may not be able to facilitate the collection and/or remittance of Occupancy Taxes, and nothing contained in this Agreement is a representation or guarantee that SITE_NAME will facilitate collection and/or remittance of Occupancy Tax anywhere at all, including in any specific jurisdiction, or that SITE_NAME will continue to facilitate any collection or remittance of Occupancy Tax in any specific jurisdiction in which it may have been offered. SITE_NAME reserves the right, in its sole determination, to cease any facilitation of any collection and remittance of Occupancy Tax (regardless of method used or to be used in the future) for any reason or no reason at all, provided that it will give Hosts reasonable notice in any jurisdiction in which SITE_NAME determines to cease any such facilitation. &nbsp;</p><p><i>Damage to Accommodations</i></p><p>As a Guest, you are responsible for leaving the Accommodation in the condition it was in when you arrived. You acknowledge and agree that, as a Guest, you are responsible for your own acts and omissions and are also responsible for the acts and omissions of any individuals whom you invite to, or otherwise provide access to, the Accommodation. In the event that a Host claims otherwise and provides evidence of damage, including but not limited to photographs, you agree to pay the cost of replacing the damaged items with equivalent items. After being notified of the claim and given forty eight (48) hours to respond, the payment will be charged to and taken from the credit card on file in your SITE_NAME Account. SITE_NAME also reserves the right to charge the credit card on file in your SITE_NAME Account, or otherwise collect payment from you and pursue any avenues available to SITE_NAME in this regard, including using Security Deposits, in situations in which you have been determined, in SITE_NAME\'s sole discretion, to have damaged any Accommodation, including, but not limited to, in relation to any payment requests made by Hosts under the SITE_NAME Host Guarantee, and in relation to any payments made by SITE_NAME to Hosts. If we are unable to charge the credit card on file or otherwise collect payment from you, you agree to remit payment for any damage to the Accommodation to the applicable Host or to SITE_NAME (if applicable).</p><p>Both Guests and Hosts agree to cooperate with and assist SITE_NAME in good faith, and to provide SITE_NAME with such information and take such actions as may be reasonably requested by SITE_NAME, in connection with any complaints or claims made by Members relating to Accommodations or any personal or other property located at an Accommodation (including, without limitation, payment requests made under the SITE_NAME Host Guarantee) or with respect to any investigation undertaken by SITE_NAME or a representative of SITE_NAME regarding use or abuse of the Site, Application or the Services. If you are a Guest, upon SITE_NAME\'s reasonable request, and to the extent you are reasonably able to do so, you agree to participate in mediation or similar resolution process with a Host, at no cost to you, which process will be conducted by SITE_NAME or a third party selected by SITE_NAME or its insurer, with respect to losses for which the Host is requesting payment from SITE_NAME under the SITE_NAME Host Guarantee.</p><p>If you are a Guest, you understand and agree that SITE_NAME may make a claim under your homeowner\'s, renter\'s or other insurance policy related to any damage or loss that you may have caused or been responsible for or to an Accommodation or any personal or other property located at an Accommodation (including without limitation amounts paid by SITE_NAME under the SITE_NAME Host Guarantee). You agree to cooperate with and assist SITE_NAME in good faith, and to provide SITE_NAME with such information as may be reasonably requested by SITE_NAME, in order to make a claim under your homeowner\'s, renter\'s or other insurance policy, including, but not limited to, executing documents and taking such further acts as SITE_NAME may reasonably request to assist SITE_NAME in accomplishing the foregoing.</p><p><i>Overstaying without the Host\'s Consent</i></p><p>Guests agree that a confirmed reservation is merely a license granted by the Host to the Guest to enter and use the Listing for the limited duration of the confirmed reservation and in accordance with the Guest\'s agreement with the Host. Guests further agree to leave the Accommodation no later than the checkout time that the Host specifies in the Listing or such other time as mutually agreed upon between the Host and Guest. If a Guest stays past the agreed upon checkout time without the Host\'s consent, they no longer have a license to stay in the Listing and the Host is entitled to make the Guest leave. In addition, Guests agree that the Host can charge the Guest, for each 24 hour period that the Guest stays over the agreed period without the Host\'s consent, an additional nightly fee of two times the average nightly Accommodation Fee originally paid by the Guest to cover the inconvenience suffered by the Host, plus all applicable Service Fees, Taxes, and any legal expenses incurred by the Host to make the Guest leave (collectively, \"Additional Sums\"). Guests agree that SITE_NAME Payments, in its role as limited collection agent for the Host, shall charge the Guest\'s credit card or other payment methods it has on file to collect these Additional Sums. In addition, SITE_NAME Payments may recover any costs and expenses it incurs in collecting the Additional Sums by charging the Guest\'s credit card or other payment method on file.</p><p><b>Foreign Currency</b></p><p>SITE_NAME\'s online platform facilitates bookings between Guests and Hosts who may prefer to pay and to receive payments in different currencies, which may require foreign currency conversions to accommodate these differing currency preferences. Although the SITE_NAME platform allows users to view the price of Listings in a number of currencies, the currencies available for users to make and receive payments may be limited, and may not include the default currency in any given geographic location.</p><p>Each foreign currency conversion is processed at a foreign currency conversion rate. This rate generally refers to the amount of one currency that must be paid to buy a certain amount of another currency at a given time. For example, if it costs US$125.00 to buy €100.00, the currency conversion rate of US dollars to Euros would be 1.25, and the currency conversion rate from Euros to US dollars would be 0.8. Currency conversion rates will vary from time to time.</p><p><i>Key definitions</i></p><p>\"<b>Display Currency</b>\" means the currency in which users view Listing prices on the SITE_NAME platform. Guests may choose and change the Display Currency in order to view the pricing for a Listing in a number of different supported currencies. <br></p><p>\"<b>Booking Currency</b>\" means the currency in which a Guest has to pay for his or her booking. At the time the Guest submits a booking request, the SITE_NAME platform will select the Booking Currency, based on the Guest\'s country of origin and the payment methods available for that country. SITE_NAME supports only a certain number of currencies as Booking Currencies. The Booking Currency for a booking may be different from the relevant Listing Currency. <br></p><p>\"<b>Listing Currency</b>\" means the currency in which a Listing\'s price is set. The Listing Currency is set by the Host. <br></p><p>\"<b>Payout Currency</b>\" means the currency in which a Host\'s payout will be paid to the Host. The Payout Currency is set by the Host. <br></p><p>\"<b>Base Exchange Rate</b>\" means a system-wide rate used by SITE_NAME for foreign currency conversion that is in effect at the time the foreign currency conversion is processed, and does not include any fee or mark-up by SITE_NAME. SITE_NAME establishes the Base Exchange Rate using data from one or more third parties such as OANDA (<a target=\"_blank\" href=\"http://www.oanda.com\">http://www.oanda.com</a>). <br></p><p>\"<b>Adjusted Exchange Rate</b>\" means a rate for foreign currency conversion that is calculated by adding a mark-up to the Base Exchange Rate. This mark-up represents a charge imposed by SITE_NAME for its holding costs and foreign currency risks.</p><p><i>Foreign currency conversions on the SITE_NAME platform</i></p><p>SITE_NAME Payments will process a foreign currency conversion in the following situations:</p><p></p><ul><li>The Display Currency is different from the Listing Currency when a user views a Listing: SITE_NAME will calculate the estimated Total Fees in the Display Currency, by applying either the Base Exchange Rate or the Adjusted Exchange Rate at the time of the view to the estimated Total Fees in the Listing Currency. The Adjusted Exchange Rate will be applied if the Display Currency is a supported Booking Currency, and it is different from the Listing Currency. Otherwise, the Base Exchange Rate will be applied.</li><li>The Booking Currency is different from the Listing Currency when a Guest submits a booking request for a Listing: SITE_NAME will calculate the Total Fees in the Booking Currency, by applying either the Base Exchange Rate or the Adjusted Exchange Rate at the time of the booking request to the Total Fees in the Listing Currency. The Guest will be able to view the actual exchange rate applied. The Guest Fee, which is a percentage of the applicable Accommodation Fees, will be calculated based on the Accommodation Fees in the Booking Currency (i.e. after conversion from the Listing Currency). The Adjusted Exchange Rate will be applied if the Display Currency is the same as the Booking Currency, and it is different from the Listing Currency for the Listing. Otherwise, the Base Exchange Rate will be applied.</li><li>The Payout Currency is different from the Listing Currency when SITE_NAME initiates a payout: generally, SITE_NAME will calculate the payout to the Host, by applying the Base Exchange Rate on the date that SITE_NAME initiates the payout to the Accommodation Fees (less SITE_NAME\'s Host Fees and any Taxes in respect of the Host Fees, such as VAT in Europe) in the Listing Currency. The Host will be able to view the actual exchange rate applied in his or her transaction history in the Site or Application. In some cases where the payout method selected by the Host involves certain third-party payment processors (such as Western Union), (i) SITE_NAME will send the payout amount to the processor in a major currency (e.g. US dollars), by applying the relevant Base Exchange Rate for the Listing Currency to that major currency, (ii) the Host will be able to view the payout amount sent by SITE_NAME in that major currency in his or her transaction history in the Site or Application, and (iii) the processor will calculate the actual payout to the Host by applying its own foreign currency conversion rate for that major currency to the Payout Currency.</li><li>When a confirmed booking is modified or cancelled, and there had been a foreign currency conversion when the booking was submitted: the foreign currency conversion for any additional payments required of the Guest or any refund to the Guest will be processed at the same rate as applied to the earlier payment by the Guest.</li></ul><p></p><p>When you as a Guest submit a booking request for a Listing, you will be able to view the actual exchange rate used to calculate the Total Fees in the Booking Currency. Where the Adjusted Exchange Rate is applied, you will be able to view the mark-up included in the rate. The actual exchange rate (and any mark-up included in the rate) will also be stated in the billing receipt for your booking.</p><p>SITE_NAME updates the Base Exchange Rate on a regular basis, but not on a real-time basis. In particular, SITE_NAME does not always change the Base Exchange Rate immediately when its costs of foreign exchange change. Accordingly, the Base Exchange Rate may not be identical to the applicable market rate in effect at the specific time a foreign currency conversion is processed.</p><p>Please note that your payment company (for example, your credit or bank card issuer) will use a currency conversion rate for and may impose a currency conversion fee on your payment or payout, if your card or bank account is denominated in a currency that is different from the Booking Currency or the Payout Currency respectively. Similarly, third-party payment processors may also use a currency conversion rate for or impose a currency conversion fee on your payment or payout. All of these currency conversion rates and fees are not controlled by or known to SITE_NAME.</p><p><b>User Conduct</b></p><p>You understand and agree that you are solely responsible for compliance with any and all laws, rules, regulations, and Tax obligations that may apply to your use of the Site, Application, Services and Collective Content. In connection with your use of the Site, Application, Services and Collective Content, you may not and you agree that you will not:</p><p></p><ul><li>violate any local, state, provincial, national, or other law or regulation, or any order of a court, including, without limitation, zoning restrictions and Tax regulations;</li><li>use manual or automated software, devices, scripts, robots, backdoors or other means or processes to access, \"scrape,\" \"crawl\" or \"spider\" any web pages or other services contained in the Site, Application, Services or Collective Content;</li><li>access or use our Site, Application, Services or the SITE_NAME API to use, expose, or allow to be used or exposed, any SITE_NAME Content: (i) that is not publicly displayed by SITE_NAME in its search results pages or listing pages before a booking is confirmed; (ii) in any way that is inconsistent with the SITE_NAME Privacy Policy or Terms of Service; or (iii) in any way that otherwise violates the privacy rights or any other rights of SITE_NAME\'s users or any other third party;</li><li>use the Site, Application, Services or Collective Content for any commercial or other purposes that are not expressly permitted by these Terms;</li><li>copy, store or otherwise access or use any information contained on the Site, Application, Services or Collective Content for purposes not expressly permitted by these Terms;</li><li>infringe the rights of any person or entity, including without limitation, their intellectual property, privacy, publicity or contractual rights;</li><li>interfere with or damage our Site, Application or Services, including, without limitation, through the use of viruses, cancel bots, Trojan horses, harmful code, flood pings, denial-of-service attacks, backdoors, packet or IP spoofing, forged routing or electronic mail address information or similar methods or technology;</li><li>use our Site, Application or Services to transmit, distribute, post or submit any information concerning any other person or entity, including without limitation, photographs of others without their permission, personal contact information or credit, debit, calling card or account numbers;</li><li>use our Site, Application, Services or Collective Content in connection with the distribution of unsolicited commercial email (\"spam\") or advertisements unrelated to lodging in a private residence;</li><li>\"stalk\" or harass any other user of our Site, Application, Services or Collective Content, or collect or store any personally identifiable information about any other user other than for purposes of transacting as an SITE_NAME Guest or Host;</li><li>offer, as a Host, any Accommodation that you do not yourself own or have permission to rent as a residential or other property (without limiting the foregoing, you will not list Accommodations as a Host if you are serving in the capacity of a rental agent or listing agent for a third party);</li><li>offer, as a Host, any Accommodation that may not be rented or subleased pursuant to the terms and conditions of an agreement with a third party, including, but not limited to, a property rental agreement;</li><li>register for more than one SITE_NAME Account or register for an SITE_NAME Account on behalf of an individual other than yourself;</li><li>unless SITE_NAME explicitly permits otherwise, request or book a stay at any Accommodation if you will not actually be staying at the Accommodation yourself;</li><li>contact a Host for any purpose other than asking a question related to a booking, such Host\'s Accommodations or Listings;</li><li>contact a Guest for any purpose other than asking a question related to a booking or such Guest\'s use of the Site, Application and Services;</li><li>recruit or otherwise solicit any Host or other Member to join third-party services or websites that are competitive to SITE_NAME, without SITE_NAME\'s prior written approval;</li><li>impersonate any person or entity, or falsify or otherwise misrepresent yourself or your affiliation with any person or entity;</li><li>use automated scripts to collect information from or otherwise interact with the Site, Application, Services or Collective Content;</li><li>use the Site, Application, Services or Collective Content to find a Host or Guest and then complete a booking of an Accommodation independent of the Site, Application or Services, in order to circumvent the obligation to pay any Service Fees related to SITE_NAME\'s provision of the Services or for any other reasons;</li><li>as a Host, submit any Listing with false or misleading price information, or submit any Listing with a price that you do not intend to honor;</li><li>post, upload, publish, submit or transmit any Content that: (i)&nbsp;infringes, misappropriates or violates a third party\'s patent, copyright, trademark, trade secret, moral rights or other intellectual property rights, or rights of publicity or privacy; (ii) violates, or encourages any conduct that would violate, any applicable law or regulation or would give rise to civil liability; (iii) is fraudulent, false, misleading or deceptive; (iv) is defamatory, obscene, pornographic, vulgar or offensive; (v)&nbsp;promotes discrimination, bigotry, racism, hatred, harassment or harm against any individual or group; (vi) is violent or threatening or promotes violence or actions that are threatening to any other person; or (vii) promotes illegal or harmful activities or substances;</li><li>systematically retrieve data or other content from our Site, Application or Services to create or compile, directly or indirectly, in single or multiple downloads, a collection, compilation, database, directory or the like, whether by manual methods, through the use of bots, crawlers, or spiders, or otherwise;</li><li>use, display, mirror or frame the Site, Application, Services or Collective Content, or any individual element within the Site, Application, Services or Collective Content, SITE_NAME\'s name, any SITE_NAME trademark, logo or other proprietary information, or the layout and design of any page or form contained on a page in the Site, Application or Services, without SITE_NAME\'s express written consent;</li><li>access, tamper with, or use non-public areas of the Site, Application or Services, SITE_NAME\'s computer systems, or the technical delivery systems of SITE_NAME\'s providers;</li><li>attempt to probe, scan, or test the vulnerability of any SITE_NAME system or network or breach any security or authentication measures;</li><li>avoid, bypass, remove, deactivate, impair, descramble, or otherwise circumvent any technological measure implemented by SITE_NAME or any of SITE_NAME\'s providers or any other third party (including another user) to protect the Site, Services, Application or Collective Content;</li><li>forge any TCP/IP packet header or any part of the header information in any email or newsgroup posting, or in any way use the Site, Services, Application or Collective Content to send altered, deceptive or false source-identifying information;</li><li>attempt to decipher, decompile, disassemble or reverse engineer any of the software used to provide the Site, Services, Application or Collective Content; or</li><li>advocate, encourage, or assist any third party in doing any of the foregoing.</li><li>accept or make a payment for Accommodation Fees outside SITE_NAME Payments. If you do so, you acknowledge and agree that you: (i) would be in breach of these Terms; (ii) accept all risks and responsibility for such payment, and (iii) hold SITE_NAME harmless from any liability for such payment.</li></ul><p></p><p>SITE_NAME has the right to investigate and prosecute violations of any of the above to the fullest extent of the law.</p><p>SITE_NAME may access, preserve and disclose any of your information if we are required to do so by law, or if we believe in good faith that it is reasonably necessary to (i) respond to claims asserted against SITE_NAME or to comply with legal process (for example, subpoenas or warrants), (ii) enforce or administer our agreements with users, such as these Terms and the <a href=\"https://www.SITE_NAME.com/host_guarantee\">SITE_NAME Host Guarantee</a>, (iii) for fraud prevention, risk assessment, investigation, customer support, product development and de-bugging purposes, or (iv) protect the rights, property or safety of SITE_NAME, its users, or members of the public. You acknowledge that SITE_NAME has no obligation to monitor your access to or use of the Site, Application, Services or Collective Content or to review or edit any Member Content, but has the right to do so for the purpose of operating and improving the Site, Application and Services (including without limitation for fraud prevention, risk assessment, investigation and customer support purposes), to ensure your compliance with these Terms, to comply with applicable law or the order or requirement of a court, administrative agency or other governmental body, to respond to content that it determines is otherwise objectionable or as set forth in these Terms. SITE_NAME reserves the right, at any time and without prior notice, to remove or disable access to any Collective Content that SITE_NAME, at its sole discretion, considers to be objectionable for any reason, in violation of these Terms or otherwise harmful to the Site, Application or Services.</p><p><b>Privacy</b></p><p>You agree that SITE_NAME\'s <a href=\"SITE_URL/privacy_policy\">Privacy Policy</a>&nbsp;(as may be updated from time to time) governs SITE_NAME\'s collection and use of your personal information.</p><p><b>Ownership</b></p><p>The Site, Application, Services, and Collective Content are protected by copyright, trademark, and other laws of the United States and foreign countries. You acknowledge and agree that the Site, Application, Services and Collective Content, including all associated intellectual property rights, are the exclusive property of SITE_NAME and its licensors. You will not remove, alter or obscure any copyright, trademark, service mark or other proprietary rights notices incorporated in or accompanying the Site, Application, Services, or Collective Content.</p><p><b>Additional Terms</b></p><p>Our Services have different products and offerings, so sometimes additional terms or product requirements may apply to your use of those products. For example, additional terms apply i<a href=\"https://www.SITE_NAME.com/referrals/terms_and_conditions\">f you refer new users</a> to SITE_NAME (\"Referral Program\") or participate in our <a href=\"https://www.SITE_NAME.com/home-safety/terms-and-conditions\">Home Safety program</a>. If additional terms are available for the relevant product or Services you use, those additional terms become part of these Terms.</p><p><b>Specific Terms Regarding SITE_NAME Travel Credits</b></p><p>SITE_NAME Travel Credits may only be redeemed for confirmed bookings via the Site, Application and Services and after you accrue SITE_NAME Travel Credits, such SITE_NAME Travel Credits will be automatically applied to your next confirmed booking made via the Site, Application and Services. SITE_NAME Travel Credits are credit only and have no cash value nor can they be refunded or exchanged for cash. You may only redeem SITE_NAME Travel Credits after the SITE_NAME Travel Credits are reflected in your SITE_NAME Account. The scope, variety, and type of services and products that you may obtain by redeeming SITE_NAME Travel Credits can change at any time.</p><p>SITE_NAME Travel Credits expire three (3) years from the date that any SITE_NAME Travel Credits are last accrued in your SITE_NAME Account. SITE_NAME will notify you at the email address you provided during Account registration within thirty (30) days of when the SITE_NAME Travel Credits in your SITE_NAME Account are scheduled to expire. If for some reason you believe that there is a discrepancy regarding your balance of SITE_NAME Travel Credits, please contact us. SITE_NAME may require you to submit additional information in order to make a determination regarding your balance. All decisions regarding your balance will be final and at SITE_NAME\'s sole discretion. You are responsible for any Tax consequences, if any, that may result from your redemption or use of SITE_NAME Travel Credits. Where applicable, SITE_NAME may be required to account for VAT on any services for which the SITE_NAME Travel Credits are redeemed.</p><p>Without limiting any other terms of these Terms and subject to applicable law, all SITE_NAME Travel Credits are forfeited if your SITE_NAME Account is terminated or suspended for any reason, in SITE_NAME\'s sole discretion, or if SITE_NAME discontinues providing the Site, Application, Services or the Referral Program.</p><p><b>Application License</b></p><p>Subject to your compliance with these Terms, SITE_NAME grants you a limited non-exclusive, non-transferable license to download and install a copy of the Application on each mobile device or computer that you own or control and run such copy of the Application solely for your own personal use. Furthermore, with respect to any App Store Sourced Application (defined below), you will only use the App Store Sourced Application (i) on an Apple-branded product that runs the iOS (Apple\'s proprietary operating system) and (ii) as permitted by the \"Usage Rules\" set forth in the Apple App Store Terms of Service. SITE_NAME reserves all rights in the Application not expressly granted to you by these Terms.</p><p><b>SITE_NAME Content and Member Content License</b></p><p>Subject to your compliance with the terms and conditions of these Terms, SITE_NAME grants you a limited, non-exclusive, non-transferable license, to (i) access and view any SITE_NAME Content solely for your personal and non-commercial purposes and (ii) access and view any Member Content to which you are permitted access, solely for your personal and non-commercial purposes. You have no right to sublicense the license rights granted in this section.</p><p>You will not use, copy, adapt, modify, prepare derivative works based upon, distribute, license, sell, transfer, publicly display, publicly perform, transmit, broadcast or otherwise exploit the Site, Application, Services, or Collective Content, except as expressly permitted in these Terms. No licenses or rights are granted to you by implication or otherwise under any intellectual property rights owned or controlled by SITE_NAME or its licensors, except for the licenses and rights expressly granted in these Terms.</p><p><b>Member Content</b></p><p>We may, in our sole discretion, permit you to post, upload, publish, submit or transmit Member Content. By making available any Member Content on or through the Site, Application and Services, you hereby grant to SITE_NAME a worldwide, irrevocable, perpetual (or for the term of the protection), non-exclusive, transferable, royalty-free license, with the right to sublicense, to use, view, copy, adapt, modify, distribute, license, sell, transfer, publicly display, publicly perform, transmit, stream, broadcast, access, view, and otherwise exploit such Member Content on, through, by means of or to promote or market the Site, Application and Services. SITE_NAME does not claim any ownership rights in any such Member Content and nothing in these Terms will be deemed to restrict any rights that you may have to use and exploit any such Member Content.</p><p>You acknowledge and agree that you are solely responsible for all Member Content that you make available through the Site, Application and Services. Accordingly, you represent and warrant that: (i) you either are the sole and exclusive owner of all Member Content that you make available through the Site, Application and Services or you have all rights, licenses, consents and releases that are necessary to grant to SITE_NAME the rights in such Member Content, as contemplated under these Terms; and (ii) neither the Member Content nor your posting, uploading, publication, submission or transmittal of the Member Content or SITE_NAME\'s use of the Member Content (or any portion thereof) on, through or by means of the Site, Application and the Services will infringe, misappropriate or violate a third party\'s patent, copyright, trademark, trade secret, moral rights or other proprietary or intellectual property rights, or rights of publicity or privacy, or result in the violation of any applicable law or regulation.</p><p><b>Links</b></p><p>The Site, Application and Services may contain links to third-party websites or resources. You acknowledge and agree that SITE_NAME is not responsible or liable for: (i) the availability or accuracy of such websites or resources; or (ii) the content, products, or services on or available from such websites or resources. Links to such websites or resources do not imply any endorsement by SITE_NAME of such websites or resources or the content, products, or services available from such websites or resources. You acknowledge sole responsibility for and assume all risk arising from your use of any such websites or resources or the Content, products or services on or available from such websites or resources.</p><p>Some portions of the SITE_NAME platform implement Google Maps/Earth mapping services, including Google Maps API(s). Your use of Google Maps/Earth is subject to <a href=\"http://www.google.com/intl/en_us/help/terms_maps.html\">Google\'s terms of use</a>.</p><p><b>Proprietary Rights Notices</b></p><p>All trademarks, service marks, logos, trade names and any other proprietary designations of SITE_NAME used herein are trademarks or registered trademarks of SITE_NAME. Any other trademarks, service marks, logos, trade names and any other proprietary designations are the trademarks or registered trademarks of their respective parties.</p><p><b>Feedback</b></p><p>We welcome and encourage you to provide feedback, comments and suggestions for improvements to the Site, Application and Services (\"<b>Feedback</b>\"). You may submit Feedback by emailing us, section of the Site and Application, or by other means of communication. You acknowledge and agree that all Feedback you give us will be the sole and exclusive property of SITE_NAME and you hereby irrevocably assign to SITE_NAME and agree to irrevocably assign to SITE_NAME all of your right, title, and interest in and to all Feedback, including without limitation all worldwide patent, copyright, trade secret, moral and other proprietary or intellectual property rights therein, and waive any moral rights you may have in such Feedback. At SITE_NAME\'s request and expense, you will execute documents and take such further acts as SITE_NAME may reasonably request to assist SITE_NAME to acquire, perfect, and maintain its intellectual property rights and other legal protections for the Feedback.</p><p><b>Copyright Policy</b></p><p>SITE_NAME respects copyright law and expects its users to do the same. It is SITE_NAME\'s policy to terminate in appropriate circumstances the SITE_NAME Accounts of Members or other account holders who repeatedly infringe or are believed to be repeatedly infringing the rights of copyright holders. Please see SITE_NAME\'s <a href=\"SITE_URL/copyright_policy\">Copyright Policy</a> for further information.</p><p><b>Suspension, Termination and SITE_NAME Account Cancellation</b></p><p>We may, in our discretion and without liability to you, with or without cause, with or without prior notice and at any time, decide to limit, suspend, deactivate or cancel your SITE_NAME Account. If we exercise our discretion under these Terms to do so, any or all of the following can occur with or without prior notice or explanation to you: (a) your SITE_NAME Account will be deactivated or suspended, your password will be disabled, and you will not be able to access the Site, Application, Services, your SITE_NAME Account, your Member Content, or receive assistance from SITE_NAME Customer Service, (b) any pending or accepted future bookings as either Host or Guest will be immediately terminated, (c) we may communicate to your Guests or Hosts that a potential or confirmed booking has been cancelled, (d) we may refund your Guests in full for any and all confirmed reservations, irrespective of preexisting cancellation policies, (e) we may contact your Guests to inform them about potential alternate Accommodations with other Hosts that may be available on the Site, Application and Services, and (f) you will not be entitled to any compensation for reservations or bookings (even if confirmed) that were cancelled as a result of a suspension, deactivation or termination of your SITE_NAME Account. You may cancel your SITE_NAME Account at any time via the \"Cancel Account\" feature of the Services or by sending us an email. Please note that if your SITE_NAME Account is cancelled, we do not have an obligation to delete or return to you any Content you have posted to the Site, Application and Services, including, but not limited to, any reviews or Feedback.</p><p><b>Disclaimers</b></p><p>IF YOU CHOOSE TO USE THE SITE, APPLICATION, SERVICES OR COLLECTIVE CONTENT OR PARTICIPATE IN THE REFERRAL PROGRAM, YOU DO SO AT YOUR SOLE RISK. YOU ACKNOWLEDGE AND AGREE THAT SITE_NAME DOES NOT&nbsp;HAVE AN OBLIGATION&nbsp;TO CONDUCT BACKGROUND OR REGISTERED SEX OFFENDER CHECKS ON ANY MEMBER, INCLUDING, BUT NOT LIMITED TO, GUESTS AND HOSTS, BUT MAY CONDUCT SUCH BACKGROUND OR REGISTERED SEX OFFENDER CHECKS IN ITS SOLE DISCRETION.&nbsp;THE SITE, APPLICATION, SERVICES, COLLECTIVE CONTENT AND REFERRAL PROGRAM ARE PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED. WITHOUT LIMITING THE FOREGOING, SITE_NAME EXPLICITLY DISCLAIMS ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT, AND ANY WARRANTIES ARISING OUT OF COURSE OF DEALING OR USAGE OF TRADE. SITE_NAME MAKES NO WARRANTY THAT THE SITE, APPLICATION, SERVICES, COLLECTIVE CONTENT, INCLUDING, BUT NOT LIMITED TO, THE LISTINGS OR ANY ACCOMMODATIONS, OR THE REFERRAL PROGRAM WILL MEET YOUR REQUIREMENTS OR BE AVAILABLE ON AN UNINTERRUPTED, SECURE, OR ERROR-FREE BASIS. SITE_NAME MAKES NO WARRANTY REGARDING THE QUALITY OF ANY LISTINGS, ACCOMMODATIONS, HOSTS, GUESTS, YOUR ACCRUAL OF SITE_NAME TRAVEL CREDITS, THE SERVICES OR COLLECTIVE CONTENT OR THE ACCURACY, TIMELINESS, TRUTHFULNESS, COMPLETENESS OR RELIABILITY OF ANY COLLECTIVE CONTENT OBTAINED THROUGH THE SITE, APPLICATION, SERVICES OR REFERRAL PROGRAM.</p><p>NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED FROM SITE_NAME OR THROUGH THE SITE, APPLICATION, SERVICES OR COLLECTIVE CONTENT, WILL CREATE ANY WARRANTY NOT EXPRESSLY MADE HEREIN.</p><p>YOU ARE SOLELY RESPONSIBLE FOR ALL OF YOUR COMMUNICATIONS AND INTERACTIONS WITH OTHER USERS OF THE SITE, APPLICATION OR SERVICES AND WITH OTHER PERSONS WITH WHOM YOU COMMUNICATE OR INTERACT AS A RESULT OF YOUR USE OF THE SITE, APPLICATION OR SERVICES, INCLUDING, BUT NOT LIMITED TO, ANY HOSTS OR GUESTS. YOU UNDERSTAND THAT SITE_NAME DOES NOT MAKE ANY ATTEMPT TO VERIFY THE STATEMENTS OF USERS OF THE SITE, APPLICATION OR SERVICES OR TO REVIEW OR VISIT ANY ACCOMMODATIONS. SITE_NAME MAKES NO REPRESENTATIONS OR WARRANTIES AS TO THE CONDUCT OF USERS OF THE SITE, APPLICATION OR SERVICES OR THEIR COMPATIBILITY WITH ANY CURRENT OR FUTURE USERS OF THE SITE, APPLICATION OR SERVICES. YOU AGREE TO TAKE REASONABLE PRECAUTIONS IN ALL COMMUNICATIONS AND INTERACTIONS WITH OTHER USERS OF THE SITE, APPLICATION OR SERVICES AND WITH OTHER PERSONS WITH WHOM YOU COMMUNICATE OR INTERACT AS A RESULT OF YOUR USE OF THE SITE, APPLICATION OR SERVICES, INCLUDING, BUT NOT LIMITED TO, GUESTS AND HOSTS, PARTICULARLY IF YOU DECIDE TO MEET OFFLINE OR IN PERSON REGARDLESS OF WHETHER SUCH MEETINGS ARE ORGANIZED BY SITE_NAME. NOTWITHSTANDING SITE_NAME\'S APPOINTMENT AS THE LIMITED PAYMENT COLLECTION AGENT OF THE HOSTS FOR THE PURPOSE OF ACCEPTING PAYMENTS FROM GUESTS ON BEHALF OF THE HOSTS, SITE_NAME EXPLICITLY DISCLAIMS ALL LIABILITY FOR ANY ACT OR OMISSION OF ANY GUEST OR OTHER THIRD PARTY.</p><p><b>Limitation of Liability</b></p><p>YOU ACKNOWLEDGE AND AGREE THAT, TO THE MAXIMUM EXTENT PERMITTED BY LAW, THE ENTIRE RISK ARISING OUT OF YOUR ACCESS TO AND USE OF THE SITE, APPLICATION, SERVICES AND COLLECTIVE CONTENT, YOUR LISTING OR BOOKING OF ANY ACCOMMODATIONS VIA THE SITE, APPLICATION AND SERVICES, YOUR PARTICIPATION IN THE REFERRAL PROGRAM, AND ANY CONTACT YOU HAVE WITH OTHER USERS OF SITE_NAME WHETHER IN PERSON OR ONLINE REMAINS WITH YOU. NEITHER SITE_NAME NOR ANY OTHER PARTY INVOLVED IN CREATING, PRODUCING, OR DELIVERING THE SITE, APPLICATION, SERVICES, COLLECTIVE CONTENT OR THE REFERRAL PROGRAM WILL BE LIABLE FOR ANY INCIDENTAL, SPECIAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, LOSS OF DATA OR LOSS OF GOODWILL, SERVICE INTERRUPTION, COMPUTER DAMAGE OR SYSTEM FAILURE OR THE COST OF SUBSTITUTE PRODUCTS OR SERVICES, OR FOR ANY DAMAGES FOR PERSONAL OR BODILY INJURY OR EMOTIONAL DISTRESS ARISING OUT OF OR IN CONNECTION WITH THESE TERMS, FROM THE USE OF OR INABILITY TO USE THE SITE, APPLICATION, SERVICES OR COLLECTIVE CONTENT, FROM ANY COMMUNICATIONS, INTERACTIONS OR MEETINGS WITH OTHER USERS OF THE SITE, APPLICATION, OR SERVICES OR OTHER PERSONS WITH WHOM YOU COMMUNICATE OR INTERACT AS A RESULT OF YOUR USE OF THE SITE, APPLICATION, SERVICES, OR YOUR PARTICIPATION IN THE REFERRAL PROGRAM OR FROM YOUR LISTING OR BOOKING OF ANY ACCOMMODATION VIA THE SITE, APPLICATION AND SERVICES, WHETHER BASED ON WARRANTY, CONTRACT, TORT (INCLUDING NEGLIGENCE), PRODUCT LIABILITY OR ANY OTHER LEGAL THEORY, AND WHETHER OR NOT SITE_NAME HAS BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGE, EVEN IF A LIMITED REMEDY SET FORTH HEREIN IS FOUND TO HAVE FAILED OF ITS ESSENTIAL PURPOSE.</p><p>EXCEPT FOR OUR OBLIGATIONS TO PAY AMOUNTS TO APPLICABLE HOSTS PURSUANT TO THESE TERMS OR AN APPROVED PAYMENT REQUEST UNDER THE SITE_NAME HOST GUARANTEE, IN NO EVENT WILL SITE_NAME\'S AGGREGATE LIABILITY ARISING OUT OF OR IN CONNECTION WITH THESE TERMS AND YOUR USE OF THE SITE, APPLICATION AND SERVICES INCLUDING, BUT NOT LIMITED TO, FROM YOUR LISTING OR BOOKING OF ANY ACCOMMODATION VIA THE SITE, APPLICATION AND SERVICES, OR FROM THE USE OF OR INABILITY TO USE THE SITE, APPLICATION, SERVICES, OR COLLECTIVE CONTENT OR YOUR PARTICIPATION IN THE REFERRAL PROGRAM AND IN CONNECTION WITH ANY ACCOMMODATION OR INTERACTIONS WITH ANY OTHER MEMBERS, EXCEED THE AMOUNTS YOU HAVE PAID OR OWE FOR BOOKINGS VIA THE SITE, APPLICATION AND SERVICES AS A GUEST IN THE TWELVE (12) MONTH PERIOD PRIOR TO THE EVENT GIVING RISE TO THE LIABILITY, OR IF YOU ARE A HOST, THE AMOUNTS PAID BY SITE_NAME TO YOU IN THE TWELVE (12) MONTH PERIOD PRIOR TO THE EVENT GIVING RISE TO THE LIABILITY, OR ONE HUNDRED U.S. DOLLARS (US$100), IF NO SUCH PAYMENTS HAVE BEEN MADE, AS APPLICABLE. THE LIMITATIONS OF DAMAGES SET FORTH ABOVE ARE FUNDAMENTAL ELEMENTS OF THE BASIS OF THE BARGAIN BETWEEN SITE_NAME AND YOU. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, SO THE ABOVE LIMITATION MAY NOT APPLY TO YOU.</p><p><b>Indemnification</b></p><p>You agree to release, defend, indemnify, and hold SITE_NAME and its affiliates and subsidiaries, and their officers, directors, employees and agents, harmless from and against any claims, liabilities, damages, losses, and expenses, including, without limitation, reasonable legal and accounting fees, arising out of or in any way connected with (a) your access to or use of the Site, Application, Services, or Collective Content or your violation of these Terms; (b) your Member Content; (c) your (i) interaction with any Member, (ii) booking of an Accommodation, or (iii) creation of a Listing; (d) the use, condition or rental of an Accommodation by you, including but not limited to any injuries, losses, or damages (compensatory, direct, incidental, consequential or otherwise) of any kind arising in connection with or as a result of a rental, booking or use of a Accommodation; and (e) your participation in the Referral Program or your accrual of any SITE_NAME Travel Credits.</p><p><b>Export Control and Restricted Countries</b></p><p>You may not use, export, re-export, import, or transfer the Application except as authorized by United States law, the laws of the jurisdiction in which you obtained the Application, and any other applicable laws. In particular, but without limitation, the Application may not be exported or re-exported: (a) into any United States embargoed countries; or (b) to anyone on the U.S. Treasury Department\'s list of Specially Designated Nationals or the U.S. Department of Commerce\'s Denied Persons List or Entity List. By using the Site, Application and Services, you represent and warrant that (i) neither you nor your listed Accommodation is located in a country that is subject to a U.S. Government embargo, or that has been designated by the U.S. Government as a \"terrorist supporting\" country and (ii) you are not listed on any U.S. Government list of prohibited or restricted parties. You also will not use the Site, Application and Services for any purpose prohibited by U.S. law, including the development, design, manufacture or production of missiles, or nuclear, chemical or biological weapons. SITE_NAME does not permit Listings associated with certain countries due to U.S. embargo restrictions.</p><p><b>Accessing and Downloading the Application from iTunes</b></p><p>The following applies to any Application accessed through or downloaded from the Apple App Store (\"<b>App Store Sourced Application</b>\"):</p><p></p><ul><li>You acknowledge and agree that (i) these Terms are concluded between you and SITE_NAME only, and not Apple, and (ii) SITE_NAME, not Apple, is solely responsible for the App Store Sourced Application and content thereof. Your use of the App Store Sourced Application must comply with the App Store Terms of Services.</li><li>You acknowledge that Apple has no obligation whatsoever to furnish any maintenance and support services with respect to the App Store Sourced Application.</li><li>In the event of any failure of the App Store Sourced Application to conform to any applicable warranty, you may notify Apple, and Apple will refund the purchase price for the App Store Sourced Application to you and to the maximum extent permitted by applicable law, Apple will have no other warranty obligation whatsoever with respect to the App Store Sourced Application. As between SITE_NAME and Apple, any other claims, losses, liabilities, damages, costs or expenses attributable to any failure to conform to any warranty will be the sole responsibility of SITE_NAME.</li><li>You and SITE_NAME acknowledge that, as between SITE_NAME and Apple, Apple is not responsible for addressing any claims you have or any claims of any third party relating to the App Store Sourced Application or your possession and use of the App Store Sourced Application, including, but not limited to: (i) product liability claims; (ii) any claim that the App Store Sourced Application fails to conform to any applicable legal or regulatory requirement; and (iii) claims arising under consumer protection or similar legislation.</li><li>You and SITE_NAME acknowledge that, in the event of any third-party claim that the App Store Sourced Application or your possession and use of that App Store Sourced Application infringes that third party\'s intellectual property rights, as between SITE_NAME and Apple, SITE_NAME, not Apple, will be solely responsible for the investigation, defense, settlement and discharge of any such intellectual property infringement claim to the extent required by these Terms.</li><li>You and SITE_NAME acknowledge and agree that Apple, and Apple\'s subsidiaries, are third-party beneficiaries of these Terms as related to your license of the App Store Sourced Application, and that, upon your acceptance of the terms and conditions of these Terms, Apple will have the right (and will be deemed to have accepted the right) to enforce these Terms as related to your license of the App Store Sourced Application against you as a third-party beneficiary thereof.</li><li>Without limiting any other terms of these Terms, you must comply with all applicable third-party terms of agreement when using the App Store Sourced Application.</li></ul><p></p><p><b>Reporting Misconduct</b></p><p>If you stay with or host anyone who you feel is acting or has acted inappropriately, including but not limited to anyone who (i) engages in offensive, violent or sexually inappropriate behavior, (ii) you suspect of stealing from you, or (iii) engages in any other disturbing conduct, you should immediately report such person to the appropriate authorities and then to SITE_NAME by contacting us with your police station and report number; provided that your report will not obligate us to take any action beyond that required by law (if any) or cause us to incur any liability to you.</p><p><b>Entire Agreement</b></p><p>These Terms constitute the entire and exclusive understanding and agreement between SITE_NAME and you regarding the Site, Application, Services, Collective Content, and any bookings or Listings of Accommodations made via the Site, Application and Services, and these Terms supersede and replace any and all prior oral or written understandings or agreements between SITE_NAME and you regarding bookings or listings of Accommodations, the Site, Application, Services, and Collective Content.</p><p><b>Assignment</b></p><p>You may not assign or transfer these Terms, by operation of law or otherwise, without SITE_NAME\'s prior written consent. Any attempt by you to assign or transfer these Terms, without such consent, will be null and of no effect. SITE_NAME may assign or transfer these Terms, at its sole discretion, without restriction. Subject to the foregoing, these Terms will bind and inure to the benefit of the parties, their successors and permitted assigns.</p><p><b>Notices</b></p><p>Any notices or other communications permitted or required hereunder, including those regarding modifications to these Terms, will be in writing and given by SITE_NAME (i) via email (in each case to the address that you provide) or (ii) by posting to the Site or via the Application. For notices made by e-mail, the date of receipt will be deemed the date on which such notice is transmitted.</p><p><b>Controlling Law and Jurisdiction</b></p><p>These Terms and your use of the Services will be interpreted in accordance with the laws of the State of California and the United States of America, without regard to its conflict-of-law provisions. You and we agree to submit to the personal jurisdiction of a state court located in San Francisco County, San Francisco, California or a United States District Court, Northern District of California located in San Francisco, California for any actions for which the parties&nbsp;<b>retain the right to seek</b> injunctive or other equitable relief in a court of competent jurisdiction to prevent the actual or threatened infringement, misappropriation or violation of a party\'s copyrights, trademarks, trade secrets, patents, or other intellectual property rights,&nbsp;<b>as set forth in the Dispute Resolution provision below.</b></p><p><b>Dispute Resolution</b></p><p>You and SITE_NAME agree that any dispute, claim or controversy arising out of or relating to these Terms or the breach, termination, enforcement, interpretation or validity thereof, or to the use of the Services or use of the Site or Application (collectively, \"<b>Disputes</b>\") will be settled by binding arbitration, except that each party retains the right to seek injunctive or other equitable relief in a court of competent jurisdiction to prevent the actual or threatened infringement, misappropriation or violation of a party\'s copyrights, trademarks, trade secrets, patents, or other intellectual property rights. You acknowledge and agree that you and SITE_NAME are each waiving the right to a trial by jury or to participate as a plaintiff or class member in any purported class action or representative proceeding. Further, unless both you and SITE_NAME otherwise agree in writing, the arbitrator may not consolidate more than one person\'s claims, and may not otherwise preside over any form of any class or representative proceeding. If this specific paragraph is held unenforceable, then the entirety of this \"Dispute Resolution\" section will be deemed void. Except as provided in the preceding sentence, this \"Dispute Resolution\" section will survive any termination of these Terms.</p><p><u>Arbitration Rules and Governing Law</u>. The arbitration will be administered by the American Arbitration Association (\"<b>AAA</b>\") in accordance with the Commercial Arbitration Rules and the Supplementary Procedures for Consumer Related Disputes (the \"<b>AAA Rules</b>\") then in effect, except as modified by this \"Dispute Resolution\" section. (The AAA Rules are available at&nbsp;<a target=\"_blank\" href=\"http://www.adr.org/arb_med\">www.adr.org/arb_med</a> or by calling the AAA at 1-800-778-7879.) The Federal Arbitration Act will govern the interpretation and enforcement of this section.</p><p><u>Arbitration Process</u>. A party who desires to initiate arbitration must provide the other party with a written Demand for Arbitration as specified in the AAA Rules. (The AAA provides a <a href=\"http://www.adr.org/aaa/ShowPDF?doc=ADRSTG_004175\">form Demand for Arbitration</a>&nbsp;and a separate <a href=\"http://adr.org/aaa/ShowPDF?doc=ADRSTG_004314\">form for California residents</a>) The arbitrator will be either a retired judge or an attorney licensed to practice law in the state of California and will be selected by the parties from the AAA\'s roster of consumer dispute arbitrators. If the parties are unable to agree upon an arbitrator within seven (7) days of delivery of the Demand for Arbitration, then the AAA will appoint the arbitrator in accordance with the AAA Rules.</p><p><u>Arbitration Location and Procedure</u>. Unless you and SITE_NAME otherwise agree, the arbitration will be conducted in the county where you reside. If your claim does not exceed $10,000, then the arbitration will be conducted solely on the basis of documents you and SITE_NAME submit to the arbitrator, unless you request a hearing or the arbitrator determines that a hearing is necessary. If your claim exceeds $10,000, your right to a hearing will be determined by the AAA Rules. Subject to the AAA Rules, the arbitrator will have the discretion to direct a reasonable exchange of information by the parties, consistent with the expedited nature of the arbitration.</p><p><u>Arbitrator\'s Decision</u>. The arbitrator will render an award within the time frame specified in the AAA Rules. The arbitrator\'s decision will include the essential findings and conclusions upon which the arbitrator based the award. Judgment on the arbitration award may be entered in any court having jurisdiction thereof. The arbitrator\'s award damages must be consistent with the terms of the \"Limitation of Liability\" section above as to the types and the amounts of damages for which a party may be held liable. The arbitrator may award declaratory or injunctive relief only in favor of the claimant and only to the extent necessary to provide relief warranted by the claimant\'s individual claim. If you prevail in arbitration you will be entitled to an award of attorneys\' fees and expenses, to the extent provided under applicable law. SITE_NAME will not seek, and hereby waives all rights it may have under applicable law to recover, attorneys\' fees and expenses if it prevails in arbitration.</p><p><u>Fees</u>. Your responsibility to pay any AAA filing, administrative and arbitrator fees will be solely as set forth in the AAA Rules. However, if your claim for damages does not exceed $75,000, SITE_NAME will pay all such fees unless the arbitrator finds that either the substance of your claim or the relief sought in your Demand for Arbitration was frivolous or was brought for an improper purpose (as measured by the standards set forth in Federal Rule of Civil Procedure 11(b)).</p><p><u>Changes</u>. Notwithstanding the provisions of the \"Modification\" section above, if SITE_NAME changes this \"Dispute Resolution\" section after the date you first accepted these Terms (or accepted any subsequent changes to these Terms), you may reject any such change by sending us written notice (including by email) within 30 days of the date such change became effective, as indicated in the \"Last Updated Date\" above or in the date of SITE_NAME\'s email to you notifying you of such change. By rejecting any change, you are agreeing that you will arbitrate any Dispute between you and SITE_NAME in accordance with the provisions of this \"Dispute Resolution\" section as of the date you first accepted these Terms (or accepted any subsequent changes to these Terms).</p><p><b>General</b></p><p>The failure of SITE_NAME to enforce any right or provision of these Terms will not constitute a waiver of future enforcement of that right or provision. The waiver of any such right or provision will be effective only if in writing and signed by a duly authorized representative of SITE_NAME. Except as expressly set forth in these Terms, the exercise by either party of any of its remedies under these Terms will be without prejudice to its other remedies under these Terms or otherwise. If for any reason an arbitrator or a court of competent jurisdiction finds any provision of these Terms invalid or unenforceable, that provision will be enforced to the maximum extent permissible and the other provisions of these Terms will remain in full force and effect.</p><p><b>Third party beneficiary</b></p><p>These Terms do not and are not intended to confer any rights or remedies upon any person other than the parties. Notwithstanding the foregoing, the parties agree that the payment card networks are third party beneficiaries of these Terms for purposes of enforcing provisions related to payments, but that their consent or agreement is not necessary for any changes or modifications to these Terms.</p><p><b>Additional Clauses for Users Contracting with SITE_NAME Ireland</b></p><p>The following paragraphs will apply if you are contracting with SITE_NAME Ireland.</p><p>The final sentence in the&nbsp;<b>Suspension, Termination and SITE_NAME Account Cancellation</b>&nbsp;clause shall be removed and replaced with the following:&nbsp;<i>\"Please note that if your SITE_NAME Account is cancelled, we do not have an obligation to return to you any Content you have posted to the Site, Application and Services, including, but not limited to, any reviews or Feedback.\"</i></p><p>The&nbsp;<b>Controlling Law and Jurisdiction</b>&nbsp;clause shall be removed and replaced with the following:&nbsp;<i>\"<b>Controlling Law and Jurisdiction</b>&nbsp;These Terms will be interpreted in accordance with Irish law. You and we agree to submit to the non-exclusive jurisdiction of the Irish courts for resolving any dispute between the parties. If SITE_NAME wishes to enforce any of its rights against you, we may elect to do so in the Irish courts or in the courts of the jurisdiction in which you are resident.\"</i></p><p>The&nbsp;<b>Dispute Resolution</b>&nbsp;clause shall be removed and is not applicable.</p><p>The&nbsp;<b>Export Control and Restricted Countries</b>&nbsp;clause shall be amended by the following:&nbsp;<i>\"<b>Export Control and Restricted Countries</b>&nbsp;In addition to complying with the main Export Control and Restricted Countries clause, you must also comply with any relevant export control laws in your local jurisdiction.\"</i></p><p>The <b>Bookings and Financial Terms for Guests</b> clause shall be amended by the following: <i>\"<b>Bookings and Financial Terms for Guests</b> In addition to complying with the main Bookings and Financial Terms for Guests clause, you also acknowledge that if your SITE_NAME account is located in Brazil and you are paying by credit card, you may pay for your booking in multiple installments as long as your credit card supports installments and is issued in Brazil. The number of installments may vary, but will be presented to you before you complete your booking transaction. You also acknowledge that the Total Fees may be increased in case you choose to pay for your booking using credit card installments.\"</i></p><p><b>Contacting SITE_NAME</b></p><p>If you have any questions about these Terms or any App Store Sourced Application, please contact SITE_NAME.</p>', 'Active', '2016-03-26 13:50:11', '2016-03-26 16:08:22');
INSERT INTO `pages` (`id`, `name`, `url`, `footer`, `under`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', 'privacy_policy', 'yes', 'company', '<h1>Privacy Policy</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>Last Updated: Jan 1, 2016</p><p><b><u>SITE_NAME PRIVACY POLICY</u></b></p><p>SITE_NAME (hereinafter referred to as \"<b>SITE_NAME</b>\", \"<b>we</b>\", \"<b>us</b>\" or \"<b>our</b>\") operates a platform and community marketplace that helps people form offline experiences and relationships directly with one another, where they can create, list, discover and book unique accommodations around the world, whether through our website or our mobile applications (\"<b>Platform</b>\"). SITE_NAME refers to SITE_NAME Inc. if you reside in the USA, and to SITE_NAME Ireland if you reside outside of the USA.</p><p>This Privacy Policy is intended to inform you about how we treat Personal Information that we process about you. If you do not agree to any part of this Privacy Policy, then we cannot provide the Platform or Services to you, and you should stop accessing the Platform and deactivate your SITE_NAME account. You can find out more about how to deactivate your SITE_NAME account.</p><p><b><u>DEFINITIONS</u></b></p><p>Where the definition of a term does not appear in this Privacy Policy (such as \"Listing\", \"Accommodation\", \"Content,\" \"Services\" etc.), it shall be given its definition as outlined in our Terms of Service (<a target=\"_blank\" href=\"SITE_URL/terms_of_service\">SITE_URL/terms_of_service</a>).</p><p>\"<b>Aggregated Information</b>\" means information about all of our users or specific groups or categories of users that we combine together so that it no longer identifies or references an individual user.</p><p>\"<b>Data Controller</b>\" means SITE_NAME, the company responsible for the use and processing of Personal Information.</p><p>\"<b>Personal Information</b>\" means information relating to a living individual who is or can be identified either from that information or from that information in conjunction with other information that is in, or is likely to come into, the possession of the Data Controller.</p><p><b><u>WHAT TYPES OF INFORMATION DOES SITE_NAME GATHER ABOUT ITS USERS?</u></b></p><p><b>1. Information that you give us</b></p><p>We receive, store and process information that you make available to us when accessing or using our Platform and Services. Examples include when you:&nbsp;</p><p></p><ol><br><li>fill in any form on the Platform, such as when you register or update the details of your user account, or when you supply&nbsp;ID&nbsp;verification&nbsp;information;</li><br><li>access or use the Platform, such as to search for or post Accommodations, make or accept bookings, pay for Accommodations, book or pay for any associated services that may be available (such as but not limited to cleaning), post comments or reviews, or communicate with other users;</li><br><li>link your account on a third party site (e.g. Facebook) to your SITE_NAME account, in which case we will obtain the Personal Information that you have provided to the third party site, to the extent allowed by your settings with the third party site and authorized by you; and</li><br><li>communicate with SITE_NAME.</li><br></ol><p></p><p><b>2. Mobile Data</b></p><p>When you use certain features of the Platform, in particular our mobile applications we may receive, store and process different types of information about your location, including general information (e.g., IP address, zip code) and more specific information (e.g., GPS-based functionality on mobile devices used to access the Platform or specific features of the platform). If you access the Platform through a mobile device and you do not want your device to provide us with location-tracking information, you can disable the GPS or other location-tracking functions on your device, provided your device allows you to do this. See your device manufacturer\'s instructions for further details.</p><p><b>3. Log Data</b></p><p>We may also receive, store and process Log Data, which is information that is automatically recorded by our servers whenever you access or use the Platform, regardless of whether you are registered with SITE_NAME or logged in to your SITE_NAME account, such as your IP Address, the date and time you access or use the Platform, the hardware and software you are using, referring and exit pages and URLs, the number of clicks, pages viewed and the order of those pages, and the amount of time spent on particular pages.</p><p><b>4. Cookies and other Tracking Technologies</b></p><p>SITE_NAME uses cookies and other similar technologies, such as mobile application identifiers, on the Platform. We may also allow our business partners to use their cookies and other tracking technologies on the Platform. As a result, when you access or use the Platform, you will provide or make available certain information to us and to our business partners.</p><p>While you may disable the usage of cookies through your browser settings, we do not change our practices in response to a \"Do Not Track\" signal in the HTTP header from your browser or mobile application. We track your activities if you click on advertisements for SITE_NAME services on third party platforms such as search engines and social networks, and may use analytics to track what you do in response to those advertisements.</p><p>We may, either directly or through third party companies and individuals we engage to provide services to us, also continue to track your behavior on our own Platform for purposes of our own customer support, analytics, research, product development, fraud prevention, risk assessment, regulatory compliance, investigation, as well as to enable you to use and access the Platform and pay for your activities on the Platform. We may also, either directly or through third party companies and individuals we engage to provide services to us, track your behavior on our own Platform to market and advertise our services to you on the Platform and third party websites. Third parties that use cookies and other tracking technologies to deliver targeted advertisements on our Platform and/or third party websites may offer you a way to prevent such targeted advertisements by opting-out at the websites of industry groups such as the Network Advertising Initiative (<a target=\"_blank\" href=\"http://www.networkadvertising.org/choices/\">http://www.networkadvertising.org/choices/</a>) and/or the Digital Advertising Alliance (<a target=\"_blank\" href=\"http://www.aboutads.info/choices/\">http://www.aboutads.info/choices/</a>). You may also be able to control advertising cookies provided by publishers, for example Google\'s Ad Preference Manager (<a target=\"_blank\" href=\"https://www.google.com/settings/ads/onweb/\">https://www.google.com/settings/ads/onweb/</a>). Please note that even if you choose to opt-out of receiving targeted advertising, you may still receive advertising on or about the Platform – it just will not be tailored to your interests.</p><p>Third parties may not collect information about users\' online activities on the Platform except as described in this policy and our&nbsp;<a href=\"SITE_URL/privacy_policy#cookie_policy\">Cookie Policy</a>.</p><p><b>5. Third-party social plugins</b></p><p>Our Platform may use social plugins which are provided and operated by third-party companies, such as Facebook\'s Like Button.</p><p>As a result of this, you may send to the third-party company the information that you are viewing on a certain part of our Platform. If you are not logged into your account with the third-party company, then the third party may not know your identity. If you are logged into your account with the third-party company, then the third party may be able to link information about your visit to our Platform to your account with them. Similarly, your interactions with the social plugin may be recorded by the third party.</p><p>Please refer to the third party\'s privacy policy to find out more about its data practices, such as what data is collected about you and how the third party uses such data.</p><p><b><u>HOW SITE_NAME USES AND PROCESSES THE INFORMATION THAT YOU PROVIDE OR MAKE AVAILABLE</u></b></p><p>We use, store and process Information about you for the following general purposes:&nbsp;</p><p></p><ol><br><li>to enable you to access and use the Platform;</li><br><li>to operate, protect, improve and optimize the Platform, SITE_NAME\'s business, and our users\' experience, such as to perform analytics, conduct research, personalize or otherwise customize your experience, and for advertising and marketing;</li><br><li>to help create and maintain a trusted and safer environment on the Platform and Services, such as fraud detection and prevention, conducting investigations and risk assessments, verifying the address of your listings, verifying any identifications provided by you, and conducting checks against databases such as public government databases;</li><br><li>to send you service, support and administrative messages, reminders, technical notices, updates, security alerts, and information requested by you;</li><br><li>where we have your consent, to send you marketing and promotional messages and other information that may be of interest to you, including information about SITE_NAME or general promotions for partner campaigns and services. You can unsubscribe or opt-out from receiving these communications in your settings (in the \"Account\" section) when you login to your SITE_NAME account;</li><br><li>to administer referral programs, rewards, surveys, sweepstakes, contests, or other promotional activities or events sponsored or managed by SITE_NAME or our business partners; and</li><br><li>to comply with our legal obligations, resolve any disputes that we may have with any of our users, and enforce our agreements with third parties.</li><br></ol><p></p><p><b><u>HOW SITE_NAME USES AND PROCESSES USER COMMUNICATIONS</u></b></p><p>We may, either directly or through third party companies and individuals we engage to provide services to us, review, scan, or analyze your communications with other users exchanged via the Platform for fraud prevention, risk assessment, regulatory compliance, investigation, product development, research and customer support purposes. For example, as part of our fraud prevention efforts, the Platform may scan and analyze messages to mask contact information and references to other websites. This helps to prevent fraudulent actors from asking Guests to send them money outside of the Platform, such as by bank transfer or other money transfer methods. We may also scan, review or analyze messages for research and product development purposes to help make search, booking and user communications more efficient and effective, as well as to debug, improve and expand product offerings.&nbsp;We will not review, scan, or analyze your communications for sending third party marketing messages to you. We will also not sell these reviews or analyses of communications to third parties. We will also use automated methods to carry out these reviews or analyses where reasonably possible. However, from time to time we may have to manually review some communications. By using the Platform, you consent that SITE_NAME, in its sole discretion, may, either directly or through third party companies and individuals we engage to provide services to us, review, scan, analyze, and store your communications, whether done manually or through automated means.</p><p><b><u>WHEN SITE_NAME DISCLOSES OR SHARES PERSONAL INFORMATION, AND TO WHOM</u></b></p><p><b>IMPORTANT: When you use the Platform, your data may be sent to the United States and possibly other countries</b></p><p>We may transfer, store, use and process your information, including any Personal Information, to countries outside of the European Economic Area (\"<b>EEA</b>\") including the United States. Please note that laws vary from jurisdiction to jurisdiction, and so the privacy laws applicable to the places where your information is transferred to or stored, used or processed in, may be different from the privacy laws applicable to the place where you are resident.</p><p>If you are located in the EEA or in Switzerland, please also see our Safe Harbor Notice.</p><p>Your Personal Information may be disclosed as follows:&nbsp;</p><p></p><ol><br><li>Parts of your public profile page that contain some Personal Information may be displayed in other parts of the Platform to other users for marketing purposes or to the extent necessary to operate and manage referral and rewards programs.</li><br><li>Your public Listing page will always include some minimum information such as the city and neighborhood where the Accommodation is located, your listing description, your calendar availability, your public profile photo and your responsiveness in replying to Guests\' queries. Your public Listing page may also include aggregated demand information (such as number of page views over a period of time). Parts of your public Listing page may be displayed in other parts of the Platform to other users for marketing purposes. The Platform may also display the Accommodation\'s approximate geographic location on a map, such that a user can see the general area of the Accommodation.</li><br><li>The Platform allows your public profile and public Listing pages to be included in search engines, in which case your public profile and public Listing pages will be indexed by search engines and may be published as search results. This option is enabled by default, and you may opt out of this feature by changing your settings on the Platform. If you change your settings or the information on your public profile or public Listing pages, third-party search engines may not update their databases quickly or at all. We do not control the practices of third-party search engines, and they may use caches containing outdated information, including any information indexed by the search engine before you change your settings or the information on your public profile or public Listing pages.</li><br><li>When you submit a request to book an Accommodation, your full name will become visible to the Host. In addition, if you agree to be contacted by the Host by phone when submitting your request and the Host decides to do so, SITE_NAME will call your phone number first, before connecting you with the Host. We will not share your phone number unless there is a confirmed booking; if there is a confirmed booking, your phone number will become visible to the Host/Guest, who may call you directly.</li><br><li>When your request to book an Accommodation is accepted by the Host or when you accept a Guest\'s request to book your Accommodation, we will disclose some of your Personal Information to the Host or Guest. However, your billing and payout information will never be shared with another user.</li><br><li>When a Guest stays at your Accommodation or when you stay at a Host\'s Accommodation, we will ask you to review the Guest or the Accommodation. If you choose to provide a review, your review may be public on the Platform.</li><br><li>You may link your account on a third party social networking site to your SITE_NAME account. We refer to a person\'s contacts on these third party sites as \"Friends\". When you create this linkage:&nbsp;<br><ul><br><li>some of the information you provide to us from the linking of your accounts may be published on your SITE_NAME account profile;</li><br><li>your activities on the Platform may be displayed to your Friends on the Platform and/or that third party site;</li><br><li>other SITE_NAME users may be able to see any common Friends that you may have with them, or that you are a Friend of their Friend if applicable;</li><br><li>other SITE_NAME users may be able to see any schools, hometowns or other groups you have in common with them as listed on your linked social networking site(s); and</li><br><li>the information you provide to us from the linking of your accounts may be stored, processed and transmitted for fraud prevention and risk assessment purposes.</li><br></ul><br>The publication and display of information that you provide to SITE_NAME through this linkage is subject to your settings and authorizations on the Platform and the third party site.</li><br><li>We may distribute parts of the Platform (including your Listing) for display on sites operated by SITE_NAME\'s business partners and affiliates, using technologies such as HTML widgets. If and when your Listings are displayed on a partner\'s site, information from your public profile page may also be displayed.</li><br><li>We may allow our related entities such as our subsidiaries, and their employees, to use and process your Personal Information in the same way and to the same extent that we are permitted to under this Privacy Policy. These related entities comply with the same obligations that we have to protect your Personal Information under this Privacy Policy.</li><br><li>We may also engage third party companies and individuals, who may be located outside of the EEA, to provide services to us, including but not limited to technology services and services to help verify your identification, to conduct checks against databases such as public government databases (where legally allowed), to otherwise assist us with fraud prevention and risk assessment, to assist us with customer service, and to facilitate the payments or reimbursements you request (such as Concur and American Express). We may provide Personal Information about you to these third parties, or give them access to this Personal Information, for the limited purpose of allowing them to provide these services. We will ensure that such third parties have contractual obligations to protect this Personal Information and to not use it for unrelated purposes.</li><br><li>For any jurisdiction in which we facilitate the Collection and Remittance of Taxes or Opt-in for Host Remittance of Taxes as described in the \"Taxes\" section of the <a href=\"SITE_URL/terms_of_service\">Terms of Service</a>, Hosts and Guests expressly grant us permission, without further notice, to store, transfer and disclose data and other information relating to them or to their Transactions, Bookings, Accommodations and Occupancy Taxes, including, but not limited to, personally identifiable information such as Host or Guest\'s name, listing addresses, transaction dates and amounts, tax identification number(s), the amount of taxes received by Hosts from Guests, or allegedly due, contact information and similar information, to the relevant Tax Authority.</li><br><li>You acknowledge, consent and agree that SITE_NAME may access, preserve and disclose your account information and Collective Content if required to do so by law or in a good faith belief that such access, preservation or disclosure is reasonably necessary to (a) respond to claims asserted against SITE_NAME; (b) to comply with legal process (for example, subpoenas and warrants); (c) to enforce and administer our agreements with users, such as the Terms of Service, (<a target=\"_blank\" href=\"SITE_URL/terms_of_service\">SITE_URL/terms_of_service</a>), this Privacy Policy, and the Host Guarantee Terms and Conditions (<a target=\"_blank\" href=\"SITE_URL/host_guarantee\">SITE_URL/host_guarantee</a>); (d) for fraud prevention, risk assessment, investigation, customer support, product development and de-bugging purposes; or (e) to protect the rights, property or personal safety of SITE_NAME, its users or members of the public. We will use commercially reasonable efforts to notify users about law enforcement requests for their data unless:<br><ul><br><li>providing notice is prohibited by the legal process itself, by court order we receive, or by applicable law; or</li><br><li>based on information supplied by law enforcement, we, in our sole discretion, believe: (a) that providing notice could create a risk of injury or death to an individual or group of individuals, (b) that the case involves potential harm to minors, or (c) that harm or fraud could be directed to SITE_NAME, its Members, the Platform, or Services.</li><br></ul><br></li><br></ol><p></p><p>We may also publish, disclose and use Aggregated Information and non-personal information for industry and market analysis, demographic profiling, marketing and advertising, and other business purposes.</p><p><b><u>BUSINESS TRANSFERS BY SITE_NAME</u></b></p><p>If SITE_NAME undertakes or is involved in any merger, acquisition, reorganization, sale of assets or bankruptcy or insolvency event, then we may sell, transfer or share some or all of our assets, including your Personal Information. In this event, we will notify you before your Personal Information is transferred and becomes subject to a different privacy policy.</p><p><b><u>HOW TO CHANGE OR DELETE YOUR INFORMATION, OR CANCEL YOUR SITE_NAME ACCOUNT</u></b></p><p>You may review, update, correct or delete the Personal Information in your SITE_NAME account. If you would like to correct your information or cancel your SITE_NAME account entirely, you can do so by logging in to your account. Please also note that any reviews, forum postings and similar materials posted by you may continue to be publicly available on the Platform in association with your first name, even after your SITE_NAME account is cancelled.</p><p><b><u>SECURING YOUR PERSONAL INFORMATION</u></b></p><p>We are continuously implementing and updating administrative, technical, and physical security measures to help protect your Personal Information against unauthorized access, destruction or alteration. However, no method of transmission over the Internet, and no method of storing electronic information, can be 100% secure. So, we cannot guarantee the absolute security of your transmissions to us and of your Personal Information that we store.</p><p><b><u>YOUR PRIVACY WHEN YOU ACCESS THIRD-PARTY WEBSITES AND RESOURCES</u></b></p><p>The Platform will contain links to other websites not owned or controlled by SITE_NAME. SITE_NAME does not have any control over third party websites. These other websites may place their own cookies, web beacons or other files on your device, or collect and solicit Personal Information from you. They will have their own rules about the collection, use and disclosure of Personal Information. We encourage you to read the terms of use and privacy policies of the other websites that you visit.</p><p>Some portions of the Platform implement Google Maps/Earth mapping services, including Google Maps API(s). Your use of Google Maps/Earth is subject to Google\'s terms of use (located at&nbsp;<a target=\"_blank\" href=\"http://www.google.com/intl/en_us/help/terms_maps.html\">www.google.com/intl/en_us/help/terms_maps.html</a>) and Google\'s privacy policy (located at <a target=\"_blank\" href=\"http://www.google.com/privacy.html\">http://www.google.com/privacy.html</a>), as may be amended by Google from time to time.</p><p><b><u>SPECIAL FEATURES AND PROGRAMS</u></b></p><p><b>Referral service and requesting references</b></p><p>The Platform provides a referral service that allows you to invite your friends and contacts to use the Platform. The Platform also allows you to ask your friends and contacts to write a reference for you, to be published on your SITE_NAME profile.</p><p>We may integrate the Platform with third party sites such as Facebook, so that you can send invitation messages or requests for references via the third party site itself. These messages will be sent by the third party site, and SITE_NAME does not collect or retain the contact information that is used to send them.</p><p>You may also send invitation/request emails via the Platform itself, in which case we will ask you for the contact information to which to send your invitation/request. You can type in the email addresses or other contact information manually, or you can choose to import the contacts in your address book(s). In both cases, we may use and store this information for the sole purposes of allowing you to send your friends and contacts an invitation or request for a reference, and for fraud detection and prevention. With respect to referrals, we will also store the email addresses of your invitees to track if your friend joins SITE_NAME in response to your referral.</p><p>If you request us to import your contacts, we will collect, but not store, the username and password for the email account you wish to import your contacts from. We will use this information only for the purpose of importing your contacts.</p><p><b>Affiliate Program</b></p><p>If you are allowed to join SITE_NAME\'s Affiliate Program and you sign up for it, you will have to provide us with certain Personal Information to enable us to provide the Affiliate Program to you.</p><p><b>Meetups</b></p><p>The Platform may allow registered account holders to organize, search for or participate in offline events (\"<b>Meetups</b>\") in selected cities.</p><p>If you organize a Meetup or indicate that you will attend one, this information, together with some of your public information (such as your profile picture and public profile page) and any messages that you post about that Meetup, will be visible to users who browse the event. However, SITE_NAME will never disclose where you are staying to another meetup user.</p><p><b>Groups</b></p><p>The Platform may allow registered account holders to participate in online discussion forums (\"<b>Group(s)</b>\") in selected cities.</p><p>If you join a Group, then your membership in the Group as well as some of your public information (such as your profile picture and public profile page) will be visible to users who browse the Group. If you publish postings in a Group, then your postings will be visible to such users as well. The ability to browse the Group will depend on the Group settings, and it may or may not be limited to members of that Group.</p><p><b><u>CHANGES TO THIS PRIVACY POLICY</u></b></p><p>We may change how we collect and then use Personal Information at any time and without prior notice, at our sole discretion.&nbsp;We may change this Privacy Policy at any time. If we make material changes to the Privacy Policy, we will notify you either by posting the changed Privacy Policy on the Platform or by sending an email to you. We will also update the \"Last Updated Date\" at the top of this Privacy Policy. If we let you know of changes through an email communication, then the date on which we send the email will be deemed to be the date of your receipt of that email.</p><p>It\'s important that you review the changed Privacy Policy. If you do not wish to agree to the changed Privacy Policy, then we will not be able to continue providing the Platform and Services to you, and your only option will be to stop accessing the Platform and Services and deactivate your SITE_NAME account.<p><b><u>GOT FEEDBACK?</u></b></p><p>Your opinion matters to us! If you\'d like to provide feedback to us about this Privacy Policy, please email us at&nbsp;<a href=\"mailto:terms@SITE_URL\">terms@SITE_URL</a>.</p> <p><b><u>FOR USERS RESIDING IN THE EU AND JAPAN ONLY: YOUR RIGHTS TO REVIEW AND UPDATE INFORMATION</u></b></p><p>If you reside in the EU or Japan, you may request in writing copies of your Personal Information held by us. We will provide you with a copy of the Personal Information held by us as soon as practicable and in any event not more than 40 days after receiving a valid request in writing. There may be a charge to access your personal data (which will not exceed €6.35 in Ireland and £10 in the United Kingdom). We may also request proof of identification to verify your access request. All requests should be addressed to our Data Protection Compliance Officer, SITE_NAME Ireland, Watermarque Building, South Lotts Road, Ringsend, Dublin 4, Ireland.</p><p>We endeavor to keep your information accurate, complete and up to date. If your Personal Information that we hold is inaccurate, please let us know and we will make the necessary amendments, erase or block the relevant information and notify you within 40 days of your valid request that the relevant action has been taken.</p><p>You may also request the erasure of your personal data if you believe we are otherwise in breach of relevant data protection legislation. All requests should be addressed to our Data Protection Compliance Officer, SITE_NAME Ireland, Watermarque Building, South Lotts Road, Ringsend, Dublin 4, Ireland. There is no charge for making such a request.</p><p><b><u>COOKIE POLICY</u></b></p><p>SITE_NAME uses \"cookies\" in conjunction with the Platform to obtain information. A cookie is a small data file that is transferred to your device (e.g., your phone or your computer) for record-keeping purposes. For example, a cookie could allow the Platform to recognize your browser, while another could store your preferences and other information.</p><p>Your browser may allow you to set how it handles cookies, such as declining all cookies or prompting you to decide whether to accept each cookie. But please note that some parts of the Platform may not work as intended or may not work at all without cookies.</p><p><b>SITE_NAME cookies and third party cookies</b></p><p>SITE_NAME may place our cookies on your device via the Platform. Accordingly, our Privacy Policy will apply to our treatment of the information we obtain via our cookies.</p><p>We may also allow our business partners to place cookies on your device. For example, we use Google Analytics for web analytics, and so Google may also set cookies on your device. As further explained below, third parties may also place cookies on your device for advertising purposes.</p><p>There are two types of cookies used on the Platform, namely \"<b>persistent cookies</b>\" and \"<b>session cookies</b>\".</p><p>Session cookies will normally expire when you close your browser, while persistent cookies will remain on your device after you close your browser, and can be used again the next time you access the Platform.</p><p><b>Other technologies</b></p><p>The Platform may also use other technologies with similar functionality to cookies, such as web beacons and tracking URLs to obtain Log Data about users. We may also use web beacons and tracking URLs in our messages to you to determine whether you have opened a certain message or accessed a certain link.</p><p><b>Uses for SITE_NAME cookies</b></p><p>SITE_NAME uses cookies for a number of purposes, such as the following:&nbsp;</p><p></p><ol><br><li>to enable, facilitate and streamline the functioning of the Platform across different webpages and browser sessions.</li><br><li>to simplify your access to and use of the Platform and make it more seamless.</li><br><li>to monitor and analyze the performance, operation and effectiveness of the Platform, so that we can improve and optimize it.</li><br><li>to show you content (which may include advertisements) that is more relevant to you.</li><br></ol><p></p><p><b>Uses for third party cookies</b></p><p>Our partners\' cookies are intended to obtain information to help them provide services to SITE_NAME. For example, third party companies and individuals we engage to provide services to us may track your behavior on our Platform to market and advertise SITE_NAME listings or services to you on the Platform and third party websites. Third parties that use cookies and other tracking technologies to deliver targeted advertisements on our Platform and/or third party websites may offer you a way to prevent such targeted advertisements by opting-out at the websites of industry groups such as the Network Advertising Initiative (<a target=\"_blank\" href=\"http://www.networkadvertising.org/choices/\">http://www.networkadvertising.org/choices/</a>) and/or the Digital Advertising Alliance (<a target=\"_blank\" href=\"http://www.aboutads.info/choices/\">http://www.aboutads.info/choices/</a>). You may also be able to control advertising cookies provided by publishers, for example Google\'s Ad Preference Manager (<a target=\"_blank\" href=\"https://www.google.com/settings/ads/onweb/\">https://www.google.com/settings/ads/onweb/</a>). Please note that even if you choose to opt-out of receiving targeted advertising, you may still receive advertising on the Platform – it just will not be tailored to your interests.</p><p>In addition, Facebook places a cookie via the Platform that allows Facebook to obtain aggregated, non-Personal Information to optimize their services. For example, if a user clicks on an advertisement for the SITE_NAME mobile app on Facebook and subsequently installs the app, this cookie will inform Facebook that a user (who is not personally identified) has installed the app after clicking on the advertisement. This cookie may also inform Facebook that a user is using the app, without identifying the specific actions taken by the user in the app.</p><p><b>Disabling Cookies</b></p><p>Most browsers automatically accept cookies, but you can modify your browser setting to decline cookies by visiting the Help portion of your browser\'s toolbar. If you choose to decline cookies, please note that you may not be able to sign in, customize, or use some of the interactive features of the Platform. Flash cookies operate differently than browser cookies, and cookie management tools available in a web browser will not remove flash cookies. To learn more about how to manage flash cookies, you can visit the Adobe website (<a target=\"_blank\" href=\"http://www.adobe.com/\">http://www.adobe.com/</a>) and make changes at the Global Privacy Settings Panel (<a target=\"_blank\" href=\"http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager02.html\">http://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager02.html</a>).</p><p><b>Changes to this Cookie Policy</b></p><p>We can change this Cookie Policy at any time. If we make material changes to the Cookie Policy, we will let you know either by posting the changed Cookie Policy on the Platform or by sending you an email.</p><p>It\'s important that you review the changed Cookie Policy. If you do not wish to agree to the changed Cookie Policy, then we cannot continue to provide the Platform to you, and your only option is to stop accessing the Platform and deactivate your SITE_NAME account.</p><p><br></p><p></p><p></p>', 'Active', '2016-03-26 15:26:38', '2016-03-26 15:31:17'),
(3, 'About Us', 'about_us', 'yes', 'company', '&nbsp;&nbsp;&nbsp;<div class=\"text-copy\"><h1 class=\"h2 row-space-4\">About Us</h1><p>&nbsp; Founded in Jan of 2016 and based in India, SITE_NAME is a trusted community marketplace for people to list, discover, and book unique accommodations around the world — online or from a mobile phone or tablet.</p><p class=\"row-space-4\">&nbsp; Whether an apartment for a night, a castle for a week, or a villa for a month, SITE_NAME connects people to unique travel experiences, at any price point, in more than 34,000 cities and 190 countries. And with world-class customer service and a growing community of users, SITE_NAME is the easiest way for people to monetize their extra space and showcase it to an audience of millions.</p></div>', 'Active', '2016-03-26 17:22:05', '2016-03-26 17:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `correlation_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_payout_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `driver_payout_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `trip_id`, `correlation_id`, `admin_transaction_id`, `driver_transaction_id`, `admin_payout_status`, `driver_payout_status`) VALUES
(1, 3, NULL, NULL, NULL, 'Pending', 'Pending'),
(2, 4, 'ch_1FGoCzJoDta7fDJBTzEorlV7', NULL, NULL, 'Pending', 'Pending'),
(3, 5, 'ch_1FGoMoJoDta7fDJBlm3uSly7', NULL, NULL, 'Pending', 'Pending'),
(4, 14, NULL, NULL, NULL, 'Pending', 'Pending'),
(5, 15, NULL, NULL, NULL, 'Pending', 'Pending'),
(6, 16, NULL, NULL, NULL, 'Pending', 'Pending'),
(7, 18, NULL, NULL, NULL, 'Pending', 'Pending'),
(8, 19, NULL, NULL, NULL, 'Pending', 'Pending'),
(9, 21, NULL, NULL, NULL, 'Pending', 'Pending'),
(10, 23, NULL, NULL, NULL, 'Pending', 'Pending'),
(11, 24, NULL, NULL, NULL, 'Pending', 'Pending'),
(12, 25, NULL, NULL, NULL, 'Pending', 'Pending'),
(13, 26, NULL, NULL, NULL, 'Pending', 'Pending'),
(14, 27, NULL, NULL, NULL, 'Pending', 'Pending'),
(15, 30, NULL, NULL, NULL, 'Pending', 'Pending'),
(16, 29, NULL, NULL, NULL, 'Pending', 'Pending'),
(17, 31, NULL, NULL, NULL, 'Pending', 'Pending'),
(18, 32, NULL, NULL, NULL, 'Pending', 'Pending'),
(19, 33, NULL, NULL, NULL, 'Pending', 'Pending'),
(20, 38, NULL, NULL, NULL, 'Pending', 'Pending'),
(21, 39, '', NULL, NULL, 'Pending', 'Pending'),
(22, 40, 'test', NULL, NULL, 'Pending', 'Pending'),
(23, 54, NULL, NULL, NULL, 'Pending', 'Pending'),
(24, 56, NULL, NULL, NULL, 'Pending', 'Pending'),
(25, 57, NULL, NULL, NULL, 'Pending', 'Pending'),
(26, 58, NULL, NULL, NULL, 'Pending', 'Pending'),
(27, 62, NULL, NULL, NULL, 'Pending', 'Pending'),
(28, 63, '', NULL, NULL, 'Pending', 'Pending'),
(29, 64, '', NULL, NULL, 'Pending', 'Pending'),
(30, 65, '', NULL, NULL, 'Pending', 'Pending'),
(31, 66, '', NULL, NULL, 'Pending', 'Pending'),
(32, 70, '', NULL, NULL, 'Pending', 'Pending'),
(33, 1, 'test', NULL, NULL, 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `name`, `value`, `site`) VALUES
(1, 'paypal_id', 'vinoth@trioangle.com', 'PayPal'),
(2, 'username', 'vinoth_api1.trioangle.com', 'PayPal'),
(3, 'password', '3CAX5SY2RQC2W3NC', 'PayPal'),
(4, 'signature', 'An5ns1Kso7MWUdW4ErQKJJJ4qi4-A1qi2qL9cJx.2Na4RHlJcHL6v4bt', 'PayPal'),
(5, 'mode', 'sandbox', 'PayPal'),
(6, 'app_id', 'APP-80W284485P519543T', 'PayPal'),
(7, 'client', 'ASeeaUVlKXDd8DegCNSuO413fePRLrlzZKdGE_RwrWqJOVVbTNJb6-_r6xX9GdsRUVNc8butjTOIK_Xm', 'PayPal'),
(8, 'secret', 'ENCGBUb_QSpHzGIAxjtSehkRIAI9lOELOiZUUjZUTEdjACeILOUUG58ijBNsuzdV-RPyDbHNxYTPkapn', 'PayPal'),
(9, 'publish', 'pk_test_764boQ9IBVx4RSKjr1Fx2a7W', 'Stripe'),
(10, 'secret', 'sk_test_xaaV9BdpFcTmWaVoU28gwuOm', 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `stripe_customer_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `user_id`, `stripe_customer_id`, `brand`, `last4`, `created_at`, `updated_at`) VALUES
(1, 10023, 'cus_FmMUBpiWhL4ni0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payout_credentials`
--

CREATE TABLE `payout_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `preference_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` enum('no','yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('paypal','stripe') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_credentials`
--

INSERT INTO `payout_credentials` (`id`, `user_id`, `preference_id`, `default`, `type`, `payout_id`, `created_at`, `updated_at`) VALUES
(1, 10023, '1', 'yes', 'stripe', '1', NULL, '2019-11-04 02:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `payout_preference`
--

CREATE TABLE `payout_preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_type` enum('Individual','Company') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_kanji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn_last_4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_preference`
--

INSERT INTO `payout_preference` (`id`, `user_id`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `payout_method`, `paypal_email`, `currency_code`, `routing_number`, `account_number`, `holder_name`, `holder_type`, `document_id`, `document_image`, `phone_number`, `address_kanji`, `bank_name`, `branch_name`, `branch_code`, `ssn_last_4`, `created_at`, `updated_at`) VALUES
(1, 10023, 'reg', 'swev', 'asdv', 'swef', 'dse', 'egypt', 'dsfv', 'df@fsd.d', '1', '3', '65432w', 'svrf', 'Individual', 'fe', 'wef', '43', 'vc', 'jk', 'llll', 'bbb', 'kklll', '2019-08-04 10:51:44', '2019-08-04 10:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `peak_fare_details`
--

CREATE TABLE `peak_fare_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `fare_id` int(10) UNSIGNED NOT NULL,
  `type` enum('Peak','Night') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peak_fare_details`
--

INSERT INTO `peak_fare_details` (`id`, `fare_id`, `type`, `day`, `start_time`, `end_time`, `price`) VALUES
(1, 12, 'Peak', 1, '02:00:00', '17:00:00', '10.20');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_admin', 'Manage Admin', 'Manage Admin', NULL, NULL),
(2, 'manage_send_message', 'Manage Send Message', 'Manage Send Message', NULL, NULL),
(3, 'view_rider', 'View Rider', 'View Rider', NULL, NULL),
(4, 'add_rider', 'Add Rider', 'Add Rider', NULL, NULL),
(5, 'edit_rider', 'Edit Rider', 'Edit Rider', NULL, NULL),
(6, 'delete_rider', 'Delete Rider', 'Delete Rider', NULL, NULL),
(7, 'view_driver', 'View Driver', 'View Driver', NULL, NULL),
(8, 'add_driver', 'Add Driver', 'Add Driver', NULL, NULL),
(9, 'edit_driver', 'Edit Driver', 'Edit Driver', NULL, NULL),
(10, 'delete_driver', 'Delete Driver', 'Delete Driver', NULL, NULL),
(11, 'manage_car_type', 'Manage Car Type', 'Manage Car Type', NULL, NULL),
(12, 'manage_map', 'Manage Map', 'Manage Map', NULL, NULL),
(13, 'manage_statements', 'Manage Statements', 'Manage Statements', NULL, NULL),
(14, 'manage_trips', 'Manage Trips', 'Manage Trips', NULL, NULL),
(15, 'manage_wallet', 'Manage Wallet', 'Manage Wallet', NULL, NULL),
(16, 'manage_owe_amount', 'Manage Owe Amount', 'Manage Owe Amount', NULL, NULL),
(17, 'manage_promo_code', 'Manage Promo Code', 'Manage Promo Code', NULL, NULL),
(18, 'manage_driver_payments', 'Manage Payments', 'Manage Payments', NULL, NULL),
(19, 'manage_cancel_trips', 'Manage Cancel Trips', 'Manage Cancel Trips', NULL, NULL),
(20, 'manage_rating', 'Manage Rating', 'Manage Rating', NULL, NULL),
(21, 'manage_fees', 'Manage Fees', 'Manage Fees', NULL, NULL),
(22, 'manage_site_settings', 'Manage Site Settings', 'Manage Site Settings', NULL, NULL),
(23, 'manage_api_credentials', 'Manage Api Credentials', 'Manage Api Credentials', NULL, NULL),
(24, 'manage_payment_gateway', 'Manage Payment Gateway', 'Manage Payment Gateway', NULL, NULL),
(25, 'manage_requests', 'Manage Requests', 'Manage Requests', NULL, NULL),
(26, 'manage_join_us', 'Manage Join Us', 'Manage Join Us', NULL, NULL),
(27, 'manage_currency', 'Manage Currency', 'Manage Currency', NULL, NULL),
(28, 'manage_static_pages', 'Manage Static Pages', 'Manage Static Pages', NULL, NULL),
(29, 'manage_metas', 'Manage Metas', 'Manage Metas', NULL, NULL),
(30, 'manage_locations', 'Manage Locations', 'Manage Locations', NULL, NULL),
(31, 'manage_peak_based_fare', 'Manage Peak Based Fare', 'Manage Peak Based Fare', NULL, NULL),
(32, 'email_settings', 'Manage Email Settings', 'Manage Email Settings', NULL, NULL),
(33, 'send_email', 'Send Email', 'Send Email', NULL, NULL),
(34, 'manage_language', 'Manage Language', 'Manage Language', NULL, NULL),
(35, 'manage_help', 'Manage Help', 'Manage Help', NULL, NULL),
(36, 'manage_country', 'Manage Country', 'Manage Country', NULL, NULL),
(37, 'manage_heat_map', 'Manage HeatMap', 'Manage HeatMap', NULL, NULL),
(38, 'manage_manual_booking', 'Manual Booking', 'Manual Booking', NULL, NULL),
(39, 'view_company', 'View Company', 'View Company', NULL, NULL),
(40, 'add_company', 'Add Company', 'Add Company', NULL, NULL),
(41, 'edit_company', 'Edit Company', 'Edit Company', NULL, NULL),
(42, 'delete_company', 'Delete Company', 'Delete Company', NULL, NULL),
(43, 'manage_company_payment', 'Manage Company Payment', 'Manage Company Payment', NULL, NULL),
(44, 'manage_payments', 'Manage Payments', 'Manage Payments', NULL, NULL),
(45, 'manage_vehicle', 'Manage Vehicle', 'Manage Vehicle', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(38, 4),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Model\\Admin');

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_source` enum('Facebook','Google','Local') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`user_id`, `src`, `photo_source`) VALUES
(10001, 'https://rydetogo.com/images/users/10001/57749779_225x225.jpg', 'Local'),
(10002, 'https://rydetogo.com/images/users/10002/7889350c_225x225.jpg', 'Google'),
(10003, '', 'Local'),
(10004, '', 'Local'),
(10005, '', 'Local'),
(10006, 'https://rydetogo.com/images/users/10006/1027bd44_225x225.jpg', 'Google'),
(10007, '', 'Local'),
(10008, '', 'Google'),
(10009, 'https://graph.facebook.com/10157272975356953/picture?height=400&width=400&migration_overrides=%7Boctober_2012%3Atrue%7D', 'Facebook'),
(10010, '', 'Local'),
(10011, 'https://graph.facebook.com/2443503912430176/picture?type=large', 'Facebook'),
(10012, 'https://graph.facebook.com/2443503912430176/picture?type=large', 'Facebook'),
(10013, '', 'Local'),
(10014, '', 'Local'),
(10015, '', 'Local'),
(10016, '', 'Google'),
(10017, '', 'Local'),
(10018, '', 'Local'),
(10019, '', 'Google'),
(10020, 'https://graph.facebook.com/10150073843300527/picture?type=large', 'Facebook'),
(10022, '', 'Local'),
(10023, '345', 'Local'),
(10024, '', 'Google'),
(10025, '', 'Local'),
(10026, '', 'Local'),
(10027, '', 'Local'),
(10028, '', 'Local'),
(10029, '', 'Local'),
(10030, '', 'Local'),
(10031, '', 'Local'),
(10032, '', 'Local'),
(10033, '', 'Local'),
(10034, '', 'Local'),
(10035, '', 'Google'),
(10036, '', 'Google'),
(10037, 'http://api-ksa.com/demo/ryde/public/images/users/10037/1f659b7a_225x225.jpg', 'Local'),
(10038, '', 'Local'),
(10039, '', 'Local'),
(10040, 'http://api-ksa.com/demo/ryde/public/images/users/10040/67254e6b_225x225.jpg', 'Local'),
(10041, '', 'Local'),
(10042, '', 'Local'),
(10043, '', 'Local'),
(10044, '', 'Local'),
(10046, '123456789swfklnelorgiknlwekrng', 'Local'),
(10047, '', 'Local');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `code`, `amount`, `currency_code`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '123456', 10, 'USD', '2019-12-31', 'Active', '2019-10-17 07:28:21', '2019-10-17 07:28:21'),
(2, '1234567', 10, 'USD', '2019-12-31', 'Active', '2019-10-17 07:28:21', '2019-10-17 07:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `rider_rating` int(11) NOT NULL,
  `rider_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_rating` int(11) NOT NULL,
  `driver_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `trip_id`, `user_id`, `driver_id`, `rider_rating`, `rider_comments`, `driver_rating`, `driver_comments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 10002, 10001, 4, '', 4, '', '2019-09-09 12:50:48', '2019-09-09 12:50:49', NULL),
(2, 4, 10002, 10001, 4, '', 4, '', '2019-09-09 12:51:18', '2019-09-09 12:51:19', NULL),
(3, 14, 10023, 10023, 1, 'rider comment test', 5, 'Awesome rider', '2019-10-13 14:17:12', '2019-10-13 14:17:12', NULL),
(4, 23, 10009, 10007, 5, '', 0, '', '2019-10-16 11:47:36', '2019-10-16 11:47:36', NULL),
(5, 19, 10009, 10007, 5, '', 0, '', '2019-10-16 13:15:05', '2019-10-16 13:15:05', NULL),
(6, 18, 10009, 10007, 3, '', 0, '', '2019-10-16 13:30:34', '2019-10-16 13:30:34', NULL),
(7, 25, 10009, 10017, 0, '', 5, '', '2019-10-17 07:13:20', '2019-10-17 07:13:20', NULL),
(8, 26, 10009, 10017, 0, '', 2, '', '2019-10-17 07:15:14', '2019-10-17 07:15:14', NULL),
(9, 27, 10009, 10017, 0, '', 1, '', '2019-10-17 07:23:00', '2019-10-17 07:23:00', NULL),
(10, 32, 10009, 10018, 0, '', 5, '', '2019-10-17 08:06:45', '2019-10-17 08:06:45', NULL),
(11, 33, 10009, 10018, 4, '', 5, '', '2019-10-17 08:13:34', '2019-10-17 11:17:08', NULL),
(12, 38, 10009, 10015, 5, '', 5, '', '2019-10-17 11:16:33', '2019-10-17 11:16:52', NULL),
(13, 39, 10023, 10023, 12, '', 12, '', '2019-10-17 12:44:57', '2019-11-04 06:14:29', NULL),
(14, 14, 10023, 10023, 15, '', 5, 'Awesome rider', '2019-10-13 14:17:12', '2019-10-13 14:17:12', NULL),
(15, 58, 10024, 10025, 0, '', 4, 'ةتن', '2019-11-19 17:55:30', '2019-11-19 17:55:30', NULL),
(16, 63, 10024, 10025, 3, 'dfghjk', 0, '', '2019-11-27 23:41:22', '2019-11-27 23:41:22', NULL),
(17, 70, 10024, 10025, 5, '', 0, '', '2019-11-28 15:16:31', '2019-11-28 15:16:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `payment_mode` enum('PayPal','Stripe','Cash','PayPal & Wallet','Stripe & Wallet','Cash & Wallet','Wallet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cash',
  `schedule_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `location_id` int(10) UNSIGNED NOT NULL,
  `additional_fare` enum('Peak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_fare` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `user_id`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `group_id`, `driver_id`, `payment_mode`, `schedule_id`, `location_id`, `additional_fare`, `peak_fare`, `timezone`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10046, '31.421877', '31.813561', '30.047242', '31.239397', 'sret', 'sverwvgervbret', 1, 1, 10047, 'Cash', '', 1, '', '0', 'Africa/Cairo', 'cancelled', '2020-01-26 16:53:38', '2020-01-27 22:15:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(255) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rider_location`
--

CREATE TABLE `rider_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `home` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_location`
--

INSERT INTO `rider_location` (`id`, `user_id`, `home`, `work`, `home_latitude`, `home_longitude`, `work_latitude`, `work_longitude`, `latitude`, `longitude`) VALUES
(1, 10023, 'hometestr', 'hometestr', '54.2255841', '-30.2584', '54.2255841', '-30.2584', '30.040715', '31.2200654'),
(10, 10024, '', '', '', '', '', '', '29.9603200773909', '31.25414483249188'),
(2, 10004, '', '', '', '', '', '', '', ''),
(3, 10006, 'Giza Yacht Club', '14 Garden Place', '30.040715', '31.2200654', '40.692896999999995', '-73.99632880000001', '29.993480826531368', '31.16117645055056'),
(4, 10008, '', '', '', '', '', '', '29.993476761257263', '31.161195561289787'),
(5, 10009, '', '', '', '', '', '', '29.993505798925757', '31.161383651196957'),
(6, 10010, '', '', '', '', '', '', '', ''),
(7, 10013, '', '', '', '', '', '', '', ''),
(8, 10016, '', '', '', '', '', '', '29.993503766289233', '31.16125389933586'),
(9, 10019, '', '', '', '', '', '', '25.436238309623292', '49.57622475922107');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin User', '2016-04-16 22:00:00', '2016-04-16 22:00:00'),
(2, 'subadmin', 'subadmin', 'subadmin', '2016-04-16 22:10:00', '2016-04-16 22:00:00'),
(3, 'accountant', 'accountant', 'accountant', '2016-04-16 22:10:00', '2016-04-16 22:00:00'),
(4, 'Dispatcher', 'Dispatcher', 'Dispatcher', '2016-04-16 22:10:00', '2016-04-16 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\Admin'),
(2, 4, 'App\\Models\\Admin');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_cancel`
--

CREATE TABLE `schedule_cancel` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_ride_id` int(10) UNSIGNED NOT NULL,
  `cancel_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_by` enum('Rider','Driver','Admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_ride`
--

CREATE TABLE `schedule_ride` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_end_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_end_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `peak_id` int(10) UNSIGNED NOT NULL,
  `booking_type` enum('Manual Booking','Schedule Booking') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Schedule Booking',
  `driver_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('Pending','Completed','Cancelled','Car Not Found') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_wallet` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FAVxOFM9lHFPlnMTGkAHDLQw3xQ6QY9I78HlVhTv', 10018, '108.61.123.140', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 'YToxMTp7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo4OiJjdXJyZW5jeSI7czozOiJVU0QiO3M6Njoic3ltYm9sIjtzOjU6IiYjMzY7IjtzOjY6Il90b2tlbiI7czo0MDoiNTBLOGVKSklzUVZsYmRuMDF2UEo3dWtvTmRCMzlpY2tISm1xMHdzQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vcnlkZXRvZ28uY29tL2RyaXZlcl9pbnZvaWNlP2xpbWl0PTEwJnBhZ2U9MSI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InN0YXRlIjtzOjQwOiJ4RG1LcEdsYU00NkdtNWUyWFppTnpmSDc1WndrN2ZGQjd6WDE4NU9SIjtzOjEwOiJsb2dpbl90eXBlIjtzOjU6ImVtYWlsIjtzOjU6ImVtYWlsIjtzOjE4OiJzaGVub3Byb0BnbWFpbC5jb20iO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwMDE4O30=', 1571578108);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `value`) VALUES
(1, 'site_name', 'Hamelly'),
(2, 'paypal_currency', 'USD'),
(3, 'version', '2.0'),
(4, 'logo', 'logo.png'),
(5, 'page_logo', 'page_logo.png'),
(6, 'favicon', 'favicon.png'),
(7, 'driver_km', '20'),
(8, 'head_code', ''),
(9, 'admin_contact', '1234567890'),
(10, 'admin_country_code', '91'),
(11, 'site_url', 'http://rydetogo.com/public/');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pickup_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_latitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_longitude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `trip_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_time` decimal(7,2) NOT NULL,
  `total_km` decimal(7,2) NOT NULL,
  `time_fare` decimal(11,2) NOT NULL,
  `distance_fare` decimal(11,2) NOT NULL,
  `base_fare` decimal(11,2) NOT NULL,
  `peak_fare` decimal(11,2) NOT NULL,
  `peak_amount` decimal(11,2) NOT NULL,
  `driver_peak_amount` decimal(11,2) NOT NULL,
  `schedule_fare` decimal(11,2) NOT NULL,
  `access_fee` decimal(11,2) NOT NULL,
  `wallet_amount` decimal(11,2) NOT NULL,
  `promo_amount` decimal(11,2) NOT NULL,
  `subtotal_fare` decimal(11,2) NOT NULL,
  `total_fare` decimal(11,2) NOT NULL,
  `driver_payout` decimal(11,2) NOT NULL,
  `driver_or_company_commission` decimal(11,2) NOT NULL,
  `owe_amount` decimal(11,2) NOT NULL,
  `remaining_owe_amount` decimal(11,2) NOT NULL,
  `applied_owe_amount` decimal(11,2) NOT NULL,
  `to_trip_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_trip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paykey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` enum('PayPal','Stripe','Cash','PayPal & Wallet','Stripe & Wallet','Cash & Wallet','Wallet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PayPal',
  `payment_status` enum('Pending','Completed','Trip Cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `is_calculation` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Scheduled','Cancelled','Begin trip','End trip','Payment','Rating','Completed','Null') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `user_id`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `request_id`, `driver_id`, `trip_path`, `map_image`, `total_time`, `total_km`, `time_fare`, `distance_fare`, `base_fare`, `peak_fare`, `peak_amount`, `driver_peak_amount`, `schedule_fare`, `access_fee`, `wallet_amount`, `promo_amount`, `subtotal_fare`, `total_fare`, `driver_payout`, `driver_or_company_commission`, `owe_amount`, `remaining_owe_amount`, `applied_owe_amount`, `to_trip_id`, `begin_trip`, `end_trip`, `paykey`, `payment_mode`, `payment_status`, `is_calculation`, `currency_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10046, '31.421877', '31.813561', '30.047242', '31.239397', 'Al Gabana, Qism Damietta, Damietta Desert, Damietta Governorate, Egypt', '7 Al Bostan Al Seidi, Bab Al Louq, Abdeen, Cairo Governorate, Egypt', 1, 1, 10047, '{ax~DwqdaEw@vAeBJyEdAcQxB_Cw@CiE@uD{AdJeDgLcDuQf@yN|DmKrGoNvI{Idi@m]|GkGlEeQtNeqC`Dkh@zBsPpEaTrLcm@rToiAfMyq@nCcMhDITjP`ApAtA@|DoPjH{w@fHu]|Ke_@|Wu|@xEuPxDsVdB{NlE{QtRyl@|WeiA|Omq@zEg]nSqiB|LscAfVycAre@wvBnSk~@dIaPvn@uw@tR}e@rk@g}A`t@{iBrl@}wAjoEi}Kj~AadEzTqk@vD}JjKmQhMsJzJcFzHkBt}AyMnq@mFrWgCbK}Cz`@cZ~wAojA|K_Hfo@\\zUvBpI|CfLlI|Q~QhJ|D`P|A~a@fApt@@nTQhiAPv|AlAzZZnOpCdIzC`JtA`Xw@~w@w@vaA{Av\\hCd]Ed]lB`u@uCniBmHxPu@fWdBzb@Ij[dBpGFt^}BrSiAv[p@tu@sDj[oAh^B|z@{@rf@Pj^fJxcAzZzS|BhQNr[_@zf@\\bLlB~OxGpa@dX|uAn~@buEh{CnYhRnc@vWp`@dPbr@jXbUzIh^jNp^hIlu@zChhB|ElqBbAtnBh@buAfD`Pd@`SfCdSdHxV|Prf@da@`_@f[tKtNzPvYpR~ZrNfNtOfJdR~FhNdC~_@fHtx@dWnj@jQ|R|DxT~ApbAlKzQxDx[~N`i@nb@fXhTvS`N~q@x\\te@pUhZlJ`VvDn_AnDriA_@pWjAjRfD|J`D`VxLzv@bo@lNjKfMbGbXtHz]pOlTjGjf@rBzk@pBn_@lBfQ|DxQlHnN~Af|@_BfJh@hP`GnOjP~FfIlPhM~NxEhStAhb@zGt_@xHdQxE`KpFld@f]tLdG~YnIrXlGlOTnWwC~w@iJv`C}PxeBsLl\\iCbPiCfK{DtOmKtG{@|FjBvEd@rMyIpE{B|CKnIzBtk@rVvg@vT|O~GjPrL~IxPdXtr@fxAzsD~rApiDfr@tfBraBffEdmA||C`fAfmCla@jdAbTnd@huBlkDdjB|{CpyBxqDxrCtvEvbDznF|vFjeJj]vk@fCpFxCbNjRh}AlGlh@tMrfAnVbrBtg@zoIvJzxAhRnnCrMxjBx]npBpq@dyDt]liBjU`rA|GzZfGnAdCdA~IjWxQha@f`AptAtd@bq@zIdLbFfBfIe@fJwFlJuFrCCrG|Npu@veBbh@tfA~[bt@b^bu@lIxRxJtNpSr^`Jh]bHjYlS|t@jPhRfUdV|XnSvi@r`@t^~ZhUbSeKph@RxLWrHeFrOm@jKeCtLgNtSa@~HR~Ff]f@dCdAn@vLmHfVaAlD', 'fdf8d971.png', '0.00', '0.16', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '2020-01-26 16:58:34', '2020-01-26 17:01:15', 'test', 'Cash', 'Completed', '0', 'USD', 'Completed', '2020-01-26 16:54:21', '2020-01-26 17:02:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('Rider','Driver') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive','Pending','Car_details','Document_details') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `payout_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `country_code`, `mobile_number`, `password`, `user_type`, `company_id`, `remember_token`, `fb_id`, `google_id`, `status`, `device_type`, `device_id`, `currency_code`, `language`, `created_at`, `updated_at`, `deleted_at`, `payout_id`) VALUES
(10001, 'arun', 'test', 'eng.iessa.mostafa@gmail.com', '91', '8667325224', '$2y$10$AyO6IrI6IHGLdxsMzJmngOk6TSFO7n9CgxDWrC0Zkpe2eXBYZ0nnu', 'Driver', 1, NULL, NULL, NULL, 'Active', '2', 'ffp_n7co2_E:APA91bEhTWtmInOjvFoYp3oyAAIULIecH6gkwjOAScjGAXMwbEUJp9Mxg00Qg-b2ylTJbPwzjZ2R3BVdHBrbiz4IXJGWpl2Eip2g69IkalsLgZOQqipWdO46JWLdZ70o0bkaOe3vKG24', 'USD', 'en', '2019-09-09 12:12:44', '2019-09-10 03:07:08', NULL, NULL),
(10002, 'arun', 'test', 'arun@gmail.com', '91', '8667325224', '$2y$10$PCnUFFhKIHuXig4lDuuHtOmRMMzA.rJVcyctg/LgTZLCQ4Hb0BhAC', 'Rider', NULL, NULL, NULL, NULL, 'Active', '2', 'efDzA_3SE3I:APA91bF8QvKilJ3fKN0B_Qu6Ehfkr53V4FREvmcKOmCAWSs40-MzUoiOTlQJ_wOPP1dJQz_A1Uw9XysJQoUFXVngeNGm_pBJgnlWJYQ-gO-mmrFPrqP3f-lon5hJPQLZC135lZ7OwrPp', 'USD', 'en', '2019-09-09 12:18:12', '2019-09-09 12:56:55', NULL, NULL),
(10013, 'test', 'test', 'asd1@ryde.com', '20', '2561651616', '$2y$10$4Y6JIAhW4rCGgbWIa9rRWuHVABNujbYkqdPgFhGIncmJDcpgnNbqO', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2019-10-14 08:00:13', '2019-10-14 08:00:13', NULL, NULL),
(10015, 'Sara', 'Arnous', 'sara_talaat91@yahoo.com', '20', '1285352015', '$2y$10$zyXY3pN5WaatVYaZpoLiOeX42OGC0ptGWNGi/ibtVpnTOUILNIiem', 'Driver', 1, NULL, NULL, NULL, 'Active', '2', 'fnpcmTlNEr0:APA91bF32a5guAnPsom1N2Aq0XUeaNYttGcl1Xp2jl-5JBJc4aso58WkTwHGVMKQp3s2Oo15Q7duFC-eS03Qtj-R_IyX36Cj9NyM1ZT_mltV2MeGoQWU7DgvmT4OJUm7gkUr22lzQ06B', 'USD', 'en', '2019-10-16 13:51:52', '2019-10-20 11:20:10', NULL, NULL),
(10005, 'Mohamed', 'Abozaid', 'fghjkl@rhjk.hjk', '20', '1006360082', '$2y$10$tAdHXiuSvcD4JG8FcGch2ebl2zRN/SZaxJIc62MPqNa7kCWchLn5O', 'Driver', 1, NULL, NULL, NULL, 'Document_details', NULL, '', NULL, '', '2019-10-09 11:37:35', '2019-10-09 11:37:53', NULL, NULL),
(10009, 'Sara', 'Talaat', 'saratalaat91@gmail.com', '20', '1285352015', '$2y$10$Wu8j5TgC/aEgYIRVJiVXB.LU2CGNCBkIbJe41B.LJNJgNoYjXKl9q', 'Rider', NULL, NULL, '10157272975356953', NULL, 'Active', '2', 'cyXhKHeEjns:APA91bEyda6tVcbFbS0uNPRiOcpBaMJUx8JivTr_MPHlpfWK22mpWcjfSaSqXrvSZVEFF-VA8AO0K17ufgjtKSinHy5UTL15Mz7gYYeR6TwDzv12drZr7QOOpwZ4QHYyPS9ShUxr8M-z', 'USD', 'en', '2019-10-13 12:08:00', '2019-10-17 13:44:27', NULL, NULL),
(10007, 'Sara', 'Alshamy', 'saratalaat91@gmail.com', '20', '1024544377', '$2y$10$wwsj61M8s7ABSsG758QngedlqcCp3BplnyDmI81dw4f8SvcRRWKAC', 'Driver', 1, NULL, NULL, NULL, 'Pending', NULL, '', 'USD', 'en', '2019-10-10 07:00:22', '2019-10-17 10:52:29', NULL, NULL),
(10016, 'shenouda', 'shehata', 'shenopro@gmail.com', '20', '1228332078', '$2y$10$RAy4R23O.kWylE24AdyjBezA3cYoBFueFlXrVluOEipDqWFDJ8glO', 'Rider', NULL, NULL, NULL, NULL, 'Active', '2', 'f-VZy4YDYns:APA91bGpi8Chu0yReVzur8KU19sof5zKmMracpmco8L0B5qlP7V9oSstbfb65wDdEteefmnxf3OFvsPnrV_3ZCcHJGVnaP1TXfigWJbKwUPnJWCpJFgykRtTGcPmcDRX_fxtbUFSZhTc', 'USD', 'en', '2019-10-17 06:21:11', '2019-10-17 07:33:39', NULL, NULL),
(10010, 'test', 'test', 'asd@ryde.com', '20', '01228332077', '$2y$10$UB.u/GtoKEfZVTM7W1dSEuokMZusNgX95DMuzypUbiPoG5qZJrDFy', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2019-10-14 07:39:10', '2019-10-14 07:39:10', NULL, NULL),
(10012, 'Shenouda', 'Shehata', 'sheno7@yahoo.com', '', '', '', 'Rider', NULL, NULL, '2443503912430176', NULL, 'Active', NULL, '', NULL, '', '2019-10-14 07:55:37', '2019-10-14 07:55:37', NULL, NULL),
(10017, 'mohamed', 'gad', 'mohamed7el17@gmail.com', '20', '1156321668', '$2y$10$rPYHiRa/krA/eoQ2EV0P7O6iu26FhODqUAzrgFLrxkjHZT4uP7hwm', 'Driver', 4, NULL, NULL, NULL, 'Active', '2', 'ctFYi6qIy_0:APA91bG_8Vbx4xZlGDlscfMBXT3BiCeLBACEbRZJsKF6K8c1e0l_c1FqKJpLAJmYcG4PwmsQvzD3qpoY1pf9O_VwfUUbvd8NcH8eYRSnOOffFF2O8MVZBYtoBYsA61s9PxWDezpF1399', 'USD', 'en', '2019-10-17 07:00:56', '2019-10-17 07:23:01', NULL, NULL),
(10018, 'shenouda', 'shehata', 'shenopro@gmail.com', '20', '1228332078', '$2y$10$fdodMqAVZnmiasF1s024c.QEaHaJcmvJkwjZe0UiluV1YLfkL9pHu', 'Driver', 0, NULL, NULL, NULL, 'Active', '2', 'djIXU9qOXWo:APA91bH_iHUjB6m5Ra_3vq1OYRRpZkrOj9VnNQr1FynkeAUZqSa5t5bKbnEN4dCQTm1BGdLiL9sAYLFI-DIXTh0M0tatR6K3kTSOkDIUew5Xx-xocCG4YsLSblhdyRnLirM8HNSRqI7H', 'USD', 'en', '2019-10-17 07:58:34', '2019-10-20 10:34:53', NULL, NULL),
(10019, 'Test', 'Test', 'hhghgu@hfjhu.com', '966', '551665273', '$2y$10$GlJNS17cjeKFza99lEBq..4tO0dUeGryI.exlYVcSDUK.0c/qkqyG', 'Rider', NULL, NULL, NULL, NULL, 'Active', '2', 'cqnl1T78QEc:APA91bFDu576qkIDOJ3iWFaGf4nr1uJcWlGWt9m8l-13AgSmwIcJAVEZgLplwp1IbgiWnlHiGGt1hEkrR71heCzTriSjr8O7sojBQNo82BCg179-OP8rCy86wC-DRcC0CEeu1UDqMiHN', 'USD', 'ar', '2019-10-19 17:14:26', '2019-10-19 17:14:26', NULL, NULL),
(10020, 'Hiroshima', 'Nagasaki', 'geogatedproject213@gmail.com', '', '', '', 'Rider', NULL, NULL, '10150073843300527', NULL, 'Active', NULL, '', NULL, '', '2019-10-20 01:42:59', '2019-10-20 01:42:59', NULL, NULL),
(10021, 'shenouda', 'shehata', 'sheno7@yahoo.com', '20', '01228332078', '', 'Rider', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2019-10-20 10:15:30', '2019-10-20 10:15:30', NULL, NULL),
(10023, 'updatetest fn', 'updatetest ln', 'updatetestemail@test.com', 'eg', '01002433739', '$2y$10$CZpaFygPKKIqDVw7Bk4RyO2a1iJNY1n/EgNU/Ef508xf2qcZtFpvW', 'Rider', NULL, NULL, NULL, NULL, 'Document_details', '2', '1234564', 'USD', 'en', '2019-11-03 10:32:52', '2019-11-17 15:36:21', NULL, 'test@test.com'),
(10024, 'mahmoud', 'eldeeb', 'm.eldeeb295@gmail.com', '20', '1090274110', '$2y$10$pC4jrUFybj7W49z5cgtLYOyfnmQjW30LribWB6tEibOKbhj5BA7J6', 'Rider', NULL, NULL, NULL, NULL, 'Active', '2', 'f6CJ8LbPgI4:APA91bGPGOkKKexZg6BB2-PAMbIh9lRqctkp05LDQ4EmCdHDBl89sC2-JiifV8NIF6yr8ysrRW0XLgL_KwoFxmpC7lZ2s1agk_x3kY0vQ13--nmA6eZu1oZOa4OXsS-ywmKk3pl6-Nmf', 'USD', 'en', '2019-11-12 12:38:49', '2019-12-29 12:51:45', NULL, NULL),
(10025, 'ali', 'driver', 'asd@gmail.com', '20', '1090274110', '$2y$10$KxqEjaq27VVREZmvketRbOwTBHric587ELW5gMAsQgdV87XzYx30O', 'Driver', 0, NULL, NULL, NULL, 'Active', '2', 'fg1aL-Ypb98:APA91bEg0P0lPGZOrgZvXXHzbCXc8fouZmZhYdTLqj0_bJvjE6bt7a6y7Q20-RJ6manYwon2J1jUG3PiWaPiyYUjeMoNVbcL9nd-yzzm-nrUfalwR5EZY_7RoOuCw5y6qx1nVL1QLvi4', 'USD', 'en', '2019-11-17 13:26:45', '2019-12-29 13:51:33', NULL, NULL),
(10033, 'testfnwqeqw', 'testlnqweqweewe', 'test123@test.com', '20', '1126223344', '$2y$10$bdnbH6yNCSmoOeOoBsTe.um7h85WuhEOduyVHb9QCOVGILI.ohBLS', 'Driver', 1, NULL, NULL, NULL, 'Car_details', '1', 'qwertyuiosdfghjkl.bn13', 'USD', 'en', '2019-11-19 17:21:42', '2019-11-19 17:21:42', NULL, NULL),
(10026, 'testfn', 'testln', 'test@test.com2', 'eg', '0123456789', '$2y$10$Hdj7PWecnPfcCvNAn.0akOJsLoqFthOmwvZaY6GyQLqXDOkemcu4m', 'Rider', NULL, NULL, NULL, NULL, 'Active', '2', 'f_fhVjRY6r0:APA91bE2RDRSWq_kgr1Nuagt5vscqJB8yZqoUUp-a-asU6B7bi2TJV7pyvQzXc-pcM8nv-sHufDJc1gXHOo0UqQCWKnRD9Xo3wPSi6tjt0_dgUwun8Qgyl_9y_AAP_Rjt9QAZ4XkuA9j', 'USD', 'en', '2019-11-17 13:40:00', '2019-11-17 13:40:59', NULL, NULL),
(10027, 'testfnwqeqw', 'testlnqweqweewe', 'test123@test.com', '+20', '1126223342', '$2y$10$z41vp2ucej3noWtFOKwDJOWgv7k7Ni4/yqpyC9uUbUphGSnPxOwgu', 'Rider', 0, NULL, NULL, NULL, 'Active', '1', 'qwertyuiosdfghjkl.bn13', 'USD', 'en', '2019-11-18 21:28:34', '2019-11-18 21:28:34', NULL, NULL),
(10028, 'Ahmed', 'Adam', 'agdjdj@hejd.jdjje', '20', '01126223344', '$2y$10$VpD7dENhWvuSq3f9ra1aXuvacw00qRj92FMTBCpxTRGh03I8c0Ir6', 'Driver', 1200, NULL, NULL, NULL, 'Active', '1', 'fqY4ZlI5fzw:APA91bGMyQufUGIfvizcBw9eAU3ZmbPPCyrpQjcexGmgJKZ4okEypDPklsQ8vG9w5ceQOt1qBwc1rgeZ0jWeose7qchGSmvkK0DVjuHr97-rUYmcRGJIstyqr91w1AEdlFHIJhDWkHpY', 'USD', 'en', '2019-11-18 21:28:42', '2019-11-20 17:11:43', NULL, NULL),
(10029, 'bdjdj', 'hdjdjj', 'nejjdjd@jdjf.hdhd', '+20', '01126223355', '$2y$10$/d.GAgA35DWILydqhdphv.GIrJjElHXsEydOgfa8kWjwcXFhDAj.G', 'Driver', 1, NULL, NULL, NULL, 'Active', '1', '343432432', 'USD', 'en', '2019-11-19 00:17:12', '2019-11-19 18:54:58', NULL, NULL),
(10034, 'hatem', 'mohsen', 'hatem.mmmmm@ccccc.com', '20', '1141009878', '$2y$10$2DJKS7JwnM1aKjGIFJh9h.BPI/diWEV6aov9D/KTVcDvWxwQVJCPK', 'Driver', 1, NULL, NULL, NULL, 'Active', '2', 'ehtfwmyhSmw:APA91bEcAmSazOr_-ehtzAdCeAVkcPR3rpJycoz7K6k9672rXCXsIbef5MNsWaWG7uEFMQ4LgejK5Mr35zTN7mAng9JGLNejTTVUv71Ogof8WnwRdCQP3p9yX4vSJEEWkrdcyvX-HjPC', 'USD', 'en', '2019-11-20 01:03:18', '2019-11-28 02:32:42', NULL, NULL),
(10030, 'ma driver', 'd', 'sfhj@fight.ghjbc', '+20', '01126223366', '$2y$10$ZzuwyW7YT.voXeWVwJyrV.3hCz993LSCgOcIHHauodabfMzVfAg4S', 'Driver', 1, NULL, NULL, NULL, 'Active', '1', 'eavWykpZANw:APA91bGdqqzWEQXzqvYSp-erONq1FVfn4fHcJsmORBrFq_WW5FFIYUQz38d07l5H_JXtvTTdBwFNdJ5xsRASWvCDS95XWb8h93k1AiR8tMmWsTVWAev_oJ-jrgfwtb9EYvu3CgBy8R23', 'USD', 'en', '2019-11-19 17:08:58', '2019-11-19 17:08:58', NULL, NULL),
(10031, 'testfnwqeqw', 'testlnqweqweewe', 'test123@test.com', '+20', '1126223347', '$2y$10$76Fc0yzDpq5mfDAjY5UOMubfPVUwlMwcGC/VHzuIUAR1glf9OM4se', 'Driver', 1, NULL, NULL, NULL, 'Car_details', '1', 'qwertyuiosdfghjkl.bn13', 'USD', 'en', '2019-11-19 17:14:57', '2019-11-19 17:14:57', NULL, NULL),
(10032, 'testfnwqeqw', 'testlnqweqweewe', 'test123@test.com', '20', '1126223348', '$2y$10$7gamU7caQ4eaqKE3lDxyKehXhbz8J6n1JOtyfdkBQOp9unSJpngl.', 'Driver', 1, NULL, NULL, NULL, 'Car_details', '1', 'qwertyuiosdfghjkl.bn13', 'USD', 'en', '2019-11-19 17:16:05', '2019-11-19 17:16:05', NULL, NULL),
(10035, 'hhh', 'yyy', 'vvv@ggg.com', '20', '1141009878', '$2y$10$qN0QYJeIDgUKDcW0I/ChruxxWZq7LcRHSRlUxgRI3R/p5oqRf1nri', 'Rider', 0, NULL, NULL, NULL, 'Active', '2', 'cUV8qmrAnrI:APA91bHMTDnJBpOrNt1knPBGODWKomWtW6cigzYuR5itIVU4jUhgRrwqrTm6chuZ99mfmytij9SnnyIPYDj11d6_Jlq6iIQvHd3QONq2nTsHc9cK9zFGrU8bSDZoqsinzPjgBdx11JbD', 'USD', 'en', '2019-11-20 01:07:46', '2019-11-24 21:59:01', NULL, NULL),
(10036, 'asdasd', 'test', 'm.eldeeb299@gmail.com', '20', '123456', '$2y$10$KXK5HtLuZNyMBaybaGOnZuM.EctgWTFSaP3torHdO1fpLe36t4JJu', 'Driver', 0, NULL, NULL, NULL, 'Active', '1', '', 'USD', 'en', '2019-11-20 17:02:13', '2019-11-20 19:53:47', NULL, NULL),
(10038, 'asd', 'asd', 'm.eldeeb2915@gmail.com', '20', '1002433739', '$2y$10$hW0mvpUInrgYmSlejykp5uIulYjeGmpCUczfmr8kZ.ZHgGV/dQ4Bi', 'Driver', 1, NULL, NULL, NULL, 'Pending', '2', 'cVU9QAtoUSM:APA91bGQKVKHALeozMPuVH5RRSExSHVrPaAIJOxrMcRAMC6e5puWjxyAlIzB2Vw409M_YDD_EWOULUDmelS2eAwToHqsrrY3bm7ESARxroYbSX-RQS6LdjjqLWmWSyELwuXrKlFS5-tD', 'USD', 'en', '2019-11-20 21:27:09', '2019-11-20 21:36:32', NULL, NULL),
(10037, 'testfnwqeqw', 'testlnqweqweewe', 'test1203@test.com', '20', '1126223355', '$2y$10$KCTV0Z/M11n7ZhsbM2PKF.srha7IEN56HxW0Hbd6L2n4MnPwWLZtW', 'Rider', 0, NULL, NULL, NULL, 'Active', '', '94c8a93426e12a874c8e9355da737a15db2f4a1da0d9c38de7340e8f66812b34', 'USD', 'en', '2019-11-20 17:09:46', '2019-11-28 14:16:51', NULL, NULL),
(10039, 'Adam', 'Adam', 'adam@adam.adam', '20', '01126223366', '$2y$10$ERgadu/Xn21OI0epOo/FJO5OoIER7YQA2VWiSN/I.URT.p27Dptxm', 'Rider', 0, NULL, NULL, NULL, 'Active', '1', 'dWAv2ZAHLVs:APA91bGTn42NmcGuFbjsTFghqAJURiCadBIcFJjijYAHv95eByXCIKKsfFUl8HyaALP8CNC487Qv-S_T7EFsqP4ZShj1ewHbYeqIiJPmx9NJ_sP-5dBD47XHZn6GKgamG6dadaSqQLzO', 'USD', 'en', '2019-11-21 17:25:14', '2019-11-21 17:25:14', NULL, NULL),
(10040, 'Adam', 'Adam', 'jsjsj@hdk.jfd', '20', '01126223344', '$2y$10$iFr3pD5N2vefc7.syh9.qeYxXj1DfNcuNhYJw/YZpVlWRaBby/kkG', 'Driver', 0, NULL, NULL, NULL, 'Active', '2', '', 'USD', 'en', '2019-11-27 21:54:02', '2019-11-28 02:48:27', NULL, NULL),
(10041, 'driver', 'client', 'test@test.com3', 'eg', '1234567890', '$2y$10$bJyY5k6.Q9mJ34yvdG8cGuRrtRFshgquok/eFFIpdJUQ/uiWK4cza', 'Driver', 1, NULL, NULL, NULL, 'Pending', '1', 'device_id_test', 'USD', 'en', '2019-12-24 11:10:59', '2019-12-24 11:10:59', NULL, NULL),
(10042, 'driver', 'client', 'test@test.com31', 'eg', '2123456789', '$2y$10$gyiEib8dqrjie0L1ZAZsW.73bgPiNxi77KGjHRC9uiDwVxhNP7QiS', 'Driver', 1, NULL, NULL, NULL, 'Car_details', '1', 'device_id_test', 'USD', 'en', '2019-12-25 08:54:39', '2019-12-25 08:54:39', NULL, NULL),
(10043, 'rider', 'test', 'test@test.com-31', '+20', '987456321', '$2y$10$WJTu.brpcWUTs0bf6ty8rOWZF3ZBj2fpor3y9dGcAsu0G3RO6e0H2', 'Rider', 0, NULL, NULL, NULL, 'Active', '1', '123456789', 'USD', 'en', '2019-12-29 07:00:15', '2020-01-08 12:20:18', NULL, NULL),
(10044, 'testdec', 'testlnDec', 'dec@test.com', '20', '1234567895', '$2y$10$OkYVeojMVImMuNPLAvz4O.sStoQ7NhGl2WJlAYqcbEkUUZAqhctve', 'Driver', 3, NULL, NULL, NULL, 'Active', '2', 'fn9Gy5JbGu4:APA91bGF38X82WhLccOF5PtNhJ2ucv_c1kdniXOPnAK9Y9_BTrFuNCq9argQnmUpEcdsppCXjsIJaO830KXU2IExm_2FJVHqXTGf7kabmd9lCfBUNXq9w7dOUSX7UloX-qMW0lHJCBg4', 'USD', 'en', '2019-12-29 08:51:40', '2019-12-29 11:17:38', NULL, NULL),
(10045, 'test', 'driver', 'asd@gmail.com', '20', '1090274110', '$2y$10$OkYVeojMVImMuNPLAvz4O.sStoQ7NhGl2WJlAYqcbEkUUZAqhctve', 'Driver', 0, NULL, NULL, NULL, 'Active', '1', 'cG5jCVk2uEA:APA91bFo8efdBPUyT3JdDPD4de2_h508Gsfpjh8rRoZfMr2ZYN0BiIUSyGdzn2MUBCO5hR7b_0G6NU-1ryB1Lwiz3yTejVw_g9Y4WF4jmKIyfCLnGFQ_X2GKIa8tsiCMLxh2HJemkrkF', 'USD', 'en', '2019-11-17 13:26:45', '2019-12-29 12:26:26', NULL, NULL),
(10046, 'testfn21012020', 'testln21012020', 'test@test.com', 'eg', '010', '$2y$10$q3DXtQXVjsoS/HxEixqGheWNKheXoum2c4q352AdwveTxnhv/YWPi', 'Rider', 0, NULL, NULL, NULL, 'Active', '2', '1234564', 'USD', 'en', '2020-01-13 03:37:24', '2020-01-28 03:52:55', NULL, NULL),
(10047, 'driver', 'test', 'test@test.0112233445566.com', '20', '0112233445566', '$2y$10$azRIWVuQgMap0nMngijAnebz579BPtgjg5tHGYq9mCebVSlty7O1y', 'Driver', 1, NULL, NULL, NULL, 'Active', '1', 'device_id_test', 'USD', 'en', '2020-01-13 03:38:55', '2020-01-13 03:44:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_promo_code`
--

CREATE TABLE `users_promo_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `promo_code_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_promo_code`
--

INSERT INTO `users_promo_code` (`id`, `user_id`, `promo_code_id`, `trip_id`, `created_at`, `updated_at`) VALUES
(1, 10023, 1, 0, '2019-10-17 07:33:12', '2019-10-17 07:34:18'),
(2, 10023, 1, 0, '2019-10-17 07:33:12', '2019-10-17 07:34:18'),
(3, 10023, 2, 0, '2019-11-04 06:01:26', '2019-11-04 06:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT 0,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_count` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `user_id`, `company_id`, `vehicle_id`, `vehicle_type`, `vehicle_name`, `vehicle_number`, `insurance`, `rc`, `permit`, `document_count`, `status`) VALUES
(1, 10024, 1, 3, 'GoferXL', 'qwerty', '1234', 'https://rydetogo.com/images/users/10001/50ff70d0.jpg', 'https://rydetogo.com/images/users/10001/eed6b34c.jpg', 'https://rydetogo.com/images/users/10001/12cf407d.jpg', 3, 'Active'),
(2, 10003, 1, 2, 'GoferX', 'mlksda', 'saldkm', '', '', '', 0, 'Active'),
(3, 10005, 1, 3, 'GoferXL', '5456', '456', '', '', '', 0, 'Active'),
(4, 10007, 1, 3, 'GoferXL', 'Toyota', 'GTY 541', 'https://rydetogo.com/images/users/10007/3c48f703.jpg', 'https://rydetogo.com/images/users/10007/5b42f9cb.jpg', 'https://rydetogo.com/images/users/10007/f49420ae.jpg', 3, 'Active'),
(5, 10014, 1, 3, 'GoferXL', 'Honda Civic', 'WER 678', 'https://rydetogo.com/images/users/10014/5e29917f.jpg', 'https://rydetogo.com/images/users/10014/a645606b.jpg', 'https://rydetogo.com/images/users/10014/74c69d71.jpg', 3, 'Active'),
(6, 10015, 1, 3, 'GoferXL', 'Honda Civic', 'RTL 667', 'https://rydetogo.com/images/users/10015/9073343c.jpg', 'https://rydetogo.com/images/users/10015/0611f86e.jpg', 'https://rydetogo.com/images/users/10015/c80511a4.jpg', 3, 'Active'),
(7, 10017, 1, 2, 'GoferX', 'test', '46523', 'https://rydetogo.com/images/users/10017/049e32a0.jpg', 'https://rydetogo.com/images/users/10017/eea371e3.jpg', 'https://rydetogo.com/images/users/10017/5d2f2d10.jpg', 3, 'Active'),
(8, 10018, 1, 1, 'GoferGO', 'test', '12345', 'https://rydetogo.com/images/users/10018/d6bbd957.jpg', 'https://rydetogo.com/images/users/10018/6b31d781.jpg', 'https://rydetogo.com/images/users/10018/2fa4692b.jpg', 3, 'Active'),
(9, 10023, 0, 1, 'TNT', 'hell', '123654', '', '', '', 0, 'Active'),
(10, 10025, 1, 1, 'GoferGO', 'asd', 'd456', 'http://192.168.1.142:8000/images/users/10025/faa4bb6f.jpg', 'http://192.168.1.142:8000/images/users/10025/eb0d0313.jpg', 'http://192.168.1.142:8000/images/users/10025/3584e94d.jpg', 3, 'Active'),
(11, 10029, 0, 1, 'TNT', 'hell', '123654', '', '', '', 0, 'Active'),
(12, 10028, 1, 1, 'GoferGO', 'njxjdnndn', 'ndjkdndn', 'http://api-ksa.com/demo/ryde/public/images/users/10028/da00e0eb.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10028/ce92eefd.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10028/0e619119.jpg', 3, 'Active'),
(13, 10034, 1, 1, 'GoferGO', 'toyota', '12345', 'http://api-ksa.com/demo/ryde/public/images/users/10034/cf2f4fed.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10034/f44cd2e1.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10034/bd63b7e4.jpg', 3, 'Active'),
(14, 10038, 1, 1, 'GoferGO', 'sdddddd', 'ss1523', 'http://api-ksa.com/demo/ryde/public/images/users/10038/87006ed0.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10038/ccef91b3.jpg', 'http://api-ksa.com/demo/ryde/public/images/users/10038/65a3acb8.jpg', 3, 'Active'),
(15, 10040, 0, 2, 'GoferX', 'ed', 'we', 'http://127.0.0.1:8000/images/vehicle/15/insurance1577510057.jpg', 'http://127.0.0.1:8000/images/vehicle/15/rc1577510057.jpg', 'http://127.0.0.1:8000/images/vehicle/15/permit1577510057.jpg', 0, 'Active'),
(16, 10044, 3, 1, 'GoferGO', 'ed', 'qwed', 'http://192.168.1.152:8000/images/vehicle/16/insurance1577612197.jpg', 'http://192.168.1.152:8000/images/vehicle/16/rc1577612197.jpg', 'http://192.168.1.152:8000/images/vehicle/16/permit1577612197.jpg', 0, 'Active'),
(17, 10047, 0, 1, 'TNT', 'hell', '123654', '', '', '', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paykey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`user_id`, `amount`, `currency_code`, `paykey`) VALUES
(10023, '78.00', 'USD', ''),
(10024, '9890.00', 'USD', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `api_credentials`
--
ALTER TABLE `api_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancel_trip_id_foreign` (`trip_id`),
  ADD KEY `cancel_user_id_foreign` (`user_id`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_documents_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_credentials_company_id_foreign` (`company_id`);

--
-- Indexes for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payout_preference_company_id_foreign` (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_short_name_unique` (`short_name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`);

--
-- Indexes for table `driver_address`
--
ALTER TABLE `driver_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_address_user_id_unique` (`user_id`);

--
-- Indexes for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_documents_user_id_unique` (`user_id`);

--
-- Indexes for table `driver_location`
--
ALTER TABLE `driver_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_location_user_id_unique` (`user_id`),
  ADD KEY `driver_location_car_id_foreign` (`car_id`);

--
-- Indexes for table `driver_payment`
--
ALTER TABLE `driver_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_payment_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_payment_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emergency_sos_user_id_foreign` (`user_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_category`
--
ALTER TABLE `help_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_category_lang_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `help_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `help_subcategory_category_id_foreign` (`category_id`);

--
-- Indexes for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_sub_category_lang_sub_category_id_locale_unique` (`sub_category_id`,`locale`),
  ADD KEY `help_sub_category_lang_locale_index` (`locale`);

--
-- Indexes for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `help_translations_help_id_locale_unique` (`help_id`,`locale`),
  ADD KEY `help_translations_locale_index` (`locale`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_fare`
--
ALTER TABLE `manage_fare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_fare_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_user_id_foreign` (`user_id`);

--
-- Indexes for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_preference`
--
ALTER TABLE `payout_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peak_fare_details_fare_id_foreign` (`fare_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD UNIQUE KEY `profile_picture_user_id_unique` (`user_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_code_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_trip_id_foreign` (`trip_id`),
  ADD KEY `rating_user_id_foreign` (`user_id`),
  ADD KEY `rating_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_user_id_foreign` (`user_id`),
  ADD KEY `request_car_id_foreign` (`car_id`),
  ADD KEY `request_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_location`
--
ALTER TABLE `rider_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rider_location_user_id_unique` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_cancel_schedule_ride_id_foreign` (`schedule_ride_id`);

--
-- Indexes for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_ride_user_id_foreign` (`user_id`),
  ADD KEY `schedule_ride_company_id_foreign` (`company_id`),
  ADD KEY `schedule_ride_car_id_foreign` (`car_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_user_id_foreign` (`user_id`),
  ADD KEY `trips_car_id_foreign` (`car_id`),
  ADD KEY `trips_request_id_foreign` (`request_id`),
  ADD KEY `trips_driver_id_foreign` (`driver_id`),
  ADD KEY `trips_currency_code_foreign` (`currency_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_fb_id_unique` (`fb_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- Indexes for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_promo_code_user_id_foreign` (`user_id`),
  ADD KEY `users_promo_code_promo_code_id_foreign` (`promo_code_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_user_id_foreign` (`user_id`),
  ADD KEY `vehicle_company_id_foreign` (`company_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD UNIQUE KEY `wallet_user_id_unique` (`user_id`),
  ADD KEY `wallet_currency_code_foreign` (`currency_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_credentials`
--
ALTER TABLE `api_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cancel`
--
ALTER TABLE `cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;

--
-- AUTO_INCREMENT for table `company_documents`
--
ALTER TABLE `company_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_payout_credentials`
--
ALTER TABLE `company_payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_payout_preference`
--
ALTER TABLE `company_payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `driver_address`
--
ALTER TABLE `driver_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `driver_documents`
--
ALTER TABLE `driver_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `driver_location`
--
ALTER TABLE `driver_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `driver_payment`
--
ALTER TABLE `driver_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emergency_sos`
--
ALTER TABLE `emergency_sos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category`
--
ALTER TABLE `help_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_category_lang`
--
ALTER TABLE `help_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_subcategory`
--
ALTER TABLE `help_subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_sub_category_lang`
--
ALTER TABLE `help_sub_category_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_translations`
--
ALTER TABLE `help_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manage_fare`
--
ALTER TABLE `manage_fare`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payout_credentials`
--
ALTER TABLE `payout_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payout_preference`
--
ALTER TABLE `payout_preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peak_fare_details`
--
ALTER TABLE `peak_fare_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rider_location`
--
ALTER TABLE `rider_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_cancel`
--
ALTER TABLE `schedule_cancel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10048;

--
-- AUTO_INCREMENT for table `users_promo_code`
--
ALTER TABLE `users_promo_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
