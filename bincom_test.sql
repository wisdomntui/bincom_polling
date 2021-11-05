-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2021 at 04:07 PM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-23+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bincom_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_names`
--

CREATE TABLE `agent_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling_unit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_names`
--

INSERT INTO `agent_names` (`id`, `firstname`, `lastname`, `email`, `phone`, `polling_unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Christian', 'Emenike', 'christian@bincom.net', '08034699500', 1, NULL, NULL),
(2, 'Ngozi', 'Emenike', 'biggysmalls@home.net', '08089003444', 2, NULL, NULL),
(3, 'Chinyere', 'Emenike', 'chinyere@emenike.net', '07034532310', 1, NULL, NULL),
(4, 'Chimezie', 'Emenike', 'chimezie@emenike.net', '07034532322', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announced_lga_results`
--

CREATE TABLE `announced_lga_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lga_id` bigint(20) UNSIGNED NOT NULL,
  `party_abbreviation` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_score` int(11) NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announced_lga_results`
--

INSERT INTO `announced_lga_results` (`id`, `lga_id`, `party_abbreviation`, `party_score`, `entered_by_user`, `date_entered`, `user_ip_address`, `created_at`, `updated_at`) VALUES
(1, 33, 'PDP', 78129, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(2, 33, 'DPP', 15248, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(3, 33, 'ACN', 8597, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(4, 33, 'PPA', 797, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(5, 33, 'CDC', 79513, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(6, 33, 'JP', 95174, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(7, 33, 'ANPP', 37330, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(8, 33, 'LABO', 1126, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(9, 33, 'CPP', 93643, '', '2011-04-27 09:46:05', '192.168.1.110', NULL, NULL),
(19, 1, 'PDP', 79659, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(20, 1, 'DPP', 48207, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(21, 1, 'ACN', 22739, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(22, 1, 'PPA', 78860, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(23, 1, 'CDC', 29141, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(24, 1, 'JP', 9124, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(25, 1, 'ANPP', 58196, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(26, 1, 'LABO', 63610, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(27, 1, 'CPP', 43460, '', '2011-04-27 09:49:55', '192.168.1.110', NULL, NULL),
(28, 18, 'PDP', 34469, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(29, 18, 'DPP', 29039, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(30, 18, 'ACN', 30454, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(31, 18, 'PPA', 46350, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(32, 18, 'CDC', 40388, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(33, 18, 'JP', 62890, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(34, 18, 'ANPP', 93286, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(35, 18, 'LABO', 77759, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(36, 18, 'CPP', 8938, '', '2011-04-27 09:55:11', '192.168.1.110', NULL, NULL),
(37, 19, 'PDP', 20643, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(38, 19, 'DPP', 79141, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(39, 19, 'ACN', 22066, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(40, 19, 'PPA', 94167, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(41, 19, 'CDC', 19897, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(42, 19, 'JP', 16982, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(43, 19, 'ANPP', 25220, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(44, 19, 'LABO', 75152, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(45, 19, 'CPP', 99, '', '2011-04-27 09:55:49', '192.168.1.110', NULL, NULL),
(46, 21, 'PDP', 83731, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(47, 21, 'DPP', 92725, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(48, 21, 'ACN', 49369, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(49, 21, 'PPA', 22152, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(50, 21, 'CDC', 62653, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(51, 21, 'JP', 46810, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(52, 21, 'ANPP', 46088, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(53, 21, 'LABO', 90009, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(54, 21, 'CPP', 11783, '', '2011-04-27 09:56:36', '192.168.1.110', NULL, NULL),
(55, 7, 'PDP', 107808, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(56, 7, 'DPP', 16816, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(57, 7, 'ACN', 78728, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(58, 7, 'PPA', 66409, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(59, 7, 'CDC', 95860, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(60, 7, 'JP', 80071, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(61, 7, 'ANPP', 12777, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(62, 7, 'LABO', 23672, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(63, 7, 'CPP', 80029, '', '2011-04-27 09:57:39', '192.168.1.110', NULL, NULL),
(64, 2, 'PDP', 42288, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(65, 2, 'DPP', 11832, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(66, 2, 'ACN', 40693, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(67, 2, 'PPA', 85319, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(68, 2, 'CDC', 5402, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(69, 2, 'JP', 71050, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(70, 2, 'ANPP', 39042, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(71, 2, 'LABO', 82063, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(72, 2, 'CPP', 93185, '', '2011-04-27 09:58:33', '192.168.1.110', NULL, NULL),
(73, 5, 'PDP', 25045, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(74, 5, 'DPP', 73745, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(75, 5, 'ACN', 36629, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(76, 5, 'PPA', 24875, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(77, 5, 'CDC', 15009, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(78, 5, 'JP', 417, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(79, 5, 'ANPP', 57060, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(80, 5, 'LABO', 84047, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(81, 5, 'CPP', 49057, '', '2011-04-27 10:14:09', '192.168.1.110', NULL, NULL),
(82, 31, 'PDP', 132906, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(83, 31, 'DPP', 27115, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(84, 31, 'ACN', 13272, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(85, 31, 'PPA', 10741, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(86, 31, 'CDC', 13887, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(87, 31, 'JP', 37213, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(88, 31, 'ANPP', 44403, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(89, 31, 'LABO', 10375, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(90, 31, 'CPP', 18664, '', '2011-04-27 12:31:10', '192.168.1.101', NULL, NULL),
(100, 16, 'PDP', 69331, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(101, 16, 'DPP', 61132, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(102, 16, 'ACN', 88353, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(103, 16, 'PPA', 76797, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(104, 16, 'CDC', 18927, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(105, 16, 'JP', 64243, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(106, 16, 'ANPP', 64436, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(107, 16, 'LABO', 29449, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(108, 16, 'CPP', 53935, '', '2011-04-27 12:32:36', '192.168.1.101', NULL, NULL),
(109, 6, 'PDP', 128269, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(110, 6, 'DPP', 51308, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(111, 6, 'ACN', 80219, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(112, 6, 'PPA', 66570, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(113, 6, 'CDC', 92193, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(114, 6, 'JP', 61252, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(115, 6, 'ANPP', 29683, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(116, 6, 'LABO', 64656, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(117, 6, 'CPP', 34231, '', '2011-04-27 12:51:58', '192.168.1.101', NULL, NULL),
(118, 17, 'PDP', 92259, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(119, 17, 'DPP', 99815, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(120, 17, 'ACN', 84655, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(121, 17, 'PPA', 73543, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(122, 17, 'CDC', 13751, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(123, 17, 'JP', 48125, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(124, 17, 'ANPP', 99373, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(125, 17, 'LABO', 52490, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(126, 17, 'CPP', 64327, '', '2011-04-27 12:52:32', '192.168.1.101', NULL, NULL),
(127, 8, 'PDP', 74867, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(128, 8, 'DPP', 39857, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(129, 8, 'ACN', 46780, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(130, 8, 'PPA', 50330, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(131, 8, 'CDC', 11307, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(132, 8, 'JP', 5547, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(133, 8, 'ANPP', 93811, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(134, 8, 'LABO', 52416, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(135, 8, 'CPP', 80645, '', '2011-04-27 13:54:57', '192.168.1.101', NULL, NULL),
(136, 12, 'PDP', 56342, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(137, 12, 'DPP', 104379, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(138, 12, 'ACN', 1823, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(139, 12, 'PPA', 45261, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(140, 12, 'CDC', 20835, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(141, 12, 'JP', 68393, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(142, 12, 'ANPP', 79460, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(143, 12, 'LABO', 92118, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(144, 12, 'CPP', 22210, '', '2011-04-27 13:57:06', '192.168.1.101', NULL, NULL),
(145, 9, 'PDP', 52353, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(146, 9, 'DPP', 15411, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(147, 9, 'ACN', 30137, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(148, 9, 'PPA', 30149, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(149, 9, 'CDC', 60337, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(150, 9, 'JP', 11237, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(151, 9, 'ANPP', 75174, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(152, 9, 'LABO', 42156, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(153, 9, 'CPP', 85259, '', '2011-04-27 14:20:23', '192.168.1.101', NULL, NULL),
(154, 35, 'PDP', 158975, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(155, 35, 'DPP', 45209, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(156, 35, 'ACN', 17268, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(157, 35, 'PPA', 56294, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(158, 35, 'CDC', 29666, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(159, 35, 'JP', 79445, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(160, 35, 'ANPP', 8228, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(161, 35, 'LABO', 2804, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(162, 35, 'CPP', 89336, '', '2011-04-27 14:23:21', '192.168.1.101', NULL, NULL),
(163, 34, 'PDP', 103775, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(164, 34, 'DPP', 45913, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(165, 34, 'ACN', 1836, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(166, 34, 'PPA', 39194, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(167, 34, 'CDC', 90465, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(168, 34, 'JP', 34743, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(169, 34, 'ANPP', 2319, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(170, 34, 'LABO', 7366, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(171, 34, 'CPP', 29871, '', '2011-04-27 14:29:27', '192.168.1.101', NULL, NULL),
(172, 22, 'PDP', 41642, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(173, 22, 'DPP', 81197, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(174, 22, 'ACN', 51626, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(175, 22, 'PPA', 18088, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(176, 22, 'CDC', 35559, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(177, 22, 'JP', 23533, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(178, 22, 'ANPP', 10987, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(179, 22, 'LABO', 84335, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(180, 22, 'CPP', 88712, '', '2011-04-27 14:42:01', '192.168.1.101', NULL, NULL),
(181, 20, 'PDP', 103877, '', '2011-04-27 14:52:06', '192.168.1.101', NULL, NULL),
(182, 20, 'DPP', 128632, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(183, 20, 'ACN', 61515, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(184, 20, 'PPA', 47668, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(185, 20, 'CDC', 53794, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(186, 20, 'JP', 25967, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(187, 20, 'ANPP', 68450, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(188, 20, 'LABO', 64351, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(189, 20, 'CPP', 16404, '', '2011-04-27 14:52:07', '192.168.1.101', NULL, NULL),
(190, 11, 'PDP', 102831, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(191, 11, 'DPP', 102932, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(192, 11, 'ACN', 11181, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(193, 11, 'PPA', 69057, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(194, 11, 'CDC', 11742, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(195, 11, 'JP', 51540, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(196, 11, 'ANPP', 22471, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(197, 11, 'LABO', 57735, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(198, 11, 'CPP', 21264, '', '2011-04-27 16:28:41', '192.168.1.101', NULL, NULL),
(199, 10, 'PDP', 51093, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(200, 10, 'DPP', 20155, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(201, 10, 'ACN', 9495, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(202, 10, 'PPA', 42179, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(203, 10, 'CDC', 82406, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(204, 10, 'JP', 85494, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(205, 10, 'ANPP', 80250, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(206, 10, 'LABO', 44770, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(207, 10, 'CPP', 83099, 'Omawuli - ', '2011-04-27 17:01:31', '192.168.1.101', NULL, NULL),
(208, 13, 'PDP', 88008, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(209, 13, 'DPP', 73635, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(210, 13, 'ACN', 39545, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(211, 13, 'PPA', 27866, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(212, 13, 'CDC', 20694, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(213, 13, 'JP', 19871, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(214, 13, 'ANPP', 37271, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(215, 13, 'LABO', 26745, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(216, 13, 'CPP', 21912, '', '2011-04-27 17:19:31', '192.168.1.101', NULL, NULL),
(217, 14, 'PDP', 37314, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(218, 14, 'DPP', 85226, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(219, 14, 'ACN', 16404, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(220, 14, 'PPA', 39399, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(221, 14, 'CDC', 47780, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(222, 14, 'JP', 20705, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(223, 14, 'ANPP', 60182, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(224, 14, 'LABO', 38795, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(225, 14, 'CPP', 13430, '', '2011-04-27 18:12:46', '192.168.1.101', NULL, NULL),
(226, 15, 'PDP', 61377, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(227, 15, 'DPP', 26135, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(228, 15, 'ACN', 15329, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(229, 15, 'PPA', 36076, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(230, 15, 'CDC', 34390, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(231, 15, 'JP', 63720, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(232, 15, 'ANPP', 15432, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(233, 15, 'LABO', 85999, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(234, 15, 'CPP', 83697, '', '2011-04-27 18:42:23', '192.168.1.101', NULL, NULL),
(235, 32, 'PDP', 95207, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(236, 32, 'DPP', 63000, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(237, 32, 'ACN', 75264, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(238, 32, 'PPA', 22286, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(239, 32, 'CDC', 85634, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(240, 32, 'JP', 61313, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(241, 32, 'ANPP', 49665, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(242, 32, 'LABO', 64382, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL),
(243, 32, 'CPP', 72914, '', '2011-04-27 19:14:19', '192.168.1.101', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announced_pu_results`
--

CREATE TABLE `announced_pu_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polling_unit_id` bigint(20) UNSIGNED NOT NULL,
  `party_abbreviation` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_score` int(11) NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announced_pu_results`
--

INSERT INTO `announced_pu_results` (`id`, `polling_unit_id`, `party_abbreviation`, `party_score`, `entered_by_user`, `date_entered`, `user_ip_address`, `created_at`, `updated_at`) VALUES
(111, 8, 'PDP', 802, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(112, 8, 'DPP', 719, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(113, 8, 'ACN', 416, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(114, 8, 'PPA', 939, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(115, 8, 'CDC', 394, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(116, 8, 'JP', 99, 'Bose', '2011-04-26 15:44:03', '192.168.1.101', NULL, NULL),
(117, 9, 'PDP', 285, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(118, 9, 'DPP', 1254, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(119, 9, 'ACN', 1032, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(120, 9, 'PPA', 179, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(121, 9, 'CDC', 752, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(122, 9, 'JP', 172, 'Joseph Ogurume', '2011-04-26 16:20:49', '192.168.1.101', NULL, NULL),
(123, 10, 'PDP', 561, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(124, 10, 'DPP', 482, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(125, 10, 'ACN', 298, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(126, 10, 'PPA', 833, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(127, 10, 'CDC', 221, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(128, 10, 'JP', 557, 'Kingsley', '2011-04-26 16:52:26', '192.168.1.101', NULL, NULL),
(129, 11, 'PDP', 621, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(130, 11, 'DPP', 637, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(131, 11, 'ACN', 916, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(132, 11, 'PPA', 621, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(133, 11, 'CDC', 306, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(134, 11, 'JP', 617, '', '2011-04-26 17:06:28', '192.168.1.101', NULL, NULL),
(135, 12, 'PDP', 306, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(136, 12, 'DPP', 1019, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(137, 12, 'ACN', 1039, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(138, 12, 'PPA', 1046, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(139, 12, 'CDC', 83, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(140, 12, 'JP', 229, '', '2011-04-26 17:07:29', '192.168.1.101', NULL, NULL),
(141, 13, 'PDP', 853, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(142, 13, 'DPP', 745, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(143, 13, 'ACN', 804, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(144, 13, 'PPA', 542, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(145, 13, 'CDC', 246, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(146, 13, 'JP', 555, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(147, 13, 'ANPP', 995, 'ajeke jerry christopher ', '2011-04-26 17:20:39', '192.168.1.115', NULL, NULL),
(148, 10, 'PDP', 236, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(149, 10, 'DPP', 1305, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(150, 10, 'ACN', 567, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(151, 10, 'PPA', 624, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(152, 10, 'CDC', 375, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(153, 10, 'JP', 952, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(154, 10, 'ANPP', 583, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(155, 10, 'LABO', 1012, 'Joseph Ogurume-christopher', '2011-04-26 17:26:20', '192.168.1.115', NULL, NULL),
(156, 15, 'PDP', 287, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(157, 15, 'DPP', 426, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(158, 15, 'ACN', 113, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(159, 15, 'PPA', 960, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(160, 15, 'CDC', 409, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(161, 15, 'JP', 117, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(162, 15, 'ANPP', 349, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(163, 15, 'LABO', 139, '', '2011-04-26 17:27:54', '192.168.1.115', NULL, NULL),
(164, 16, 'PDP', 1178, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(165, 16, 'DPP', 129, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(166, 16, 'ACN', 406, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(167, 16, 'PPA', 614, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(168, 16, 'CDC', 794, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(169, 16, 'JP', 82, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(170, 16, 'ANPP', 981, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(171, 16, 'LABO', 596, 'bright oteri', '2011-04-26 18:04:38', '192.168.1.101', NULL, NULL),
(172, 18, 'PDP', 1009, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(173, 18, 'DPP', 499, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(174, 18, 'ACN', 580, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(175, 18, 'PPA', 487, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(176, 18, 'CDC', 644, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(177, 18, 'JP', 709, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(178, 18, 'ANPP', 561, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(179, 18, 'LABO', 627, 'Ruheme - Christopher', '2011-04-26 18:13:27', '192.168.1.115', NULL, NULL),
(180, 19, 'PDP', 418, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(181, 19, 'DPP', 149, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(182, 19, 'ACN', 131, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(183, 19, 'PPA', 367, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(184, 19, 'CDC', 397, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(185, 19, 'JP', 834, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(186, 19, 'ANPP', 926, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(187, 19, 'LABO', 77, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(188, 19, 'CPP', 560, 'Enukpere Eric- christopher', '2011-04-26 18:22:57', '192.168.1.115', NULL, NULL),
(189, 20, 'PDP', 731, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(190, 20, 'DPP', 832, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(191, 20, 'ACN', 575, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(192, 20, 'PPA', 326, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(193, 20, 'CDC', 856, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(194, 20, 'JP', 253, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(195, 20, 'ANPP', 647, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(196, 20, 'LABO', 426, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(197, 20, 'CPP', 136, 'Chris Tonne- christopher', '2011-04-26 18:25:24', '192.168.1.115', NULL, NULL),
(198, 21, 'PDP', 480, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(199, 21, 'DPP', 854, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(200, 21, 'ACN', 433, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(201, 21, 'PPA', 181, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(202, 21, 'CDC', 560, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(203, 21, 'JP', 205, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(204, 21, 'ANPP', 295, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(205, 21, 'LABO', 805, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(206, 21, 'CPP', 92, 'ajeke jerry-christopher ', '2011-04-26 18:27:32', '192.168.1.115', NULL, NULL),
(207, 24, 'PDP', 1422, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(208, 24, 'DPP', 666, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(209, 24, 'ACN', 202, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(210, 24, 'PPA', 1017, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(211, 24, 'CDC', 431, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(212, 24, 'JP', 51, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(213, 24, 'ANPP', 910, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(214, 24, 'LABO', 349, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(215, 24, 'CPP', 966, 'Tenison nana- christoper', '2011-04-26 18:33:01', '192.168.1.115', NULL, NULL),
(216, 23, 'PDP', 1391, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(217, 23, 'DPP', 721, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(218, 23, 'ACN', 269, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(219, 23, 'PPA', 176, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(220, 23, 'CDC', 1031, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(221, 23, 'JP', 578, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(222, 23, 'ANPP', 746, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(223, 23, 'LABO', 943, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(224, 23, 'CPP', 428, 'Tenison nana- christoper', '2011-04-26 18:34:47', '192.168.1.115', NULL, NULL),
(225, 22, 'PDP', 920, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(226, 22, 'DPP', 986, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(227, 22, 'ACN', 1048, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(228, 22, 'PPA', 257, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(229, 22, 'CDC', 93, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(230, 22, 'JP', 642, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(231, 22, 'ANPP', 885, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(232, 22, 'LABO', 428, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(233, 22, 'CPP', 445, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:35:09', '192.168.1.114', NULL, NULL),
(234, 25, 'PDP', 1075, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(235, 25, 'DPP', 68, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(236, 25, 'ACN', 617, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(237, 25, 'PPA', 831, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(238, 25, 'CDC', 253, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(239, 25, 'JP', 721, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(240, 25, 'ANPP', 798, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(241, 25, 'LABO', 774, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(242, 25, 'CPP', 428, 'Chris Tonne- christopher', '2011-04-26 18:45:19', '192.168.1.115', NULL, NULL),
(243, 26, 'PDP', 899, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(244, 26, 'DPP', 490, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(245, 26, 'ACN', 107, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(246, 26, 'PPA', 1014, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(247, 26, 'CDC', 697, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(248, 26, 'JP', 395, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(249, 26, 'ANPP', 834, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(250, 26, 'LABO', 932, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(251, 26, 'CPP', 109, 'CHRIS TONWE, OGUNMERU DARE', '2011-04-26 18:46:01', '192.168.1.114', NULL, NULL),
(252, 27, 'PDP', 1422, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(253, 27, 'DPP', 121, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(254, 27, 'ACN', 407, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(255, 27, 'PPA', 654, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(256, 27, 'CDC', 1001, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(257, 27, 'JP', 991, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(258, 27, 'ANPP', 903, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(259, 27, 'LABO', 492, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(260, 27, 'CPP', 700, 'BRIGHT OTERI, OGUNMERU DARE', '2011-04-26 18:47:53', '192.168.1.114', NULL, NULL),
(288, 285, 'PDP', 3, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(289, 285, 'DPP', 3, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(290, 285, 'ACN', 3, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(291, 285, 'PPA', 3, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(292, 285, 'CDC', 3, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(293, 285, 'JP', 2, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(294, 285, 'ANPP', 2, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(295, 285, 'LABOUR', 2, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35'),
(296, 285, 'CPP', 1, 'Wisdom', '2021-11-05 13:17:35', '127.0.0.1', '2021-11-05 12:17:35', '2021-11-05 12:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `announced_state_results`
--

CREATE TABLE `announced_state_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_abbreviation` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_score` int(11) NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announced_ward_results`
--

CREATE TABLE `announced_ward_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_abbreviation` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_score` int(11) NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lga_id` int(11) NOT NULL,
  `lga_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `lga_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `lga_id`, `lga_name`, `state_id`, `lga_description`, `entered_by_user`, `date_entered`, `user_ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aniocha North', 25, 'Aniocha North', 'Bincom', '0000-00-00 00:00:00', '127.0.0.2', NULL, NULL),
(2, 2, 'Aniocha - South', 25, 'Aniocha - South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(3, 5, 'Ethiope East', 25, 'Ethiope East', 'Bincom', '0000-00-00 00:00:00', '127.0.0.5', NULL, NULL),
(4, 6, 'Ethiope West', 25, 'Ethiope West', 'Bincom', '0000-00-00 00:00:00', '127.0.0.6', NULL, NULL),
(5, 7, 'Ika North - East', 25, 'Ika North - East', 'Bincom', '0000-00-00 00:00:00', '127.0.0.8', NULL, NULL),
(6, 8, 'Ika - South', 25, 'Ika - South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.7', NULL, NULL),
(7, 9, 'Isoko North', 25, 'Isoko North', 'Bincom', '0000-00-00 00:00:00', '127.0.0.9', NULL, NULL),
(8, 10, 'Isoko South', 25, 'Isoko South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.10', NULL, NULL),
(9, 11, 'Ndokwa East', 25, 'Ndokwa East', 'Bincom', '0000-00-00 00:00:00', '127.0.0.11', NULL, NULL),
(10, 12, 'Ndokwa West', 25, 'Ndokwa West', 'Bincom', '0000-00-00 00:00:00', '127.0.0.12', NULL, NULL),
(11, 13, 'Okpe', 25, 'Okpe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.13', NULL, NULL),
(12, 14, 'Oshimili - North', 25, 'Oshimili - North', 'Bincom', '0000-00-00 00:00:00', '127.0.0.14', NULL, NULL),
(13, 15, 'Oshimili - South', 25, 'Oshimili - South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.15', NULL, NULL),
(14, 16, 'Patani', 25, 'Patani', 'Bincom', '0000-00-00 00:00:00', '127.0.0.16', NULL, NULL),
(15, 17, 'Sapele', 25, 'Sapele', 'Bincom', '0000-00-00 00:00:00', '127.0.0.17', NULL, NULL),
(16, 18, 'Udu', 25, 'Udu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.18', NULL, NULL),
(17, 19, 'Ughelli North', 25, 'Ughelli North', 'Bincom', '0000-00-00 00:00:00', '127.0.0.19', NULL, NULL),
(18, 20, 'Ughelli South', 25, 'Ughelli South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.20', NULL, NULL),
(19, 21, 'Ukwuani', 25, 'Ukwuani', 'Bincom', '0000-00-00 00:00:00', '127.0.0.21', NULL, NULL),
(20, 22, 'Uvwie', 25, 'Uvwie', 'Bincom', '0000-00-00 00:00:00', '127.0.0.22', NULL, NULL),
(21, 31, 'Bomadi', 25, 'Bomadi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.3', NULL, NULL),
(22, 32, 'Burutu', 25, 'Burutu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.4', NULL, NULL),
(23, 33, 'Warri North', 25, 'Warri North', 'Bincom', '0000-00-00 00:00:00', '127.0.0.23', NULL, NULL),
(24, 34, 'Warri South', 25, 'Warri South', 'Bincom', '0000-00-00 00:00:00', '127.0.0.24', NULL, NULL),
(25, 35, 'Warri South West', 25, 'Warri South West', 'Bincom', '0000-00-00 00:00:00', '127.0.0.25', NULL, NULL);

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
(60, '2014_10_12_000000_create_users_table', 1),
(61, '2014_10_12_100000_create_password_resets_table', 1),
(62, '2019_08_19_000000_create_failed_jobs_table', 1),
(63, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(64, '2021_11_04_161742_create_announced_state_results_table', 1),
(65, '2021_11_04_161757_create_announced_ward_results_table', 1),
(66, '2021_11_04_161847_create_parties_table', 1),
(67, '2021_11_04_161901_create_states_table', 1),
(68, '2021_11_04_161902_create_lgas_table', 1),
(69, '2021_11_04_161903_create_wards_table', 1),
(70, '2021_11_04_161904_create_polling_units_table', 1),
(71, '2021_11_04_161905_create_announced_pu_results_table', 1),
(72, '2021_11_04_161906_create_announced_lga_results_table', 1),
(73, '2021_11_04_161907_create_agent_names_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `party_id`, `party_name`, `created_at`, `updated_at`) VALUES
(1, 'PDP', 'PDP', NULL, NULL),
(2, 'DPP', 'DPP', NULL, NULL),
(3, 'ACN', 'ACN', NULL, NULL),
(4, 'PPA', 'PPA', NULL, NULL),
(5, 'CDC', 'CDC', NULL, NULL),
(6, 'JP', 'JP', NULL, NULL),
(7, 'ANPP', 'ANPP', NULL, NULL),
(8, 'LABOUR', 'LABOUR', NULL, NULL),
(9, 'CPP', 'CPP', NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polling_units`
--

CREATE TABLE `polling_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `polling_unit_id` int(11) NOT NULL,
  `ward_id` bigint(20) UNSIGNED NOT NULL,
  `lga_id` bigint(20) UNSIGNED NOT NULL,
  `uniquewardid` int(11) NOT NULL,
  `polling_unit_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling_unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling_unit_description` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polling_units`
--

INSERT INTO `polling_units` (`id`, `polling_unit_id`, `ward_id`, `lga_id`, `uniquewardid`, `polling_unit_number`, `polling_unit_name`, `polling_unit_description`, `lat`, `long`, `entered_by_user`, `date_entered`, `user_ip_address`, `created_at`, `updated_at`) VALUES
(8, 6, 8, 17, 181, 'DT1708006', 'Sapele Ward 8 PU _', NULL, '5.59371889', '5.999311165', NULL, NULL, NULL, NULL, NULL),
(9, 4, 1, 19, 194, 'DT1901004', 'Primary School in Aghara', 'Primary School in Aghara', '5.599585986', '6.001336288', NULL, NULL, NULL, NULL, NULL),
(10, 5, 1, 19, 194, 'DT1401005', 'Ishere Primary School  Aghara', 'Ishere Primary School Aghara', '5.595722496', '5.99961724', NULL, NULL, NULL, NULL, NULL),
(11, 5, 3, 34, 244, 'DT3403005', 'Igini Primary School', ' Esisi Road', '5.602005475', '6.001611141', NULL, NULL, NULL, NULL, NULL),
(12, 1, 4, 21, 220, 'DT2104001', 'Umukwapa poll unit 1', NULL, '5.596383741', '5.99023883', NULL, NULL, NULL, NULL, NULL),
(13, 16, 1, 22, 223, 'DT2201016', 'Church in Effurun1 Ovie', 'Church in Effurun1 Ovie', '5.59759314', '5.991187248', NULL, NULL, NULL, NULL, NULL),
(14, 6, 1, 19, 194, 'DT1901006', 'Ishere Primary School Aghara', NULL, '5.90359853', '5.729595722', NULL, NULL, NULL, NULL, NULL),
(15, 13, 1, 22, 224, 'DT2201013', 'Effurun 2 in Uvwie', 'Effurun 2 in Uvwie', '5.904090609', '5.729854354', NULL, NULL, NULL, NULL, NULL),
(16, 5, 7, 7, 59, 'DT0607005', 'school in ethiope west', 'school in ethiope west', '5.895063582', '5.730405695', NULL, NULL, NULL, NULL, NULL),
(17, 9, 1, 34, 242, 'DT3401009', 'agbasa 1', 'agbasa 1', '5.904748983', '5.725361522', NULL, NULL, NULL, NULL, NULL),
(18, 7, 1, 22, 223, 'DT2201007', 'Customary Court P.t.i Road', 'Customary Court P.t.i Road', '5.904025184', '5.735836456', NULL, NULL, NULL, NULL, NULL),
(19, 11, 2, 22, 224, 'DT2202011', 'effurun 2', 'effurun 2', '5.903925673', '5.736211371', NULL, NULL, NULL, NULL, NULL),
(20, 1, 9, 35, 262, 'DT3501001', 'asumbo town hall1', 'asumbo town hall1', '5.879748019', '5.73172331', NULL, NULL, NULL, NULL, NULL),
(21, 3, 2, 22, 224, 'DT2202003', 'eki-otoi', NULL, '5.876600455', '5.729696257', NULL, NULL, NULL, NULL, NULL),
(22, 3, 7, 6, 59, 'DT0607003', 'pollling 3 in agbara', 'pollling 3 in agbara', '5.900635513', '5.72786891', NULL, NULL, NULL, NULL, NULL),
(23, 6, 8, 6, 60, 'DT0608006', 'aghara ii', 'aghara ii', '5.879594849', '5.731894945', NULL, NULL, NULL, NULL, NULL),
(24, 4, 8, 6, 60, 'Dt0608004', 'aghara ii', 'aghara ii', '5.910613554', '5.768823319', NULL, NULL, NULL, NULL, NULL),
(25, 6, 9, 35, 262, 'DT3509006', 'obiteogbon quarters', 'obiteogbon quarters', '5.915854854', '5.775345359', NULL, NULL, NULL, NULL, NULL),
(26, 7, 9, 35, 262, 'DT3509007', 'okegbe quarter1', 'okegbe quarter1', '5.916066505', '5.775475401', NULL, NULL, NULL, NULL, NULL),
(27, 2, 7, 6, 59, 'DT0607002', 'agbasa 1', 'agbasa 1', '5.916323572', '5.775769489', NULL, NULL, NULL, NULL, NULL),
(28, 13, 3, 34, 244, 'DT340313', 'gra', 'gra', '5.916405598', '5.775643861', NULL, NULL, NULL, NULL, NULL),
(29, 14, 7, 6, 59, 'DT0607014', 'agbasa 1', 'agbasa 1', '5.976138434', '5.79185625', NULL, NULL, NULL, NULL, NULL),
(30, 8, 4, 1, 19, 'DT0104008', 'anocha north', 'anocha north', '5.976323443', '5.791971817', NULL, NULL, NULL, NULL, NULL),
(31, 12, 3, 34, 244, 'DT340312', 'gra ward', 'gra ward', '5.94474279', '5.749946582', NULL, NULL, NULL, NULL, NULL),
(32, 12, 7, 6, 59, 'DT0607012', 'school in ethiope west', 'school in ethiope west', '5.960247765', '5.787697717', NULL, NULL, NULL, NULL, NULL),
(33, 4, 3, 9, 90, 'DT0903004', 'ellu ', 'ellu ', '5.944916081', '5.749138498', NULL, NULL, NULL, NULL, NULL),
(34, 11, 9, 35, 262, 'DT3509011', 'emami quarter 2', 'emami quarter 2', '5.868711331', '5.753867466', NULL, NULL, NULL, NULL, NULL),
(35, 10, 9, 35, 262, 'DT3509010', 'emami quarter 1', 'emami quarter 1', '5.869546618', '5.752899868', NULL, NULL, NULL, NULL, NULL),
(36, 9, 9, 35, 262, 'DT3509009', 'oguanja quarters', 'oguanja quarters', '5.869563315', '5.753218155', NULL, NULL, NULL, NULL, NULL),
(37, 8, 9, 35, 262, 'DT3509008', 'okegbe quarters 2', 'okegbe quarters 2', '5.869457164', '5.753248025', NULL, NULL, NULL, NULL, NULL),
(38, 5, 9, 35, 262, 'DT3509005', 'obiteogbon quarters', 'obiteogbon quarters', '5.865254514', '5.754391377', NULL, NULL, NULL, NULL, NULL),
(39, 4, 9, 35, 262, 'DT3509004', 'ajudaibo primary school', 'ajudaibo primary school', '5.863768358', '5.754947902', NULL, NULL, NULL, NULL, NULL),
(40, 3, 9, 35, 262, 'DT3509003', 'ajudaibo primary school', 'ajudaibo primary school', '5.867018084', '5.750225876', NULL, NULL, NULL, NULL, NULL),
(41, 3, 4, 9, 91, 'DT0904003', 'isoko north', 'isoko north', '5.866359036', '5.746704932', NULL, NULL, NULL, NULL, NULL),
(42, 2, 9, 35, 262, 'DT3509002', 'hall 2', 'hall 2', '5.866407456', '5.746698042', NULL, NULL, NULL, NULL, NULL),
(43, 4, 7, 6, 59, 'DT0607004', 'school in ethiope west', 'school in ethiope west', '5.909925383', '5.794301233', NULL, NULL, NULL, NULL, NULL),
(44, 16, 2, 22, 224, 'DT220216', 'uvwie', 'uvwie', '5.878378164', '5.783819724', NULL, NULL, NULL, NULL, NULL),
(45, 6, 7, 6, 59, 'DT0607006', 'school in ethiope west', 'school in ethiope west', '5.861365948', '5.790962175', NULL, NULL, NULL, NULL, NULL),
(46, 14, 1, 19, 194, 'DT1901014', 'ughelli', 'ughelli', '5.861413666', '5.79088636', NULL, NULL, NULL, NULL, NULL),
(47, 2, 10, 15, 156, 'DT1510002', 'cable point i', 'cable point i', '5.861461099', '5.79080631', NULL, NULL, NULL, NULL, NULL),
(48, 3, 10, 15, 156, 'DT1510003', 'cable point i', 'cable point i', '5.880444551', '5.770730494', NULL, NULL, NULL, NULL, NULL),
(49, 4, 10, 15, 156, 'DT1510004', 'cable point i', 'cable point i', '5.878354903', '5.783820223', NULL, NULL, NULL, NULL, NULL),
(50, 5, 10, 15, 156, 'DT1510005', 'cable point i', 'cable point i', '5.878531591', '5.806744155', NULL, NULL, NULL, NULL, NULL),
(51, 6, 10, 15, 156, 'DT1510006', 'cable point i', 'cable point i', '5.878639525', '5.806654972', NULL, NULL, NULL, NULL, NULL),
(52, 7, 10, 15, 156, 'DT1510007', 'cable point i', 'cable point i', '5.878806006', '5.806560262', NULL, NULL, NULL, NULL, NULL),
(53, 8, 10, 15, 156, 'DT1510008', 'cable point i', 'cable point i', '5.879012412', '5.806466752', NULL, NULL, NULL, NULL, NULL),
(54, 9, 10, 15, 156, 'DT1510009', 'cable point i', 'cable point i', '5.867669536', '5.817836656', NULL, NULL, NULL, NULL, NULL),
(55, 10, 10, 15, 156, 'DT1510010', 'cable point i', 'cable point i', '5.867691306', '5.818044285', NULL, NULL, NULL, NULL, NULL),
(56, 11, 10, 15, 156, 'DT1510011', 'cable point i', 'cable point i', '5.867600201', '5.81823691', NULL, NULL, NULL, NULL, NULL),
(57, 15, 10, 15, 156, 'DT151015', 'cable point i', 'cable point i', '5.863066776', '5.830964841', NULL, NULL, NULL, NULL, NULL),
(58, 16, 10, 15, 156, 'DT151016', 'cable point i', 'cable point i', '5.873470151', '5.823753387', NULL, NULL, NULL, NULL, NULL),
(59, 17, 10, 15, 156, 'DT151017', 'cable point i', 'cable point i', '5.851069593', '5.836122533', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(60, 8, 8, 22, 222, 'DT2288', 'aka avenue', 'aka avenue', '5.851158986', '5.836175239', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(61, 8, 3, 17, 176, 'DT1738', 'sapele', 'sapele', '5.851270898', '5.836155212', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(62, 13, 7, 6, 59, 'DT6713', 'ethiope', 'ethiope', '5.85144335', '5.836146137', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(63, 5, 4, 1, 19, 'DT145', 'Aniocha North 4', 'Aniocha North 4', '5.863091905', '5.831179239', 'christian', '0000-00-00 00:00:00', '192.168.1.114', NULL, NULL),
(64, 13, 3, 2, 6, 'DT2313', 'aniocha ward 3', 'aniocha ward 3', '5.866994163', '5.821855678', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(65, 6, 4, 1, 19, 'DT146', 'aniocha ward 4', 'aniocha ward 4', '5.867741304', '5.817980929', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(66, 21, 1, 22, 223, 'DT22121', 'uru standard junction off jakpa rd', 'uru standard junction off jakpa rd', '5.867601142', '5.818139328', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(67, 1, 11, 15, 157, 'DT15111', 'Oshimili', 'Oshimili South', '5.807821471', '5.797203767', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(68, 2, 11, 10, 108, 'DT10112', 'Isoko', 'Isoko South', '5.807754862', '5.797288301', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(69, 3, 11, 15, 157, 'DT15113', 'Oshimili', 'Oshimili', '5.842704983', '5.786380747', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(70, 4, 11, 15, 157, 'DT15114', 'Oshimili', 'Oshimili South', '5.842790118', '5.786331657', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(71, 5, 11, 15, 157, 'DT15115', 'Oshimili', 'Oshimili South', '5.842864681', '5.78625909', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(72, 6, 11, 15, 157, 'DT15116', 'Oshimili', 'Oshimili South', '5.842019519', '5.831029509', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(73, 7, 11, 15, 157, 'DT15117', 'Oshimili', 'Oshimili South', '5.842620963', '5.831811301', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(74, 1, 5, 10, 104, 'DT105001', 'Isoko', 'Isoko South', '5.837696181', '5.812672375', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(75, 13, 10, 21, 218, 'DT211013', 'Ukwuani', 'Ukwuani ', '5.835630792', '5.824939901', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(76, 3, 4, 21, 220, 'DT2143', 'Ukwuani', 'Ukwuani', '5.835483357', '5.824884533', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(77, 6, 1, 22, 223, 'DT2216', 'Effurun', 'Effurun', '5.829120073', '5.825480729', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(78, 11, 10, 21, 218, 'DT211011', 'Ukwuani', 'Ukwuani', '5.822940228', '5.835938252', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(79, 7, 4, 1, 19, 'DT147', 'aniocha', 'aniocha', '5.785890606', '5.829924057', 'Christopher', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(80, 3, 0, 31, 28, 'DT3103', 'Bomadi', 'Bomadi', '5.822974806', '5.835903908', 'Dare', '0000-00-00 00:00:00', '192.168.1.114', NULL, NULL),
(81, 5, 0, 31, 28, 'DT3105', 'Bomadi', 'Bomadi', '5.813067872', '5.850975385', 'Dare', '0000-00-00 00:00:00', '192.168.1.114', NULL, NULL),
(82, 1, 0, 31, 28, 'DT310001', 'Bomadi', 'Bomadi', '5.813128721', '5.851046574', 'Dare', '0000-00-00 00:00:00', '192.168.1.114', NULL, NULL),
(83, 3, 6, 13, 135, 'DT1363', 'Udogbie Village', 'Udogbie Village', '5.795222618', '5.83904385', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(84, 8, 12, 22, 226, 'DT22128', 'aka avenue', 'aka avenue', '5.795293702', '5.839015885', 'Israel', '0000-00-00 00:00:00', '192.168.1.109', NULL, NULL),
(85, 3, 9, 6, 61, 'DT693', 'ethiope west ', 'ethiope west ', '5.801800496', '5.895480998', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(86, 8, 8, 6, 60, 'DT688', 'ethiope', 'ethiope west ', '5.802012582', '5.895422869', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(87, 2, 8, 6, 60, 'DT682', 'ethiope', 'ethiope west ', '5.802052137', '5.895223879', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(88, 6, 10, 6, 62, 'DT6106', 'ethiope', 'ethiope west ', '5.800760234', '5.888332279', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(89, 12, 9, 6, 61, 'DT6912', 'ethiope unit 12', 'ethiope unit 12', '5.800857495', '5.888584717', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(90, 7, 0, 31, 26, 'DT3107', 'kolafiogbene', 'kolafio', '5.799316688', '5.892493172', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(91, 11, 0, 31, 26, 'DT31011', 'kolafiogbene', 'kolafio', '5.799247669', '5.892551277', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(92, 15, 0, 31, 26, 'DT31015', 'kolafiogbene', 'kolafiogbene', '5.949238684', '5.696328122', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(93, 16, 0, 31, 26, 'DT31016', 'kolafiogbene', 'kolafiogbene', '5.949328101', '5.696164548', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(94, 9, 0, 31, 30, 'DT3109', 'kolafiogbene', 'kolafiogbene', '5.948599325', '5.695844094', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(95, 8, 0, 31, 30, 'DT3108', 'kolafiogbene', 'kolafiogbene', '5.947600862', '5.72692069', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(96, 14, 0, 31, 26, 'DT31014', 'kolafiogbene', 'kolafiogbene', '5.9266113', '5.68939042', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(97, 18, 0, 31, 26, 'DT31018', 'kolafiogbene', 'kolafiogbene', '5.926621717', '5.689337411', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(98, 12, 0, 31, 26, 'DT31012', 'kolafiogbene', 'kolafiogbene', '5.926029293', '5.70101689', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(99, 4, 0, 31, 30, 'DT3104', 'kolafiogbene', 'kolafiogbene', '5.987535593', '5.77571573', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(100, 6, 0, 31, 30, 'DT3106', 'kolafiogbene', 'kolafiogbene', '5.964548939', '5.710539049', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(101, 10, 0, 31, 30, 'DT31010', 'kolafiogbene', 'kolafiogbene', '5.966931481', '5.714765312', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(102, 51, 0, 31, 30, 'DT31051', 'kolafiogbene', 'kolafiogbene', '5.98954208', '5.76373367', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(103, 21, 0, 31, 30, 'DT31021', 'kolafiogbene', 'kolafiogbene', '5.989685426', '5.76395642', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(104, 31, 0, 31, 30, 'DT31031', 'kolafiogbene', 'kolafiogbene', '5.970365586', '5.731097122', 'Israel', '0000-00-00 00:00:00', '192.168.1.104', NULL, NULL),
(105, 5, 5, 11, 115, 'DT1155', 'Ndokwa east', 'Ndokwa east', '5.948545677', '5.696001704', 'Dare', '0000-00-00 00:00:00', '192.168.1.111', NULL, NULL),
(106, 13, 0, 34, 244, 'DT34013', 'gra', 'gra', '5.953962649', '5.700047022', 'Israel', '0000-00-00 00:00:00', '192.168.1.108', NULL, NULL),
(107, 12, 0, 34, 244, 'DT34012', 'gra', 'gra', '5.98539512', '5.764853605', 'Israel', '0000-00-00 00:00:00', '192.168.1.108', NULL, NULL),
(108, 1, 0, 32, 38, 'DT3201', 'seimbiri', 'seimbiri', '5.989630887', '5.763867217', 'Israel', '0000-00-00 00:00:00', '192.168.1.108', NULL, NULL),
(109, 6, 5, 11, 115, 'DT1156', 'ndokwa', 'ndokwa', '5.989745019', '5.764018125', 'Israel', '0000-00-00 00:00:00', '192.168.1.108', NULL, NULL),
(110, 0, 0, 0, 0, '', '', '', '5.929650212', '5.671305704', '', '0000-00-00 00:00:00', '', NULL, NULL),
(111, 0, 0, 0, 0, '', '', '', '5.940474487', '5.653550813', '', '0000-00-00 00:00:00', '', NULL, NULL),
(112, 0, 0, 0, 0, '', '', '', '5.931835757', '5.662629319', '', '0000-00-00 00:00:00', '', NULL, NULL),
(113, 0, 0, 0, 0, '', '', '', '5.936672207', '5.657853755', '', '0000-00-00 00:00:00', '', NULL, NULL),
(114, 0, 0, 0, 0, '', '', '', '5.92859716', '5.662487453', '', '0000-00-00 00:00:00', '', NULL, NULL),
(115, 0, 0, 0, 0, '', '', '', '5.935482454', '5.656266818', '', '0000-00-00 00:00:00', '', NULL, NULL),
(116, 0, 0, 0, 0, '', '', '', '5.935635511', '5.656053666', '', '0000-00-00 00:00:00', '', NULL, NULL),
(117, 0, 0, 0, 0, '', '', '', '5.931889364', '5.662557998', '', '0000-00-00 00:00:00', '', NULL, NULL),
(118, 0, 0, 0, 0, '', '', '', '5.928599463', '5.662630333', '', '0000-00-00 00:00:00', '', NULL, NULL),
(119, 0, 0, 0, 0, '', '', '', '5.928686275', '5.662599771', '', '0000-00-00 00:00:00', '', NULL, NULL),
(120, 0, 0, 0, 0, '', '', '', '5.929439857', '5.671442497', '', '0000-00-00 00:00:00', '', NULL, NULL),
(121, 0, 0, 0, 0, '', '', '', '5.931914231', '5.662599608', '', '0000-00-00 00:00:00', '', NULL, NULL),
(122, 0, 0, 0, 0, '', '', '', '5.935866184', '5.669282335', '', '0000-00-00 00:00:00', '', NULL, NULL),
(123, 0, 0, 0, 0, '', '', '', '5.92539952', '5.667627384', '', '0000-00-00 00:00:00', '', NULL, NULL),
(124, 0, 0, 0, 0, '', '', '', '5.925370155', '5.667640993', '', '0000-00-00 00:00:00', '', NULL, NULL),
(125, 0, 0, 0, 0, '', '', '', '5.928589515', '5.662627124', '', '0000-00-00 00:00:00', '', NULL, NULL),
(126, 0, 0, 0, 0, '', '', '', '5.940710183', '5.653588629', '', '0000-00-00 00:00:00', '', NULL, NULL),
(127, 0, 0, 0, 0, '', '', '', '5.946081392', '5.647803661', '', '0000-00-00 00:00:00', '', NULL, NULL),
(128, 0, 0, 0, 0, '', '', '', '5.941149747', '5.653171959', '', '0000-00-00 00:00:00', '', NULL, NULL),
(129, 0, 0, 0, 0, '', '', '', '5.941094329', '5.653358063', '', '0000-00-00 00:00:00', '', NULL, NULL),
(130, 0, 0, 0, 0, '', '', '', '5.946948672', '5.648973495', '', '0000-00-00 00:00:00', '', NULL, NULL),
(131, 0, 0, 0, 0, '', '', '', '5.947567485', '5.64427473', '', '0000-00-00 00:00:00', '', NULL, NULL),
(132, 0, 0, 0, 0, '', '', '', '5.94746187', '5.639386229', '', '0000-00-00 00:00:00', '', NULL, NULL),
(133, 0, 0, 0, 0, '', '', '', '5.947609958', '5.639598764', '', '0000-00-00 00:00:00', '', NULL, NULL),
(134, 0, 0, 0, 0, '', '', '', '5.950207529', '5.637496454', '', '0000-00-00 00:00:00', '', NULL, NULL),
(135, 0, 0, 0, 0, '', '', '', '5.951252982', '5.641761195', '', '0000-00-00 00:00:00', '', NULL, NULL),
(136, 0, 0, 0, 0, '', '', '', '5.950150444', '5.637406656', '', '0000-00-00 00:00:00', '', NULL, NULL),
(137, 0, 0, 0, 0, '', '', '', '5.941203333', '5.653033952', '', '0000-00-00 00:00:00', '', NULL, NULL),
(138, 0, 0, 0, 0, '', '', '', '5.949614001', '5.632716541', '', '0000-00-00 00:00:00', '', NULL, NULL),
(139, 0, 0, 0, 0, '', '', '', '5.949933268', '5.635520565', '', '0000-00-00 00:00:00', '', NULL, NULL),
(140, 0, 0, 0, 0, '', '', '', '5.953090766', '5.628384606', '', '0000-00-00 00:00:00', '', NULL, NULL),
(141, 0, 0, 0, 0, '', '', '', '5.953088726', '5.628069372', '', '0000-00-00 00:00:00', '', NULL, NULL),
(142, 0, 0, 0, 0, '', '', '', '5.949714396', '5.632745447', '', '0000-00-00 00:00:00', '', NULL, NULL),
(143, 0, 0, 0, 0, '', '', '', '5.952891222', '5.627623432', '', '0000-00-00 00:00:00', '', NULL, NULL),
(144, 0, 0, 0, 0, '', '', '', '5.954259407', '5.583787026', '', '0000-00-00 00:00:00', '', NULL, NULL),
(145, 0, 0, 0, 0, '', '', '', '5.954303954', '5.583822607', '', '0000-00-00 00:00:00', '', NULL, NULL),
(146, 0, 0, 0, 0, '', '', '', '5.954366083', '5.583809093', '', '0000-00-00 00:00:00', '', NULL, NULL),
(147, 0, 0, 0, 0, '', '', '', '5.952718605', '5.584089188', '', '0000-00-00 00:00:00', '', NULL, NULL),
(148, 0, 0, 0, 0, '', '', '', '5.952705285', '5.584203464', '', '0000-00-00 00:00:00', '', NULL, NULL),
(149, 0, 0, 0, 0, '', '', '', '5.952677451', '5.584250777', '', '0000-00-00 00:00:00', '', NULL, NULL),
(150, 0, 0, 0, 0, '', '', '', '5.993656085', '5.600393512', '', '0000-00-00 00:00:00', '', NULL, NULL),
(151, 0, 0, 0, 0, '', '', '', '6.032954865', '5.673289304', '', '0000-00-00 00:00:00', '', NULL, NULL),
(152, 0, 0, 0, 0, '', '', '', '5.94980392', '5.632777333', '', '0000-00-00 00:00:00', '', NULL, NULL),
(153, 0, 0, 0, 0, '', '', '', '6.032876093', '5.672959001', '', '0000-00-00 00:00:00', '', NULL, NULL),
(154, 0, 0, 0, 0, '', '', '', '5.970593504', '5.695745246', '', '0000-00-00 00:00:00', '', NULL, NULL),
(155, 0, 0, 0, 0, '', '', '', '5.970667837', '5.695321927', '', '0000-00-00 00:00:00', '', NULL, NULL),
(156, 0, 0, 0, 0, '', '', '', '5.970679745', '5.69541788', '', '0000-00-00 00:00:00', '', NULL, NULL),
(157, 0, 0, 0, 0, '', '', '', '6.000160473', '5.701034462', '', '0000-00-00 00:00:00', '', NULL, NULL),
(158, 0, 0, 0, 0, '', '', '', '6.000113358', '5.701062694', '', '0000-00-00 00:00:00', '', NULL, NULL),
(159, 0, 0, 0, 0, '', '', '', '5.999916692', '5.700983017', '', '0000-00-00 00:00:00', '', NULL, NULL),
(160, 0, 0, 0, 0, '', '', '', '5.993273615', '5.69230046', '', '0000-00-00 00:00:00', '', NULL, NULL),
(161, 0, 0, 0, 0, '', '', '', '6.032885641', '5.673210884', '', '0000-00-00 00:00:00', '', NULL, NULL),
(162, 0, 0, 0, 0, '', '', '', '5.970624141', '5.695071124', '', '0000-00-00 00:00:00', '', NULL, NULL),
(163, 0, 0, 0, 0, '', '', '', '6.000011696', '5.700996679', '', '0000-00-00 00:00:00', '', NULL, NULL),
(164, 0, 0, 0, 0, '', '', '', '5.970676848', '5.695610689', '', '0000-00-00 00:00:00', '', NULL, NULL),
(165, 0, 0, 0, 0, '', '', '', '6.18725973', '6.198803625', '', '0000-00-00 00:00:00', '', NULL, NULL),
(166, 0, 0, 0, 0, '', '', '', '6.187342839', '6.198817779', '', '0000-00-00 00:00:00', '', NULL, NULL),
(167, 0, 0, 0, 0, '', '', '', '6.187440365', '6.198925458', '', '0000-00-00 00:00:00', '', NULL, NULL),
(168, 0, 0, 0, 0, '', '', '', '6.187057231', '6.198197231', '', '0000-00-00 00:00:00', '', NULL, NULL),
(169, 0, 0, 0, 0, '', '', '', '6.187119111', '6.19791699', '', '0000-00-00 00:00:00', '', NULL, NULL),
(170, 0, 0, 0, 0, '', '', '', '6.187080813', '6.197944332', '', '0000-00-00 00:00:00', '', NULL, NULL),
(171, 0, 0, 0, 0, '', '', '', '6.187110602', '6.197851346', '', '0000-00-00 00:00:00', '', NULL, NULL),
(172, 0, 0, 0, 0, '', '', '', '6.185416722', '6.204544183', '', '0000-00-00 00:00:00', '', NULL, NULL),
(173, 0, 0, 0, 0, '', '', '', '6.185489112', '6.204394103', '', '0000-00-00 00:00:00', '', NULL, NULL),
(174, 0, 0, 0, 0, '', '', '', '6.18526099', '6.204244005', '', '0000-00-00 00:00:00', '', NULL, NULL),
(175, 0, 0, 0, 0, '', '', '', '6.160068192', '6.221072749', '', '0000-00-00 00:00:00', '', NULL, NULL),
(176, 0, 0, 0, 0, '', '', '', '6.033867497', '6.286326012', '', '0000-00-00 00:00:00', '', NULL, NULL),
(177, 0, 0, 0, 0, '', '', '', '6.208228494', '6.21998071', '', '0000-00-00 00:00:00', '', NULL, NULL),
(178, 0, 0, 0, 0, '', '', '', '6.20812925', '6.219888143', '', '0000-00-00 00:00:00', '', NULL, NULL),
(179, 0, 0, 0, 0, '', '', '', '6.208066871', '6.219797856', '', '0000-00-00 00:00:00', '', NULL, NULL),
(180, 0, 0, 0, 0, '', '', '', '6.208009908', '6.219672376', '', '0000-00-00 00:00:00', '', NULL, NULL),
(181, 0, 0, 0, 0, '', '', '', '6.207984832', '6.219578787', '', '0000-00-00 00:00:00', '', NULL, NULL),
(182, 0, 0, 0, 0, '', '', '', '6.207490607', '6.227475833', '', '0000-00-00 00:00:00', '', NULL, NULL),
(183, 0, 0, 0, 0, '', '', '', '6.207407669', '6.22745332', '', '0000-00-00 00:00:00', '', NULL, NULL),
(184, 0, 0, 0, 0, '', '', '', '6.211155765', '6.227155738', '', '0000-00-00 00:00:00', '', NULL, NULL),
(185, 0, 0, 0, 0, '', '', '', '6.211231425', '6.227203062', '', '0000-00-00 00:00:00', '', NULL, NULL),
(186, 0, 0, 0, 0, '', '', '', '6.21127352', '6.227114903', '', '0000-00-00 00:00:00', '', NULL, NULL),
(187, 0, 0, 0, 0, '', '', '', '6.206200305', '6.223128084', '', '0000-00-00 00:00:00', '', NULL, NULL),
(188, 0, 0, 0, 0, '', '', '', '6.206259141', '6.223055902', '', '0000-00-00 00:00:00', '', NULL, NULL),
(189, 0, 0, 0, 0, '', '', '', '6.20625521', '6.222902611', '', '0000-00-00 00:00:00', '', NULL, NULL),
(190, 0, 0, 0, 0, '', '', '', '6.206260166', '6.222776676', '', '0000-00-00 00:00:00', '', NULL, NULL),
(191, 0, 0, 0, 0, '', '', '', '6.253072655', '6.200481825', '', '0000-00-00 00:00:00', '', NULL, NULL),
(192, 0, 0, 0, 0, '', '', '', '6.252989396', '6.200549159', '', '0000-00-00 00:00:00', '', NULL, NULL),
(193, 0, 0, 0, 0, '', '', '', '6.252907166', '6.200403922', '', '0000-00-00 00:00:00', '', NULL, NULL),
(194, 0, 0, 0, 0, '', '', '', '6.252902807', '6.200587063', '', '0000-00-00 00:00:00', '', NULL, NULL),
(195, 0, 0, 0, 0, '', '', '', '6.251590407', '6.20135737', '', '0000-00-00 00:00:00', '', NULL, NULL),
(196, 0, 0, 0, 0, '', '', '', '6.251557512', '6.20128579', '', '0000-00-00 00:00:00', '', NULL, NULL),
(197, 0, 0, 0, 0, '', '', '', '6.251554219', '6.201170548', '', '0000-00-00 00:00:00', '', NULL, NULL),
(198, 0, 0, 0, 0, '', '', '', '6.249277839', '6.198416483', '', '0000-00-00 00:00:00', '', NULL, NULL),
(199, 0, 0, 0, 0, '', '', '', '6.251546267', '6.192148176', '', '0000-00-00 00:00:00', '', NULL, NULL),
(200, 0, 0, 0, 0, '', '', '', '6.251589778', '6.192092584', '', '0000-00-00 00:00:00', '', NULL, NULL),
(201, 0, 0, 0, 0, '', '', '', '6.251656927', '6.192145115', '', '0000-00-00 00:00:00', '', NULL, NULL),
(202, 0, 0, 0, 0, '', '', '', '6.251690949', '6.192194209', '', '0000-00-00 00:00:00', '', NULL, NULL),
(203, 0, 0, 0, 0, '', '', '', '6.242310887', '6.195543516', '', '0000-00-00 00:00:00', '', NULL, NULL),
(204, 0, 0, 0, 0, '', '', '', '6.242411898', '6.19554119', '', '0000-00-00 00:00:00', '', NULL, NULL),
(205, 0, 0, 0, 0, '', '', '', '6.242596022', '6.195522433', '', '0000-00-00 00:00:00', '', NULL, NULL),
(206, 0, 0, 0, 0, '', '', '', '6.242786338', '6.195438814', '', '0000-00-00 00:00:00', '', NULL, NULL),
(207, 0, 0, 0, 0, '', '', '', '6.242863907', '6.195510222', '', '0000-00-00 00:00:00', '', NULL, NULL),
(208, 0, 0, 0, 0, '', '', '', '6.246382159', '6.190405162', '', '0000-00-00 00:00:00', '', NULL, NULL),
(209, 0, 0, 0, 0, '', '', '', '6.24654691', '6.190480973', '', '0000-00-00 00:00:00', '', NULL, NULL),
(210, 0, 0, 0, 0, '', '', '', '6.246624621', '6.190468404', '', '0000-00-00 00:00:00', '', NULL, NULL),
(211, 0, 0, 0, 0, '', '', '', '6.246824452', '6.190578041', '', '0000-00-00 00:00:00', '', NULL, NULL),
(212, 0, 0, 0, 0, '', '', '', '6.246974325', '6.190797731', '', '0000-00-00 00:00:00', '', NULL, NULL),
(213, 0, 0, 0, 0, '', '', '', '6.227962894', '6.182785262', '', '0000-00-00 00:00:00', '', NULL, NULL),
(214, 0, 0, 0, 0, '', '', '', '6.227838497', '6.182783176', '', '0000-00-00 00:00:00', '', NULL, NULL),
(215, 0, 0, 0, 0, '', '', '', '6.227729315', '6.182759093', '', '0000-00-00 00:00:00', '', NULL, NULL),
(216, 0, 0, 0, 0, '', '', '', '6.221966738', '6.201663891', '', '0000-00-00 00:00:00', '', NULL, NULL),
(217, 0, 0, 0, 0, '', '', '', '6.221878943', '6.201806903', '', '0000-00-00 00:00:00', '', NULL, NULL),
(218, 0, 0, 0, 0, '', '', '', '6.221898814', '6.201890152', '', '0000-00-00 00:00:00', '', NULL, NULL),
(219, 0, 0, 0, 0, '', '', '', '6.22187331', '6.201965201', '', '0000-00-00 00:00:00', '', NULL, NULL),
(220, 0, 0, 0, 0, '', '', '', '6.206466714', '6.177049236', '', '0000-00-00 00:00:00', '', NULL, NULL),
(221, 0, 0, 0, 0, '', '', '', '6.20648286', '6.176913104', '', '0000-00-00 00:00:00', '', NULL, NULL),
(222, 0, 0, 0, 0, '', '', '', '6.199927782', '6.18680983', '', '0000-00-00 00:00:00', '', NULL, NULL),
(223, 0, 0, 0, 0, '', '', '', '6.199833638', '6.186886468', '', '0000-00-00 00:00:00', '', NULL, NULL),
(224, 0, 0, 0, 0, '', '', '', '6.199754935', '6.187012587', '', '0000-00-00 00:00:00', '', NULL, NULL),
(225, 0, 0, 0, 0, '', '', '', '6.199673133', '6.187134921', '', '0000-00-00 00:00:00', '', NULL, NULL),
(226, 0, 0, 0, 0, '', '', '', '6.197709854', '6.185204683', '', '0000-00-00 00:00:00', '', NULL, NULL),
(227, 0, 0, 0, 0, '', '', '', '6.230219065', '6.214893789', '', '0000-00-00 00:00:00', '', NULL, NULL),
(228, 0, 0, 0, 0, '', '', '', '6.230449757', '6.214887775', '', '0000-00-00 00:00:00', '', NULL, NULL),
(229, 0, 0, 0, 0, '', '', '', '6.25496909', '6.324370388', '', '0000-00-00 00:00:00', '', NULL, NULL),
(230, 0, 0, 0, 0, '', '', '', '6.254937344', '6.324485254', '', '0000-00-00 00:00:00', '', NULL, NULL),
(231, 0, 0, 0, 0, '', '', '', '6.254850584', '6.324509424', '', '0000-00-00 00:00:00', '', NULL, NULL),
(232, 0, 0, 0, 0, '', '', '', '6.256462201', '6.328901893', '', '0000-00-00 00:00:00', '', NULL, NULL),
(233, 0, 0, 0, 0, '', '', '', '6.256644926', '6.328837705', '', '0000-00-00 00:00:00', '', NULL, NULL),
(234, 0, 0, 0, 0, '', '', '', '6.26002524', '6.350906342', '', '0000-00-00 00:00:00', '', NULL, NULL),
(235, 0, 0, 0, 0, '', '', '', '6.26021185', '6.351114647', '', '0000-00-00 00:00:00', '', NULL, NULL),
(236, 0, 0, 0, 0, '', '', '', '6.257493633', '6.351625219', '', '0000-00-00 00:00:00', '', NULL, NULL),
(237, 0, 0, 0, 0, '', '', '', '6.257418562', '6.35180543', '', '0000-00-00 00:00:00', '', NULL, NULL),
(238, 0, 0, 0, 0, '', '', '', '6.259050823', '6.350017754', '', '0000-00-00 00:00:00', '', NULL, NULL),
(239, 0, 0, 0, 0, '', '', '', '6.283773995', '6.343019801', '', '0000-00-00 00:00:00', '', NULL, NULL),
(240, 0, 0, 0, 0, '', '', '', '6.283703556', '6.342864557', '', '0000-00-00 00:00:00', '', NULL, NULL),
(241, 0, 0, 0, 0, '', '', '', '6.283394129', '6.345339404', '', '0000-00-00 00:00:00', '', NULL, NULL),
(242, 0, 0, 0, 0, '', '', '', '6.283431037', '6.345466415', '', '0000-00-00 00:00:00', '', NULL, NULL),
(243, 0, 0, 0, 0, '', '', '', '6.292560015', '6.36078886', '', '0000-00-00 00:00:00', '', NULL, NULL),
(244, 0, 0, 0, 0, '', '', '', '6.292728055', '6.360785128', '', '0000-00-00 00:00:00', '', NULL, NULL),
(245, 0, 0, 0, 0, '', '', '', '6.292768054', '6.360853288', '', '0000-00-00 00:00:00', '', NULL, NULL),
(246, 0, 0, 0, 0, '', '', '', '6.292803953', '6.360940852', '', '0000-00-00 00:00:00', '', NULL, NULL),
(247, 0, 0, 0, 0, '', '', '', '6.303047466', '6.382018595', '', '0000-00-00 00:00:00', '', NULL, NULL),
(248, 0, 0, 0, 0, '', '', '', '6.303053207', '6.382096338', '', '0000-00-00 00:00:00', '', NULL, NULL),
(249, 0, 0, 0, 0, '', '', '', '6.303062886', '6.382200834', '', '0000-00-00 00:00:00', '', NULL, NULL),
(250, 0, 0, 0, 0, '', '', '', '6.300559186', '6.376676816', '', '0000-00-00 00:00:00', '', NULL, NULL),
(251, 0, 0, 0, 0, '', '', '', '6.300552827', '6.376490135', '', '0000-00-00 00:00:00', '', NULL, NULL),
(252, 0, 0, 0, 0, '', '', '', '6.300457165', '6.37635446', '', '0000-00-00 00:00:00', '', NULL, NULL),
(253, 0, 0, 0, 0, '', '', '', '6.302502254', '6.369619276', '', '0000-00-00 00:00:00', '', NULL, NULL),
(254, 0, 0, 0, 0, '', '', '', '6.302516411', '6.369560868', '', '0000-00-00 00:00:00', '', NULL, NULL),
(255, 0, 0, 0, 0, '', '', '', '6.302485582', '6.369508954', '', '0000-00-00 00:00:00', '', NULL, NULL),
(256, 0, 0, 0, 0, '', '', '', '6.302544988', '6.369445201', '', '0000-00-00 00:00:00', '', NULL, NULL),
(257, 0, 0, 0, 0, '', '', '', '6.37375796', '6.333193717', '', '0000-00-00 00:00:00', '', NULL, NULL),
(258, 0, 0, 0, 0, '', '', '', '6.197893803', '6.276304755', '', '0000-00-00 00:00:00', '', NULL, NULL),
(259, 0, 0, 0, 0, '', '', '', '6.197743942', '6.276216915', '', '0000-00-00 00:00:00', '', NULL, NULL),
(260, 0, 0, 0, 0, '', '', '', '6.197731515', '6.276147511', '', '0000-00-00 00:00:00', '', NULL, NULL),
(261, 0, 0, 0, 0, '', '', '', '6.197619564', '6.276036237', '', '0000-00-00 00:00:00', '', NULL, NULL),
(262, 0, 0, 0, 0, '', '', '', '6.190004158', '6.270333443', '', '0000-00-00 00:00:00', '', NULL, NULL),
(263, 0, 0, 0, 0, '', '', '', '6.189951855', '6.270410853', '', '0000-00-00 00:00:00', '', NULL, NULL),
(264, 0, 0, 0, 0, '', '', '', '6.189943615', '6.270548989', '', '0000-00-00 00:00:00', '', NULL, NULL),
(265, 0, 0, 0, 0, '', '', '', '6.189903693', '6.270648317', '', '0000-00-00 00:00:00', '', NULL, NULL),
(266, 0, 0, 0, 0, '', '', '', '6.18994471', '6.270784159', '', '0000-00-00 00:00:00', '', NULL, NULL),
(267, 0, 0, 0, 0, '', '', '', '6.192508526', '6.250961856', '', '0000-00-00 00:00:00', '', NULL, NULL),
(268, 0, 0, 0, 0, '', '', '', '6.192200211', '6.250896597', '', '0000-00-00 00:00:00', '', NULL, NULL),
(269, 0, 0, 0, 0, '', '', '', '6.135592062', '6.268974912', '', '0000-00-00 00:00:00', '', NULL, NULL),
(270, 0, 0, 0, 0, '', '', '', '6.135370877', '6.268768005', '', '0000-00-00 00:00:00', '', NULL, NULL),
(271, 0, 0, 0, 0, '', '', '', '6.135316928', '6.268909821', '', '0000-00-00 00:00:00', '', NULL, NULL),
(272, 0, 0, 0, 0, '', '', '', '6.159869005', '6.360299833', '', '0000-00-00 00:00:00', '', NULL, NULL),
(273, 0, 0, 0, 0, '', '', '', '6.169995128', '6.239845509', '', '0000-00-00 00:00:00', '', NULL, NULL),
(274, 0, 0, 0, 0, '', '', '', '6.170046378', '6.23970302', '', '0000-00-00 00:00:00', '', NULL, NULL),
(275, 0, 0, 0, 0, '', '', '', '6.161175615', '6.245285121', '', '0000-00-00 00:00:00', '', NULL, NULL),
(276, 0, 0, 0, 0, '', '', '', '6.168812826', '6.239524125', '', '0000-00-00 00:00:00', '', NULL, NULL),
(277, 0, 0, 0, 0, '', '', '', '6.168929109', '6.239490579', '', '0000-00-00 00:00:00', '', NULL, NULL),
(278, 0, 0, 0, 0, '', '', '', '6.168897536', '6.239387036', '', '0000-00-00 00:00:00', '', NULL, NULL),
(279, 0, 0, 0, 0, '', '', '', '6.167208398', '6.239989576', '', '0000-00-00 00:00:00', '', NULL, NULL),
(285, 52, 1, 2, 41, 'dsdfdww', 'dsfsf', 'asdfasd', '2', '2', NULL, NULL, NULL, '2021-11-05 12:17:35', '2021-11-05 12:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Abuja', NULL, NULL),
(2, 'Abia', NULL, NULL),
(3, 'Anambra', NULL, NULL),
(4, 'Akwa Ibom', NULL, NULL),
(5, 'Adamawa', NULL, NULL),
(6, 'Bauchi', NULL, NULL),
(7, 'Bayelsa', NULL, NULL),
(8, 'Benue', NULL, NULL),
(9, 'Borno', NULL, NULL),
(10, 'Cross River', NULL, NULL),
(12, 'Ebonyi', NULL, NULL),
(13, 'Edo', NULL, NULL),
(14, 'Ekiti', NULL, NULL),
(15, 'Enugu', NULL, NULL),
(16, 'Gombe', NULL, NULL),
(17, 'Imo', NULL, NULL),
(18, 'Jigawa', NULL, NULL),
(19, 'Kaduna', NULL, NULL),
(20, 'Kano', NULL, NULL),
(21, 'Katsina', NULL, NULL),
(22, 'Kebbi', NULL, NULL),
(23, 'Kogi', NULL, NULL),
(24, 'Kwara', NULL, NULL),
(25, 'Delta', NULL, NULL),
(26, 'Nasarawa', NULL, NULL),
(27, 'Niger', NULL, NULL),
(28, 'Ogun', NULL, NULL),
(29, 'Ondo', NULL, NULL),
(30, 'Osun', NULL, NULL),
(31, 'Oyo', NULL, NULL),
(32, 'Plateau', NULL, NULL),
(33, 'Rivers', NULL, NULL),
(34, 'Sokoto', NULL, NULL),
(35, 'Taraba', NULL, NULL),
(36, 'Yobe', NULL, NULL),
(37, 'Zamfara', NULL, NULL),
(251, 'Lagos', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lga_id` bigint(20) UNSIGNED NOT NULL,
  `ward_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `entered_by_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_entered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_id`, `ward_name`, `lga_id`, `ward_description`, `entered_by_user`, `date_entered`, `user_ip_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aba - Unor', 2, 'Aba - Unor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(2, 8, 'Ejeme', 2, 'Ejeme', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(3, 9, 'Isheagu - Ewulu', 2, 'Isheagu - Ewulu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(4, 7, 'Nsukwa', 2, 'Nsukwa', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(5, 2, 'Ogwashi - Uku I', 2, 'Ogwashi - Uku I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(6, 3, 'Ogwashi - Uku Ii', 2, 'Ogwashi - Uku Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(7, 1, 'Ogwashi - Uku Village', 2, 'Ogwashi - Uku Village', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(8, 4, 'Ubulu - Uku I', 2, 'Ubulu - Uku I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(9, 5, 'Ubulu - Uku Ii', 2, 'Ubulu - Uku Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(10, 6, 'Ubulu - Unor', 2, 'Ubulu - Unor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(11, 11, 'Ubulu Okiti', 2, 'Ubulu Okiti', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(12, 10, 'Ezi', 1, 'Ezi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(13, 8, 'Idumuje - Unor', 1, 'Idumuje - Unor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(14, 5, 'Issele - Azagba', 1, 'Issele - Azagba', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(15, 6, 'Issele Uku I', 1, 'Issele Uku I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(16, 7, 'Issele Uku Ii', 1, 'Issele Uku Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(17, 1, 'Obior', 1, 'Obior', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(18, 3, 'Obomkpa', 1, 'Obomkpa', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(19, 4, 'Onicha - Olona', 1, 'Onicha - Olona', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(20, 2, 'Onicha Ugbo', 1, 'Onicha Ugbo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(21, 9, 'Ukwu - Nzu', 1, 'Ukwu - Nzu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(22, 0, 'Akugbene', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(23, 0, 'Akugbene Ii', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(24, 0, 'Akugbene Iii', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(25, 0, 'Bomadi', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(26, 0, 'Kolafiogbene / Ekametagbene', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(27, 0, 'Kpakiama', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(28, 0, 'Ogbeinama / Okoloba', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(29, 0, 'Ogo - Eze', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(30, 0, 'Ogriagene', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(31, 0, 'Syama', 31, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(32, 0, 'Bolou - Ndoro', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(33, 0, 'Ngbilebiri', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(34, 0, 'Ngbilebiri Ii', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(35, 0, 'Obotebe', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(36, 0, 'Ogbolubiri', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(37, 0, 'Ogulagha', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(38, 0, 'Seimbiri', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(39, 0, 'Tamigbe', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(40, 0, 'Torugbene', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(41, 0, 'Tuomo', 32, 'Akugbene', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(42, 1, 'Abraka I', 5, 'Abraka I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(43, 2, 'Abraka Ii', 5, 'Abraka Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(44, 3, 'Abraka Iii', 5, 'Abraka Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(45, 4, 'Agbon I', 5, 'Agbon I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(46, 5, 'Agbon Ii', 5, 'Agbon Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(47, 6, 'Agbon Iii', 5, 'Agbon Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(48, 7, 'Agbon Iv', 5, 'Agbon Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(49, 8, 'Agbon V', 5, 'Agbon V', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(50, 9, 'Agbon Vi', 5, 'Agbon Vi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(51, 10, 'Agbon Vii', 5, 'Agbon Vii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(52, 11, 'Agbon Viii', 5, 'Agbon Viii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(53, 3, 'Jesse I', 6, 'Jesse I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(54, 4, 'Jesse Ii', 6, 'Jesse Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(55, 5, 'Jesse Iii', 6, 'Jesse Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(56, 6, 'Jesse Iv', 6, 'Jesse Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(57, 1, 'Mosogar I', 6, 'Mosogar I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(58, 2, 'Mosogar Ii', 6, 'Mosogar Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(59, 7, 'Oghara I', 6, 'Oghara I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(60, 8, 'Oghara Ii', 6, 'Oghara Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(61, 9, 'Oghara Iii', 6, 'Oghara Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(62, 10, 'Oghara Iv', 6, 'Oghara Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(63, 11, 'Oghara V', 6, 'Oghara V', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(64, 10, 'Abavo I', 8, 'Abavo I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(65, 11, 'Abavo Ii', 8, 'Abavo Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(66, 12, 'Abavo Iii', 8, 'Abavo Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(67, 1, 'Agbor Town I', 8, 'Agbor Town I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(68, 2, 'Agbor Town Ii', 8, 'Agbor Town Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(69, 7, 'Boji - Boji I', 8, 'Boji - Boji I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(70, 8, 'Boji - Boji Ii', 8, 'Boji - Boji Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(71, 9, 'Boji - Boji Iii', 8, 'Boji - Boji Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(72, 5, 'Ekuku - Agbor', 8, 'Ekuku - Agbor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(73, 4, 'Ihiuiyase I', 8, 'Ihiuiyase I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(74, 6, 'Ihuiyase Ii', 8, 'Ihuiyase Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(75, 3, 'Ihuozomor ( Ozanogogo Alisimie )', 8, 'Ihuozomor ( Ozanogogo Alisimie )', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(76, 7, 'Akumazi', 7, 'Akumazi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(77, 10, 'Idumuesah', 7, 'Idumuesah', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(78, 8, 'Igbodo', 7, 'Igbodo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(79, 12, 'Mbiri', 7, 'Mbiri', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(80, 14, 'Otolokpo', 7, 'Otolokpo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(81, 5, 'Owa V', 7, 'Owa V', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(82, 6, 'Owa Vi', 7, 'Owa Vi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(83, 1, 'Owa I', 7, 'Owa I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(84, 2, 'Owa Ii', 7, 'Owa Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(85, 3, 'Owa Iii', 7, 'Owa Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(86, 4, 'Owa Iv', 7, 'Owa Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(87, 11, 'Umunede', 7, 'Umunede', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(88, 13, 'Ute - Ogbeje', 7, 'Ute - Ogbeje', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(89, 9, 'Ute - Okpu', 7, 'Ute - Okpu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(90, 3, 'Ellu', 9, 'Ellu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(91, 4, 'Emevor', 9, 'Emevor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(92, 5, 'Iluelogbo', 9, 'Iluelogbo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(93, 1, 'Iyede I', 9, 'Iyede I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(94, 2, 'Iyede Ii', 9, 'Iyede Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(95, 8, 'Okpe - Isoko', 9, 'Okpe - Isoko', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(96, 13, 'Otibio', 9, 'Otibio', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(97, 7, 'Ovrode', 9, 'Ovrode', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(98, 6, 'Owhe / Akiehwe', 9, 'Owhe / Akiehwe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(99, 12, 'Oyede', 9, 'Oyede', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(100, 9, 'Ozoro I', 9, 'Ozoro I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(101, 10, 'Ozoro Ii', 9, 'Ozoro Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(102, 11, 'Ozoro Iii', 9, 'Ozoro Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(103, 3, 'Aviara', 10, 'Aviara', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(104, 5, 'Emede', 10, 'Emede', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(105, 9, 'Enhwe / Okpolo', 10, 'Enhwe / Okpolo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(106, 8, 'Erowa / Umeh', 10, 'Erowa / Umeh', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(107, 7, 'Igbide', 10, 'Igbide', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(108, 11, 'Irri Ii', 10, 'Irri Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(109, 10, 'Irri I', 10, 'Irri I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(110, 1, 'Oleh I', 10, 'Oleh I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(111, 2, 'Oleh Ii', 10, 'Oleh Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(112, 6, 'Olomoro', 10, 'Olomoro', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(113, 4, 'Uzere', 10, 'Uzere', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(114, 3, 'Abarra / Inyi / Onuaboh', 11, 'Abarra / Inyi / Onuaboh', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(115, 5, 'Aboh / Akarrai', 11, 'Aboh / Akarrai', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(116, 2, 'Afor / Obikwele', 11, 'Afor / Obikwele', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(117, 7, 'Ase', 11, 'Ase', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(118, 10, 'Ashaka', 11, 'Ashaka', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(119, 8, 'Ibedeni', 11, 'Ibedeni', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(120, 9, 'Ibrede / Igbuku / Onogbokor', 11, 'Ibrede / Igbuku / Onogbokor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(121, 4, 'Okpai / Utchi / Beneku', 11, 'Okpai / Utchi / Beneku', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(122, 6, 'Onyia / Adiai / Otuoku / Umuolu', 11, 'Onyia / Adiai / Otuoku / Umuolu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(123, 1, 'Ossissa', 11, 'Ossissa', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(124, 9, 'Abbi Ii', 12, 'Abbi Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(125, 8, 'Abbi I', 12, 'Abbi I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(126, 10, 'Emu', 12, 'Emu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(127, 6, 'Ogume I', 12, 'Ogume I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(128, 7, 'Ogume Ii', 12, 'Ogume Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(129, 5, 'Onicha - Ukwani', 12, 'Onicha - Ukwani', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(130, 1, 'Utagba Ogbe', 12, 'Utagba Ogbe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(131, 2, 'Utagba Uno I', 12, 'Utagba Uno I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(132, 3, 'Utagba Uno Ii', 12, 'Utagba Uno Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(133, 4, 'Utagba Uno Iii', 12, 'Utagba Uno Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(134, 5, 'Aghalokpe', 13, 'Aghalokpe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(135, 6, 'Aragba Town', 13, 'Aragba Town', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(136, 7, 'Mereje I', 13, 'Mereje I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(137, 8, 'Mereje Ii', 13, 'Mereje Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(138, 9, 'Mereje Iii', 13, 'Mereje Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(139, 3, 'Oha I', 13, 'Oha I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(140, 4, 'Oha Ii', 13, 'Oha Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(141, 1, 'Orerokpe', 13, 'Orerokpe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(142, 2, 'Oviri - Okpe', 13, 'Oviri - Okpe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(143, 10, 'Ughoton', 13, 'Ughoton', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(144, 1, 'Akwukwu', 14, 'Akwukwu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(145, 2, 'Ebu', 14, 'Ebu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(146, 4, 'Ibusa I', 14, 'Ibusa I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(147, 5, 'Ibusa Ii', 14, 'Ibusa Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(148, 6, 'Ibusa Iii', 14, 'Ibusa Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(149, 7, 'Ibusa Iv', 14, 'Ibusa Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(150, 8, 'Ibusa V', 14, 'Ibusa V', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(151, 3, 'Illah', 14, 'Illah', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(152, 9, 'Okpanam', 14, 'Okpanam', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(153, 10, 'Ukala', 14, 'Ukala', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(154, 7, 'Agu', 15, 'Agu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(155, 2, 'Anala - Amakom', 15, 'Anala - Amakom', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(156, 10, 'Cable Point I', 15, 'Cable Point I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(157, 11, 'Cable Point Ii', 15, 'Cable Point Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(158, 1, 'Ogbele / Akpako', 15, 'Ogbele / Akpako', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(159, 3, 'Okwe', 15, 'Okwe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(160, 7, 'Ugbomanta Quarters', 15, 'Ugbomanta Quarters', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(161, 5, 'Umuaji', 15, 'Umuaji', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(162, 4, 'Umuezei', 15, 'Umuezei', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(163, 6, 'Umuonaje', 15, 'Umuonaje', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(164, 9, 'West End', 15, 'West End', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(165, 1, 'Abari', 16, 'Abari', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(166, 4, 'Agoloma', 16, 'Agoloma', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(167, 8, 'Bolou - Angiama', 16, 'Bolou - Angiama', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(168, 10, 'Odorubu / Adobu / Bolou Apelebri', 16, 'Odorubu / Adobu / Bolou Apelebri', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(169, 5, 'Patani Ii', 16, 'Patani Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(170, 6, 'Patani Iii', 16, 'Patani Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(171, 2, 'Patani I', 16, 'Patani I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(172, 3, 'Taware / Kolowara Aven', 16, 'Taware / Kolowara Aven', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(173, 7, 'Toru - Angiama', 16, 'Toru - Angiama', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(174, 9, 'Uduophori', 16, 'Uduophori', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(175, 9, 'Amuokpe', 17, 'Amuokpe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(176, 3, 'Sapele Urban Iii', 17, 'Sapele Urban Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(177, 4, 'Sapele Urban Iv', 17, 'Sapele Urban Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(178, 5, 'Sapele Urban V', 17, 'Sapele Urban V', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(179, 6, 'Sapele Urban Vi', 17, 'Sapele Urban Vi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(180, 7, 'Sapele Urban Vii', 17, 'Sapele Urban Vii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(181, 8, 'Sapele Urban Viii', 17, 'Sapele Urban Viii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(182, 1, 'Sapele Urban I', 17, 'Sapele Urban I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(183, 2, 'Sapele Urban Ii', 17, 'Sapele Urban Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(184, 10, 'Aladja', 18, 'Aladja', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(185, 6, 'Ekete', 18, 'Ekete', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(186, 5, 'Opete / Assagba / Edjophe', 18, 'Opete / Assagba / Edjophe', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(187, 9, 'Orhuwerun', 18, 'Orhuwerun', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(188, 7, 'Ovwian I', 18, 'Ovwian I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(189, 8, 'Ovwian Ii', 18, 'Ovwian Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(190, 1, 'Udu I', 18, 'Udu I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(191, 2, 'Udu Ii', 18, 'Udu Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(192, 3, 'Udu Iii', 18, 'Udu Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(193, 4, 'Udu Iv', 18, 'Udu Iv', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(194, 1, 'Agbarha', 19, 'Agbarha', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(195, 10, 'Agbarho I', 19, 'Agbarho I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(196, 11, 'Agbarho Ii', 19, 'Agbarho Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(197, 8, 'Evwreni', 19, 'Evwreni', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(198, 2, 'Ogor', 19, 'Ogor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(199, 3, 'Orogun I', 19, 'Orogun I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(200, 4, 'Orogun Ii', 19, 'Orogun Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(201, 5, 'Ughelli I', 19, 'Ughelli I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(202, 6, 'Ughelli Ii', 19, 'Ughelli Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(203, 7, 'Ughelli Iii', 19, 'Ughelli Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(204, 9, 'Uwheru', 19, 'Uwheru', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(205, 6, 'Effurun - Otor', 20, 'Effurun - Otor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(206, 7, 'Ekakpamre', 20, 'Ekakpamre', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(207, 8, 'Jeremi I', 20, 'Jeremi I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(208, 9, 'Jeremi Ii', 20, 'Jeremi Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(209, 10, 'Jeremi Iii', 20, 'Jeremi Iii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(210, 4, 'Olomu I', 20, 'Olomu I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(211, 5, 'Olomu Ii', 20, 'Olomu Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(212, 2, 'Akoku', 21, 'Akoku', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(213, 6, 'Amai', 21, 'Amai', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(214, 3, 'Ebedei', 21, 'Ebedei', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(215, 5, 'Eziokpor', 21, 'Eziokpor', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(216, 6, 'Ezionum', 21, 'Ezionum', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(217, 9, 'Obiaruku I', 21, 'Obiaruku I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(218, 10, 'Obiaruku Ii', 21, 'Obiaruku Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(219, 8, 'Umuebu', 21, 'Umuebu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(220, 4, 'Umukwata', 21, 'Umukwata', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(221, 1, 'Umutu', 21, 'Umutu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(222, 8, 'Army Barracks Area', 22, 'Army Barracks Area', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(223, 1, 'Effurun I', 22, 'Effurun I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(224, 2, 'Effurun Ii', 22, 'Effurun Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(225, 9, 'Ekpan I', 22, 'Ekpan I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(226, 12, 'Ekpan Ii', 22, 'Ekpan Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(227, 3, 'Enerhen I', 22, 'Enerhen I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(228, 4, 'Enerhen Ii', 22, 'Enerhen Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(229, 7, 'Ugbomro / Ugbolokposo', 22, 'Ugbomro / Ugbolokposo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(230, 5, 'Ugborikoko', 22, 'Ugborikoko', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(231, 6, 'Ugboroke', 22, 'Ugboroke', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(232, 0, 'Ebrohimi', 33, 'Ebrohimi', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(233, 0, 'Eghoro', 33, 'Eghoro', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(234, 0, 'Gbokoda', 33, 'Gbokoda', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(235, 0, 'Isekelewu ( Egbema Ii )', 33, 'Isekelewu ( Egbema Ii )', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(236, 0, 'Koko I', 33, 'Koko I', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(237, 0, 'Koko Ii', 33, 'Koko Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(238, 0, 'Ogbinbiri', 33, 'Ogbinbiri', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(239, 0, 'Ogbudugudu ( Egbema Iv )', 33, 'Ogbudugudu ( Egbema Iv )', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(240, 0, 'Ogheye', 33, 'Ogheye', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(241, 0, 'Opuama', 33, 'Opuama', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(242, 0, 'Bowen', 34, 'Bowen', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(243, 0, 'Edjeba', 34, 'Edjeba', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(244, 0, 'G.r.a', 34, 'G.r.a', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(245, 0, 'Igbudu', 34, 'Igbudu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(246, 0, 'Obodo / Omadino', 34, 'Obodo / Omadino', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(247, 0, 'Ode - Itsekiri', 34, 'Ode - Itsekiri', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(248, 0, 'Ogunu / Ekurede - Urhobo', 34, 'Ogunu / Ekurede - Urhobo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(249, 0, 'Okere', 34, 'Okere', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(250, 0, 'Okumagba', 34, 'Okumagba', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(251, 0, 'Okumagba Ii', 34, 'Okumagba Ii', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(252, 0, 'Pessu', 34, 'Pessu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(253, 0, 'Ugbuwangue / Ekurede - Itsekiri', 34, 'Ugbuwangue / Ekurede - Itsekiri', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(254, 0, 'Aja - Udaibo', 35, 'Aja - Udaibo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(255, 0, 'Akpikpa', 35, 'Akpikpa', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(256, 0, 'Gbaramatu', 35, 'Gbaramatu', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(257, 0, 'Isaba', 35, 'Isaba', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(258, 0, 'Madangho', 35, 'Madangho', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(259, 0, 'Ogbe - Ijoh', 35, 'Ogbe - Ijoh', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(260, 0, 'Ogidigben', 35, 'Ogidigben', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(261, 0, 'Oporoza', 35, 'Oporoza', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(262, 0, 'Orere', 35, 'Orere', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL),
(263, 0, 'Ugborodo', 35, 'Ugborodo', 'Bincom', '0000-00-00 00:00:00', '127.0.0.1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_names`
--
ALTER TABLE `agent_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_names_polling_unit_id_foreign` (`polling_unit_id`);

--
-- Indexes for table `announced_lga_results`
--
ALTER TABLE `announced_lga_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announced_lga_results_lga_id_foreign` (`lga_id`);

--
-- Indexes for table `announced_pu_results`
--
ALTER TABLE `announced_pu_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announced_pu_results_polling_unit_id_foreign` (`polling_unit_id`);

--
-- Indexes for table `announced_state_results`
--
ALTER TABLE `announced_state_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announced_ward_results`
--
ALTER TABLE `announced_ward_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `polling_units`
--
ALTER TABLE `polling_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polling_units_ward_id_foreign` (`ward_id`),
  ADD KEY `polling_units_lga_id_foreign` (`lga_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wards_lga_id_foreign` (`lga_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_names`
--
ALTER TABLE `agent_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `announced_lga_results`
--
ALTER TABLE `announced_lga_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `announced_pu_results`
--
ALTER TABLE `announced_pu_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `announced_state_results`
--
ALTER TABLE `announced_state_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announced_ward_results`
--
ALTER TABLE `announced_ward_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `polling_units`
--
ALTER TABLE `polling_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_names`
--
ALTER TABLE `agent_names`
  ADD CONSTRAINT `agent_names_polling_unit_id_foreign` FOREIGN KEY (`polling_unit_id`) REFERENCES `polling_units` (`id`);

--
-- Constraints for table `announced_lga_results`
--
ALTER TABLE `announced_lga_results`
  ADD CONSTRAINT `announced_lga_results_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`);

--
-- Constraints for table `announced_pu_results`
--
ALTER TABLE `announced_pu_results`
  ADD CONSTRAINT `announced_pu_results_polling_unit_id_foreign` FOREIGN KEY (`polling_unit_id`) REFERENCES `polling_units` (`id`);

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `polling_units`
--
ALTER TABLE `polling_units`
  ADD CONSTRAINT `polling_units_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`),
  ADD CONSTRAINT `polling_units_ward_id_foreign` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`);

--
-- Constraints for table `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
