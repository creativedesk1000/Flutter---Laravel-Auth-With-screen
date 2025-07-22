-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 11:47 AM
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
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_contollers`
--

CREATE TABLE `api_contollers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_contollers`
--

INSERT INTO `api_contollers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'waqar', 'waar@gmail.com', 'ahsdsa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_22_061657_create_api_contollers_table', 1),
(5, '2025_07_22_070657_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 13, 'mobile', '1b5caa18182a24f7967c50447c95eb0ce83a4865d284313916e5f0ba15d40cfa', '[\"*\"]', NULL, NULL, '2025-07-22 02:11:31', '2025-07-22 02:11:31'),
(2, 'App\\Models\\User', 14, 'mobile', '2cda578b39342d89d01417e03e7bd425660690163a8ccfa0e0758cb23990b071', '[\"*\"]', NULL, NULL, '2025-07-22 02:15:59', '2025-07-22 02:15:59'),
(3, 'App\\Models\\User', 14, 'mobile', 'c3551ec131ef577cc4f4ea1dd076353436ac735498e4ecdb00ca4a77ff27d074', '[\"*\"]', NULL, NULL, '2025-07-22 02:17:34', '2025-07-22 02:17:34'),
(4, 'App\\Models\\User', 14, 'mobile', 'dc1596a1990f0482f4973fcfe94065a1698ea57f7cab75d0647c988069e17b15', '[\"*\"]', NULL, NULL, '2025-07-22 02:17:47', '2025-07-22 02:17:47'),
(5, 'App\\Models\\User', 15, 'mobile', '4747bcf5e155413fa8bd9fc41c4178131fc439fe87af1ecb912ae42989d23ecf', '[\"*\"]', NULL, NULL, '2025-07-22 02:30:52', '2025-07-22 02:30:52'),
(6, 'App\\Models\\User', 16, 'mobile', '39de5414091fe7a4ca79b2ada8a692eec5df238768e5c1dfa14ade7c7c87f2b5', '[\"*\"]', NULL, NULL, '2025-07-22 02:33:17', '2025-07-22 02:33:17'),
(7, 'App\\Models\\User', 13, 'mobile', 'c3a4b4a7157e4d6e1f61be393cb5dd730119277693dc7c0ee7b5982894a663db', '[\"*\"]', NULL, NULL, '2025-07-22 02:34:25', '2025-07-22 02:34:25'),
(8, 'App\\Models\\User', 13, 'mobile', '29f176e803129c8197399010c76687c03278e40b06127d680d04b22e55ff0a0a', '[\"*\"]', NULL, NULL, '2025-07-22 02:34:47', '2025-07-22 02:34:47'),
(9, 'App\\Models\\User', 17, 'mobile', '4c9468d27ac33de7ccf758309d9a8ba0867953a7a86a421f57f3bb8723933cda', '[\"*\"]', NULL, NULL, '2025-07-22 03:08:26', '2025-07-22 03:08:26'),
(10, 'App\\Models\\User', 17, 'mobile', '7438a5d5888390957ca46760dd28dd6231019d3953082e902db1c2ce57c2732a', '[\"*\"]', NULL, NULL, '2025-07-22 03:09:55', '2025-07-22 03:09:55'),
(11, 'App\\Models\\User', 17, 'mobile', '20073294a7e946e341c9d047bed3295ca050dda1407565a28c5b1387c91a0dfb', '[\"*\"]', NULL, NULL, '2025-07-22 03:14:41', '2025-07-22 03:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7UAS4N7SPwoJe48bjpne3Vnuy62kme9IQlN0ujWy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2p1Mk9YbmpiTWJkdmd2QlB6WXNkalZydGdqNGxudTNuSTlXRXV6TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753167506),
('8fM47bbTu8JU7LGu6cC9wiiN8eSlADkkJTjNHehV', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDNWYmpyZFBxS0VWQUh0ZVZMTjlIZ01UeWRsOXA5VW1oWEpNS3FNUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753168307);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahetsham', 'atsham@gmail.com', NULL, '12345678', NULL, NULL, NULL),
(2, 'Ali', 'ali@gmail.com', NULL, '87654321', NULL, NULL, NULL),
(13, 'Jane Doe', 'jane@example.com', NULL, '$2y$12$FdEQ6RPmwd8ygQhg/5XlBOfgzNsq9iQvwaTTEor7zAW5/Hr9CiTwS', NULL, '2025-07-22 02:11:31', '2025-07-22 02:11:31'),
(14, 'Ahtesha,m', 'ahtesham@gmail.com', NULL, '$2y$12$2hWkzwN/Csq5D4Qaz8QoAOH6Krtn5hUEo/O5rLQ2kOBIbUfPOYzCe', NULL, '2025-07-22 02:15:59', '2025-07-22 02:15:59'),
(15, 'ALI', 'wali@gmail.com', NULL, '$2y$12$6alnVrK6oi8TfmyHF4EDA.di.vbx0TUcU5zixwOVyIWCVWlLFSN0m', NULL, '2025-07-22 02:30:52', '2025-07-22 02:30:52'),
(16, 'Jonas Kahnwald', 'jonas@gmail.com', NULL, '$2y$12$cXs9vhAaww0A4SMmsfJBGOcZuSeYnonnrsd7l8LQPMIZhFlc9MhYy', NULL, '2025-07-22 02:33:17', '2025-07-22 02:33:17'),
(17, 'Jonas Kahnwald', 'jonas_kahnwald@gmail.com', NULL, '$2y$12$mw/mqRqJexBJQbsaLxJJ.OO27i2aSVUyrPEHRpXJWBfTO.k7w/XA.', NULL, '2025-07-22 03:08:25', '2025-07-22 03:08:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_contollers`
--
ALTER TABLE `api_contollers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_contollers_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `api_contollers`
--
ALTER TABLE `api_contollers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
