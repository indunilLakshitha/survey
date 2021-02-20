-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 05:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd_records`
--

CREATE TABLE `cd_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cd_records`
--

INSERT INTO `cd_records` (`id`, `user_id`, `cd_no`, `map_no`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', '1', NULL, NULL),
(2, NULL, '2', '213213', '2021-02-20 10:37:39', '2021-02-20 10:37:39'),
(3, NULL, '3', '213213', '2021-02-20 10:43:47', '2021-02-20 10:43:47'),
(4, '1', '4', '213213', '2021-02-20 10:44:27', '2021-02-20 10:44:27'),
(5, '1', '5', '213213', '2021-02-20 10:46:04', '2021-02-20 10:46:04'),
(6, '1', '6', '213213', '2021-02-20 10:46:06', '2021-02-20 10:46:06'),
(7, '1', '7', '213213', '2021-02-20 10:46:07', '2021-02-20 10:46:07'),
(8, '1', '8', '213213', '2021-02-20 10:46:09', '2021-02-20 10:46:09'),
(9, '1', '9', '213213', '2021-02-20 10:46:10', '2021-02-20 10:46:10'),
(10, '1', '10', '213213', '2021-02-20 10:46:11', '2021-02-20 10:46:11'),
(11, '1', '11', '213213', '2021-02-20 10:46:13', '2021-02-20 10:46:13'),
(12, '1', '12', '213213', '2021-02-20 10:46:14', '2021-02-20 10:46:14'),
(13, '1', '13', '213213', '2021-02-20 10:46:16', '2021-02-20 10:46:16'),
(14, '1', '14', '213213', '2021-02-20 10:46:17', '2021-02-20 10:46:17'),
(15, '1', '15', '213213', '2021-02-20 10:46:18', '2021-02-20 10:46:18'),
(16, '1', '16', '213213', '2021-02-20 10:46:20', '2021-02-20 10:46:20'),
(17, '1', '17', '213213', '2021-02-20 10:46:22', '2021-02-20 10:46:22'),
(18, '1', '18', '213213', '2021-02-20 10:46:23', '2021-02-20 10:46:23'),
(19, '1', '19', '213213', '2021-02-20 10:46:24', '2021-02-20 10:46:24'),
(20, '1', '20', '213213', '2021-02-20 10:46:25', '2021-02-20 10:46:25'),
(21, '1', '21', '213213', '2021-02-20 10:46:26', '2021-02-20 10:46:26'),
(22, '1', '22', '213213', '2021-02-20 10:46:28', '2021-02-20 10:46:28'),
(23, '1', '23', '213213', '2021-02-20 10:46:29', '2021-02-20 10:46:29'),
(24, '1', '24', '213213', '2021-02-20 10:46:31', '2021-02-20 10:46:31'),
(25, '1', '25', '213213', '2021-02-20 10:46:32', '2021-02-20 10:46:32'),
(26, '1', '25', '213213', '2021-02-20 10:46:33', '2021-02-20 10:46:33'),
(27, '1', '27', 'sfdsfsdf', '2021-02-20 10:47:53', '2021-02-20 10:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2021_02_17_195815_create_cd_records_table', 2);

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'indunil lakshitha', 'skgindunil@gmail.com', NULL, '$2y$10$3mVh.nqQI79b4QuhE5Euj.jjLrAUZakker4SPlq41xDl7RxZ8X3ci', NULL, '2021-02-17 14:21:47', '2021-02-17 14:21:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd_records`
--
ALTER TABLE `cd_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cd_records`
--
ALTER TABLE `cd_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
