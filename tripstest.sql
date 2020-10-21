-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2020 at 11:59 PM
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

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `user_id`, `pickup_latitude`, `pickup_longitude`, `drop_latitude`, `drop_longitude`, `pickup_location`, `drop_location`, `car_id`, `request_id`, `driver_id`, `trip_path`, `map_image`, `total_time`, `total_km`, `time_fare`, `distance_fare`, `base_fare`, `peak_fare`, `peak_amount`, `driver_peak_amount`, `schedule_fare`, `access_fee`, `wallet_amount`, `promo_amount`, `subtotal_fare`, `total_fare`, `driver_payout`, `driver_or_company_commission`, `owe_amount`, `remaining_owe_amount`, `applied_owe_amount`, `to_trip_id`, `begin_trip`, `end_trip`, `paykey`, `payment_mode`, `payment_status`, `is_calculation`, `currency_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10035, '31.421877', '31.813561', '31.391842', '30.418243', 'Al Gabana, Qism Damietta, Damietta Desert, Damietta Governorate, Egypt', 'Rasheed El-Mahmoudeya, Rasheed, Rashid, El Beheira Governorate, Egypt', 1, 1, 10086, '}yqvD}hv}DgAnOWtBsArAkCA}JJ}NQiQ?eWZee@_@s\\?_JkFaJlA}Gy@`AmHzCp@zA~IN|HsAnCyCVQg@@k@~GwBhJEpFnIuAnDrG~DxBfDaAdE{Kf]mIfKkTvUeQ~`@}CpRzCp{@fGzUxHpM`ThVnXft@hB`MLjTiAtXNpn@|Hb}AlHr~DVjj@kBv]oOtkAs@bMW~P~Aha@fGx^nTvcA`Kxg@bMtoAdBzi@e@|`@{B|Nei@rzAg\\b~@aM~t@eI`gA_Cd{@nA|UnGb]fS|_@dYtZj[`^jLjXbIxi@rBlo@vI~_@jDvGrSxTbW~MnMbL|GpRi@rIuDvHpBnJdB`E}Eh_@mRvqAsOxdA{WjgBaJhPsJnFeHfAeWqAoQd@uf@{@km@aE_HsBaKVuURy^UqJzAkMdG_LlMaUr_@oe@|w@i`Av_BugFrvIaXba@ow@~~@{oCrbDoQvVmGdZgTjzCelAv}CytBlnFigAnrCco@z_Buu@r|AcgCxrGa\\`z@aa@viAmr@zhCavAxgFoaApqDoIdXmc@~{@cq@`sAie@xeAomApoCi^n`@kh@vg@_}Bx{Bk|Bx|BctAluBid@xr@mVfh@}kAniCwLfSoVdVwtDbrC}tAjdA}\\xZod@xn@a]fg@wsAtpAomAleAwz@nw@mxKnkLgdHlsHwfL~}LorJjhKwd@tb@us@`a@udCnsAc}DhmByd@nQ}VxHqPzHuaAzm@eyAp}@}_CpqA{iA`m@_}@jh@yUfQkQlUwh@hn@{T|J}aBbj@sk@dUuRnPy`@~^yfAt[uVvSo^r_@oLzEsb@~BkK}@gGwDyNo[kYgv@_IgSwUw]{c@wl@gIwPcm@syAo\\_y@}|@ohAePgIcj@eMmPgG{EiGy[am@iQwv@qFoQyQ}Vcz@icAuTcSqScNipC_tCak@un@HeXnLs^s@erDeAmjAkW_tAiK{i@}Ls`@co@iaD}Kui@oSo~@_j@q_A__@ul@ak@igAgfAeeC}h@acAkw@irA{HyWmCaViJsiBuD{TmJ{WyPaW{QePob@_^we@aa@a_@k`@_S__@sRij@mOk`@sPuW{e@cj@ePu[sQkr@uKuh@{_@evAqXov@cm@csA{j@w}@gs@mn@uTwYeJiPi`@{r@}d@ghAgPqi@oTgcAmKmw@iImlAiRkzD}J}oA{Jip@kIia@aV}z@}[i{@}FkQeBRkB`C}IhGuA|AqAi@iI`DkWbMaMnDuSpB}`@zH_ZdImGfB}FsAwS}EqOwA{GkA_DmBFsQ', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4328.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', '2020-02-21 13:58:42', '0000-00-00 00:00:00', '', 'Cash', 'Pending', '0', 'SAR', 'End trip', '2020-02-21 13:58:19', '2020-02-21 13:58:42', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
