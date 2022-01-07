-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 04:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegasus`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_users`
--

CREATE TABLE `agent_users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `nid_number` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_users`
--

INSERT INTO `agent_users` (`id`, `name`, `nid_number`, `mobile_number`, `present_address`, `permanent_address`, `image`, `email`, `entry_user_id`, `entry_datetime`) VALUES
(1, 'Rabiul Hasan', 'Alias amet nemo ull', 'Facere quia voluptas', 'Necessitatibus vitae', 'Iure cupiditate ut q', NULL, 'qemo@mailinator.com', 1, '2021-11-19 12:29:52'),
(12, 'MD.  Montasir Tasneem', '19951822308000167', '01927882070', 'Motijheel', 'South Banasree', '12.jpg', 'nishad@venturenxt.com', 1, '2021-11-20 12:43:14 pm');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `entry_by` varchar(50) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `entry_by`, `entry_date`) VALUES
(1, 'Traditional Socks', '1', '2021-11-24 12:00:00'),
(2, 'Polo Socks', '1', '2021-11-24 12:00:00'),
(3, 'Fashion Socks', '1', '2021-11-24 12:00:00'),
(4, 'Style Socks', '1', '2021-11-24 12:00:00'),
(5, 'Angel Skin', '1', '2021-11-24 12:00:00'),
(6, 'Angel Black', '1', '2021-11-24 12:00:00'),
(7, 'Chaina Quality', '1', '2021-11-24 12:00:00'),
(8, 'Sports Socks', '1', '2021-11-24 12:00:00'),
(9, 'Lacoste Socks', '1', '2021-11-24 12:00:00'),
(10, 'Crocodile Socks', '1', '2021-11-24 12:00:00'),
(11, 'Casual Socks', '1', '2021-11-24 12:00:00'),
(12, 'Pegasus Ultra', '1', '2021-11-24 12:00:00'),
(13, 'Police', '1', '2021-11-24 12:00:00'),
(14, 'Idea', '1', '2021-11-24 12:00:00'),
(15, 'Idea Black', '1', '2021-11-24 12:00:00'),
(16, 'Wish', '1', '2021-11-24 12:00:00'),
(17, 'Next', '1', '2021-11-24 12:00:00'),
(18, 'One Socks', '1', '2021-11-24 12:00:00'),
(19, 'Polo Sports', '1', '2021-11-24 12:00:00'),
(20, 'Pegasus Ankel', '1', '2021-11-24 12:00:00'),
(21, 'Pegasus Loafer', '1', '2021-11-24 12:00:00'),
(22, 'Apple Socks', '1', '2021-11-24 12:00:00'),
(23, 'Ankel', '1', '2021-11-24 12:00:00'),
(24, 'Loafer', '1', '2021-11-24 12:00:00'),
(25, 'Lotus', '1', '2021-11-24 12:00:00'),
(26, 'School  Socks', '1', '2021-11-24 12:00:00'),
(27, 'Pegasus Socks', '1', '2021-11-24 12:00:00'),
(28, 'Pegasus Socks', '1', '2021-11-24 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brand_sizes`
--

CREATE TABLE `brand_sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `entry_by` varchar(100) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_sizes`
--

INSERT INTO `brand_sizes` (`id`, `name`, `entry_by`, `entry_date`) VALUES
(1, '10/11', '1', '2021-11-24 12:00:00'),
(2, '8/9', '1', '2021-11-24 12:00:00'),
(3, '10/11/S', '1', '2021-11-24 12:00:00'),
(4, '10/11/A', '1', '2021-11-24 12:00:00'),
(5, '10/11/Lf', '1', '2021-11-24 12:00:00'),
(6, '4-6/S', '1', '2021-11-24 12:00:00'),
(7, '4-6/L', '1', '2021-11-24 12:00:00'),
(8, '7-9/L', '1', '2021-11-24 12:00:00'),
(9, '7-9/S', '1', '2021-11-24 12:00:00'),
(10, '10-12/L', '1', '2021-11-24 12:00:00'),
(11, '10-12/S', '1', '2021-11-24 12:00:00'),
(12, '7/7', '1', '2021-11-24 12:00:00'),
(13, '6/7', '1', '2021-11-24 12:00:00'),
(14, '4/6', '1', '2021-11-24 12:00:00'),
(15, '0/2', '1', '2021-11-24 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` int(11) NOT NULL,
  `shoks_bill_no` varchar(100) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `rack_code` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_amount` double(20,2) DEFAULT NULL,
  `shop_commission_percentage` double(20,2) DEFAULT NULL,
  `shop_commission_amount` double(20,2) DEFAULT NULL,
  `agent_commission_percentage` double(20,2) DEFAULT NULL,
  `agent_commission_amount` double(20,2) DEFAULT NULL,
  `venture_amount` double(20,2) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commission_setups`
--

CREATE TABLE `commission_setups` (
  `id` int(11) NOT NULL,
  `qunatity` int(11) DEFAULT NULL,
  `statring_range` int(11) DEFAULT NULL,
  `ending_range` int(11) DEFAULT NULL,
  `agent_commission_persentage` float(10,2) DEFAULT NULL,
  `shop_commission_persentage` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commission_setups`
--

INSERT INTO `commission_setups` (`id`, `qunatity`, `statring_range`, `ending_range`, `agent_commission_persentage`, `shop_commission_persentage`) VALUES
(1, NULL, 1, 120, 5.00, 20.00),
(2, NULL, 121, 200, 22.00, 8.00),
(3, NULL, 201, 50000, 25.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `division_id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd'),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd'),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd'),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd'),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd'),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd'),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd'),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd'),
(9, 1, 'Coxsbazar', 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd'),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd'),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd'),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd'),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd'),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd'),
(15, 2, 'Rajshahi', 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd'),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd'),
(17, 2, 'Joypurhat', 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd'),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd'),
(19, 2, 'Naogaon', 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd'),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd'),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd'),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd'),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd'),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd'),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd'),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd'),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd'),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd'),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd'),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd'),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd'),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd'),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd'),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd'),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd'),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd'),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd'),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd'),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd'),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd'),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd'),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd'),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd'),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd'),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd'),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd'),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd'),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd'),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd'),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd'),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd'),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd'),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd'),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd'),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd'),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd'),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd'),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd'),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd'),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd'),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd'),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd'),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd'),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lots`
--

