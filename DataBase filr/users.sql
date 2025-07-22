-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 11:46 AM
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
