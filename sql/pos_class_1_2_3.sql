-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 12:42 PM
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
-- Database: `pos_class_1_2_3`
--

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Apples', 9, '2025-04-01 03:08:11', '2025-04-05 04:12:56'),
(4, 'HP Camera', 9, '2025-04-01 03:33:18', '2025-04-03 18:08:09'),
(5, 'Dell PC', 9, '2025-04-01 04:01:27', '2025-04-03 12:01:50'),
(7, 'Honda', 11, '2025-04-01 05:30:32', '2025-04-01 05:30:32'),
(8, 'Giga Byte', 11, '2025-04-01 05:30:56', '2025-04-01 05:30:56'),
(9, 'Lenovo', 11, '2025-04-01 05:31:05', '2025-04-01 05:31:05'),
(10, 'Lenovo', 9, '2025-04-03 00:00:32', '2025-04-03 00:00:32'),
(11, 'Toyota', 9, '2025-04-03 00:02:06', '2025-04-03 00:02:06'),
(12, 'Honda', 9, '2025-04-03 00:03:29', '2025-04-03 00:03:29'),
(21, 'Nokia', 9, '2025-04-03 00:43:31', '2025-04-03 00:43:31'),
(22, 'Shaome', 9, '2025-04-03 00:43:48', '2025-04-05 04:03:45'),
(23, 'Samsung', 9, '2025-04-03 00:43:52', '2025-04-05 04:03:58'),
(24, 'prado', 9, '2025-04-03 00:43:56', '2025-04-05 04:04:30'),
(25, 'Limongi', 9, '2025-04-03 00:44:02', '2025-04-05 04:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Shamin Shafquat', 'shamin.shafquat@yahoo.com', '01322830000', 9, '2025-04-01 04:35:22', '2025-04-01 04:35:22'),
(2, 'Zarif. Ishraq', 'engr.shams@yahoo.com', '01322830000', 9, '2025-04-01 04:35:56', '2025-04-01 04:37:12'),
(4, 'Polok Faiaz', 'polok.faiaz@gmail.com', '01912528253', 11, '2025-04-01 05:40:38', '2025-04-01 05:40:38'),
(5, 'Rezaul Islam', 'reza.islam@gmail.com', '01912528253', 11, '2025-04-01 05:50:12', '2025-04-01 05:50:12'),
(8, 'Kamal Ahmed', 'kamal@gmail.com', '012834685436', 9, '2025-04-03 03:33:09', '2025-04-03 03:34:52'),
(9, 'Salim Mridha', 'salim@salim.com', '0172947290723', 9, '2025-04-03 03:33:30', '2025-04-03 03:35:03');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `payable` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `discount`, `vat`, `payable`, `user_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(8, '100', '10', '10', '100', 11, 4, '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(12, '100', '10', '10', '100', 11, 4, '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(16, '100', '10', '10', '100', 9, 4, '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(19, '1944', '100', '0', '1844', 9, 1, '2025-04-04 09:30:16', '2025-04-04 09:30:16'),
(20, '38', '2', '1.9', '37.9', 9, 1, '2025-04-04 10:15:18', '2025-04-04 10:15:18'),
(22, '986', '9.86', '49.3', '1025.44', 9, 2, '2025-04-04 10:25:56', '2025-04-04 10:25:56'),
(24, '150000', '3000', '7500', '154500', 9, 2, '2025-04-04 22:14:05', '2025-04-04 22:14:05'),
(25, '310000', '2000', '15500', '323500', 9, 8, '2025-04-04 22:16:57', '2025-04-04 22:16:57'),
(26, '390000', '5000', '19500', '404500', 9, 9, '2025-04-04 22:18:41', '2025-04-04 22:18:41'),
(27, '30000', '0', '0', '0', 9, 1, '2025-04-04 22:54:31', '2025-04-04 22:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) NOT NULL,
  `sale_price` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(4, 8, 4, 11, '1', '400', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(5, 8, 5, 11, '1', '500', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(10, 12, 4, 11, '1', '400', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(11, 12, 5, 11, '1', '500', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(20, 16, 4, 9, '1', '400', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(21, 16, 5, 9, '1', '500', '2025-04-01 05:41:53', '2025-04-01 05:41:53'),
(27, 19, 12, 9, '2', '972', '2025-04-04 09:30:16', '2025-04-04 09:30:16'),
(28, 20, 1, 9, '1', '1', '2025-04-04 10:15:18', '2025-04-04 10:15:18'),
(29, 20, 9, 9, '3', '12', '2025-04-04 10:15:18', '2025-04-04 10:15:18'),
(30, 20, 11, 9, '1', '1', '2025-04-04 10:15:18', '2025-04-04 10:15:18'),
(31, 22, 9, 9, '1', '12', '2025-04-04 10:25:56', '2025-04-04 10:25:56'),
(32, 22, 12, 9, '1', '972', '2025-04-04 10:25:56', '2025-04-04 10:25:56'),
(33, 22, 10, 9, '1', '2', '2025-04-04 10:25:56', '2025-04-04 10:25:56'),
(35, 24, 1, 9, '1', '150000', '2025-04-04 22:14:05', '2025-04-04 22:14:05'),
(36, 25, 1, 9, '1', '150000', '2025-04-04 22:16:57', '2025-04-04 22:16:57'),
(37, 25, 9, 9, '1', '90000', '2025-04-04 22:16:57', '2025-04-04 22:16:57'),
(38, 25, 10, 9, '1', '40000', '2025-04-04 22:16:57', '2025-04-04 22:16:57'),
(39, 25, 11, 9, '1', '30000', '2025-04-04 22:16:57', '2025-04-04 22:16:57'),
(40, 26, 1, 9, '2', '150000', '2025-04-04 22:18:41', '2025-04-04 22:18:41'),
(41, 26, 11, 9, '3', '30000', '2025-04-04 22:18:41', '2025-04-04 22:18:41'),
(42, 27, 11, 9, '1', '30000', '2025-04-04 22:54:31', '2025-04-04 22:54:31');

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
(4, '2025_03_31_100708_create_categories_table', 1),
(5, '2025_03_31_100720_create_products_table', 1),
(6, '2025_03_31_100809_create_customers_table', 1),
(7, '2025_03_31_100837_create_invoices_table', 1),
(8, '2025_03_31_100853_create_invoice_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `unit`, `image`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 150000, '6', 'uploads/1743713054.jpg', 9, 1, '2025-04-01 03:59:53', '2025-04-04 22:18:41'),
(4, 'Honda 150', 270000, '3', NULL, 11, 7, '2025-04-01 05:31:47', '2025-04-01 05:50:26'),
(5, 'Gigabyte I7', 90000, '13', NULL, 11, 8, '2025-04-01 05:32:15', '2025-04-01 05:50:26'),
(6, 'Lenovo I7', 90000, '15', NULL, 11, 9, '2025-04-01 05:32:32', '2025-04-01 05:32:32'),
(9, 'Samsung', 90000, '14', 'uploads/1743712594.jpg', 9, 23, '2025-04-03 14:36:34', '2025-04-04 22:16:57'),
(10, 'Nokia', 40000, '39', 'uploads/1743712883.jpg', 9, 21, '2025-04-03 14:40:07', '2025-04-04 22:16:57'),
(11, 'Shaome', 30000, '45', NULL, 9, 22, '2025-04-03 15:11:55', '2025-04-04 22:54:31'),
(12, 'Miriam Randall', 972, '0', 'uploads/1743716108.jpg', 9, 10, '2025-04-03 15:35:08', '2025-04-04 10:25:56');

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
('9lDZSgieTm2K63APFhaMa9Q47ImugdYlpF3Q4Zf4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTo1OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiRUtKSnFoNUdhQlFWSDVYTFh5WnBRcXJuM2RHQnBzSkRGMVE3SkxLOSI7czo1OiJlbWFpbCI7czoxOToiZW5nci5zYW1zQGdtYWlsLmNvbSI7czo3OiJ1c2VyX2lkIjtpOjk7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9DYXRlZ29yeVBhZ2UiO319', 1743849100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `email_verified_at`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Test User', '1234567890', 'test@gmail.com', '2025-03-31 04:40:55', '0', '$2y$12$ap8ROaRVABKLGTd2FqmRuuZI0sSzXt66mISrGbvkkp8/qf6fL9vCC', 's1KZXDLyKa', '2025-03-31 04:40:56', '2025-03-31 04:40:56'),
(7, 'admin', '1234567890', 'admin@gmail.com', NULL, '0', '$2y$12$25Ak87/o9Y.ubbqqfIEsLe44eLimzM2u2oiqaEM319LFyQa2PrlzS', NULL, '2025-03-31 04:40:56', '2025-03-31 04:40:56'),
(9, 'Engr. Sams', '01322830001', 'engr.sams@gmail.com', '2025-03-31 05:16:47', '0', 'xyz', 'gzXeeRGj75', '2025-03-31 05:16:47', '2025-04-05 03:30:56'),
(11, 'Zarif Ishraq', '01322830000', 'zarif.ishraq@gmail.com', '2025-04-01 01:22:20', '0', 'password', 'xVhWFRwpEz', '2025-04-01 01:22:21', '2025-04-01 01:22:21'),
(12, 'Luban Meahda', '09286912864', 'abc@gmail.com', '2025-04-02 08:25:40', '0', 'abc', 'oeVze6KL2r', '2025-04-02 08:25:40', '2025-04-02 08:25:40'),
(13, 'Kamran Mridha', '012749147', 'xyz@abc.com', '2025-04-02 08:40:45', '0', 'abc', 'f8lJwcHcr6', '2025-04-02 08:40:46', '2025-04-02 08:40:46'),
(14, 'Engr. Suhaan', '01912528253', 'engr.shams@yahoo.com', '2025-04-05 04:10:33', '0', 'abc', 'wApmBKn0cY', '2025-04-05 04:10:33', '2025-04-05 04:12:23'),
(15, 'a', '09286912864', 'abcd@gmail.com', '2025-04-05 04:11:13', '0', 'asd', 'HBiyfZP2BZ', '2025-04-05 04:11:13', '2025-04-05 04:11:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