CREATE TABLE `lots` (
  `id` int(11) NOT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `total_product` int(11) DEFAULT NULL,
  `total_shocks` int(11) DEFAULT NULL,
  `total_buying_price` double(10,2) DEFAULT NULL,
  `total_saling_price` double(10,2) DEFAULT NULL,
  `voucher` varchar(100) DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lots`
--

INSERT INTO `lots` (`id`, `lot_no`, `total_product`, `total_shocks`, `total_buying_price`, `total_saling_price`, `voucher`, `entry_user_id`, `entry_datetime`) VALUES
(1, '1', 10, 60, 2040.00, 2550.00, NULL, 1, '2021-11-25 11:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `lot_products`
--

CREATE TABLE `lot_products` (
  `id` int(11) NOT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `brand_size_id` int(11) DEFAULT NULL,
  `packet_qantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lot_products`
--

INSERT INTO `lot_products` (`id`, `lot_no`, `brand_id`, `brand_size_id`, `packet_qantity`) VALUES
(1, '1', 1, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `brand_size_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `packet_socks_pair_quantity` int(11) DEFAULT NULL,
  `packet_buying_price` double(10,2) DEFAULT NULL,
  `individual_buying_price` double(10,2) DEFAULT NULL,
  `packet_selling_price` double(10,2) DEFAULT NULL,
  `individual_selling_price` double(10,2) DEFAULT NULL,
  `sale_type` int(11) NOT NULL DEFAULT 1,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `brand_size_id`, `type_id`, `packet_socks_pair_quantity`, `packet_buying_price`, `individual_buying_price`, `packet_selling_price`, `individual_selling_price`, `sale_type`, `entry_user_id`, `entry_date`, `entry_time`) VALUES
