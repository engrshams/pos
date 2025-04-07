-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 05:36 PM
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
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 1, 1, NULL, '2025-04-06 03:15:36'),
(2, 'Sony', 1, 1, NULL, '2025-04-06 03:15:42'),
(3, 'LG', 1, 1, NULL, NULL),
(4, 'IKEA', 1, 2, NULL, NULL),
(5, 'Ashley', 1, 2, NULL, NULL),
(6, 'Wayfair', 1, 2, NULL, NULL),
(7, 'Nike', 1, 3, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(8, 'Adidas', 1, 3, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(9, 'Puma', 1, 3, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(10, 'Penguin', 1, 4, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(11, 'HarperCollins', 1, 4, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(12, 'Random House', 1, 4, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(13, 'LEGO', 1, 5, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(14, 'Hasbro', 1, 5, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(15, 'Mattel', 1, 5, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(16, 'L’Oreal', 1, 6, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(17, 'Estee Lauder', 1, 6, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(18, 'Maybelline', 1, 6, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(19, 'Ford', 1, 7, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(20, 'Chevrolet', 1, 7, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(21, 'Toyota', 1, 7, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(22, 'CVS', 1, 8, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(23, 'Walgreens', 1, 8, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(24, 'GNC', 1, 8, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(25, 'Scotts', 1, 9, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(26, 'Miracle-Gro', 1, 9, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(27, 'GardenWay', 1, 9, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(28, 'Paper Mate', 1, 10, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(29, 'BIC', 1, 10, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(30, 'Pilot', 1, 10, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(31, 'Nestle', 1, 11, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(32, 'Kellogg\'s', 1, 11, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(33, 'General Mills', 1, 11, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(34, 'Coca-Cola', 1, 12, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(35, 'Pepsi', 1, 12, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(36, 'Sprite', 1, 12, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(37, 'Clorox', 1, 13, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(38, 'Lysol', 1, 13, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(39, 'P&G', 1, 13, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(40, 'Pedigree', 1, 14, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(41, 'Purina', 1, 14, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(42, 'Kong', 1, 14, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(43, 'Staples', 1, 15, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(44, 'Office Depot', 1, 15, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(45, '3M', 1, 15, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(46, 'Tiffany & Co.', 1, 16, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(47, 'Cartier', 1, 16, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(48, 'Bvlgari', 1, 16, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(49, 'Nike', 1, 17, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(50, 'Adidas', 1, 17, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(51, 'Reebok', 1, 17, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(52, 'Ray-Ban', 1, 18, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(53, 'Fossil', 1, 18, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(54, 'Michael Kors', 1, 18, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(55, 'Rolex', 1, 19, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(56, 'Omega', 1, 19, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(57, 'Casio', 1, 19, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(58, 'Samsonite', 1, 20, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(59, 'Tumi', 1, 20, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(61, 'Physiology', 1, 4, '2025-04-06 05:19:23', '2025-04-06 05:19:23');

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
(1, 'Electronics', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(2, 'Furniture', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(3, 'Sports', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(4, 'Books', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(5, 'Toys', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(6, 'Beauty', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(7, 'Automotive', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(8, 'Health', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(9, 'Gardening', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(10, 'Stationery', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(11, 'Food', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(12, 'Beverages', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(13, 'Household', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(14, 'Pet Supplies', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(15, 'Office Supplies', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(16, 'Jewelry', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(17, 'Footwear', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(18, 'Accessories', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(19, 'Watches', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(20, 'Luggage', 1, '2025-04-05 11:56:27', '2025-04-05 11:56:27');

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
(1, 'John Doe', 'johndoe@example.com', '1234567890', 1, NULL, NULL),
(2, 'Jane Smith', 'janesmith@example.com', '0987654321', 1, NULL, NULL),
(3, 'Alice Johnson', 'alicejohnson@example.com', '1122334455', 1, NULL, NULL),
(4, 'Bob Brown', 'bobbrown@example.com', '2233445566', 1, NULL, NULL),
(5, 'Charlie Davis', 'charliedavis@example.com', '3344556677', 1, NULL, NULL),
(6, 'David Miller', 'davidmiller@example.com', '4455667788', 1, NULL, NULL),
(7, 'Emma Wilson', 'emmawilson@example.com', '5566778899', 1, NULL, NULL),
(8, 'Frank Moore', 'frankmoore@example.com', '6677889900', 1, NULL, NULL),
(9, 'Grace Taylor', 'gracetaylor@example.com', '7788990011', 1, NULL, NULL),
(10, 'Henry Anderson', 'henryanderson@example.com', '8899001122', 1, NULL, NULL),
(11, 'Ivy Thomas', 'ivythomas@example.com', '9900112233', 1, NULL, NULL),
(12, 'Jack Harris', 'jackharris@example.com', '1011122233', 1, NULL, NULL),
(13, 'Kathy Clark', 'kathyclark@example.com', '2022233344', 1, NULL, NULL),
(14, 'Liam Lewis', 'liamlewis@example.com', '3033344455', 1, NULL, NULL),
(15, 'Megan Young', 'meganyoung@example.com', '4044455566', 1, NULL, NULL),
(17, 'Brenden Chan', 'tyqa@mailinator.com', '+1 (488) 358-7629', 1, '2025-04-06 08:23:36', '2025-04-06 08:25:34'),
(18, 'Noelle Turner', 'cucojovaji@s', '+1 (112) 662-8793', 1, '2025-04-06 08:26:25', '2025-04-06 08:26:40');

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
(1, '1786.95', '35.739', '89.3475', '1840.5585', 1, 1, '2025-04-05 12:27:54', '2025-04-05 12:27:54'),
(2, '210.96', '10', '10.548', '211.508', 1, 5, '2025-04-05 12:29:02', '2025-04-05 12:29:02'),
(3, '1864.98', '0', '93.249', '1958.229', 1, 8, '2025-04-05 12:29:41', '2025-04-05 12:29:41'),
(4, '3219.97', '64.3994', '0', '3155.5706', 1, 9, '2025-04-05 12:30:17', '2025-04-05 12:30:17'),
(5, '564.99', '12', '28.2495', '581.2395', 1, 4, '2025-04-05 12:30:39', '2025-04-05 12:30:39'),
(6, '342.98', '5', '17.149', '355.129', 1, 15, '2025-04-05 12:30:57', '2025-04-05 12:30:57'),
(7, '136.98', '13.698', '6.849', '130.131', 1, 9, '2025-04-05 12:31:17', '2025-04-05 12:31:17'),
(8, '93.97', '5', '4.6985', '93.6685', 1, 9, '2025-04-05 12:31:34', '2025-04-05 12:31:34'),
(9, '139.98', '5', '6.999', '141.979', 1, 7, '2025-04-05 12:32:04', '2025-04-05 12:32:04'),
(10, '24.98', '0', '1.249', '26.229', 1, 5, '2025-04-05 12:33:00', '2025-04-05 12:33:00'),
(11, '203.99', '4.1895', '10.1995', '210', 1, 5, '2025-04-05 12:33:24', '2025-04-05 12:33:24'),
(12, '98.98', '3.929', '4.949', '100', 1, 3, '2025-04-05 12:33:45', '2025-04-05 12:33:45'),
(13, '6500000', '50000', '325000', '6775000', 1, 5, '2025-04-06 05:40:30', '2025-04-06 05:40:30'),
(14, '364.99', '3.2395', '18.2495', '380', 1, 9, '2025-04-06 08:03:45', '2025-04-06 08:03:45');

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
(1, 1, 1, 1, '2', '799.99', '2025-04-05 12:27:54', '2025-04-05 12:27:54'),
(2, 1, 6, 1, '2', '65', '2025-04-05 12:27:54', '2025-04-05 12:27:54'),
(3, 1, 8, 1, '3', '18.99', '2025-04-05 12:27:54', '2025-04-05 12:27:54'),
(4, 2, 6, 1, '1', '65', '2025-04-05 12:29:02', '2025-04-05 12:29:02'),
(5, 2, 18, 1, '2', '12.99', '2025-04-05 12:29:02', '2025-04-05 12:29:02'),
(6, 2, 9, 1, '2', '59.99', '2025-04-05 12:29:02', '2025-04-05 12:29:02'),
(7, 3, 2, 1, '1', '1299.99', '2025-04-05 12:29:41', '2025-04-05 12:29:41'),
(8, 3, 3, 1, '1', '499.99', '2025-04-05 12:29:41', '2025-04-05 12:29:41'),
(9, 3, 6, 1, '1', '65', '2025-04-05 12:29:41', '2025-04-05 12:29:41'),
(10, 4, 5, 1, '2', '120', '2025-04-05 12:30:17', '2025-04-05 12:30:17'),
(11, 4, 10, 1, '1', '79.99', '2025-04-05 12:30:17', '2025-04-05 12:30:17'),
(12, 4, 2, 1, '2', '1299.99', '2025-04-05 12:30:17', '2025-04-05 12:30:17'),
(13, 4, 29, 1, '2', '150', '2025-04-05 12:30:17', '2025-04-05 12:30:17'),
(14, 5, 3, 1, '1', '499.99', '2025-04-05 12:30:39', '2025-04-05 12:30:39'),
(15, 5, 6, 1, '1', '65', '2025-04-05 12:30:39', '2025-04-05 12:30:39'),
(16, 6, 5, 1, '1', '120', '2025-04-05 12:30:57', '2025-04-05 12:30:57'),
(17, 6, 9, 1, '1', '59.99', '2025-04-05 12:30:57', '2025-04-05 12:30:57'),
(18, 6, 18, 1, '1', '12.99', '2025-04-05 12:30:57', '2025-04-05 12:30:57'),
(19, 6, 29, 1, '1', '150', '2025-04-05 12:30:57', '2025-04-05 12:30:57'),
(20, 7, 7, 1, '1', '14.99', '2025-04-05 12:31:17', '2025-04-05 12:31:17'),
(21, 7, 5, 1, '1', '120', '2025-04-05 12:31:17', '2025-04-05 12:31:17'),
(22, 7, 19, 1, '1', '1.99', '2025-04-05 12:31:17', '2025-04-05 12:31:17'),
(23, 8, 7, 1, '1', '14.99', '2025-04-05 12:31:34', '2025-04-05 12:31:34'),
(24, 8, 8, 1, '1', '18.99', '2025-04-05 12:31:34', '2025-04-05 12:31:34'),
(25, 8, 9, 1, '1', '59.99', '2025-04-05 12:31:34', '2025-04-05 12:31:34'),
(26, 9, 6, 1, '1', '65', '2025-04-05 12:32:04', '2025-04-05 12:32:04'),
(27, 9, 7, 1, '1', '14.99', '2025-04-05 12:32:04', '2025-04-05 12:32:04'),
(28, 9, 9, 1, '1', '59.99', '2025-04-05 12:32:04', '2025-04-05 12:32:04'),
(29, 10, 8, 1, '1', '18.99', '2025-04-05 12:33:00', '2025-04-05 12:33:00'),
(30, 10, 20, 1, '1', '5.99', '2025-04-05 12:33:00', '2025-04-05 12:33:00'),
(31, 11, 5, 1, '1', '120', '2025-04-05 12:33:24', '2025-04-05 12:33:24'),
(32, 11, 6, 1, '1', '65', '2025-04-05 12:33:24', '2025-04-05 12:33:24'),
(33, 11, 8, 1, '1', '18.99', '2025-04-05 12:33:24', '2025-04-05 12:33:24'),
(34, 12, 6, 1, '1', '65', '2025-04-05 12:33:45', '2025-04-05 12:33:45'),
(35, 12, 7, 1, '1', '14.99', '2025-04-05 12:33:45', '2025-04-05 12:33:45'),
(36, 12, 8, 1, '1', '18.99', '2025-04-05 12:33:45', '2025-04-05 12:33:45'),
(37, 13, 37, 1, '1', '6500000', '2025-04-06 05:40:30', '2025-04-06 05:40:30'),
(38, 14, 4, 1, '1', '299.99', '2025-04-06 08:03:45', '2025-04-06 08:03:45'),
(39, 14, 6, 1, '1', '65', '2025-04-06 08:03:45', '2025-04-06 08:03:45');

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
(5, '2025_03_31_100709_create_brands_table', 1),
(6, '2025_03_31_100720_create_products_table', 1),
(7, '2025_03_31_100809_create_customers_table', 1),
(8, '2025_03_31_100837_create_invoices_table', 1),
(9, '2025_03_31_100853_create_invoice_products_table', 1);

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
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `unit`, `image`, `user_id`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy S21', 799.99, '8', 'uploads\\samsung_s21.jpg', 1, 1, 1, '2025-04-05 11:56:27', '2025-04-05 12:27:54'),
(2, 'Samsung Smart TV', 1299.99, '0', 'uploads\\samsung_tv.jpg', 1, 1, 1, '2025-04-05 11:56:27', '2025-04-06 09:07:11'),
(3, 'IKEA Sofa', 499.99, '6', 'uploads\\ikea_sofa.jpg', 1, 2, 4, '2025-04-05 11:56:27', '2025-04-06 08:36:25'),
(4, 'IKEA Dining Table', 299.99, '4', 'uploads\\ikea_table.jpg', 1, 2, 4, '2025-04-05 11:56:27', '2025-04-06 09:01:42'),
(5, 'Nike Running Shoes', 120, '3', 'uploads\\nike_shoes.jpg', 1, 3, 7, '2025-04-05 11:56:27', '2025-04-06 08:42:55'),
(6, 'Nike Sportswear Hoodie', 65, '0', 'uploads\\nike_hoodie.jpg', 1, 3, 7, '2025-04-05 11:56:27', '2025-04-06 08:03:45'),
(7, 'The Great Gatsby', 14.99, '2', 'uploads\\gatsby.jpg', 1, 4, 10, '2025-04-05 11:56:27', '2025-04-06 09:01:42'),
(8, 'To Kill a Mockingbird', 18.99, '1', 'uploads\\mockingbird.jpg', 1, 4, 10, '2025-04-05 11:56:27', '2025-04-06 09:07:11'),
(9, 'LEGO Star Wars Set', 59.99, '10', 'uploads\\lego_starwars.jpg', 1, 5, 13, '2025-04-05 11:56:27', '2025-04-05 12:32:04'),
(10, 'LEGO Creator Set', 79.99, '19', 'uploads\\lego_creator.jpg', 1, 5, 13, '2025-04-05 11:56:27', '2025-04-05 12:30:17'),
(11, 'L’Oreal Hair Color', 9.99, '9', 'uploads\\loreal_haircolor.jpg', 1, 6, 16, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(12, 'Estee Lauder Foundation', 38, '9', 'uploads\\estee_foundation.jpg', 1, 6, 16, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(13, 'Ford F-150 Truck', 35000, '9', 'uploads\\ford_f150.jpg', 1, 7, 19, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(14, 'Chevrolet Camaro', 42000, '20', 'uploads\\chevrolet_camaro.jpg', 1, 7, 19, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(15, 'CVS Vitamin C Tablets', 8.99, '16', 'uploads\\cvs_vitamin_c.jpg', 1, 8, 22, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(16, 'Clorox Disinfecting Wipes', 4.99, '17', 'uploads\\clorox_wipes.jpg', 1, 8, 37, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(17, 'Scotts Turf Builder', 25.99, '18', 'uploads\\scotts_turf_builder.jpg', 1, 9, 25, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(18, 'Garden Trowel', 12.99, '16', 'uploads\\garden_trowel.jpg', 1, 9, 25, '2025-04-05 11:56:27', '2025-04-05 12:30:57'),
(19, 'Nestle Chocolate Bar', 1.99, '19', 'uploads\\nestle_chocolate.jpg', 1, 11, 31, '2025-04-05 11:56:27', '2025-04-05 12:31:17'),
(20, 'Nestle Instant Coffee', 5.99, '20', 'uploads\\nestle_coffee.jpg', 1, 11, 31, '2025-04-05 11:56:27', '2025-04-05 12:33:00'),
(21, 'Coca-Cola Classic', 1.5, '22', 'uploads\\coca_cola_classic.jpg', 1, 12, 34, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(22, 'Coca-Cola Diet', 1.5, '23', 'uploads\\coca_cola_diet.jpg', 1, 12, 34, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(23, 'Clorox Bleach', 6.99, '24', 'uploads\\clorox_bleach.jpg', 1, 13, 37, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(24, 'Pedigree Dog Food', 18.99, '25', 'uploads\\pedigree_dog_food.jpg', 1, 13, 40, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(25, 'Pedigree Wet Dog Food', 13.99, '26', 'uploads\\pedigree_wet_dog_food.jpg', 1, 14, 40, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(26, 'Pedigree Dog Bones', 4.99, '27', 'uploads\\pedigree_dog_bones.jpg', 1, 14, 40, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(27, 'Staples Printer Paper', 10.99, '28', 'uploads\\staples_printer_paper.jpg', 1, 15, 43, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(28, 'Staples Stapler', 6.99, '29', 'uploads\\staples_stapler.jpg', 1, 15, 43, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(29, 'Tiffany & Co. Silver Necklace', 150, '27', 'uploads\\tiffany_necklace.jpg', 1, 16, 46, '2025-04-05 11:56:27', '2025-04-05 12:30:57'),
(30, 'Tiffany & Co. Diamond Ring', 2500, '31', 'uploads\\tiffany_ring.jpg', 1, 16, 46, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(31, 'Ray-Ban Sunglasses', 159.99, '32', 'uploads\\rayban_sunglasses.jpg', 1, 17, 52, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(32, 'Ray-Ban Aviator', 179.99, '33', 'uploads\\rayban_aviator.jpg', 1, 17, 52, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(33, 'Rolex Submariner', 8000, '34', 'uploads\\rolex_submariner.jpg', 1, 19, 55, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(34, 'Rolex Day-Date', 12000, '35', 'uploads\\rolex_day_date.jpg', 1, 19, 55, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(35, 'Samsonite Suitcase', 149.99, '36', 'uploads\\samsonite_suitcase.jpg', 1, 20, 58, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(36, 'Samsonite Carry-On', 119.99, '37', 'uploads\\samsonite_carryon.jpg', 1, 20, 58, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(37, 'Chevrolet', 6500000, '4', 'uploads/1743939301.jpg', 1, 7, 20, '2025-04-06 05:33:46', '2025-04-06 05:40:30');

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
('gQTDkHN5fkyZ866dQqIToddgOcE1el4oLknhVugr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiaWhvOEJiYkhYUFBlTVowRlkxNFhsWURCZjBtVmhGNnhwY2VWMnRMYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9JbnZvaWNlTGlzdFBhZ2UiO31zOjU6ImVtYWlsIjtzOjE5OiJlbmdyLnNhbXNAZ21haWwuY29tIjtzOjc6InVzZXJfaWQiO2k6MTt9', 1743953625),
('OXzFfUnHjrvpBaV7Au05EoKVbJtCthG0W3F1YXKQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHV6NndsajNtUnlSZ04wVXNvVEYzYXdKcmc5WE5ldWhZZjRqdVd3YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743945472);

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
(1, 'Engr. Shamss', '01912528252', 'engr.sams@gmail.com', NULL, '0', 'abcd', NULL, '2025-04-05 11:56:25', '2025-04-06 09:07:38'),
(2, 'Test User', '1234567890', 'test@gmail.com', '2025-04-05 11:56:27', '0', 'password', 'oepVg6Bh5m', '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(3, 'admin', '1234567890', 'admin@gmail.com', NULL, '0', 'password', NULL, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(4, 'Engr. Shams', '01322830000', 'engr.shams@yahoo.com', NULL, '0', 'password', NULL, '2025-04-05 11:56:27', '2025-04-05 11:56:27'),
(7, 'Kessie Slater', '+1 (636) 711-6266', 'viryzy@mailinator.com', '2025-04-06 08:14:59', '0', 'Pa$$w0rd!', 'AZDh047Y23', '2025-04-06 08:14:59', '2025-04-06 08:14:59'),
(8, 'Tarik Arnold', '+1 (367) 891-8366', 'gykiwoj@mailinator.com', '2025-04-06 08:24:16', '0', 'Pa$$w0rd!', 'q70098lswF', '2025-04-06 08:24:16', '2025-04-06 08:24:16'),
(9, 'Jolie Pope', '+1 (562) 987-6686', 'lezyre@mailinator.com', '2025-04-06 08:31:17', '0', 'Pa$$w0rd!', 'DMwadX66nR', '2025-04-06 08:31:18', '2025-04-06 08:31:18'),
(10, 'Upton Ellis', '+1 (642) 955-3079', 'nysu@mailinator.com', '2025-04-06 08:38:09', '0', 'Pa$$w0rd!', 'Lw4rkjCkm9', '2025-04-06 08:38:09', '2025-04-06 08:38:09'),
(11, 'Jonah Mcpherson', '+1 (964) 756-3719', 'ruwuq@mailinator.com', '2025-04-06 08:39:08', '0', 'Pa$$w0rd!', '3rA1XGdzbG', '2025-04-06 08:39:08', '2025-04-06 08:39:08'),
(12, 'Clio Fowler', '+1 (674) 803-8964', 'hiwyketyga@mailinator.com', '2025-04-06 08:49:42', '0', 'Pa$$w0rd!', 'PGZkAMyDPL', '2025-04-06 08:49:43', '2025-04-06 08:49:43'),
(13, 'Teegan Flores', '+1 (335) 809-8854', 'kywyra@mailinator.com', '2025-04-06 08:54:26', '0', 'Pa$$w0rd!', 'PxDuYcDaya', '2025-04-06 08:54:26', '2025-04-06 08:54:26'),
(14, 'Clark Hull', '+1 (596) 176-6826', 'jaqyk@mailinator.com', '2025-04-06 08:57:21', '0', 'Pa$$w0rd!', 'Q5LsggvD3y', '2025-04-06 08:57:21', '2025-04-06 08:57:21'),
(15, 'Jonas Frederick', '+1 (542) 444-1621', 'tugyquti@mailinator.com', '2025-04-06 08:58:57', '0', 'Pa$$w0rd!', 'WCxSRJ86Tl', '2025-04-06 08:58:58', '2025-04-06 08:58:58'),
(16, 'Ruby Edwards', '+1 (486) 194-7528', 'mofa@mailinator.com', '2025-04-06 09:04:18', '0', 'Pa$$w0rd!', 'RQ3HZF61Fl', '2025-04-06 09:04:18', '2025-04-06 09:04:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_user_id_foreign` (`user_id`),
  ADD KEY `brands_category_id_foreign` (`category_id`);

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
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `brands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
