-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2020 at 09:27 PM
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

--
-- Dumping data for table `schedule_ride`
--

INSERT INTO `schedule_ride` (`id`, `user_id`, `company_id`, `schedule_date`, `schedule_time`, `schedule_end_date`, `schedule_end_time`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `trip_path`, `car_id`, `location_id`, `peak_id`, `booking_type`, `driver_id`, `status`, `timezone`, `payment_method`, `is_wallet`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10071, NULL, '2020-02-16', '20:44', '', '', '0.0', '0.0', '0.0', '0.0', 'Talkha - Damietta Rd, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Unnamed Road, كفر المنازلة، كفر سعد،، Kafr Al Manazlah, Kafr Saad, Damietta Governorate, Egypt', '', 3, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'PayPal', 'No', '2020-02-04 18:30:04', NULL, NULL),
(2, 10071, NULL, '2020-02-16', '20:46', '', '', '0.0', '0.0', '0.0', '0.0', 'Talkha - Damietta Rd, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Demiat - Al Gamalia, Kafr El-Arab, Faraskour, Damietta Governorate, Egypt', '', 4, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-04 18:32:36', NULL, NULL),
(3, 10071, NULL, '2020-02-16', '14:05', '', '', '0.0', '0.0', '0.0', '0.0', 'Talkha - Damietta Rd, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Demiat - Al Gamalia, Faraskour, Damietta Governorate, Egypt', '', 3, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-05 11:51:34', NULL, NULL),
(4, 10024, NULL, '2020-02-16', '14:09', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '12 El-Nahda, Maadi as Sarayat Al Gharbeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 11:55:12', NULL, NULL),
(5, 10071, NULL, '2020-02-16', '14:11', '', '', '0.0', '0.0', '0.0', '0.0', 'Talkha - Damietta Rd, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Al Adlyaa - Tranesh Al Bahr, Kafr El-Arab, Faraskour, Damietta Governorate, Egypt', '', 4, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-05 11:57:24', NULL, NULL),
(6, 10024, NULL, '2020-02-16', '14:15', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '15 El-Nahda, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 12:00:56', NULL, NULL),
(7, 10024, NULL, '2020-02-16', '14:18', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '3 Street 3, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 12:04:01', NULL, NULL),
(8, 10071, NULL, '2020-02-16', '14:41', '', '', '0.0', '0.0', '0.0', '0.0', 'Talkha - Damietta Rd, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Unnamed Road, Faraskour, Damietta Governorate, Egypt', '', 4, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-05 12:25:12', NULL, NULL),
(9, 10024, NULL, '2020-02-16', '17:26', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '15 El-Nahda, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 15:12:17', NULL, NULL),
(10, 10024, NULL, '2020-02-16', '17:26', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '15 El-Nahda, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 15:12:39', NULL, NULL),
(11, 10024, NULL, '2020-02-16', '18:30', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '3 Street 3, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-05 16:16:32', NULL, NULL),
(12, 10024, NULL, '2020-02-16', '11:30', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', 'Street 100, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'PayPal', 'Yes', '2020-02-06 09:16:29', NULL, NULL),
(13, 10071, NULL, '2020-02-16', '16:41', '', '', '0.0', '0.0', '0.0', '0.0', 'Unnamed Road, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'Tarik Al Ghawbain, At Tarhah, Faraskour, Damietta Governorate, Egypt', '', 3, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-06 12:26:10', NULL, NULL),
(14, 10024, NULL, '2020-02-16', '12:22', '', '', '0.0', '0.0', '0.0', '0.0', '12 El-Nahda, Maadi as Sarayat Al Gharbeyah, Maadi, Cairo Governorate, Egypt', 'Street 100, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'Yes', '2020-02-09 10:08:25', NULL, NULL),
(15, 10071, NULL, '2020-02-16', '18:25', '', '', '0.0', '0.0', '0.0', '0.0', 'Unnamed Road, Mit Abou Ghaleb, Kafr Saad, Damietta Governorate, Egypt', 'El-Sadat, Madinet Faraskour, Faraskour, Damietta Governorate, Egypt', '', 3, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-09 16:11:13', NULL, NULL),
(16, 10024, NULL, '2020-02-16', '10:51', '', '', '0.0', '0.0', '0.0', '0.0', '5b Wadi Al Nile, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', 'Street 151, Maadi Al Khabiri Ash Sharqeyah, Maadi, Cairo Governorate, Egypt', '', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'Yes', '2020-02-11 08:37:40', NULL, NULL),
(17, 10055, NULL, '2020-02-16', '12:08', '', '', '30.982054', '31.178694', '30.528116', '31.217481', 'Saad Mohamed Saad, Al Mahala Al Kobra, Gharbia, Egypt', 'Warwara Entranc - El Corniche, Menoufia, Egypt', 'eeb|Daqh}Dl@Rr@j@nAbAnBdAzBbBx@`@r@Hd@ALZbAf@xCfAfBz@ZTbAlAjAtAlCdCnC|Br@|@NnAElA[nBs@dDMfA?`CRhDH|CJfBNVjAz@n@NXN~@V`CVtDBjEL~FVt@FvAf@dCx@fB~@|CvBdBxAb@f@~AxBt@pApArBfB`Ch@`@h@LL?`@?^D`A`@z@b@pAbAz@r@hB~AjCbC|CfCfN~KxHpGzOnMrB`BjMxKxLlKpElDr[hWtYfV`PxM`g@|a@lPtM|WzT`XnTfNfLlUjRpEbE|BtCdAdB|A~CjIjQdHbOt@pA`C|C`D|CfQzMxWdS|CjClEbEdClCpCnDdJ~MzKlPjEbGjDvDjG`Gt_@`^|JtI`FrEzGpGfIhIfGvFrXjW`DfClAl@fBp@dB`@fALrBFzAAtCUfTyCzBOjB?~BPfB`@jBt@zCtBtKxIfH|FdDvClb@t]`v@pn@pg@ta@ti@dd@~TdR`TbQn^fZbMzJlOlM`WtSxF~EdD|CbNpLfLbJbZlVpErDbGzEjB|AKv@GTm@r@{AxAeAd@iBHqGm@sBOKI_@c@Cm@\\i@XUnFw@rH}@lVwCfTiCnLsAzb@sFz^iElaAoLzo@{IjWeDdZiElL}Axb@{FvVqCpOwBjUqDxFs@lFk@`CYnAW`D}@zJ}DlK}EhAi@fN}FzTuJzGwCvQ{HrQwH~V_Ljq@uYd]cOl^uOdYaMhJ{Dt_@oPnYaM`b@uQvYiMzGwC|EqClF{DvF}E`CcCtKiLj]q]jEkElFwFjGmGnJwJtMoNjFwFxCwCtMqM|f@ag@n_@s_@nFiEnDeC~D_CdN_GjZ}LfUsJxZmMdC{@zJ_E|G}C|^gO`Bm@jImDlOgGdOqGjLuEbk@sU|ZiMfJqDpMwFlTwIhXaLpIqDdX{K|\\iN~GwCl@_@d@]dAaAjAyA~BeEZQbAeBtBgDhCaDWOGK{@kAeJ_Ow@oAYe@FmAVcGNaDPeDNsE`By`@v@sRwQwBeBWk@Ug@k@_@s@YsAaBgKaBqKyA{Ie@mAs@aAeGwFsGmHuJqKy^ea@wNeP{HgJaNqO}HcIiAwA[c@l@q@zD{BdFoC|EiCvReKdx@_c@pgAql@zCcBt@g@v@aARk@X}A^}B`CyNz@q@DEt@\\n@X`@kAVu@Nu@\\_C`@kDdAcHj@cDEoIEoAhB?UoHI_D`B\\hErAx@J`CWtD_@nBKpEOr@K|Bo@pA[fAMdDBnGGbB_@^HTNXFlDS~BGrBMjACtD[lLsA', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Paypal', 'Yes', '2020-02-11 09:53:34', NULL, NULL),
(18, 10075, NULL, '2020-02-16', '12:23', '', '', '29.967841', '31.248421', '29.958800', '31.256919', 'Misr - Helwan Agricultural Road, Al Maadi, Helwan, Egypt', 'No 6 Street, Al Maadi, Helwan, Egypt', 'ma|uDybv}DmARkEn@BXjCe@jCc@lAUd@UbB{@rBaAjCg@b@Ef@E\\OhCOfAM~E[hAQnA]tAk@bBo@zAo@RKG[RGxDuA~@c@p@{BHg@\\yBl@kCP_@@?@ABAFGBKGUCCAADa@d@mC}EyAd@iCp@yDUI', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'Yes', '2020-02-13 10:09:12', NULL, NULL),
(19, 10075, NULL, '2020-02-16', '12:27', '', '', '29.967890', '31.248549', '29.966510', '31.241139', 'No 104, Al Maadi, Helwan, Egypt', 'Corniche El Nile Street, Al Basatin wa Dar Al salam, Cairo, Egypt', 'gc|uDyhv}DtB{@\\zAh@dBULMHFR`AdDb@dBZjAVbAHJNRJZ`@dA|@`BnAfB~BtBwHbLoCtDwBpCmBnBsJdIaHnGeBzAeAp@eBx@eBh@iEdAaGzAyC`AKKICIB}FvBmA`@aDjAsFhBqCrAGHCLXx@DFHDNBTChCwAfEsBLMBG@M`PmGpKkC|Cy@bA]fAa@tBkAl@c@|DmDrKmJfDuCvC_DpCyD', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Cash', 'No', '2020-02-13 10:13:02', NULL, NULL),
(20, 10075, NULL, '2020-02-16', '12:35', '', '', '29.967913', '31.248524', '29.963400', '31.240057', 'No 104, Al Maadi, Helwan, Egypt', 'Al Basatin, Al Esawia, Cairo, Egypt', 'kc|uDwhv}DxB}@\\zAh@dBULMHFR`AdDb@dBZjAVbAHJNRJZ`@dA|@`BnAfB~BtBwHbLoCtD|@`AXFjDdCXPH?BCE{@Pw@DEHEd@BbAI^G@ME{@DEVAp@MjA_@L@^RPANC', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'No', '2020-02-13 10:18:24', NULL, NULL),
(21, 10055, NULL, '2020-02-16', '12:36', '', '', '30.982097', '31.178705', '30.148707', '31.145255', 'Saad Mohamed Saad, Al Mahala Al Kobra, Gharbia, Egypt', 'Makaber Sida Street, Bortos, 6th Of October, Egypt', 'keb|Deqh}DfHlEtDdCxAFLZ|EnBbCpA|GhHbEzDNnAuAbJMhERhDH|CZ~BtCzA`En@`KP~FVlCn@lFxB|CvBhC`CfF~HfB`CrAn@n@?^DnEhCnM~K|z@|r@~o@di@vj@`e@`g@|a@ji@pc@v}@bu@pEbE|BtCnNpYdHbOvDnF`D|CfQzMxWdSjJnIvG|HdJ~MzKlPvJzLjG`Gt_@`^~QhPjZrYrXjW`DfCtD~AlDn@nED|XoDfFOfFr@jBt@zCtBtKxIlMtKnyAfmApg@ta@vtAniAbuAfiAb[nX|m@dg@bGzEjB|AKv@qCbDeAd@iBHqGm@_CY_@c@Cm@\\i@hGmArH}@lVwCva@}Ezb@sFhaByRlcBkUfp@yIhg@iGd]eF~L}A|O{FlK}EpPgHnp@iY~{Amp@h}CisAx|@_`@xNiHlF{DxJaJtKiLj]q]dUqUje@wf@ru@su@n_@s_@~KoI~D_CdN_GjZ}LfUsJ~^iOxS}I~a@uPxYuLl~Bo`AloBqx@rJuEpC{CrGgMpByC|CaCtHaCfBQxDLrK|@|EUjDcA`p@mXdsCglA~_As`@vc@mRdW_KvG_D~CkDdFsJb\\}q@pGgNx@{BlBgJdCsNxDmTvAkIlEwPhBiF|A{DjHuNvCqEnD{EjDaCvCkA~Ci@|FFlDp@fBv@jNlJrSbNxNnEbIzA`LzBzK`CfHjB|B~@|EtCjPhK~FvDxf@v[jQ~KfGtBbF`AdFTtDD`ZkCbLy@`UoBjr@cH|WaCh_CuSx{AmNbNmAlKmBlb@wLhFcBbG_ErOkPzIcJbD{CbDqBzEqAlGOrLdApQvAtFzAzFjEtJ`JpEbDrGtBvGRj]oCb`@wDb}@eIt_B_OtUsCzEaBjEaCxOqLzBw@lEk@lD?fEt@rFzCtB`CjKxPdD`EvDlDtGzDvCnAvKjCdMl@hIi@fEy@`NoF|GwEdFyFpQmTpFcE`H{CxCu@`KyAjUqBp}@_I`U{BxeBeOdy@oHbqBqQtv@uGdFNhHp@zEZrFIj[oCvc@aDdIiAdFyCzEkCbPoBvjA_K|g@gEpMiA|EI~C`A^rBXxAp@t@|BnB`AtBPbDVd_@l@lJbAnGzArFhEdJ~BbD~RlX`JjMxC`DjHzE|HxCdY|Ev]bGjN`CfHxAtDn@nB\\p@~@DdA{BtH}HrM_IxH{D|FyAxCcGtR}A~I}@xKuC`T_BnYmBbRm@lFkA~E_C~F}Pl[sKjReEhG}MhMaOjQsIlKyV`YoGjHwAfEhDlBlD~Bd@|CPjFHl@v@u@', 1, 1, 0, 'Schedule Booking', 10025, 'Completed', 'Africa/Cairo', 'Paypal', 'Yes', '2020-02-13 10:22:24', NULL, NULL),
(22, 10055, NULL, '2020-02-16', '12:42', '', '', '30.982183', '31.178657', '30.357688', '31.978917', 'Saad Mohamed Saad, Al Mahala Al Kobra, Gharbia, Egypt', 'Ismailia, Egypt', 'web|Dkqh}DrHrEtDdCxAFLZ|EnBbCpA|GhHbEzDNnAuAbJMhERhDH|CZ~BtCzA`En@`KP~FVlCn@lFxBfHxFfF~HfB`CrAn@n@?^DnEhCnM~K|z@|r@v{AfoAlqAnfAv}@bu@nIxInNpYdHbOvDnF`D|CfQzMxWdSjJnIvG|HdJ~MzKlPvJzLjG`Gt_@`^~QhPjZrYrXjW`DfCtD~AlDn@nED|XoDfFOfFr@fGjDbZnV`bC|oBvtAniAbuAfiAb[nX|m@dg@bGzEjB|AKv@qCbDeAd@iBHqGm@_CY_@c@Cm@\\i@hGmArH}@lVwCva@}Ezb@sFhaByRlcBkUfp@yIhg@iGdk@cI|O{FlK}EpPgHnp@iY~{Amp@h}CisAx|@_`@xNiHlF{DxJaJtKiLj]q]dUqUje@wf@ru@su@n_@s_@~KoIdT_Krp@qXxs@gZx|@k^znFazBrJuEpC{CrGgMpByC|CaCtHaCfBQxDLrK|@|EUjDcA`p@mXdsCglA~_As`@nXuNrGkC|@y@h@uCo@sCcBiAuBOiEeB}AwBkAaD[_A}BwOe@cRRaHdAmKbBuIzCwJdEkJdW}d@jW}g@jUsd@pNgWnPg\\vWkc@lU_a@bIoOdE}LbB{G~DsVx@eJhAgWhCo\\dAwIdGoh@`AaPNyZyAq\\yC_f@eBiW_Csd@KgMpBmy@nEslBbAeQnBgOjMix@nLit@nBwTh@uREgQ_BaYmAkNsA{O{KsqAqA}Pa@wOl@uWvCkXjA}F|GyWfm@yyBn\\wlAbEoOfFmTpBmOtEyh@rFuq@lBoO`CwL~Naj@pO_k@jDmKvFiMzEsIhFiHpa@ub@zOaPhLaOfQs[dRo^fh@wbAnKcTjGuP`Myd@f\\_mA~DgMrCuGrKaQnLyLnDoC|EsDjQyMld@u]rSyNdIwEvq@_[~TyJde@cRrJgCfHo@fKCjHx@nGvAvLbD`TdFjIdAfNTvIo@vPcEbn@eUlhBkq@lMsHfJeIjGkHbI{M`Zsn@bTwc@tHyQpBqHbCuSPuJq@oi@cByoA{@et@p@eQpCaQfFoN|DkH`EsFlHiHlLeKvuBkjBt~FyeFv]a[jCkBdBEhBbAt@|Ci@|CgBzAiDQoBuBuC}E{JyOceAaeByn@qdAg|AegCcc@os@}mAqrBkhA{iBua@mr@m{AceC}kCsmEaf@}w@gG{JeHoLoEuJcIqSgz@_vBk\\ky@ed@okAyQsd@mR{f@wIeSyKyXwJ_Wqb@}fAud@wjAoIgTrUqMxMiHjGqEnc@o]rg@kc@dDuD', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'Yes', '2020-02-13 10:27:58', NULL, NULL),
(23, 10055, NULL, '2020-02-16', '12:42', '', '', '30.982183', '31.178657', '30.357688', '31.978917', 'Saad Mohamed Saad, Al Mahala Al Kobra, Gharbia, Egypt', 'Ismailia, Egypt', 'web|Dkqh}DrHrEtDdCxAFLZ|EnBbCpA|GhHbEzDNnAuAbJMhERhDH|CZ~BtCzA`En@`KP~FVlCn@lFxBfHxFfF~HfB`CrAn@n@?^DnEhCnM~K|z@|r@v{AfoAlqAnfAv}@bu@nIxInNpYdHbOvDnF`D|CfQzMxWdSjJnIvG|HdJ~MzKlPvJzLjG`Gt_@`^~QhPjZrYrXjW`DfCtD~AlDn@nED|XoDfFOfFr@fGjDbZnV`bC|oBvtAniAbuAfiAb[nX|m@dg@bGzEjB|AKv@qCbDeAd@iBHqGm@_CY_@c@Cm@\\i@hGmArH}@lVwCva@}Ezb@sFhaByRlcBkUfp@yIhg@iGdk@cI|O{FlK}EpPgHnp@iY~{Amp@h}CisAx|@_`@xNiHlF{DxJaJtKiLj]q]dUqUje@wf@ru@su@n_@s_@~KoIdT_Krp@qXxs@gZx|@k^znFazBrJuEpC{CrGgMpByC|CaCtHaCfBQxDLrK|@|EUjDcA`p@mXdsCglA~_As`@nXuNrGkC|@y@h@uCo@sCcBiAuBOiEeB}AwBkAaD[_A}BwOe@cRRaHdAmKbBuIzCwJdEkJdW}d@jW}g@jUsd@pNgWnPg\\vWkc@lU_a@bIoOdE}LbB{G~DsVx@eJhAgWhCo\\dAwIdGoh@`AaPNyZyAq\\yC_f@eBiW_Csd@KgMpBmy@nEslBbAeQnBgOjMix@nLit@nBwTh@uREgQ_BaYmAkNsA{O{KsqAqA}Pa@wOl@uWvCkXjA}F|GyWfm@yyBn\\wlAbEoOfFmTpBmOtEyh@rFuq@lBoO`CwL~Naj@pO_k@jDmKvFiMzEsIhFiHpa@ub@zOaPhLaOfQs[dRo^fh@wbAnKcTjGuP`Myd@f\\_mA~DgMrCuGrKaQnLyLnDoC|EsDjQyMld@u]rSyNdIwEvq@_[~TyJde@cRrJgCfHo@fKCjHx@nGvAvLbD`TdFjIdAfNTvIo@vPcEbn@eUlhBkq@lMsHfJeIjGkHbI{M`Zsn@bTwc@tHyQpBqHbCuSPuJq@oi@cByoA{@et@p@eQpCaQfFoN|DkH`EsFlHiHlLeKvuBkjBt~FyeFv]a[jCkBdBEhBbAt@|Ci@|CgBzAiDQoBuBuC}E{JyOceAaeByn@qdAg|AegCcc@os@}mAqrBkhA{iBua@mr@m{AceC}kCsmEaf@}w@gG{JeHoLoEuJcIqSgz@_vBk\\ky@ed@okAyQsd@mR{f@wIeSyKyXwJ_Wqb@}fAud@wjAoIgTrUqMxMiHjGqEnc@o]rg@kc@dDuD', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'Yes', '2020-02-13 10:28:45', NULL, NULL),
(24, 10075, NULL, '2020-03-16', '13:25', '', '', '30.054098', '31.395071', '30.048583', '31.383203', 'El Ismailia, Nasr City, Cairo, Egypt', 'Al Hai Al Asher, Nasr City, Cairo, Egypt', '_}lvDezr~DAvAUdBGV~@l@bBdAhDzBrCzAt@Hz@BnCMNfCvAfXP|CDDFBJGHQe@aHtEoA`Bi@f@vBHx@b@|GL`CL~A_Cr@eBf@PtCZxE@F', 1, 1, 0, 'Schedule Booking', 10025, 'Pending', 'Africa/Cairo', 'Cash', 'No', '2020-02-15 11:26:07', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_ride_user_id_foreign` (`user_id`),
  ADD KEY `schedule_ride_company_id_foreign` (`company_id`),
  ADD KEY `schedule_ride_car_id_foreign` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