(1, 1, 1, 1, 6, 252.00, 42.00, 315.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(2, 1, 2, 2, 6, 204.00, 34.00, 255.00, 68.00, 1, 1, '2021-11-25', '05:00:39'),
(3, 1, 2, 3, 6, 252.00, 42.00, 315.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(4, 2, 3, 2, 6, 258.00, 43.00, 325.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(5, 3, 1, 1, 12, 720.00, 60.00, 900.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(6, 3, 3, 2, 12, 660.00, 55.00, 825.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(7, 4, 1, 1, 12, 720.00, 60.00, 900.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(8, 4, 3, 2, 12, 660.00, 55.00, 825.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(9, 5, 1, 4, 12, 384.00, 32.00, 480.00, 75.00, 2, 1, '2021-11-25', '05:00:39'),
(10, 6, 1, 4, 12, 384.00, 32.00, 480.00, 75.00, 2, 1, '2021-11-25', '05:00:39'),
(11, 7, 1, 1, 12, 444.00, 37.00, 555.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(12, 7, 3, 2, 12, 420.00, 35.00, 525.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(13, 8, 1, 1, 12, 444.00, 37.00, 555.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(14, 8, 3, 2, 12, 420.00, 35.00, 525.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(15, 9, 1, 1, 6, 306.00, 51.00, 385.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(16, 10, 1, 1, 12, 444.00, 37.00, 555.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(17, 10, 3, 2, 12, 420.00, 35.00, 525.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(18, 11, 1, 1, 6, 264.00, 44.00, 330.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(19, 12, 1, 1, 6, 270.00, 45.00, 340.00, 120.00, 2, 1, '2021-11-25', '05:00:39'),
(20, 12, 3, 2, 6, 240.00, 40.00, 300.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(21, 13, 3, 2, 6, 246.00, 41.00, 310.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(22, 14, 1, 1, 6, 210.00, 35.00, 270.00, 70.00, 1, 1, '2021-11-25', '05:00:39'),
(23, 14, 3, 2, 6, 198.00, 33.00, 250.00, 66.00, 1, 1, '2021-11-25', '05:00:39'),
(24, 15, 3, 1, 6, 210.00, 35.00, 265.00, 70.00, 1, 1, '2021-11-25', '05:00:39'),
(25, 16, 3, 2, 6, 180.00, 30.00, 225.00, 60.00, 1, 1, '2021-11-25', '05:00:39'),
(26, 17, 3, 2, 6, 180.00, 30.00, 225.00, 60.00, 1, 1, '2021-11-25', '05:00:39'),
(27, 18, 3, 2, 12, 540.00, 45.00, 675.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(28, 19, 3, 2, 12, 540.00, 45.00, 675.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(29, 20, 4, 5, 6, 240.00, 40.00, 300.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(30, 21, 5, 6, 6, 240.00, 40.00, 300.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(31, 22, 3, 2, 12, 420.00, 35.00, 525.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(32, 20, 4, 5, 12, 330.00, 27.50, 420.00, 55.00, 1, 1, '2021-11-25', '05:00:39'),
(33, 21, 5, 6, 12, 330.00, 27.50, 420.00, 55.00, 1, 1, '2021-11-25', '05:00:39'),
(34, 25, 1, 1, 12, 444.00, 37.00, 555.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(35, 25, 3, 2, 12, 420.00, 35.00, 525.00, 100.00, 2, 1, '2021-11-25', '05:00:39'),
(36, 5, 3, 4, 12, 384.00, 32.00, 480.00, 70.00, 2, 1, '2021-11-25', '05:00:39'),
(37, 6, 3, 4, 12, 384.00, 32.00, 480.00, 70.00, 2, 1, '2021-11-25', '05:00:39'),
(38, 22, 1, 1, 12, 444.00, 37.00, 555.00, 80.00, 1, 1, '2021-11-25', '05:00:39'),
(39, 26, 6, 3, 6, 186.00, 31.00, 235.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(40, 26, 7, 3, 6, 192.00, 32.00, 240.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(41, 26, 8, 3, 6, 198.00, 33.00, 250.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(42, 26, 9, 3, 6, 192.00, 32.00, 240.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(43, 26, 10, 3, 6, 204.00, 34.00, 255.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(44, 26, 11, 3, 6, 198.00, 33.00, 250.00, 80.00, 2, 1, '2021-11-25', '05:00:39'),
(45, 27, 12, 7, 6, 192.00, 32.00, 240.00, 64.00, 1, 1, '2021-11-25', '05:00:39'),
(46, 27, 13, 7, 6, 186.00, 31.00, 235.00, 62.00, 1, 1, '2021-11-25', '05:00:39'),
(47, 27, 14, 7, 6, 180.00, 30.00, 225.00, 60.00, 1, 1, '2021-11-25', '05:00:39'),
(48, 27, 15, 7, 6, 174.00, 29.00, 220.00, 58.00, 1, 1, '2021-11-25', '05:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `starting_amt` double(10,2) NOT NULL,
  `ending_amt` double(10,2) NOT NULL,
  `short_code` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `entry_by` varchar(100) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `starting_amt`, `ending_amt`, `short_code`, `full_name`, `entry_by`, `entry_date`) VALUES
(1, 30.00, 40.00, 'S', 'Silver', NULL, '2021-11-19 20:53:37'),
(2, 41.00, 50.00, 'G', 'Gold', NULL, '2021-11-19 20:53:37'),
(3, 51.00, 5000.00, 'P', 'Platinum', NULL, '2021-11-19 20:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(11) NOT NULL,
  `rack_code` varchar(100) DEFAULT NULL,
  `rack_category` varchar(100) DEFAULT NULL COMMENT '(big/medium/small)',
  `rack_level` int(11) DEFAULT NULL,
  `per_level_socks` int(11) DEFAULT NULL,
  `total_count` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '(''0''-stock,''1''-shop)',
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `racks`
--

INSERT INTO `racks` (`id`, `rack_code`, `rack_category`, `rack_level`, `per_level_socks`, `total_count`, `status`, `entry_user_id`, `entry_datetime`) VALUES
(1, 'VLS1', 'BIG', 2, 50, 100, 1, 1, '2021-11-19 17:24:22'),
(2, 'VLS2', 'MEDIUM', 4, 30, 120, 0, 1, '2021-11-20 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `rack_products`
--

CREATE TABLE `rack_products` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `rack_code` varchar(100) DEFAULT NULL,
  `style_code` varchar(100) DEFAULT NULL,
  `packet_shocks_no` int(11) DEFAULT 0,
  `shocks_code` varchar(100) DEFAULT NULL,
  `buying_price` double(20,2) DEFAULT NULL,
  `selling_price` double(20,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT ' (0=not sold,1=sold,2=return)',
  `sold_timestamp` varchar(100) DEFAULT NULL,
  `shocks_bill_no` varchar(100) DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rack_products`
--

INSERT INTO `rack_products` (`id`, `agent_id`, `shop_id`, `rack_code`, `style_code`, `packet_shocks_no`, `shocks_code`, `buying_price`, `selling_price`, `status`, `sold_timestamp`, `shocks_bill_no`, `entry_user_id`, `entry_date`, `entry_time`) VALUES
(1, 1, 1, 'VLS1', '16P82', 5, '16P82-5', 34.00, 68.00, 0, NULL, NULL, 1, '2021-11-26', '00:53:24'),
(2, 1, 1, 'VLS1', '16P82', 6, '16P82-6', 34.00, 68.00, 0, NULL, NULL, 1, '2021-11-26', '00:53:24'),
(3, 1, 1, 'VLS1', '16P84', 4, '16P84-4', 34.00, 68.00, 0, NULL, NULL, 1, '2021-11-26', '00:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `rack_tacks`
--

CREATE TABLE `rack_tacks` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `rack_code` varchar(100) DEFAULT NULL,
  `total_shocks` int(11) DEFAULT NULL,
  `remaining_shocks` int(11) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Super Admin'),
(2, 'Agent'),
(3, 'Stock Manager'),
(4, 'Product User');

-- --------------------------------------------------------

--
-- Table structure for table `shock_bills`
--

CREATE TABLE `shock_bills` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `rack_code` varchar(100) DEFAULT NULL,
  `sales_quantity` int(11) DEFAULT NULL,
  `collect_amount` double(20,2) DEFAULT NULL,
  `shocks_bill_no` varchar(100) DEFAULT NULL,
  `voucher_link` varchar(100) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_datetime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazilla_id` int(11) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `entry_by` varchar(100) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `image`, `address`, `contact_no`, `division_id`, `district_id`, `upazilla_id`, `area`, `owner_name`, `manager_name`, `entry_by`, `entry_date`) VALUES
(1, 'Burton Mooney', '1.PNG', 'Velit reiciendis nos', 'Sed et cillum enim e', 6, 35, 267, 'Perferendis adipisci', 'Moses Gonzalez', 'Curran Pierce', '1', '2021-11-19 19:46:08'),
(2, 'Pascale Lawrence', '2.PNG', 'Laboriosam mollitia', 'Dolorem qui id porr', 5, 20, 173, 'Exercitationem delen', 'Burke Becker', 'Rylee Rivera', '1', '2021-11-19 20:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `single_sales`
--

CREATE TABLE `single_sales` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `style_code` varchar(30) DEFAULT NULL,
  `packet_shocks_no` varchar(30) DEFAULT NULL,
  `shocks_code` varchar(30) DEFAULT NULL,
  `ind_buying_price` double(10,2) DEFAULT NULL,
  `ind_selling_price` double(10,2) DEFAULT NULL,
  `is_packet_sale` int(11) DEFAULT 1,
  `status` int(11) DEFAULT NULL,
  `sold_timestamp` varchar(30) DEFAULT NULL,
  `voucher_no` varchar(30) DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `single_sales`
--

INSERT INTO `single_sales` (`id`, `agent_id`, `style_code`, `packet_shocks_no`, `shocks_code`, `ind_buying_price`, `ind_selling_price`, `is_packet_sale`, `status`, `sold_timestamp`, `voucher_no`, `entry_user_id`, `entry_date`, `entry_time`) VALUES
(1, 1, '16P86', '1', '16P86-1', 34.00, 68.00, 0, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(2, 1, '16P86', '2', '16P86-2', 34.00, 68.00, 0, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(3, 1, '16P87', '1', '16P87-1', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(4, 1, '16P87', '2', '16P87-2', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(5, 1, '16P87', '3', '16P87-3', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(6, 1, '16P87', '4', '16P87-4', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(7, 1, '16P87', '5', '16P87-5', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49'),
(8, 1, '16P87', '6', '16P87-6', 34.00, 42.50, 1, 1, '2021-11-26 02:35:55', '1', 1, '2021-11-26', '01:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `single_sales_bill`
--

CREATE TABLE `single_sales_bill` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `voucher_no` varchar(20) DEFAULT NULL,
  `voucher_link` varchar(100) DEFAULT NULL,
  `authorize_user_id` int(11) DEFAULT NULL,
  `authorize_datetime` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `single_sales_bill`
--

INSERT INTO `single_sales_bill` (`id`, `agent_id`, `voucher_no`, `voucher_link`, `authorize_user_id`, `authorize_datetime`) VALUES
(1, 1, '1', 'E:\\xampp\\htdocs\\pegasus\\public\\backend/assets/voucher/single-sale-bill/single_sales_1.pdf', 1, '2021-11-26 02:33:56'),
(2, 1, '1', 'E:\\xampp\\htdocs\\pegasus\\public\\backend/assets/voucher/single-sale-bill/single_sales_1.pdf', 1, '2021-11-26 02:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `style_code` varchar(100) DEFAULT NULL,
  `brand_size_id` int(11) DEFAULT NULL,
  `per_packet_shocks_quantity` int(11) DEFAULT NULL,
  `packet_buy_price` double(20,2) DEFAULT NULL,
  `packet_sale_price` double(20,2) DEFAULT NULL,
  `individual_buy_price` double(20,2) DEFAULT NULL,
  `individual_sale_price` double(20,2) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `stock_in_date` date DEFAULT NULL,
  `stock_out_date` date DEFAULT NULL,
  `sales_agent_id` int(11) DEFAULT NULL,
  `amount_receive_date` double(20,2) DEFAULT NULL,
  `market_sales_price` double(20,2) DEFAULT NULL,
  `voucher_no` varchar(100) DEFAULT NULL,
  `remaining_socks` int(11) DEFAULT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `entry_user_id` int(11) NOT NULL,
  `entry_date_time` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `is_packet_sale` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `brand_id`, `style_code`, `brand_size_id`, `per_packet_shocks_quantity`, `packet_buy_price`, `packet_sale_price`, `individual_buy_price`, `individual_sale_price`, `product_category_id`, `stock_in_date`, `stock_out_date`, `sales_agent_id`, `amount_receive_date`, `market_sales_price`, `voucher_no`, `remaining_socks`, `lot_no`, `entry_user_id`, `entry_date_time`, `product_id`, `type_id`, `sale_type`, `is_packet_sale`) VALUES
(1, 1, '16P81', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 1),
(2, 1, '16P82', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0),
(3, 1, '16P83', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 1),
(4, 1, '16P84', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0),
(5, 1, '16P85', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 1),
(6, 1, '16P86', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0),
(7, 1, '16P87', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', '2021-11-26', 1, NULL, NULL, NULL, 0, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 1),
(8, 1, '16P88', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', NULL, NULL, NULL, NULL, NULL, 6, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0),
(9, 1, '16P89', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', NULL, NULL, NULL, NULL, NULL, 6, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0),
(10, 1, '16P810', 2, 6, 204.00, 255.00, 34.00, 68.00, 3, '2021-11-25', NULL, NULL, NULL, NULL, NULL, 6, '1', 1, '2021-11-25 11:37:00', 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `types_name` varchar(50) DEFAULT NULL,
  `entry_user_id` int(11) DEFAULT NULL,
  `entry_date_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `types_name`, `entry_user_id`, `entry_date_time`) VALUES
(1, 'Long\r\n', 1, '2021-11-24 18:00:00'),
(2, 'Short\r\n', 1, '2021-11-24 18:00:00'),
(3, 'School\r\n', 1, '2021-11-24 18:00:00'),
(4, 'women-long\r\n', 1, '2021-11-24 18:00:00'),
(5, 'Ankle\r\n', 1, '2021-11-24 18:00:00'),
(6, 'Loafer\r\n', 1, '2021-11-24 18:00:00'),
(7, 'Baby', 1, '2021-11-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(3) NOT NULL,
  `district_id` int(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `url`) VALUES
(1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd'),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd'),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd'),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd'),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd'),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd'),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd'),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd'),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd'),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd'),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd'),
(12, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd'),
(13, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd'),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd'),
(15, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd'),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd'),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd'),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd'),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd'),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd'),
(21, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd'),
(22, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd'),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd'),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd'),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd'),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd'),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd'),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd'),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd'),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd'),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd'),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    '),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd'),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd'),
(35, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd'),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd'),
(37, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd'),
(38, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd'),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd'),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd'),
(41, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd'),
(42, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd'),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd'),
(44, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd'),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd'),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd'),
(47, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd'),
(48, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd'),
(49, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd'),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd'),
(51, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd'),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd'),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd'),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd'),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd'),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd'),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd'),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd'),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd'),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd'),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd'),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd'),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd'),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd'),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd'),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd'),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd'),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd'),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd'),
(70, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd'),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd'),
(72, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd'),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd'),
(74, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd'),
(75, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd'),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd'),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd'),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd'),
(79, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd'),
(80, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd'),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd'),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd'),
(83, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd'),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd'),
(85, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd'),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd'),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd'),
(88, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd'),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd'),
(90, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd'),
(91, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd'),
(92, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd'),
(93, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd'),
(94, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd'),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd'),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd'),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd'),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd'),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd'),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd'),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd'),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd'),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd'),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd'),
(105, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd'),
(106, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd'),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd'),
(108, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd'),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd'),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd'),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd'),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd'),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd'),
(114, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd'),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd'),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd'),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd'),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd'),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd'),
(120, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd'),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd'),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd'),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd'),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd'),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd'),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd'),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd'),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd'),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd'),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd'),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd'),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd'),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd'),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd'),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd'),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd'),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd'),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd'),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd'),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd'),
(141, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd'),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd'),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd'),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd'),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd'),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd'),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd'),
(148, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd'),
(149, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd'),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd'),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd'),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd'),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd'),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd'),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd'),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd'),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd'),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd'),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd'),
(160, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd'),
(161, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd'),
(162, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd'),
(163, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd'),
(164, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd'),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd'),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd'),
(167, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd'),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd'),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd'),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd'),
(171, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd'),
(172, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd'),
(173, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd'),
(174, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd'),
(175, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd'),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd'),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd'),
(178, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd'),
(179, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd'),
(180, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd'),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd'),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd'),
(183, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd'),
(184, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd'),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd'),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd'),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd'),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd'),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd'),
(190, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd'),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd'),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd'),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd'),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd'),
(195, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd'),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd'),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd'),
(198, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd'),
(199, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd'),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd'),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd'),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd'),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd'),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd'),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd'),
(206, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd'),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd'),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd'),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd'),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd'),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd'),
(212, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd'),
(213, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd'),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd'),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd'),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd'),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd'),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd'),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd'),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd'),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd'),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd'),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd'),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd'),
(225, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd'),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd'),
(227, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd'),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd'),
(229, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd'),
(230, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd'),
(231, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd'),
(232, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd'),
(233, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd'),
(234, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd'),
(235, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd'),
(236, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd'),
(237, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd'),
(238, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd'),
(239, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd'),
(240, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd'),
(241, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd'),
(242, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd'),
(243, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd'),
(244, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd'),
(245, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd'),
(246, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd'),
(247, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd'),
(248, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd'),
(249, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd'),
(250, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd'),
(251, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd'),
(252, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd'),
(253, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd'),
(254, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd'),
(255, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd'),
(256, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd'),
(257, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd'),
(258, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd'),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd'),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd'),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd'),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd'),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd'),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd'),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd'),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd'),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd'),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd'),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd'),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd'),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd'),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd'),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd'),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd'),
(275, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd'),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd'),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd'),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd'),
(279, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd'),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd'),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd'),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd'),
(283, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd'),
(284, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd'),
(285, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd'),
(286, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd'),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd'),
(288, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd'),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd'),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd'),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd'),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd'),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd'),
(294, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd'),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd'),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd'),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd'),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd'),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd'),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd'),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd'),
(302, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd'),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd'),
(304, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd'),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd'),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd'),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd'),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd'),
(309, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd'),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd'),
(311, 40, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd'),
(312, 40, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd'),
(313, 40, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd'),
(314, 40, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd'),
(315, 40, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd'),
(316, 40, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd'),
(317, 41, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd'),
(318, 41, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd'),
(319, 41, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd'),
(320, 41, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd'),
(321, 41, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd'),
(322, 42, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd'),
(323, 42, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd'),
(324, 42, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd'),
(325, 42, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd'),
(326, 42, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd'),
(327, 42, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd'),
(328, 43, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd'),
(329, 43, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd'),
(330, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd'),
(331, 43, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd'),
(332, 43, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd'),
(333, 44, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd'),
(334, 44, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd'),
(335, 44, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd'),
(336, 44, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd'),
(337, 44, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd'),
(338, 44, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd'),
(339, 44, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd'),
(340, 44, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd'),
(341, 44, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd'),
(342, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd'),
(343, 44, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd'),
(344, 44, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd'),
(345, 45, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd'),
(346, 45, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd'),
(347, 45, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd'),
(348, 45, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd'),
(349, 45, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd'),
(350, 45, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd'),
(351, 45, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd'),
(352, 45, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd'),
(353, 45, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd'),
(354, 45, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd'),
(355, 45, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd'),
(356, 45, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd'),
(357, 45, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd'),
(358, 46, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd'),
(359, 46, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd'),
(360, 46, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd'),
(361, 46, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd'),
(362, 46, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd'),
(363, 46, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd'),
(364, 46, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd'),
(365, 47, 'Savar', 'সাভার', 'savar.dhaka.gov.bd'),
(366, 47, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd'),
(367, 47, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd'),
(368, 47, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd'),
(369, 47, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd'),
(370, 48, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd'),
(371, 48, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd'),
(372, 48, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd'),
(373, 48, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd'),
(374, 48, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd'),
(375, 48, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd'),
(376, 49, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd'),
(377, 49, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd'),
(378, 49, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd'),
(379, 49, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd'),
(380, 49, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd'),
(381, 50, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd'),
(382, 50, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd'),
(383, 50, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd'),
(384, 50, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd'),
(385, 51, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd'),
(386, 51, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd'),
(387, 51, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd'),
(388, 51, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd'),
(389, 51, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd'),
(390, 52, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd'),
(391, 52, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd'),
(392, 52, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd'),
(393, 52, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd'),
(394, 52, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd'),
(395, 52, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd'),
(396, 52, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd'),
(397, 52, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd'),
(398, 52, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd'),
(399, 53, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd'),
(400, 53, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd'),
(401, 53, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd'),
(402, 53, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd'),
(403, 53, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd'),
(404, 54, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd'),
(405, 54, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd'),
(406, 54, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd'),
(407, 54, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd'),
(408, 54, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd'),
(409, 54, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd'),
(410, 54, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd'),
(411, 54, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd'),
(412, 54, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd'),
(413, 54, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd'),
(414, 54, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd'),
(415, 54, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd'),
(416, 54, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd'),
(417, 55, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd'),
(418, 55, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd'),
(419, 55, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd'),
(420, 55, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd'),
(421, 55, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd'),
(422, 56, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd'),
(423, 56, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd'),
(424, 56, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd'),
(425, 56, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd'),
(426, 56, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd'),
(427, 56, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd'),
(428, 57, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd'),
(429, 57, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd'),
(430, 57, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd'),
(431, 57, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd'),
(432, 57, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd'),
(433, 57, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd'),
(434, 57, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd'),
(435, 58, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd'),
(436, 58, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd'),
(437, 58, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd'),
(438, 58, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd'),
(439, 58, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd'),
(440, 59, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd'),
(441, 59, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd'),
(442, 59, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd'),
(443, 59, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd'),
(444, 59, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd'),
(445, 59, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd'),
(446, 59, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd'),
(447, 59, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd'),
(448, 60, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd'),
(449, 60, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd'),
(450, 60, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd'),
(451, 60, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd'),
(452, 60, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd'),
(453, 60, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd'),
(454, 60, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd'),
(455, 60, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd'),
(456, 60, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd'),
(457, 61, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd'),
(458, 61, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd'),
(459, 61, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd'),
(460, 61, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd'),
(461, 61, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd'),
(462, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd'),
(463, 62, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd'),
(464, 62, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd'),
(465, 62, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd'),
(466, 62, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd'),
(467, 62, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd'),
(468, 62, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd'),
(469, 62, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd'),
(470, 62, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd'),
(471, 62, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd'),
(472, 62, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd'),
(473, 62, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd'),
(474, 62, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd'),
(475, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd'),
(476, 63, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd'),
(477, 63, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd'),
(478, 63, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd'),
(479, 63, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd'),
(480, 63, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd'),
(481, 63, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd'),
(482, 64, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd'),
(483, 64, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd'),
(484, 64, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd'),
(485, 64, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd'),
(486, 64, 'Madan', 'মদন', 'madan.netrokona.gov.bd'),
(487, 64, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd'),
(488, 64, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd'),
(489, 64, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd'),
(490, 64, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd'),
(491, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `agent_id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'halim', NULL, 'halim@gmail.com', NULL, '$2y$10$3KPTs2aB/MUYAAKBo4QZgevVzPmCLTXXG7YWua0g8JebjqWrk9Y.K', NULL, '2021-11-18 10:38:12', '2021-11-18 10:38:12'),
(2, 2, 1, 'Rabiul Hasan', NULL, 'rabiul.fci@gmail.com', NULL, '$2y$10$3KPTs2aB/MUYAAKBo4QZgevVzPmCLTXXG7YWua0g8JebjqWrk9Y.K', NULL, '2021-11-18 10:38:12', '2021-11-18 10:38:12'),
(3, 3, 12, 'MD.  Montasir Tasneem', NULL, 'nishad@venturenxt.com', NULL, '$2y$10$7XO.5ZJXOYc2/K4aMhLKEuk6xjueKlhQWqrXvhJTkzuGl953YzCOS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_users`
--
ALTER TABLE `agent_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_sizes`
--
ALTER TABLE `brand_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_setups`
--
ALTER TABLE `commission_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lot_products`
--
ALTER TABLE `lot_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rack_products`
--
ALTER TABLE `rack_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rack_tacks`
--
ALTER TABLE `rack_tacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shock_bills`
--
ALTER TABLE `shock_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single_sales`
--
ALTER TABLE `single_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single_sales_bill`
--
ALTER TABLE `single_sales_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `brand_sizes`
--
ALTER TABLE `brand_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lot_products`
--
ALTER TABLE `lot_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rack_products`
--
ALTER TABLE `rack_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rack_tacks`
--
ALTER TABLE `rack_tacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shock_bills`
--
ALTER TABLE `shock_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `single_sales`
--
ALTER TABLE `single_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `single_sales_bill`
--
ALTER TABLE `single_sales_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
