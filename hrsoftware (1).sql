-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 10:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrsoftware`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_compensation`
--

CREATE TABLE `additional_compensation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effective_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_compensation`
--

INSERT INTO `additional_compensation` (`id`, `user_id`, `type`, `amount`, `currency`, `frequency`, `effective_date`, `end_date`, `note`, `created_at`, `updated_at`) VALUES
(1, '1', 'Additional pay', '40', NULL, 'hourly', '2022-02-22', NULL, 'test', '2022-02-22 06:58:24', '2022-02-22 06:58:24'),
(2, '25', 'Additional pay', '200', NULL, 'hourly', '2022-03-20', '2022-03-22', 'additional', '2022-03-20 09:15:44', '2022-03-20 09:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `additional_types`
--

CREATE TABLE `additional_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_types`
--

INSERT INTO `additional_types` (`id`, `company_id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Additional pay', NULL, NULL, NULL),
(2, 1, 'Bonuses', NULL, NULL, NULL),
(3, 1, 'One-time payments', NULL, NULL, NULL),
(5, 18, 'Additional pay', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(6, 18, 'Bonuses', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'One-time payments', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 21, 'Additional pay', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(9, 21, 'Bonuses', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(10, 21, 'One-time payments', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(11, 22, 'Additional pay', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(12, 22, 'Bonuses', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(13, 22, 'One-time payments', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(14, 24, 'Additional pay', NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(15, 24, 'Bonuses', NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(16, 24, 'One-time payments', NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(17, 25, 'Additional pay', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(18, 25, 'Bonuses', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(19, 25, 'One-time payments', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(20, 18, 'test', 'test', '2022-06-07 01:48:17', '2022-06-07 01:48:17'),
(21, 39, 'Additional pay', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(22, 39, 'Bonuses', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(23, 39, 'One-time payments', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(24, 40, 'Additional pay', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(25, 40, 'Bonuses', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(26, 40, 'One-time payments', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(27, 41, 'Additional pay', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(28, 41, 'Bonuses', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(29, 41, 'One-time payments', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(30, 42, 'Additional pay', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(31, 42, 'Bonuses', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(32, 42, 'One-time payments', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(33, 43, 'Additional pay', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(34, 43, 'Bonuses', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(35, 43, 'One-time payments', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `role_id` bigint(10) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_trail_ends_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_change_password` int(11) DEFAULT 1,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `parent_id`, `role_id`, `first_name`, `last_name`, `company_name`, `email`, `free_trail_ends_at`, `domain`, `password`, `temp_password`, `force_change_password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'sankar', 'samanta', 'Rixosys', 'sankartest1@yopmail.com', '2022-02-21 16:24:44', 'rixosys.websmartcrop.com', '$2y$10$C/J8sE5672u/Hiy7w9LNhOoY3uq5m7OZY3XSJboKtLwOJZJ0bQs0G', NULL, 1, 'ACTIVE', NULL, '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(2, 1, 4, 'test', 'test', NULL, 'sankartest2@yopmail.com', NULL, NULL, '$2y$10$V6cTqsGyqmoYPq93pp8NL.KPy3YrvKmCVbldHvNCWjjPyPn7XKefS', 'Jz4wB2fR', 1, 'ACTIVE', NULL, '2022-02-07 11:14:48', '2022-02-07 11:14:48'),
(17, 1, 4, 'sankar2', 'samanta2', NULL, 'sankartest3@yopmail.com', NULL, NULL, '$2y$10$SkNYaEg6hNhKV8szhpt7heEOQO/u3TGZO4e7LhklvaEpeN6qYAxbK', 'uVUG6pQR', 1, 'ACTIVE', NULL, '2022-02-13 01:15:43', '2022-02-13 01:15:43'),
(18, 0, 1, 'jyoti', 'mishara', 'Test', 'sankar@rixosys.com', '2022-02-27 06:48:00', 'test.websmartcrop.com', '$2y$10$YmOXLXjTJIN3AEI9JKa3sueNVSNi1I0kXFP5eY380O6ikuw0mHJIm', NULL, 1, 'ACTIVE', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(20, 18, 4, 'jyoti1', 'jyoti1', NULL, 'sankartest4@yopmail.com', NULL, NULL, '$2y$10$L96e/j3A32sR/sv5rR2W0Oyf/q3W77vdtBd9VXIi9Tw845TfN9NNW', 'kHcsL3UX', 1, 'ACTIVE', NULL, '2022-02-13 01:54:50', '2022-02-13 01:54:50'),
(21, 0, 1, 'siba', 'samanta', 'Test', 'sankartest5@yopmail.com', '2022-02-27 08:15:02', 'test1.websmartcrop.com', '$2y$10$5SwS8YzFeJG.m41bJQyV4eRaG78iTP5Oiv.6Dt8FDdSEU075oH10u', NULL, 1, 'ACTIVE', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(22, 0, 1, 'subhashree', 'mohanty', 'Test', 'subha@gmail.com', '2022-02-27 08:26:25', 'test2.websmartcrop.com', '$2y$10$JiIlci2YQMhUzZhoykvAI.ezcMnr08b5aMNJblBEUBwKkYW2VJlmW', NULL, 1, 'ACTIVE', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(23, 1, 4, 'rajiv', 'bhatia', NULL, 'rajiv@gmail.com', NULL, NULL, '$2y$10$2FUFsWTtEoXiAVEaAupxxOuBATIUppF8mAjsjOmDBMhhZt.xy5ivm', '8YFaC4Li', 1, 'ACTIVE', NULL, '2022-02-13 04:20:46', '2022-02-13 04:20:46'),
(24, 0, 1, 'jivan', 'sahoo', 'test', 'jivan@gmail.com', '2022-02-27 10:24:38', 'test3.websmartcrop.com', '$2y$10$1TFvHgh86tVFA3MDqMB7wuSjuEr4znJt9/VsOiwceBXrz.ojAvhFq', NULL, 1, 'ACTIVE', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(25, 0, 1, 'bibek', 'sahu', 'xyz', 'bibek@gmail.com', '2022-03-22 12:20:37', 'xyz.websmartcrop.com', '$2y$10$feyU.IIv4dMzq55aivATHue9RNjs8gc.e7bZ709c0svDQXv9Oss.2', NULL, 1, 'ACTIVE', NULL, '2022-03-08 06:50:37', '2022-03-08 06:50:37'),
(26, 1, 4, 'ranbir', 'kapoor', NULL, 'ranbir@gmail.com', NULL, NULL, '$2y$10$DoOwmY9kRQuCKw1nfvi7yObzC/8O.SbC33zUcQAec2TFEDTmLTbtS', '6tnypszE', 1, 'ACTIVE', NULL, '2022-03-09 06:23:19', '2022-03-09 06:23:19'),
(27, 25, 2, 'sonali', 'sahu', NULL, 'sonali@gmail.com', NULL, NULL, '$2y$10$J7QDTR/l/YTf1aA9RzGnzu4xKsX0kWnCSsHXnufLZ9Tsw.irleNyO', '', 0, 'ACTIVE', NULL, '2022-03-09 11:05:17', '2022-03-28 00:41:01'),
(28, 25, 4, 'chinmaya', 'parida', NULL, 'chinmaya@gmail.com', NULL, NULL, '$2y$10$kvUVbF1h832jKeAPJvUOC.LyuIKy.AeUG3WVjqKlTiF9O9Mr.mkoO', 'RZGNm39u', 1, 'ACTIVE', NULL, '2022-03-09 11:06:08', '2022-03-09 11:06:08'),
(29, 25, 4, 'jivanjyoti', 'mishra', NULL, 'jivanjyoti@gmail.com', NULL, NULL, '$2y$10$Mu1V4W.JMy7eziUJIuUFxONDC.unUVJY1AlmlJyMnsi3XZN6uPknm', 'NUgqxhHH', 1, 'ACTIVE', NULL, '2022-03-10 01:09:12', '2022-03-10 01:09:12'),
(30, 25, 4, 'tushar', 'mohanty', NULL, 'tushar99@gmail.com', NULL, NULL, '$2y$10$GwLG8Y5qU6T5bvzqYB5CYOtjLjRuXcnZdxkZpiwjbDFWTcVv3vL5S', 'BtwCW9f8', 1, 'ACTIVE', NULL, '2022-03-22 13:41:38', '2022-03-22 13:41:38'),
(31, 25, 4, 'tusharkanta', 'nayak', NULL, 'tushar99@yopmail.com', NULL, NULL, '$2y$10$7gxtRF0LD99m/teWOqfFde2BfHwvBjj3h0b8oI0xYN3DKYY6rCkF2', '', 0, 'ACTIVE', NULL, '2022-03-22 13:42:49', '2022-03-22 13:44:23'),
(32, 18, 4, 'jack', 'jone', NULL, 'chinmay@rixosys.com', NULL, NULL, '$2y$10$KcCU5gM4uumZNkAWYviVCuMv0GhrFcuCICHgmYdUKOCuXlCTxnw1.', 'gtkjfGzT', 1, 'ACTIVE', NULL, '2022-05-26 04:23:56', '2022-05-26 04:23:56'),
(35, 18, 4, 'Chinmay', 'mohanty', NULL, 'chinmay12@rixosys.com', NULL, NULL, '$2y$10$Ey2e52tpZbTz3BSH1tU1neHf1GffvaWsQcsAU7d.R3FiQPvFD/Vm.', 'nUmaxaHQ', 1, 'ACTIVE', NULL, '2022-05-26 06:55:41', '2022-05-26 06:55:41'),
(37, 18, 4, 'chinmay', 'mohanty', NULL, 'chinmay45@rixosys.com', NULL, NULL, '$2y$10$YVFzv0zi8BMvNMAKeoUC/uyk2WH5gOq2kqzN4wow6wQ7kClSiAQ0a', 'URqev7mj', 1, 'ACTIVE', NULL, '2022-06-23 00:35:06', '2022-06-23 00:35:06'),
(38, 18, 4, 'kdjcbndsj', 'lkcndskc', NULL, 'sonu1213@yopmail.com', NULL, NULL, '$2y$10$lEHDbZGndF7C0y/RCFTgGew9GAo13liUN7CgfogHg6xSRUcTy.j4m', 'tkyff7lH', 1, 'ACTIVE', NULL, '2022-06-23 02:04:27', '2022-06-23 02:04:27'),
(43, 0, 1, 'satya', 'sworup', 'satya', 'satya@gmail.com', '2022-07-29 07:52:50', 'satya.websmartcrop.com', '$2y$10$UMT2/ShdgMNZLDe5bc.lv.KSp0QvzgNjVzzofIcStyNaJCOAQEwYq', NULL, 1, 'ACTIVE', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_time_off_balances`
--

CREATE TABLE `all_time_off_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeoff_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_off_policy_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_off_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remaining_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_added_id` bigint(11) DEFAULT NULL,
  `approver_attachment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `declined_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `switch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_time_off_balances`
--

INSERT INTO `all_time_off_balances` (`id`, `employee_id`, `timeoff_id`, `time_off_policy_id`, `time_off_type_id`, `total_allowance`, `remaining_allowance`, `used_allowance`, `time_from`, `time_from_day`, `time_to`, `time_to_day`, `note`, `attachment`, `status`, `submit_date`, `approve_date`, `approval_name`, `approver_note`, `approver_attachment`, `attachment_added_id`, `approver_attachment_date`, `declined_date`, `switch`, `created_at`, `updated_at`) VALUES
(2, '25', '5', '21', '24', '24', NULL, '2', '2022-03-30', 'full-day', '2022-03-31', 'full-day', 'aaaaaaaaa', NULL, 'declined', '2022-03-23', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-23', 'inactive', '2022-03-23 14:23:31', '2022-03-23 14:35:00'),
(4, '25', '5', '21', '24', '24', NULL, '2', '2022-03-30', 'full-day', '2022-03-31', 'full-day', 'rrrrr', NULL, 'approved', '2022-03-23', '2022-03-23', '25', 'approved', 'http://localhost:8000/uploads/images/1648069730.jpg', 25, '2022-03-23', NULL, 'inactive', '2022-03-23 15:37:49', '2022-03-23 15:39:15'),
(5, '25', '4', '21', '23', '24', NULL, '2', '2022-03-28', 'full-day', '2022-03-29', 'full-day', 'test', NULL, 'approved', '2022-03-24', '2022-03-24', NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2022-03-24 16:23:17', '2022-03-24 16:23:17'),
(6, '25', '5', '21', '24', '24', NULL, '2', '2022-03-31', 'full-day', '2022-04-01', 'full-day', 'test', NULL, 'approved', '2022-03-24', '2022-03-25', '25', 'approved', NULL, NULL, NULL, NULL, 'inactive', '2022-03-24 17:04:02', '2022-03-25 00:49:15'),
(7, '25', '5', '21', '24', '24', NULL, '1', '2022-04-01', 'full-day', '2022-04-02', 'full-day', 'llll', NULL, 'pending', '2022-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2022-03-25 01:12:59', '2022-03-25 01:12:59'),
(8, '25', '4', '21', '23', '24', NULL, '2', '2022-03-24', 'full-day', '2022-03-26', 'full-day', 'ttttt', NULL, 'approved', '2022-03-25', '2022-03-25', NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2022-03-25 07:20:36', '2022-03-25 07:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `closed_additional_compensation`
--

CREATE TABLE `closed_additional_compensation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effective_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `closed_additional_compensation`
--

INSERT INTO `closed_additional_compensation` (`id`, `user_id`, `payrun_id`, `type`, `amount`, `currency`, `frequency`, `effective_date`, `end_date`, `note`, `created_at`, `updated_at`) VALUES
(4, '2', '5', 'Additional pay', '300', NULL, 'hourly', '2022-02-16', '2022-02-18', 'additional', '2022-02-16 05:51:35', '2022-02-16 05:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `closed_payroll_compensation`
--

CREATE TABLE `closed_payroll_compensation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effective_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `closed_payroll_compensation`
--

INSERT INTO `closed_payroll_compensation` (`id`, `user_id`, `payrun_id`, `amount`, `currency`, `frequency`, `effective_date`, `end_date`, `note`, `created_at`, `updated_at`) VALUES
(4, '2', '5', '100', NULL, 'hourly', '2022-02-16', '2022-02-17', 'test', '2022-02-16 05:51:35', '2022-02-16 05:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `closed_payruns`
--

CREATE TABLE `closed_payruns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_period_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_period_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payslip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `closed_payruns`
--

INSERT INTO `closed_payruns` (`id`, `company_id`, `payrun_id`, `pay_period_from`, `pay_period_to`, `pay_date`, `employee_id`, `payslip`, `approver`, `created_at`, `updated_at`) VALUES
(5, 1, '5', '01-02-2022', '03-02-2022', '2022-02-17', '2', NULL, 'sankar', '2022-02-16 05:51:35', '2022-02-16 05:51:35'),
(6, 1, '5', '01-02-2022', '03-02-2022', '2022-02-17', '23', NULL, 'sankar', '2022-02-16 05:51:35', '2022-02-16 05:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `closed_payrun_salaries`
--

CREATE TABLE `closed_payrun_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_announcements`
--

CREATE TABLE `company_announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_announcements`
--

INSERT INTO `company_announcements` (`id`, `company_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'hello', '2022-03-08 01:43:22', '2022-03-08 01:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `company_applications`
--

CREATE TABLE `company_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `application_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_applications`
--

INSERT INTO `company_applications` (`id`, `company_id`, `application_name`, `link`, `description`, `created_at`, `updated_at`) VALUES
(2, 1, 'test1111111', 'https://youtu.be/cWzlYPV2IvU', 'aaaaaaaa', '2022-01-22 06:52:56', '2022-01-22 06:53:04'),
(3, 25, 'test', 'https://www.google.com/', 'test', '2022-03-09 15:18:07', '2022-03-09 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `company_assets`
--

CREATE TABLE `company_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `people_id` bigint(20) DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_assets`
--

INSERT INTO `company_assets` (`id`, `company_id`, `people_id`, `asset_name`, `serial_number`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'Laptop', '123456', 'laptop', '2022-03-08 09:10:13', '2022-03-08 09:10:13'),
(2, 1, 23, 'Mouse', '1234', 'mouse', '2022-03-08 09:11:26', '2022-03-08 09:11:26'),
(3, 1, 1, 'keyboard', '12', 'keyboard', '2022-03-08 09:12:27', '2022-03-08 09:12:27'),
(4, 25, 25, 'Laptop', '1', 'laptop', '2022-03-09 15:10:09', '2022-03-09 15:10:09'),
(5, 25, 27, 'Laptop', '2', 'laptop2', '2022-03-09 15:10:33', '2022-03-09 15:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `company_currencies`
--

CREATE TABLE `company_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_subdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founding_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_statement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `company_id`, `company_logo`, `company_subdomain`, `company_website`, `company_number`, `vat_number`, `founding_year`, `mission_statement`, `currency`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://localhost:8000/uploads/images/1646119824.jfif', NULL, 'www.google.com', '111', '22', '2022', 'test', NULL, '2022-02-23 05:04:26', '2022-03-01 02:00:24'),
(2, 18, NULL, NULL, 'rixosys.com', '100', '2100', '2018', 'test company', NULL, '2022-05-31 00:37:21', '2022-05-31 00:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `company_documents`
--

CREATE TABLE `company_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_documents`
--

INSERT INTO `company_documents` (`id`, `company_id`, `document_name`, `folder`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 1, 'hello11', '1', 'test1', NULL, '2022-03-08 02:05:49', '2022-03-08 02:13:25'),
(3, 1, 'contract1', '1', 'contract desp', 'http://localhost:8000/uploads/images/1646737895.jpg', '2022-03-08 03:56:18', '2022-03-08 05:41:35'),
(5, 25, 'hello', '26', 'test', 'http://localhost:8000/uploads/images/1646858376.jpg', '2022-03-09 15:09:36', '2022-03-09 15:09:36'),
(6, 25, 'hello', '27', 'test', NULL, '2022-03-10 00:19:33', '2022-03-10 00:19:33'),
(7, 25, 'Files', '26', 'files', 'http://localhost:8000/uploads/images/1646891521.jpg', '2022-03-10 00:22:01', '2022-03-10 00:22:01'),
(8, 25, 'contact 1', '26', 'eeeeeeee', NULL, '2022-03-11 00:23:42', '2022-03-11 00:23:42'),
(9, 25, 'contract2', '26', 'contract2', NULL, '2022-03-11 00:34:57', '2022-03-11 00:34:57'),
(10, 25, 'llllll', '26', 'llllllllll', 'http://localhost:8000/uploads/images/1646979875.jpg', '2022-03-11 00:54:35', '2022-03-11 00:54:35'),
(11, 18, 'test', '8', 'test', 'http://localhost:8000/uploads/images/1654263513.jpg', '2022-06-03 08:08:33', '2022-06-03 08:08:33'),
(12, 18, 'test', '6', 'test', 'http://localhost:8000/uploads/images/1654493689.jpg', '2022-06-06 00:04:49', '2022-06-06 00:04:49'),
(13, 18, 'test', '6', 'qggeghw', 'http://localhost:8000/uploads/images/1654586541.png', '2022-06-07 01:52:21', '2022-06-07 01:52:21'),
(14, 18, 'wwkfnre', '8', NULL, NULL, '2022-06-09 04:52:47', '2022-06-09 04:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `company_folders`
--

CREATE TABLE `company_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_folders`
--

INSERT INTO `company_folders` (`id`, `company_id`, `folder_name`, `description`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 1, 'contracts', 'etst', '1', '2022-02-07 10:54:44', '2022-03-01 03:35:09'),
(2, 1, 'forms', NULL, '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(3, 1, 'general', NULL, '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'policies', NULL, '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(5, 1, 'templates', NULL, '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(6, 18, 'contracts', NULL, '1', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'forms', NULL, '1', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'general', NULL, '1', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 18, 'policies', NULL, '1', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(10, 18, 'templates', NULL, '1', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(11, 21, 'contracts', NULL, '1', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(12, 21, 'forms', NULL, '1', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 21, 'general', NULL, '1', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(14, 21, 'policies', NULL, '1', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(15, 21, 'templates', NULL, '1', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(16, 22, 'contracts', NULL, '1', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(17, 22, 'forms', NULL, '1', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(18, 22, 'general', NULL, '1', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(19, 22, 'policies', NULL, '1', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(20, 22, 'templates', NULL, '1', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(21, 24, 'contracts', NULL, '1', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(22, 24, 'forms', NULL, '1', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(23, 24, 'general', NULL, '1', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(24, 24, 'policies', NULL, '1', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(25, 24, 'templates', NULL, '1', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(26, 25, 'contracts', NULL, '1', '2022-03-08 06:50:37', '2022-03-22 16:49:22'),
(27, 25, 'forms', NULL, '3', '2022-03-08 06:50:37', '2022-03-22 15:40:18'),
(28, 25, 'general', NULL, '3', '2022-03-08 06:50:37', '2022-03-22 15:42:20'),
(29, 25, 'policies', NULL, '3', '2022-03-08 06:50:38', '2022-03-22 15:42:30'),
(30, 25, 'templates', NULL, '3', '2022-03-08 06:50:38', '2022-03-22 15:42:40'),
(31, 39, 'contracts', NULL, '1', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(32, 39, 'forms', NULL, '1', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(33, 39, 'general', NULL, '1', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(34, 39, 'policies', NULL, '1', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(35, 39, 'templates', NULL, '1', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(36, 40, 'contracts', NULL, '1', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(37, 40, 'forms', NULL, '1', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(38, 40, 'general', NULL, '1', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(39, 40, 'policies', NULL, '1', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(40, 40, 'templates', NULL, '1', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(41, 41, 'contracts', NULL, '1', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(42, 41, 'forms', NULL, '1', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(43, 41, 'general', NULL, '1', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(44, 41, 'policies', NULL, '1', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(45, 41, 'templates', NULL, '1', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(46, 42, 'contracts', NULL, '1', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(47, 42, 'forms', NULL, '1', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(48, 42, 'general', NULL, '1', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(49, 42, 'policies', NULL, '1', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(50, 42, 'templates', NULL, '1', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(51, 43, 'contracts', NULL, '1', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(52, 43, 'forms', NULL, '1', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(53, 43, 'general', NULL, '1', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(54, 43, 'policies', NULL, '1', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(55, 43, 'templates', NULL, '1', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `company_holidays`
--

CREATE TABLE `company_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `holiday_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_holidays`
--

INSERT INTO `company_holidays` (`id`, `company_id`, `country_name`, `state_name`, `location_id`, `holiday_name`, `holiday_date`, `interval`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, 'New Year', '2022-01-01', NULL, 'inactive', '2022-03-03 07:11:03', '2022-03-03 07:54:53'),
(2, 1, NULL, NULL, 1, 'Holi', '2022-03-18', NULL, 'active', '2022-03-07 01:04:47', '2022-03-07 06:58:57'),
(3, 1, NULL, NULL, 1, 'hii', '2022-03-17', NULL, 'active', '2022-03-07 05:54:58', '2022-03-07 05:54:58'),
(5, 1, NULL, NULL, 1, 'bye111', '2022-03-24', NULL, 'active', '2022-03-07 07:25:48', '2022-03-07 07:25:55'),
(6, 18, NULL, NULL, 2, 'efwef', '2022-06-08', 'halfday', 'active', '2022-06-16 05:18:27', '2022-06-16 05:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `company_key_contacts`
--

CREATE TABLE `company_key_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `people_id` bigint(20) DEFAULT NULL,
  `responsibility` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_key_contacts`
--

INSERT INTO `company_key_contacts` (`id`, `company_id`, `people_id`, `responsibility`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'test', '2022-03-07 23:28:56', '2022-03-07 23:28:56'),
(2, 1, 23, 'test', '2022-03-08 02:00:42', '2022-03-08 02:00:42'),
(3, 25, 28, 'test', '2022-03-09 14:24:35', '2022-03-09 14:24:35'),
(4, 25, 27, 'test222', '2022-03-09 14:55:34', '2022-03-09 14:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `company_payrolls`
--

CREATE TABLE `company_payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_period_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_period_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_payrolls`
--

INSERT INTO `company_payrolls` (`id`, `company_id`, `payrun_id`, `pay_period_from`, `pay_period_to`, `pay_date`, `approver`, `created_at`, `updated_at`) VALUES
(2, 1, '5', '01-02-2022', '03-02-2022', '2022-02-17', 'sankar', '2022-02-16 05:51:35', '2022-02-16 05:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua And Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas The'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo The Democratic Republic Of The'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)'),
(54, 'HR', 'Croatia (Hrvatska)'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'TP', 'East Timor'),
(63, 'EC', 'Ecuador'),
(64, 'EG', 'Egypt'),
(65, 'SV', 'El Salvador'),
(66, 'GQ', 'Equatorial Guinea'),
(67, 'ER', 'Eritrea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'XA', 'External Territories of Australia'),
(71, 'FK', 'Falkland Islands'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji Islands'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia The'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'XU', 'Guernsey and Alderney'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HK', 'Hong Kong S.A.R.'),
(99, 'HU', 'Hungary'),
(100, 'IS', 'Iceland'),
(101, 'IN', 'India'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'XJ', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea North'),
(116, 'KR', 'Korea South'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Laos'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau S.A.R.'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'XM', 'Man (Isle of)'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'YT', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia'),
(144, 'MD', 'Moldova'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NL', 'Netherlands The'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua new Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn Island'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russia'),
(182, 'RW', 'Rwanda'),
(183, 'SH', 'Saint Helena'),
(184, 'KN', 'Saint Kitts And Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'PM', 'Saint Pierre and Miquelon'),
(187, 'VC', 'Saint Vincent And The Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'XG', 'Smaller Territories of the UK'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia'),
(204, 'SS', 'South Sudan'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syria'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad And Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks And Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State (Holy See)'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (US)'),
(241, 'WF', 'Wallis And Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'YU', 'Yugoslavia'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disposal_email_domains`
--

CREATE TABLE `disposal_email_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_invitations`
--

CREATE TABLE `email_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_invitations`
--

INSERT INTO `email_invitations` (`id`, `company_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'sankar@rixosys.com', '2022-02-11 01:46:52', '2022-02-11 01:46:52'),
(2, 18, 'cm123@youpmail.com', '2022-05-27 02:13:13', '2022-05-27 02:13:13'),
(3, 18, 'sankar@rixosys.com', '2022-06-09 02:42:46', '2022-06-09 02:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `employee_assigned_breaks`
--

CREATE TABLE `employee_assigned_breaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workschedule_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_assigned_breaks`
--

INSERT INTO `employee_assigned_breaks` (`id`, `company_id`, `people_id`, `workschedule_id`, `start_time`, `end_time`, `note`, `day`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 3, '15:00', '15:15', 'break', '2022-02-09', '2022-02-09 08:13:21', '2022-02-09 08:13:21'),
(2, 25, '25', 71, '12:00', '12:15', 'break', '2022-04-04', '2022-03-27 23:58:38', '2022-03-27 23:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `employee_assigned_projects`
--

CREATE TABLE `employee_assigned_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_assigned_projects`
--

INSERT INTO `employee_assigned_projects` (`id`, `company_id`, `people_id`, `start_time`, `end_time`, `project_id`, `note`, `day`, `left_hour`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '10:00', '15:00', 'Compliance', 'test', '2022-02-09', '02:30', '2022-02-09 07:02:15', '2022-02-09 07:06:19'),
(2, 1, '1', '17:00', '18:00', 'Office', 'test', '2022-02-09', '06:30', '2022-02-09 08:12:31', '2022-02-09 08:12:31'),
(3, 1, '2', '10:00', '15:00', 'Company website', 'test', '2022-02-11', '03:30', '2022-02-11 02:07:35', '2022-02-11 02:07:35'),
(4, 1, '1', '10:00', '15:00', 'Office', 'test', '2022-02-11', '03:30', '2022-02-11 02:09:30', '2022-02-11 02:09:30'),
(5, 1, '1', '10:00', '14:00', 'Recruitment', '10th feb', '2022-02-10', '04:30', '2022-02-11 02:10:16', '2022-02-11 02:10:16'),
(6, 18, '18', '10:00', '14:00', 'Company website', 'test', '2022-02-11', '20:00', '2022-02-13 02:17:18', '2022-02-13 02:17:18'),
(7, 1, '1', '17:00', '18:00', 'Company website', 'test', '2022-02-11', '07:30', '2022-02-13 02:19:39', '2022-02-13 02:19:39'),
(8, 1, '17', '10:00', '15:00', 'Company website', 'test', '2022-02-11', '03:30', '2022-02-13 02:20:32', '2022-02-13 02:20:32'),
(9, 24, '24', '10:00', '14:00', 'Company website', 'test', '2022-02-10', '04:00', '2022-02-13 05:58:53', '2022-02-13 05:58:53'),
(10, 1, '1', '10:00', '16:00', 'Company website', 'test', '2022-02-14', '01:00', '2022-02-14 04:27:45', '2022-02-14 05:06:23'),
(12, 1, '1', '16:00', '18:00', 'Company website', 'test', '2022-02-14', '05:00', '2022-02-14 05:25:10', '2022-02-14 05:25:10'),
(13, 1, '23', '10:00', '16:00', 'Market research', 'test', '2022-02-15', '02:00', '2022-02-15 01:15:23', '2022-02-15 01:15:23'),
(14, 25, '25', '10:00', '15:00', 'Compliance', 'ttttttttt', '2022-03-25', '15:00', '2022-03-25 06:55:24', '2022-03-25 06:55:24'),
(15, 25, '25', '16:00', '18:00', 'Recruitment', 'aaaaaaaa', '2022-03-25', '18:00', '2022-03-25 11:24:53', '2022-03-25 11:24:53'),
(16, 25, '25', '09:00', '20:00', 'Recruitment', 'aaaaaaaa', '2022-03-26', NULL, '2022-03-25 11:24:53', '2022-03-25 11:24:53'),
(17, 25, '25', '09:00', '19:00', 'Company website', 'test', '2022-03-28', '10:00', '2022-03-26 05:36:32', '2022-03-26 05:36:32'),
(18, 25, '25', '09:00', '19:00', 'Company website', 'hello', '2022-03-22', '10:00', '2022-03-26 05:37:39', '2022-03-26 05:37:39'),
(19, 25, '25', '10:00', '15:00', 'Company website', 'test', '2022-04-04', '15:00', '2022-03-27 23:51:56', '2022-03-27 23:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `people_id` bigint(11) DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint(20) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_documents`
--

INSERT INTO `employee_documents` (`id`, `people_id`, `document_name`, `folder_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 'hello', 3, 'test', 'http://localhost:8000/uploads/images/1646658264.jpg', '2022-03-07 07:34:24', '2022-03-07 07:35:55'),
(4, 25, 'contract1', 26, 'contract1', 'http://localhost:8000/uploads/images/1647793409.jpg', '2022-03-20 10:53:29', '2022-03-20 10:53:29'),
(5, 25, 'form1', 28, 'form1', 'http://localhost:8000/uploads/images/1647794840.jpg', '2022-03-20 11:17:20', '2022-03-20 11:17:20'),
(6, 25, 'certificate_2', 26, 'test2', 'http://localhost:8000/uploads/images/1647796507.jpg', '2022-03-20 11:17:58', '2022-03-20 11:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `employee_folders`
--

CREATE TABLE `employee_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_folders`
--

INSERT INTO `employee_folders` (`id`, `company_id`, `folder_name`, `description`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 1, 'certificates', NULL, '4', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(2, 1, 'contracts', 'test', '4', '2022-02-07 10:54:44', '2022-03-01 03:33:48'),
(3, 1, 'forms', NULL, '4', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'general', NULL, '4', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(5, 1, 'ids', NULL, '4', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(6, 18, 'certificates', NULL, '4', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'contracts', NULL, '4', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'forms', NULL, '4', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 18, 'general', NULL, '4', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(10, 18, 'ids', NULL, '4', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(11, 21, 'certificates', NULL, '4', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(12, 21, 'contracts', NULL, '4', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 21, 'forms', NULL, '4', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(14, 21, 'general', NULL, '4', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(15, 21, 'ids', NULL, '4', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(16, 22, 'certificates', NULL, '4', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(17, 22, 'contracts', NULL, '4', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(18, 22, 'forms', NULL, '4', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(19, 22, 'general', NULL, '4', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(20, 22, 'ids', NULL, '4', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(21, 24, 'certificates', NULL, '4', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(22, 24, 'contracts', NULL, '4', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(23, 24, 'forms', NULL, '4', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(24, 24, 'general', NULL, '4', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(25, 24, 'ids', NULL, '4', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(26, 25, 'certificates', NULL, '2', '2022-03-08 06:50:38', '2022-03-22 14:43:40'),
(27, 25, 'contracts', NULL, '1', '2022-03-08 06:50:38', '2022-03-22 14:33:09'),
(28, 25, 'forms', NULL, '1', '2022-03-08 06:50:38', '2022-03-22 14:33:17'),
(29, 25, 'general', NULL, '1', '2022-03-08 06:50:38', '2022-03-22 14:33:26'),
(30, 25, 'ids', NULL, '4', '2022-03-08 06:50:38', '2022-03-22 14:41:44'),
(31, 39, 'certificates', NULL, '4', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(32, 39, 'contracts', NULL, '4', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(33, 39, 'forms', NULL, '4', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(34, 39, 'general', NULL, '4', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(35, 39, 'ids', NULL, '4', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(36, 40, 'certificates', NULL, '4', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(37, 40, 'contracts', NULL, '4', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(38, 40, 'forms', NULL, '4', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(39, 40, 'general', NULL, '4', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(40, 40, 'ids', NULL, '4', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(41, 41, 'certificates', NULL, '4', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(42, 41, 'contracts', NULL, '4', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(43, 41, 'forms', NULL, '4', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(44, 41, 'general', NULL, '4', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(45, 41, 'ids', NULL, '4', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(46, 42, 'certificates', NULL, '4', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(47, 42, 'contracts', NULL, '4', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(48, 42, 'forms', NULL, '4', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(49, 42, 'general', NULL, '4', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(50, 42, 'ids', NULL, '4', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(51, 43, 'certificates', NULL, '4', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(52, 43, 'contracts', NULL, '4', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(53, 43, 'forms', NULL, '4', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(54, 43, 'general', NULL, '4', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(55, 43, 'ids', NULL, '4', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `employee_notes`
--

CREATE TABLE `employee_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `people_id` bigint(20) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_notes`
--

INSERT INTO `employee_notes` (`id`, `company_id`, `people_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2022-02-11 06:59:28', '2022-02-11 06:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_personals`
--

CREATE TABLE `employee_personals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_personals`
--

INSERT INTO `employee_personals` (`id`, `people_id`, `dob`, `marital_status`, `nationality`, `personal_phone`, `personal_email`, `street`, `city`, `county`, `pin`, `country`, `emergency_fullname`, `emergency_phone`, `emergency_email`, `emergency_relationship`, `linkedin`, `facebook`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '27', '2022-03-10', 'single', 'Australia', '1111111111', 'sonali@gmail.com', 'test, test, test, test, test, test, test', 'test', 'test', '1111111', 'Bahamas The', 'sonali sahu', '1111111111', 'sonali@gmail.com', 'single', NULL, NULL, NULL, '2022-03-19 09:12:26', '2022-03-19 09:25:17'),
(2, '1', '2022-06-09', 'single', 'Afghanistan', NULL, NULL, 'bbsr', 'bbsr', 'india', '765245', 'Afghanistan', 'sankar', '078728962121', 'sankar@rixosys.com', 'own', NULL, NULL, NULL, '2022-05-31 04:01:17', '2022-06-23 02:52:41'),
(3, '18', '2022-06-10', 'single', 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, 'Afghanistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 02:52:49', '2022-06-09 02:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_timeoff_adjustments`
--

CREATE TABLE `employee_timeoff_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `time_off_type_id` bigint(20) DEFAULT NULL,
  `carryover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_adjust` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_timeoff_adjustments`
--

INSERT INTO `employee_timeoff_adjustments` (`id`, `company_id`, `employee_id`, `time_off_type_id`, `carryover`, `usage_adjust`, `created_at`, `updated_at`) VALUES
(1, NULL, 25, 22, '3', '1', '2022-03-17 07:28:42', '2022-03-17 07:35:52'),
(2, NULL, 27, 22, '1', '1', '2022-03-17 07:34:29', '2022-03-17 07:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reimbursed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reimbursed_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decline_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `company_id`, `employee`, `user_id`, `supplier`, `category`, `purchase_date`, `total_amt`, `vat`, `type`, `description`, `status`, `approved_date`, `reimbursed_date`, `reimbursed_status`, `decline_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '2', '1', 'rixosys', 'meals', '2022-02-23', '100', '20', 'expenses', 'sssssss', 'declined', NULL, NULL, NULL, '2022-05-31', 'http://hrsoftware.com/uploads/images/1643712120.png', '2022-02-01 05:12:00', '2022-05-31 05:10:14'),
(5, 1, '23', '1', 'meals', 'meals', '2022-02-24', '200', '10', 'expenses', 'test', 'approved', NULL, NULL, NULL, NULL, 'http://hrsoftware.com/uploads/images/1645002108.jpg', '2022-02-16 02:39:53', '2022-02-23 00:27:55'),
(6, 1, '2', '1', 'Travel11111', 'accommodations', '2022-02-18', '300', NULL, 'expenses', 'hello', 'reimbursed', NULL, '2022-02-23', 'on', NULL, 'http://hrsoftware.com/uploads/images/1645595065.jpg', '2022-02-16 02:50:27', '2022-02-23 00:15:14'),
(7, 1, '17', '1', 'rixosys', 'education and training', '2022-02-16', '100', NULL, 'expenses', 'test1', 'approved', '2022-02-23', '2022-02-23', 'on', NULL, NULL, '2022-02-16 03:40:03', '2022-02-22 23:55:54'),
(8, 1, '23', '1', 'rajib', 'meals', '2022-02-16', '2002', NULL, 'expenses', 'test', 'submitted', NULL, NULL, NULL, NULL, NULL, '2022-02-16 03:45:25', '2022-02-18 00:03:48'),
(9, 1, '1', '1', 'bbbbbbbbbb', 'meals', '2022-02-20', '1110', '40', 'expenses', 'test test', 'declined', NULL, NULL, NULL, '2022-02-22', 'http://hrsoftware.com/uploads/images/1645162527.jpg', '2022-02-16 04:40:47', '2022-02-22 08:15:23'),
(10, 1, '1', '1', 'rixosys12', 'meals', '2022-02-17', '1111', '11', 'expenses', 'sank', 'declined', '2022-02-16', '2022-02-16', 'on', '2022-02-16', NULL, '2022-02-16 04:45:28', '2022-02-16 04:50:51'),
(11, 1, '1', '1', 'rixosys', 'accommodations', '2022-02-24', '100', '20', 'my-expenses', 'test', 'approved', '2022-02-23', NULL, NULL, NULL, 'http://hrsoftware.com/uploads/images/1645598551.jpg', '2022-02-23 00:44:30', '2022-02-23 01:12:31'),
(12, 25, '25', '25', 'rixosys', 'miscellaneous', '2022-03-10', '100', '11', 'expenses', 'test1', 'declined', NULL, '2022-03-17', 'on', '2022-03-17', 'http://localhost:8000/uploads/images/1647511150.jpg', '2022-03-17 04:29:10', '2022-03-17 04:31:48'),
(13, 25, '27', '25', 'rixosys', 'education and training', '2022-03-03', '200', '10', 'expenses', 'test', 'approved', '2022-03-17', '2022-03-17', 'on', NULL, NULL, '2022-03-17 04:35:42', '2022-03-17 05:17:16'),
(14, 25, '28', '25', 'Travel', 'meals', '2022-03-24', '200', '10', 'expenses', 'test', 'declined', NULL, '2022-03-17', 'on', '2022-03-18', 'http://localhost:8000/uploads/images/1647511837.jpg', '2022-03-17 04:40:37', '2022-03-17 22:45:09'),
(15, 25, '25', '25', 'rixosys', 'meals', '2022-03-18', '200', '10', 'my-expenses', 'test', 'declined', NULL, '2022-03-20', 'on', '2022-03-23', 'http://localhost:8000/uploads/images/1647779125.jpg', '2022-03-20 06:55:25', '2022-03-23 14:52:38'),
(17, 25, '27', '27', 'rixosys', 'education and training', '2022-03-17', '200', '20', 'expenses', 'test', 'declined', NULL, '2022-03-20', 'on', '2022-03-23', 'http://localhost:8000/uploads/images/1647781155.jpg', '2022-03-20 07:29:15', '2022-03-23 14:47:41'),
(18, 25, '27', '27', 'meals', 'software license', '2022-03-25', '300', '20', 'my-expenses', 'test', 'approved', '2022-03-23', '2022-03-20', 'on', NULL, NULL, '2022-03-20 07:45:50', '2022-03-23 14:52:11'),
(20, 18, '20', '18', 'chinmay', 'miscellaneous', '2022-05-26', '1211', '222', 'expenses', 'test', 'declined', '2022-06-22', '2022-05-31', 'on', '2022-06-22', 'http://localhost:8000/uploads/images/1653991407.png', '2022-05-31 04:33:27', '2022-06-21 23:58:23'),
(21, 18, '32', '18', 'chinmay', 'accommodations', '2022-05-20', '100', '10', 'expenses', 'test', 'declined', '2022-06-22', '2022-05-31', 'on', '2022-06-22', 'http://localhost:8000/uploads/images/1653992723.png', '2022-05-31 04:55:23', '2022-06-21 23:59:19'),
(22, 1, '1', '1', 'chinmay', 'education and training', '2022-05-05', '10001', '221', 'expenses', 'test', 'submitted', NULL, '2022-05-31', 'on', NULL, NULL, '2022-05-31 04:57:23', '2022-05-31 04:57:23'),
(23, 1, '1', '1', 'chinmay', 'software license', '2022-05-19', '100', '10', 'expenses', 'test', 'submitted', NULL, '2022-05-31', 'on', NULL, NULL, '2022-05-31 05:03:14', '2022-05-31 05:03:14'),
(24, 1, '1', '1', 'chinmay', 'travel', '2022-06-29', '322', '121', 'expenses', 'content', 'submitted', NULL, '2022-06-01', 'on', NULL, 'http://localhost:8000/uploads/images/1654060332.jpg', '2022-05-31 23:42:12', '2022-05-31 23:42:12'),
(25, 18, '18', '18', 'chinmay', 'miscellaneous', '2022-06-23', '1000', '100', 'my-expenses', 'test', 'declined', '2022-06-04', '2022-06-22', 'on', '2022-06-22', 'http://localhost:8000/uploads/images/1654336302.jpg', '2022-06-04 04:21:42', '2022-06-22 00:00:43'),
(26, 18, '32', '18', 'chinmay', 'Accommodations', '2022-06-15', '111', '111', 'expenses', 'gtertet', 'declined', '2022-06-22', '2022-06-22', 'on', '2022-06-22', NULL, '2022-06-22 00:01:29', '2022-06-22 00:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_categories`
--

CREATE TABLE `expenses_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `expenses_category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_categories`
--

INSERT INTO `expenses_categories` (`id`, `company_id`, `expenses_category_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'accommodations', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(2, 1, 'education and training', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(3, 1, 'meals', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(4, 1, 'miscellaneous', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(5, 1, 'rent and utilities', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(6, 1, 'software license', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(7, 1, 'travel', '2022-02-01 04:38:07', '2022-02-01 04:38:07'),
(23, 18, 'accommodations', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(24, 18, 'education and training', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(25, 18, 'meals', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(26, 18, 'miscellaneous', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(27, 18, 'rent and utilities', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(28, 18, 'software license', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(29, 18, 'travel', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(30, 21, 'accommodations', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(31, 21, 'education and training', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(32, 21, 'meals', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(33, 21, 'miscellaneous', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(34, 21, 'rent and utilities', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(35, 21, 'software license', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(36, 21, 'travel', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(37, 22, 'accommodations', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(38, 22, 'education and training', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(39, 22, 'meals', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(40, 22, 'miscellaneous', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(41, 22, 'rent and utilities', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(42, 22, 'software license', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(43, 22, 'travel', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(44, 24, 'accommodations', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(45, 24, 'education and training', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(46, 24, 'meals', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(47, 24, 'miscellaneous', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(48, 24, 'rent and utilities', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(49, 24, 'software license', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(50, 24, 'travel', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(51, 25, 'accommodations', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(52, 25, 'education and training', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(53, 25, 'meals', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(54, 25, 'miscellaneous', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(55, 25, 'rent and utilities', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(56, 25, 'software license', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(57, 25, 'travel', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(58, 39, 'accommodations', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(59, 39, 'education and training', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(60, 39, 'meals', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(61, 39, 'miscellaneous', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(62, 39, 'rent and utilities', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(63, 39, 'software license', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(64, 39, 'travel', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(65, 40, 'accommodations', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(66, 40, 'education and training', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(67, 40, 'meals', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(68, 40, 'miscellaneous', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(69, 40, 'rent and utilities', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(70, 40, 'software license', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(71, 40, 'travel', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(72, 41, 'accommodations', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(73, 41, 'education and training', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(74, 41, 'meals', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(75, 41, 'miscellaneous', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(76, 41, 'rent and utilities', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(77, 41, 'software license', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(78, 41, 'travel', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(79, 42, 'accommodations', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(80, 42, 'education and training', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(81, 42, 'meals', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(82, 42, 'miscellaneous', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(83, 42, 'rent and utilities', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(84, 42, 'software license', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(85, 42, 'travel', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(86, 43, 'accommodations', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(87, 43, 'education and training', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(88, 43, 'meals', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(89, 43, 'miscellaneous', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(90, 43, 'rent and utilities', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(91, 43, 'software license', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(92, 43, 'travel', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `hr_roles`
--

CREATE TABLE `hr_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_groups_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hr_roles`
--

INSERT INTO `hr_roles` (`id`, `name`, `module_id`, `permission_groups_id`, `created_at`, `updated_at`) VALUES
(1, 'access owner access level', '1,2,3,4,5,6,7,8', '1,2,3,4,5,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,6,7,8,9,10,11,12,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61', '2022-01-06 02:47:45', '2022-01-24 04:48:11'),
(2, 'adminstrator access level', '1,2,3,4,5,6,7,8', NULL, '2022-01-06 02:48:42', '2022-01-06 03:39:26'),
(3, 'team manager access level', '1,2,3,4,5,6,7', '', '2022-01-06 02:49:10', '2022-01-06 03:39:46'),
(4, 'employee access level', '1,2,3,4,5,6,7', '1,2,13,14,15,25,26,27,28,29,6,7,30,31,32,33,44,49,50', '2022-01-06 02:49:33', '2022-01-24 04:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `applicants` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `industry`, `company_logo`, `job_title`, `location`, `description`, `skill_required`, `employment_type`, `salary`, `status`, `applicants`, `created_at`, `updated_at`) VALUES
(1, 1, 'rixosys', NULL, 'software developer', 'Cuttack', 'test', 'php', 'full-time', 'Not Disclosed', 'open', NULL, '2022-02-23 01:22:51', '2022-02-23 01:22:51'),
(2, 1, 'rixosys', 'http://hrsoftware.com/uploads/images/1645600620.jpg', 'software developer', 'bbsr', 'test', 'php', 'full-time', 'Not Disclosed', 'open', NULL, '2022-02-23 01:47:00', '2022-02-23 01:47:00'),
(3, 18, 'asia', 'http://localhost:8000/uploads/images/1653638999.jpg', 'desasds', 'bbsr', 'ewwwww', 'web', 'work_from_home', '10000', 'open', NULL, '2022-05-27 02:39:59', '2022-05-27 02:39:59'),
(4, 18, 'rixosys', 'http://localhost:8000/uploads/images/1653644092.png', 'developer12', 'Cuttack', 'i am CHINMAY ...', 'html,css,saas', 'work_from_home', '12000', 'open', NULL, '2022-05-27 04:04:52', '2022-05-30 02:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_ph_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('SELECTED','REJECTED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `job_id`, `first_name`, `last_name`, `email`, `ph_number`, `alt_ph_number`, `notice_period`, `country`, `state`, `city`, `cv`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'test', 'test@gmail.com', '11111111111', '11111111111111', '2', 'Azerbaijan', 'test', 'test', '1645599804.docx', NULL, '2022-02-23 01:33:24', '2022-02-23 01:33:24'),
(2, 1, 'sankar', 'samanta', 'sankar@gmail.com', '44444444444', '5555555555555', '3', 'Austria', 'test', 'test', '1645599907.docx', NULL, '2022-02-23 01:35:07', '2022-02-23 01:35:07'),
(3, 2, 'test', 'test', 'test@gmail.com', '1111111111', '11111111111111', '2', 'Afghanistan', 'test', 'test', '1645603131.docx', NULL, '2022-02-23 02:28:51', '2022-02-23 02:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `company_id`, `location_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Office', NULL, NULL),
(2, 18, 'Office', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(3, 21, 'Office', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(4, 22, 'Office', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(5, 24, 'Office', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(6, 25, 'Office', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(7, 39, 'Office', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(8, 40, 'Office', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(9, 41, 'Office', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(10, 42, 'Office', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(11, 43, 'Office', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

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
(781, '2014_10_12_000000_create_users_table', 1),
(782, '2014_10_12_100000_create_password_resets_table', 1),
(783, '2021_11_10_105345_create_admins_table', 1),
(784, '2021_11_10_105346_create_admin_password_resets_table', 1),
(785, '2021_11_11_120630_create_people_table', 1),
(786, '2021_11_12_073657_create_expenses_table', 1),
(787, '2021_11_24_122015_create_employee_personals_table', 1),
(788, '2021_11_25_083137_create_countries_table', 1),
(789, '2021_11_29_063418_create_workflow_templates_table', 1),
(790, '2021_11_29_071139_create_workflow_template_items_table', 1),
(791, '2021_11_30_061253_create_workflows_table', 1),
(792, '2021_12_01_105829_create_user_template_items_table', 1),
(793, '2021_12_03_073650_create_payruns_table', 1),
(794, '2021_12_03_114215_create_payrun_salaries_table', 1),
(795, '2021_12_08_073247_create_time_off_policies_table', 1),
(796, '2021_12_08_160837_create_payroll_infos_table', 1),
(797, '2021_12_09_054248_create_payroll_compensation_table', 1),
(798, '2021_12_09_061816_create_currencies_table', 1),
(799, '2021_12_09_131340_create_additional_compensation_table', 1),
(800, '2021_12_13_055433_create_closed_payruns_table', 1),
(801, '2021_12_13_055505_create_closed_payrun_salaries_table', 1),
(802, '2021_12_13_062836_create_closed_additional_compensation_table', 1),
(803, '2021_12_13_062854_create_closed_payroll_compensation_table', 1),
(804, '2021_12_14_053522_create_time_off_assigneds_table', 1),
(805, '2021_12_16_054132_create_time_off_types_table', 1),
(806, '2021_12_16_082832_create_time_offs_table', 1),
(807, '2021_12_21_075213_create_time_off_balances_table', 1),
(808, '2021_12_22_070639_create_all_time_off_balances_table', 1),
(809, '2021_12_27_111138_create_superadmins_table', 1),
(810, '2021_12_27_111139_create_superadmin_password_resets_table', 1),
(811, '2021_12_28_064640_create_companies_table', 1),
(812, '2021_12_28_064916_create_company_currencies_table', 1),
(813, '2021_12_28_111031_create_plans_table', 1),
(814, '2021_12_28_111040_create_plan_features_table', 1),
(815, '2021_12_31_060535_create_jobs_table', 1),
(816, '2021_12_31_075011_create_states_table', 1),
(817, '2021_12_31_111204_create_job_applicants_table', 1),
(818, '2022_01_03_061048_create_projects_table', 1),
(819, '2022_01_04_121054_create_permission_tables', 1),
(820, '2022_01_05_054449_create_permission_groups_table', 1),
(821, '2022_01_05_081536_create_modules_table', 1),
(822, '2022_01_06_081338_create_hr_roles_table', 2),
(823, '2022_01_10_095811_create_teams_table', 3),
(824, '2022_01_10_120228_create_locations_table', 4),
(825, '2022_01_11_073518_create_work_schedules_table', 5),
(826, '2022_01_11_111502_create_workweeks_table', 6),
(827, '2022_01_11_115522_create_workschedule_workweeks_table', 7),
(828, '2022_01_12_124942_create_work_schedule_breaks_table', 8),
(829, '2022_01_17_074437_create_employee_assigned_projects_table', 9),
(830, '2022_01_17_102256_create_employee_assigned_breaks_table', 9),
(831, '2022_01_19_082353_create_overtime_balances_table', 10),
(832, '2022_01_20_070937_create_positions_table', 10),
(840, '2022_01_21_085034_create_company_announcements_table', 11),
(841, '2022_01_22_055842_create_company_key_contacts_table', 11),
(842, '2022_01_22_063246_create_company_assets_table', 12),
(843, '2022_01_22_075343_create_company_applications_table', 13),
(844, '2020_11_27_104033_create_payment_gateways_table', 14),
(845, '2021_11_23_111204_create_stripe_payment_methods_table', 14),
(846, '2021_11_23_131407_create_subscriptions_table', 14),
(847, '2021_11_26_122552_create_payments_table', 14),
(848, '2022_01_29_060959_create_company_documents_table', 15),
(849, '2022_01_29_100245_create_company_folders_table', 16),
(850, '2022_02_01_072016_create_employee_folders_table', 17),
(851, '2022_02_01_084946_create_expenses_categories_table', 18),
(852, '2022_02_09_055652_create_employee_documents_table', 19),
(853, '2022_02_09_073004_create_additional_types_table', 20),
(854, '2022_02_11_062702_create_email_invitations_table', 21),
(855, '2022_02_11_115007_create_employee_notes_table', 22),
(856, '2022_02_15_085947_create_company_payrolls_table', 23),
(857, '2022_02_23_082322_create_company_details_table', 24),
(858, '2022_03_03_121118_create_company_holidays_table', 25),
(859, '2022_03_15_104649_create_notifications_table', 26),
(860, '2022_03_17_074739_create_employee_timeoff_adjustments_table', 26),
(861, '2022_03_28_065352_create_disposal_email_domains_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'Employee data', NULL, NULL),
(2, 'Time off', NULL, NULL),
(3, 'Calendar', NULL, NULL),
(4, 'Attendance', NULL, NULL),
(5, 'Company settings', NULL, NULL),
(6, 'Payroll', NULL, NULL),
(7, 'Expenses', NULL, NULL),
(8, 'Account settings', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `team_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notificationtext` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `company_id`, `team_type`, `notificationtext`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, '25', 'Your expense request for 100(miscellaneous) has been submitted', 'inactive', '2022-03-17 04:29:10', '2022-03-24 16:41:51'),
(2, 25, '25', 'Your Sick leave time off request for 2022-04-21-2022-04-23is awaiting approval', 'inactive', '2022-03-17 04:32:45', '2022-03-24 16:41:51'),
(3, 25, '25', 'Your expense request for 200(education and training) has been submitted', 'inactive', '2022-03-17 04:35:42', '2022-03-24 16:41:51'),
(4, 25, '25', 'Your expense request for 200(meals) has been submitted', 'inactive', '2022-03-17 04:40:37', '2022-03-24 16:41:51'),
(5, 25, '25', 'Your Sick leave time off request for 2022-03-18-2022-03-20is awaiting approval', 'inactive', '2022-03-17 04:41:04', '2022-03-24 16:41:51'),
(6, 25, '25', 'Your Vacation time off request for 2022-03-19-2022-03-20is awaiting approval', 'inactive', '2022-03-17 22:57:02', '2022-03-24 16:41:51'),
(7, 25, '25', 'Your Sick leave time off request for 2022-03-22-2022-03-23is awaiting approval', 'inactive', '2022-03-17 22:58:11', '2022-03-24 16:41:51'),
(8, 25, '25', 'Your Sick leave time off request for 2022-03-22-2022-03-23has been approved', 'inactive', '2022-03-17 23:07:32', '2022-03-24 16:41:51'),
(9, 25, '25', 'Your Sick leave time off request for 2022-03-19-2022-03-20is awaiting approval', 'inactive', '2022-03-18 01:55:24', '2022-03-24 16:41:51'),
(10, 25, '25', 'Your Sick leave time off request for 2022-03-19-2022-03-20has been approved', 'inactive', '2022-03-18 02:32:58', '2022-03-24 16:41:51'),
(11, 25, '25', 'Your Sick leave time off request for 2022-03-18-2022-03-19is awaiting approval', 'inactive', '2022-03-18 03:05:59', '2022-03-24 16:41:51'),
(12, 25, '25', 'Your Sick leave time off request for 2022-04-01-2022-04-01is awaiting approval', 'inactive', '2022-03-18 03:09:35', '2022-03-24 16:41:51'),
(13, 25, '25', 'Your expense request for 200(meals) has been submitted', 'inactive', '2022-03-20 06:55:25', '2022-03-24 16:41:51'),
(14, 25, '27', 'Your expense request for () has been submitted', 'active', '2022-03-20 07:24:43', '2022-03-20 07:24:43'),
(15, 25, '27', 'Your expense request for 200(education and training) has been submitted', 'active', '2022-03-20 07:29:15', '2022-03-20 07:29:15'),
(16, 25, '27', 'Your expense request for 300(software license) has been submitted', 'active', '2022-03-20 07:45:50', '2022-03-20 07:45:50'),
(17, 25, '25', 'Your Sick leave time off request for 2022-03-23-2022-03-24is awaiting approval', 'inactive', '2022-03-21 03:09:49', '2022-03-24 16:41:51'),
(18, 25, '25', 'Your Sick leave time off request for 2022-03-30-2022-04-02is awaiting approval', 'inactive', '2022-03-21 03:17:19', '2022-03-24 16:41:51'),
(19, 25, '25', 'Your Vacation time off request for 2022-03-25-2022-03-26is awaiting approval', 'inactive', '2022-03-21 03:18:03', '2022-03-24 16:41:51'),
(20, 25, '25', 'Your Sick leave time off request for 2022-03-18-2022-03-19has been declined', 'inactive', '2022-03-21 09:19:54', '2022-03-24 16:41:51'),
(21, 25, '25', 'Your Sick leave time off request for 2022-03-25-2022-03-26is awaiting approval', 'inactive', '2022-03-21 12:51:14', '2022-03-24 16:41:51'),
(22, 25, '25', 'Your Sick leave time off request for 2022-03-25-2022-03-28is awaiting approval', 'inactive', '2022-03-21 12:52:59', '2022-03-24 16:41:51'),
(23, 25, '25', 'Your Sick leave time off request for 2022-03-25-2022-03-26is awaiting approval', 'inactive', '2022-03-23 14:01:00', '2022-03-24 16:41:51'),
(24, 25, '25', 'Your Compensatory time off request for 2022-03-28-2022-03-29is awaiting approval', 'inactive', '2022-03-23 14:21:51', '2022-03-24 16:41:51'),
(25, 25, '25', 'Your Compensatory time off request for 2022-03-28-2022-03-29is awaiting approval', 'inactive', '2022-03-23 14:22:18', '2022-03-24 16:41:51'),
(26, 25, '25', 'Your Compensatory time off request for 2022-03-28-2022-03-29is awaiting approval', 'inactive', '2022-03-23 14:23:09', '2022-03-24 16:41:51'),
(27, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31is awaiting approval', 'inactive', '2022-03-23 14:23:32', '2022-03-24 16:41:51'),
(28, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31has been declined', 'inactive', '2022-03-23 14:35:01', '2022-03-24 16:41:51'),
(29, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31is awaiting approval', 'inactive', '2022-03-23 14:35:25', '2022-03-24 16:41:51'),
(30, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31has been approved', 'inactive', '2022-03-23 14:40:16', '2022-03-24 16:41:51'),
(31, 25, '25', 'Your Compensatory time off request for 2022-03-28-2022-03-29has been cancelled', 'inactive', '2022-03-23 14:47:04', '2022-03-24 16:41:51'),
(32, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31has been cancelled', 'inactive', '2022-03-23 15:37:30', '2022-03-24 16:41:51'),
(33, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31is awaiting approval', 'inactive', '2022-03-23 15:37:50', '2022-03-24 16:41:51'),
(34, 25, '25', 'Your Compensatory time off request for 2022-03-30-2022-03-31has been approved', 'inactive', '2022-03-23 15:39:16', '2022-03-24 16:41:51'),
(35, 25, '25', 'Your Sick leave time off request for 2022-03-28-2022-03-29is awaiting approval', 'inactive', '2022-03-24 16:23:18', '2022-03-24 16:41:51'),
(36, 25, '25', 'Your Compensatory time off request for 2022-03-31-2022-04-01is awaiting approval', 'active', '2022-03-24 17:04:03', '2022-03-24 17:04:03'),
(37, 25, '25', 'Your Compensatory time off request for 2022-03-31-2022-04-01has been approved', 'active', '2022-03-25 00:49:16', '2022-03-25 00:49:16'),
(38, 25, '25', 'Your Compensatory time off request for 2022-04-01-2022-04-02is awaiting approval', 'active', '2022-03-25 01:13:00', '2022-03-25 01:13:00'),
(39, 25, '25', 'Your Sick leave time off request for 2022-03-24-2022-03-26is awaiting approval', 'active', '2022-03-25 07:20:37', '2022-03-25 07:20:37'),
(40, 18, '18', 'Your expense request for 100(miscellaneous) has been submitted', 'active', '2022-05-30 02:56:56', '2022-05-30 02:56:56'),
(41, 18, '18', 'Your expense request for 100(miscellaneous) has been approved', 'active', '2022-05-30 04:49:37', '2022-05-30 04:49:37'),
(42, 18, '18', 'Your expense request for 100(miscellaneous)expense has been declined', 'active', '2022-05-30 04:50:35', '2022-05-30 04:50:35'),
(43, 18, '18', 'Your expense request for 1211(miscellaneous) has been submitted', 'active', '2022-05-31 04:33:27', '2022-05-31 04:33:27'),
(44, 18, '18', 'Your expense request for 100(accommodations) has been submitted', 'active', '2022-05-31 04:55:23', '2022-05-31 04:55:23'),
(45, 1, '1', 'Your expense request for 10001(education and training) has been submitted', 'active', '2022-05-31 04:57:24', '2022-05-31 04:57:24'),
(46, 1, '1', 'Your expense request for 100(software license) has been submitted', 'active', '2022-05-31 05:03:14', '2022-05-31 05:03:14'),
(47, 18, '18', 'Your expense request for 100(meals)expense has been declined', 'active', '2022-05-31 05:10:16', '2022-05-31 05:10:16'),
(48, 1, '1', 'Your expense request for 322(travel) has been submitted', 'active', '2022-05-31 23:42:12', '2022-05-31 23:42:12'),
(49, 18, '18', 'Your expense request for 1000(miscellaneous) has been submitted', 'active', '2022-06-04 04:21:42', '2022-06-04 04:21:42'),
(50, 18, '18', 'Your expense request for 1000(miscellaneous) has been approved', 'active', '2022-06-04 04:27:57', '2022-06-04 04:27:57'),
(51, 18, '18', 'Your expense request for 1211(miscellaneous) has been approved', 'active', '2022-06-21 23:58:18', '2022-06-21 23:58:18'),
(52, 18, '18', 'Your expense request for 1211(miscellaneous)expense has been declined', 'active', '2022-06-21 23:58:23', '2022-06-21 23:58:23'),
(53, 18, '18', 'Your expense request for 100(accommodations) has been approved', 'active', '2022-06-21 23:59:14', '2022-06-21 23:59:14'),
(54, 18, '18', 'Your expense request for 100(accommodations)expense has been declined', 'active', '2022-06-21 23:59:20', '2022-06-21 23:59:20'),
(55, 18, '18', 'Your expense request for 1000(miscellaneous) has been reimbursed', 'active', '2022-06-22 00:00:37', '2022-06-22 00:00:37'),
(56, 18, '18', 'Your expense request for 1000(miscellaneous)expense has been declined', 'active', '2022-06-22 00:00:43', '2022-06-22 00:00:43'),
(57, 18, '18', 'Your expense request for 1000(miscellaneous)expense has been declined', 'active', '2022-06-22 00:00:52', '2022-06-22 00:00:52'),
(58, 18, '18', 'Your expense request for 111(Accommodations) has been submitted', 'active', '2022-06-22 00:01:30', '2022-06-22 00:01:30'),
(59, 18, '18', 'Your expense request for 111(Accommodations) has been approved', 'active', '2022-06-22 00:01:38', '2022-06-22 00:01:38'),
(60, 18, '18', 'Your expense request for 111(Accommodations)expense has been declined', 'active', '2022-06-22 00:02:18', '2022-06-22 00:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `overtime_balances`
--

CREATE TABLE `overtime_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `people_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overtime_balances`
--

INSERT INTO `overtime_balances` (`id`, `people_id`, `date`, `time`, `balance`, `note`, `created_at`, `updated_at`) VALUES
(1, '3', '07 February 2022', '00:00', '00:00', '', '2022-02-07 11:14:48', '2022-02-07 11:14:48'),
(2, '4', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:35:08', '2022-02-13 00:35:08'),
(3, '5', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:38:32', '2022-02-13 00:38:32'),
(4, '6', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:41:47', '2022-02-13 00:41:47'),
(5, '7', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:45:10', '2022-02-13 00:45:10'),
(6, '8', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:50:31', '2022-02-13 00:50:31'),
(7, '9', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:52:32', '2022-02-13 00:52:32'),
(8, '10', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:53:42', '2022-02-13 00:53:42'),
(9, '11', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:55:06', '2022-02-13 00:55:06'),
(10, '12', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:56:23', '2022-02-13 00:56:23'),
(11, '13', '13 February 2022', '00:00', '00:00', '', '2022-02-13 00:57:27', '2022-02-13 00:57:27'),
(12, '14', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:01:15', '2022-02-13 01:01:15'),
(13, '15', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:02:56', '2022-02-13 01:02:56'),
(14, '16', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:11:05', '2022-02-13 01:11:05'),
(15, '17', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:15:43', '2022-02-13 01:15:43'),
(16, '19', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:50:27', '2022-02-13 01:50:27'),
(17, '20', '13 February 2022', '00:00', '00:00', '', '2022-02-13 01:54:50', '2022-02-13 01:54:50'),
(18, '23', '13 February 2022', '00:00', '00:00', '', '2022-02-13 04:20:46', '2022-02-13 04:20:46'),
(19, '26', '23 March 2022', '00:00', '00:00', '', '2022-03-09 06:23:19', '2022-03-09 06:23:19'),
(20, '27', '23 March 2022', '00:00', '00:00', '', '2022-03-09 11:05:17', '2022-03-09 11:05:17'),
(21, '28', '17 March 2022', '00:00', '00:00', '', '2022-03-09 11:06:08', '2022-03-09 11:06:08'),
(22, '29', '23 March 2022', '00:00', '00:00', '', '2022-03-10 01:09:12', '2022-03-10 01:09:12'),
(23, '30', '01 March 2022', '00:00', '00:00', '', '2022-03-22 13:41:38', '2022-03-22 13:41:38'),
(24, '31', '02 March 2022', '00:00', '00:00', '', '2022-03-22 13:42:50', '2022-03-22 13:42:50'),
(25, '32', '03 May 2022', '00:00', '00:00', '', '2022-05-26 04:23:57', '2022-05-26 04:23:57'),
(26, '33', '30 May 2022', '00:00', '00:00', '', '2022-05-26 06:55:41', '2022-05-26 06:55:41'),
(27, '34', '15 June 2022', '00:00', '00:00', '', '2022-06-23 00:35:06', '2022-06-23 00:35:06'),
(28, '35', '16 June 2022', '00:00', '00:00', '', '2022-06-23 02:04:28', '2022-06-23 02:04:28');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_for` enum('card_verification','bidding') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_refunded` tinyint(4) NOT NULL DEFAULT 0,
  `refund_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `private_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_compensation`
--

CREATE TABLE `payroll_compensation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effective_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_compensation`
--

INSERT INTO `payroll_compensation` (`id`, `user_id`, `amount`, `currency`, `frequency`, `effective_date`, `end_date`, `note`, `created_at`, `updated_at`) VALUES
(4, '23', '200', NULL, 'hourly', '2022-02-21', '2022-02-23', 'test', '2022-02-21 02:43:59', '2022-02-21 02:43:59'),
(5, '1', '100', NULL, 'hourly', '2022-02-22', NULL, 'test', '2022-02-22 06:36:06', '2022-02-22 06:36:06'),
(6, '1', '200', NULL, 'weekly', '2022-02-17', NULL, 'test', '2022-02-22 06:54:40', '2022-02-22 06:54:40'),
(7, '1', '800', NULL, 'hourly', '2022-02-23', '2022-02-24', 'yyy', '2022-02-22 06:55:15', '2022-02-22 06:55:15'),
(9, '25', '1000', NULL, 'hourly', '2022-03-20', '2022-03-23', 'test', '2022-03-20 09:01:35', '2022-03-20 09:01:35'),
(10, '1', '3525423566467', 'usd', 'monthly', '2022-06-06', '2022-06-23', 'chinmay test', '2022-06-06 08:28:38', '2022-06-06 08:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_infos`
--

CREATE TABLE `payroll_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_security_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_ins_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_ins_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_dependants` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_infos`
--

INSERT INTO `payroll_infos` (`id`, `user_id`, `tax_id_number`, `social_security_number`, `health_ins_type`, `health_ins_provider`, `number_of_dependants`, `account_number`, `bic`, `created_at`, `updated_at`) VALUES
(1, '25', '111111', '1111111111', 'statutory', 'me', '11', '3333333333333333', '55555', '2022-03-20 09:24:23', '2022-03-20 09:24:23'),
(2, '1', '1242142', '222', 'statutory', 'test', '2', '76536252542', '2133jug', '2022-06-06 06:21:50', '2022-06-06 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `payruns`
--

CREATE TABLE `payruns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `pay_period_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_period_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payruns`
--

INSERT INTO `payruns` (`id`, `company_id`, `pay_period_from`, `pay_period_to`, `pay_date`, `approver`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, '01-02-2022', '24-02-2022', '2022-02-25', 'sankar', 'inactive', '2022-02-18 00:08:24', '2022-02-18 00:09:18'),
(9, 1, '01-02-2022', '04-02-2022', '2022-02-11', 'sankar', 'inactive', '2022-02-18 00:11:42', '2022-02-18 00:13:56'),
(11, 1, '18-02-2022', '25-02-2022', '2022-02-26', 'sankar', 'active', '2022-02-21 01:45:56', '2022-02-21 01:45:56'),
(12, 25, '2022-03-02', '2022-03-30', '2022-03-31', '25', 'inactive', '2022-03-15 13:50:32', '2022-03-17 06:01:51'),
(13, 25, '2022-03-09', '2022-03-31', '2022-04-01', '25', 'inactive', '2022-03-20 08:46:11', '2022-03-20 08:47:27'),
(14, 25, '2022-03-01', '2022-03-31', '2022-04-01', '25', 'inactive', '2022-03-20 09:00:55', '2022-03-20 09:04:48'),
(15, 18, '2022-05-03', '2022-05-18', '2022-05-19', '18', 'active', '2022-05-30 06:59:43', '2022-05-30 06:59:43'),
(16, 18, '2022-05-03', '2022-05-18', '2022-05-19', '18', 'active', '2022-05-30 06:59:45', '2022-05-30 06:59:45'),
(17, 18, '2022-05-04', '2022-05-26', '2022-05-19', '18', 'active', '2022-05-30 07:17:29', '2022-05-30 07:17:29'),
(18, 18, '2022-05-04', '2022-05-12', '2022-05-24', '18', 'active', '2022-05-30 08:03:18', '2022-05-30 08:03:18'),
(19, 18, '2022-05-31', '2022-06-24', '2022-06-15', '18', 'active', '2022-06-02 04:33:50', '2022-06-02 04:33:50'),
(20, 18, '2022-06-09', '2022-06-08', '2022-06-09', '18', 'active', '2022-06-04 02:34:03', '2022-06-04 02:34:03'),
(21, 18, '2022-06-08', '2022-06-09', '2022-07-01', '18', 'active', '2022-06-04 04:09:24', '2022-06-04 04:09:24'),
(22, 18, '2022-06-10', '2022-07-10', '2022-07-11', '18', 'active', '2022-06-09 02:58:31', '2022-06-09 02:58:31'),
(23, 18, '2022-06-16', '2022-07-15', NULL, '18', 'active', '2022-06-09 04:39:23', '2022-06-09 04:39:23'),
(24, 18, NULL, NULL, NULL, NULL, 'active', '2022-06-23 08:42:41', '2022-06-23 08:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `payrun_salaries`
--

CREATE TABLE `payrun_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payrun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payslip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrun_salaries`
--

INSERT INTO `payrun_salaries` (`id`, `payrun_id`, `employee_id`, `payslip`, `status`, `created_at`, `updated_at`) VALUES
(7, '11', '1', 'http://hrsoftware.com/uploads/images/1645429631.jpg', 'assigned', '2022-02-21 01:46:10', '2022-02-21 02:17:11'),
(8, '11', '23', NULL, 'assigned', '2022-02-21 01:46:10', '2022-02-21 01:46:10'),
(14, '14', '25', NULL, 'inactive', '2022-03-20 09:01:04', '2022-03-20 09:04:48'),
(15, '14', '27', NULL, 'inactive', '2022-03-20 09:01:04', '2022-03-20 09:04:48'),
(16, '14', '28', NULL, 'inactive', '2022-03-20 09:01:04', '2022-03-20 09:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'office',
  `time_of_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probation_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `company_id`, `gender`, `profile_image`, `employee_id`, `email`, `language`, `position`, `team`, `location`, `time_of_policy`, `work_schedule`, `employment_start`, `join_month`, `join_year`, `probation_end`, `employment_end`, `phone_1`, `phone_2`, `status`, `about`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2198873', NULL, NULL, '3', '4', '1', '1', '1', '2022-02-07', NULL, NULL, '2022-05-23', '2022-05-21', NULL, NULL, 'ACTIVE', NULL, '2022-02-07 10:47:21', '2022-05-31 03:59:13'),
(2, 1, NULL, NULL, NULL, NULL, 'English', '1', '1', '1', '1', '2', '2022-02-07', 'Feb', '2022', NULL, NULL, '1234567891', NULL, 'ACTIVE', 'hello', '2022-02-07 11:14:48', '2022-03-09 05:23:01'),
(17, 1, NULL, NULL, NULL, NULL, 'English', '3', '1', '1', '1', '1', '2022-02-13', 'Feb', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 01:15:43', '2022-03-09 05:23:01'),
(18, 18, 'male', NULL, '2198873', NULL, NULL, '10', '6', '2', '1', '3', '2022-02-13', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 01:18:00', '2022-06-09 02:52:36'),
(20, 18, NULL, NULL, NULL, NULL, 'English', '11', '7', '2', '6', '4', '2022-02-13', 'Feb', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 01:54:50', '2022-02-13 01:54:50'),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '5', '2022-02-13', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:03'),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '7', '2022-02-13', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(23, 1, NULL, NULL, NULL, NULL, 'English', '3', '', '1', '1', '2', '2022-02-13', 'Feb', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 04:20:46', '2022-03-09 05:23:01'),
(24, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '1', '9', '2022-02-13', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:39'),
(25, 25, NULL, 'http://localhost:8000/uploads/images/1647362595.jpg', NULL, NULL, NULL, '36', '26', '6', '21', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-08 06:50:37', '2022-03-20 10:30:55'),
(26, 1, NULL, NULL, NULL, NULL, 'English', '2', '2', '1', '4', '1', '2022-03-23', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-09 06:23:19', '2022-03-09 06:23:19'),
(27, 25, NULL, NULL, NULL, NULL, 'English', '36', '26', '6', '22', '11', '2022-03-23', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-09 11:05:17', '2022-03-09 11:05:17'),
(28, 25, NULL, NULL, NULL, NULL, 'English', '37', '28', '6', '22', '11', '2022-03-17', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-09 11:06:08', '2022-03-09 11:06:08'),
(29, 25, NULL, NULL, NULL, NULL, 'English', '37', '26', '6', '22', '11', '2022-03-23', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-10 01:09:12', '2022-03-10 01:09:12'),
(30, 25, NULL, NULL, NULL, NULL, 'English', '36', '27', '6', '22', '11', '2022-03-01', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-22 13:41:38', '2022-03-22 13:41:38'),
(31, 25, NULL, NULL, NULL, NULL, 'English', '36', '27', '6', '22', '11', '2022-03-02', 'Mar', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-03-22 13:42:49', '2022-03-22 13:42:49'),
(32, 18, NULL, NULL, NULL, NULL, 'English', '13', '8', '2', '7', '3', '2022-05-03', 'May', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-05-26 04:23:56', '2022-05-26 04:23:56'),
(33, 18, NULL, NULL, NULL, NULL, 'English', '13', '9', '2', '6', '3', '2022-05-30', 'May', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-05-26 06:55:41', '2022-05-26 06:55:41'),
(34, 18, NULL, NULL, NULL, NULL, 'English', '9', '7', '2', '6', '4', '2022-06-15', 'Jun', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-06-23 00:35:06', '2022-06-23 00:35:06'),
(35, 18, NULL, NULL, NULL, NULL, 'English', '11', '10', '2', '6', '3', '2022-06-16', 'Jun', '2022', NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-06-23 02:04:27', '2022-06-23 02:04:27'),
(36, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'office', NULL, NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(37, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'office', NULL, NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(38, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'office', NULL, NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(43, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '1', '21', '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-07-15 01:48:15', '2022-07-15 02:22:50'),
(44, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'office', NULL, NULL, '2022-07-15', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_group_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_group_id`, `name`, `slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'access-to-own-profile-data_create', 'Create', 'web', '2022-01-05 05:06:19', '2022-01-05 05:06:19'),
(2, 1, 'access-to-own-profile-data_read', 'Read', 'web', '2022-01-05 05:06:19', '2022-01-05 05:06:19'),
(3, 1, 'access-to-own-profile-data_update', 'Update', 'web', '2022-01-05 05:06:19', '2022-01-05 05:06:19'),
(4, 1, 'access-to-own-profile-data_delete', 'Delete', 'web', '2022-01-05 05:06:19', '2022-01-05 05:06:19'),
(5, 2, 'access-to-own-time-off-records-and-balances_create', 'Create', 'web', '2022-01-05 05:06:33', '2022-01-05 05:06:33'),
(6, 2, 'access-to-own-time-off-records-and-balances_read', 'Read', 'web', '2022-01-05 05:06:33', '2022-01-05 05:06:33'),
(7, 2, 'access-to-own-time-off-records-and-balances_update', 'Update', 'web', '2022-01-05 05:06:33', '2022-01-05 05:06:33'),
(8, 2, 'access-to-own-time-off-records-and-balances_delete', 'Delete', 'web', '2022-01-05 05:06:33', '2022-01-05 05:06:33'),
(9, 3, 'reports_create', 'Create', 'web', '2022-01-05 06:50:04', '2022-01-05 06:50:04'),
(10, 3, 'reports_read', 'Read', 'web', '2022-01-05 06:50:04', '2022-01-05 06:50:04'),
(11, 3, 'reports_update', 'Update', 'web', '2022-01-05 06:50:04', '2022-01-05 06:50:04'),
(12, 3, 'reports_delete', 'Delete', 'web', '2022-01-05 06:50:04', '2022-01-05 06:50:04'),
(13, 4, 'upload-documents-to-own-profile_create', 'Create', 'web', '2022-01-05 07:36:42', '2022-01-05 07:36:42'),
(14, 4, 'upload-documents-to-own-profile_read', 'Read', 'web', '2022-01-05 07:36:42', '2022-01-05 07:36:42'),
(15, 4, 'upload-documents-to-own-profile_update', 'Update', 'web', '2022-01-05 07:36:42', '2022-01-05 07:36:42'),
(16, 4, 'upload-documents-to-own-profile_delete', 'Delete', 'web', '2022-01-05 07:36:42', '2022-01-05 07:36:42'),
(17, 5, 'transfer-ownership-of-the-account_create', 'Create', 'web', '2022-01-06 02:05:00', '2022-01-06 02:05:00'),
(18, 5, 'transfer-ownership-of-the-account_read', 'Read', 'web', '2022-01-06 02:05:00', '2022-01-06 02:05:00'),
(19, 5, 'transfer-ownership-of-the-account_update', 'Update', 'web', '2022-01-06 02:05:00', '2022-01-06 02:05:00'),
(20, 5, 'transfer-ownership-of-the-account_delete', 'Delete', 'web', '2022-01-06 02:05:00', '2022-01-06 02:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1-> create, 2-> read, 3-> update, 4->delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `module_id`, `name`, `slug`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 1, 'Access to own profile data', 'access-to-own-profile-data', NULL, '2022-01-22 05:07:29', '2022-01-22 05:07:29'),
(2, 1, 'Upload documents to own profile', 'upload-documents-to-own-profile', NULL, '2022-01-22 05:07:43', '2022-01-22 05:07:43'),
(3, 1, 'Access to team members\' profile data', 'access-to-team-members-profile-data', NULL, '2022-01-22 05:08:03', '2022-01-22 05:08:03'),
(4, 1, 'Access to all employees profile data', 'access-to-all-employees-profile-data', NULL, '2022-01-22 05:08:11', '2022-01-22 05:08:11'),
(5, 1, 'Delete and deactivate employees accounts', 'delete-and-deactivate-employees-accounts', NULL, '2022-01-22 05:08:19', '2022-01-22 05:08:19'),
(6, 4, 'Access to own attendance records', 'access-to-own-attendance-records', NULL, '2022-01-24 03:09:02', '2022-01-24 03:09:02'),
(7, 4, 'Access to own work schedule overview', 'access-to-own-work-schedule-overview', NULL, '2022-01-24 03:09:20', '2022-01-24 03:09:20'),
(8, 4, 'Access to team member\'s work schedule overview', 'access-to-team-members-work-schedule-overview', NULL, '2022-01-24 03:09:35', '2022-01-24 03:09:35'),
(9, 4, 'Access to team member\'s attendance records', 'access-to-team-members-attendance-records', NULL, '2022-01-24 03:09:48', '2022-01-24 03:09:48'),
(10, 4, 'Set up and manage company work schedules', 'set-up-and-manage-company-work-schedules', NULL, '2022-01-24 03:10:05', '2022-01-24 03:10:05'),
(11, 4, 'Access to all employees attendance records', 'access-to-all-employees-attendance-records', NULL, '2022-01-24 03:10:16', '2022-01-24 03:10:16'),
(12, 4, 'Manage all employees attendance records', 'manage-all-employees-attendance-records', NULL, '2022-01-24 03:10:26', '2022-01-24 03:10:26'),
(13, 2, 'Access to own time off records and balances', 'access-to-own-time-off-records-and-balances', NULL, '2022-01-24 04:17:51', '2022-01-24 04:17:51'),
(14, 2, 'Can submit time off request', 'can-submit-time-off-request', NULL, '2022-01-24 04:18:03', '2022-01-24 04:18:03'),
(15, 2, 'Cancel own time off requests', 'cancel-own-time-off-requests', NULL, '2022-01-24 04:18:12', '2022-01-24 04:18:12'),
(16, 2, 'Access and manage all employees time off records and balances', 'access-and-manage-all-employees-time-off-records-and-balances', NULL, '2022-01-24 04:18:23', '2022-01-24 04:18:23'),
(17, 2, 'Access and manage team members\' time off records and balances', 'access-and-manage-team-members-time-off-records-and-balances', NULL, '2022-01-24 04:18:33', '2022-01-24 04:18:33'),
(18, 2, 'Submit time off request on behalf of team members', 'submit-time-off-request-on-behalf-of-team-members', NULL, '2022-01-24 04:18:41', '2022-01-24 04:18:41'),
(19, 2, 'Approve, decline and cancel time off requests', 'approve-decline-and-cancel-time-off-requests', NULL, '2022-01-24 04:18:51', '2022-01-24 04:18:51'),
(20, 2, 'Approve, decline and cancel team members\' time off requests', 'approve-decline-and-cancel-team-members-time-off-requests', NULL, '2022-01-24 04:19:01', '2022-01-24 04:19:01'),
(21, 2, 'Create, manage and delete time off policies', 'create-manage-and-delete-time-off-policies', NULL, '2022-01-24 04:19:11', '2022-01-24 04:19:11'),
(22, 2, 'Create, manage and delete time off types', 'create-manage-and-delete-time-off-types', NULL, '2022-01-24 04:19:20', '2022-01-24 04:19:20'),
(23, 2, 'Assign time off policies to employees', 'assign-time-off-policies-to-employees', NULL, '2022-01-24 04:19:29', '2022-01-24 04:19:29'),
(24, 2, 'Adjust employees time off balances', 'adjust-employees-time-off-balances', NULL, '2022-01-24 04:19:39', '2022-01-24 04:19:39'),
(25, 3, 'Access to company calendar', 'access-to-company-calendar', NULL, '2022-01-24 04:23:21', '2022-01-24 04:23:21'),
(26, 3, 'Access to company time off calendar', 'access-to-company-time-off-calendar', NULL, '2022-01-24 04:23:32', '2022-01-24 04:23:32'),
(27, 3, 'Access to company birthday calendar', 'access-to-company-birthday-calendar', NULL, '2022-01-24 04:23:42', '2022-01-24 04:23:42'),
(28, 3, 'Access to company public holiday calendar', 'access-to-company-public-holiday-calendar', NULL, '2022-01-24 04:23:51', '2022-01-24 04:23:51'),
(29, 3, 'Sync company calendar with Google Calendar, iCal and Outlook', 'sync-company-calendar-with-google-calendar-ical-and-outlook', NULL, '2022-01-24 04:24:01', '2022-01-24 04:24:01'),
(30, 5, 'Access to company profile data', 'access-to-company-profile-data', NULL, '2022-01-24 04:29:03', '2022-01-24 04:29:03'),
(31, 5, 'Access to assets assigned to own profile', 'access-to-assets-assigned-to-own-profile', NULL, '2022-01-24 04:29:14', '2022-01-24 04:29:14'),
(32, 5, 'Access to company tools', 'access-to-company-tools', NULL, '2022-01-24 04:29:23', '2022-01-24 04:29:23'),
(33, 5, 'Access to company documents', 'access-to-company-documents', NULL, '2022-01-24 04:29:32', '2022-01-24 04:29:32'),
(34, 5, 'Access to team member\'s assets', 'access-to-team-members-assets', NULL, '2022-01-24 04:29:43', '2022-01-24 04:29:43'),
(35, 5, 'Access to user permission overview', 'access-to-user-permission-overview', NULL, '2022-01-24 04:29:53', '2022-01-24 04:29:53'),
(36, 5, 'Add new employee accounts and send invitations', 'add-new-employee-accounts-and-send-invitations', NULL, '2022-01-24 04:30:03', '2022-01-24 04:30:03'),
(37, 5, 'Upload and manage company documents', 'upload-and-manage-company-documents', NULL, '2022-01-24 04:30:12', '2022-01-24 04:30:12'),
(38, 5, 'Customise company profile settings', 'customise-company-profile-settings', NULL, '2022-01-24 04:30:21', '2022-01-24 04:30:21'),
(39, 5, 'Create and manage company assets', 'create-and-manage-company-assets', NULL, '2022-01-24 04:30:32', '2022-01-24 04:30:32'),
(40, 5, 'Assign administrator role', 'assign-administrator-role', NULL, '2022-01-24 04:30:41', '2022-01-24 04:30:41'),
(41, 5, 'Create and manage company tools', 'create-and-manage-company-tools', NULL, '2022-01-24 04:30:49', '2022-01-24 04:30:49'),
(42, 5, 'Set up and manage company\'s teams, positions, locations', 'set-up-and-manage-companys-teams-positions-locations', NULL, '2022-01-24 04:30:59', '2022-01-24 04:30:59'),
(43, 5, 'Set up and manage public holidays', 'set-up-and-manage-public-holidays', NULL, '2022-01-24 04:31:08', '2022-01-24 04:31:08'),
(44, 6, 'Access to own paysheets', 'access-to-own-paysheets', NULL, '2022-01-24 04:36:01', '2022-01-24 04:36:01'),
(45, 6, 'Access to team member\'s paysheets', 'access-to-team-members-paysheets', NULL, '2022-01-24 04:36:12', '2022-01-24 04:36:12'),
(46, 6, 'Access to all employees paysheets', 'access-to-all-employees-paysheets', NULL, '2022-01-24 04:36:21', '2022-01-24 04:36:21'),
(47, 6, 'Viewing, adding, editing, deleting and closing pay runs', 'viewing-adding-editing-deleting-and-closing-pay-runs', NULL, '2022-01-24 04:36:36', '2022-01-24 04:36:36'),
(48, 6, 'Deleting paysheets', 'deleting-paysheets', NULL, '2022-01-24 04:36:51', '2022-01-24 04:36:51'),
(49, 7, 'Adding own expenses', 'adding-own-expenses', NULL, '2022-01-24 04:39:37', '2022-01-24 04:39:37'),
(50, 7, 'Deleting/editing own expenses in \"Submitted\" status', 'deletingediting-own-expenses-in-submitted-status', NULL, '2022-01-24 04:39:48', '2022-01-24 04:39:48'),
(51, 7, 'Access to team member\'s expenses', 'access-to-team-members-expenses', NULL, '2022-01-24 04:39:58', '2022-01-24 04:39:58'),
(52, 7, 'Access to all employee\'s expenses', 'access-to-all-employees-expenses', NULL, '2022-01-24 04:40:07', '2022-01-24 04:40:07'),
(53, 7, 'Adding expenses on behalf of other employees', 'adding-expenses-on-behalf-of-other-employees', NULL, '2022-01-24 04:40:17', '2022-01-24 04:40:17'),
(54, 7, 'Editing and deleting expenses after approval', 'editing-and-deleting-expenses-after-approval', NULL, '2022-01-24 04:40:27', '2022-01-24 04:40:27'),
(55, 7, 'Approving, declining or marking expenses as reimbursed', 'approving-declining-or-marking-expenses-as-reimbursed', NULL, '2022-01-24 04:40:38', '2022-01-24 04:40:38'),
(56, 7, 'Manage expenses categories', 'manage-expenses-categories', NULL, '2022-01-24 04:40:48', '2022-01-24 04:40:48'),
(57, 8, 'Change and reset password of own account', 'change-and-reset-password-of-own-account', NULL, '2022-01-24 04:47:02', '2022-01-24 04:47:02'),
(58, 8, 'Access to billing and payment details', 'access-to-billing-and-payment-details', NULL, '2022-01-24 04:47:15', '2022-01-24 04:47:15'),
(59, 8, 'Manage subscription plan', 'manage-subscription-plan', NULL, '2022-01-24 04:47:26', '2022-01-24 04:47:26'),
(60, 8, 'Transfer ownership of the account', 'transfer-ownership-of-the-account', NULL, '2022-01-24 04:47:37', '2022-01-24 04:47:37'),
(61, 8, 'Delete company account', 'delete-company-account', NULL, '2022-01-24 04:47:47', '2022-01-24 04:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `importance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `type`, `price`, `importance`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Starter-Monthly', 'test', '299', 'test', 'test', NULL, NULL),
(2, 'Plus-Monthly', 'test', '99', 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan_features`
--

CREATE TABLE `plan_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_features`
--

INSERT INTO `plan_features` (`id`, `plan_id`, `features`, `company`, `created_at`, `updated_at`) VALUES
(1, 2, '1,2', 25, '2022-07-15 02:33:53', '2022-07-15 02:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Account Manager', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(2, 1, 'Administrator', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(3, 1, 'Designer', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'Developer', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(5, 1, 'Managing Director', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(6, 1, 'Project Manager', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(7, 1, 'Sales Manager', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(8, 18, 'Account Manager', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 18, 'Administrator', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(10, 18, 'Designer', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(11, 18, 'Developer', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(12, 18, 'Managing Director', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(13, 18, 'Project Manager', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(14, 18, 'Sales Manager', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(15, 21, 'Account Manager', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(16, 21, 'Administrator', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(17, 21, 'Designer', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(18, 21, 'Developer', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(19, 21, 'Managing Director', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(20, 21, 'Project Manager', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(21, 21, 'Sales Manager', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(22, 22, 'Account Manager', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(23, 22, 'Administrator', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(24, 22, 'Designer', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(25, 22, 'Developer', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(26, 22, 'Managing Director', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(27, 22, 'Project Manager', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(28, 22, 'Sales Manager', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(29, 24, 'Account Manager', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(30, 24, 'Administrator', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(31, 24, 'Designer', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(32, 24, 'Developer', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(33, 24, 'Managing Director', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(34, 24, 'Project Manager', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(35, 24, 'Sales Manager', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(36, 25, 'Account Manager', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(37, 25, 'Administrator', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(38, 25, 'Designer', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(39, 25, 'Developer', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(40, 25, 'Managing Director', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(41, 25, 'Project Manager', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(42, 25, 'Sales Manager', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(43, 39, 'Account Manager', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(44, 39, 'Administrator', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(45, 39, 'Designer', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(46, 39, 'Developer', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(47, 39, 'Managing Director', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(48, 39, 'Project Manager', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(49, 39, 'Sales Manager', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(50, 40, 'Account Manager', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(51, 40, 'Administrator', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(52, 40, 'Designer', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(53, 40, 'Developer', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(54, 40, 'Managing Director', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(55, 40, 'Project Manager', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(56, 40, 'Sales Manager', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(57, 41, 'Account Manager', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(58, 41, 'Administrator', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(59, 41, 'Designer', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(60, 41, 'Developer', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(61, 41, 'Managing Director', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(62, 41, 'Project Manager', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(63, 41, 'Sales Manager', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(64, 42, 'Account Manager', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(65, 42, 'Administrator', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(66, 42, 'Designer', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(67, 42, 'Developer', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(68, 42, 'Managing Director', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(69, 42, 'Project Manager', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(70, 42, 'Sales Manager', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(71, 43, 'Account Manager', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(72, 43, 'Administrator', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(73, 43, 'Designer', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(74, 43, 'Developer', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(75, 43, 'Managing Director', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(76, 43, 'Project Manager', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(77, 43, 'Sales Manager', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `company_id`, `project_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Company website', 'inactive', NULL, '2022-03-01 08:30:19'),
(2, 1, 'Compliance', 'active', NULL, NULL),
(3, 1, 'Market research', 'active', NULL, NULL),
(4, 1, 'Office', 'active', NULL, NULL),
(5, 1, 'Administration', 'active', NULL, NULL),
(6, 1, 'Recruitment', 'active', NULL, NULL),
(7, 18, 'Company website', 'active', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'Compliance', 'active', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 18, 'Market research', 'active', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(10, 18, 'Office Administration', 'active', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(11, 18, 'Recruitment', 'active', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(12, 21, 'Company website', 'active', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 21, 'Compliance', 'active', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(14, 21, 'Market research', 'active', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(15, 21, 'Office Administration', 'active', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(16, 21, 'Recruitment', 'active', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(17, 22, 'Company website', 'active', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(18, 22, 'Compliance', 'active', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(19, 22, 'Market research', 'active', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(20, 22, 'Office Administration', 'active', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(21, 22, 'Recruitment', 'active', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(22, 24, 'Company website', 'active', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(23, 24, 'Compliance', 'active', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(24, 24, 'Market research', 'active', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(25, 24, 'Office Administration', 'active', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(26, 24, 'Recruitment', 'active', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(28, 25, 'Company website', 'active', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(29, 25, 'Compliance', 'active', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(30, 25, 'Market research', 'active', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(31, 25, 'Office Administration', 'active', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(32, 25, 'Recruitment', 'active', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(33, 39, 'Company website', 'active', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(34, 39, 'Compliance', 'active', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(35, 39, 'Market research', 'active', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(36, 39, 'Office Administration', 'active', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(37, 39, 'Recruitment', 'active', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(38, 40, 'Company website', 'active', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(39, 40, 'Compliance', 'active', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(40, 40, 'Market research', 'active', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(41, 40, 'Office Administration', 'active', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(42, 40, 'Recruitment', 'active', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(43, 41, 'Company website', 'active', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(44, 41, 'Compliance', 'active', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(45, 41, 'Market research', 'active', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(46, 41, 'Office Administration', 'active', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(47, 41, 'Recruitment', 'active', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(48, 42, 'Company website', 'active', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(49, 42, 'Compliance', 'active', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(50, 42, 'Market research', 'active', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(51, 42, 'Office Administration', 'active', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(52, 42, 'Recruitment', 'active', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(53, 43, 'Company website', 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(54, 43, 'Compliance', 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(55, 43, 'Market research', 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(56, 43, 'Office Administration', 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(57, 43, 'Recruitment', 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'access owner access level', 'web', '1,2,3,4,5,6,7,8', '2022-01-05 04:27:48', '2022-01-05 04:27:48'),
(2, 'adminstrator access level', 'web', '1,2,3,4,5,6,7,8', '2022-01-05 04:29:01', '2022-01-05 04:29:01'),
(3, 'team manager access level', 'web', '1,2,3,4,5,6,7,8', '2022-01-05 04:30:06', '2022-01-05 04:30:06'),
(4, 'employee access level', 'web', '1,2,3,4,5,6,7,8', '2022-01-05 04:30:46', '2022-01-05 04:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 4),
(4, 2),
(4, 4),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 2),
(8, 2),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payment_methods`
--

CREATE TABLE `stripe_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_start` date DEFAULT NULL,
  `trial_end` date DEFAULT NULL,
  `subscription_start` date NOT NULL,
  `subscription_end` date NOT NULL,
  `cancellation_date` date DEFAULT NULL,
  `cancellation_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `superadmins`
--

CREATE TABLE `superadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `superadmins`
--

INSERT INTO `superadmins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sankar', 'sankar@gmail.com', '$2y$10$rM.IOyXsPFHd2UhfytoxYOen2YLsAmsSoAlqi37VMd9nWhQyIAnMC', NULL, '2022-01-05 03:31:34', '2022-01-05 03:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin_password_resets`
--

CREATE TABLE `superadmin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_manager` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `company_id`, `team_name`, `team_manager`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administration', '17,1,2,23', '2022-02-07 10:54:44', '2022-03-08 08:25:20'),
(2, 1, 'IT', '2,17,1', '2022-02-07 10:54:44', '2022-03-05 05:09:11'),
(3, 1, 'Management', NULL, '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'Marketing', NULL, '2022-02-07 10:54:44', '2022-03-08 08:12:51'),
(5, 1, 'Sales', NULL, '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(6, 18, 'Administration', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'IT', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'Management', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 18, 'Marketing', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(10, 18, 'Sales', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(11, 21, 'Administration', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(12, 21, 'IT', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 21, 'Management', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(14, 21, 'Marketing', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(15, 21, 'Sales', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(16, 22, 'Administration', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(17, 22, 'IT', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(18, 22, 'Management', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(19, 22, 'Marketing', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(20, 22, 'Sales', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(21, 24, 'Administration', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(22, 24, 'IT', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(23, 24, 'Management', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(24, 24, 'Marketing', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(25, 24, 'Sales', NULL, '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(26, 25, 'Administration', '27,28', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(27, 25, 'IT', '27', '2022-03-08 06:50:38', '2022-03-24 14:02:58'),
(28, 25, 'Management', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(29, 25, 'Marketing', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(30, 25, 'Sales', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(31, 39, 'Administration', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(32, 39, 'IT', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(33, 39, 'Management', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(34, 39, 'Marketing', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(35, 39, 'Sales', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(36, 40, 'Administration', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(37, 40, 'IT', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(38, 40, 'Management', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(39, 40, 'Marketing', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(40, 40, 'Sales', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(41, 41, 'Administration', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(42, 41, 'IT', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(43, 41, 'Management', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(44, 41, 'Marketing', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(45, 41, 'Sales', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(46, 42, 'Administration', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(47, 42, 'IT', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(48, 42, 'Management', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(49, 42, 'Marketing', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(50, 42, 'Sales', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(51, 43, 'Administration', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(52, 43, 'IT', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(53, 43, 'Management', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(54, 43, 'Marketing', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(55, 43, 'Sales', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `time_offs`
--

CREATE TABLE `time_offs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `time_off_policy_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_off_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allocation_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accrual_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accrual_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renewal_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deduction_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carryover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carryover_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_limit_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_offs`
--

INSERT INTO `time_offs` (`id`, `company_id`, `time_off_policy_id`, `time_off_type_id`, `allocation_method`, `accrual_allowance`, `accrual_period`, `renewal_date`, `frequency`, `usage_period`, `deduction_mode`, `absence`, `approval`, `carryover`, `carryover_limit`, `expiration`, `expiration_day`, `expiration_month`, `weekly_limit`, `weekly_limit_days`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, '22', '22', 'unlimited', 'unlimited', 'jan-dec', '1st January', NULL, NULL, NULL, NULL, 'true', NULL, NULL, NULL, NULL, NULL, 'false', 'up to 1 days per week', 'active', '2022-03-09 12:38:54', '2022-03-11 14:09:58'),
(2, 25, '22', '23', 'accrual', '24', 'jan-dec', '1st January', 'upfront yearly', 'In the current accrual period', 'Based on work schedule', 'false', 'false', 'employees cannot carry over ununsed days', '5', 'false', NULL, NULL, 'true', 'up to 1 days per week', 'active', '2022-03-09 12:39:33', '2022-03-09 12:39:33'),
(3, 25, '21', '22', 'unlimited', 'unlimited', 'jan-dec', '1st January', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'up to 1 days per week', 'active', '2022-03-09 14:05:52', '2022-03-11 01:09:00'),
(4, 25, '21', '23', 'accrual', '24', 'jan-dec', '1st January', 'upfront yearly', 'In the current accrual period', 'Based on work schedule', 'false', 'true', 'employees cannot carry over ununsed days', '5', 'false', NULL, NULL, 'true', 'up to 1 days per week', 'active', '2022-03-10 13:05:50', '2022-03-10 13:05:50'),
(5, 25, '21', '24', 'accrual', '24', 'jun-may', '1st June', 'upfront yearly', 'In the current accrual period', 'Based on work schedule', 'false', 'false', 'employees cannot carry over ununsed days', '5', 'false', NULL, NULL, 'true', 'up to 1 days per week', 'active', '2022-03-21 13:05:05', '2022-03-21 13:05:05'),
(6, 43, '42', '44', 'accrual', '12', 'jan-dec', '1st January', 'upfront yearly', 'In the current accrual period', 'Based on work schedule', NULL, 'false', 'employees cannot carry over ununsed days', '5', 'false', NULL, NULL, 'false', NULL, 'active', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `time_off_assigneds`
--

CREATE TABLE `time_off_assigneds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `timeoff_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_off_assigneds`
--

INSERT INTO `time_off_assigneds` (`id`, `company_id`, `timeoff_id`, `employee_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 25, '21', '25', 'assigned', '2022-03-08 06:50:37', '2022-03-20 10:30:55'),
(13, 1, '1', '1', 'assigned', '2022-03-09 05:23:01', '2022-03-09 05:23:01'),
(14, 1, '1', '2', 'assigned', '2022-03-09 05:23:01', '2022-03-09 05:23:01'),
(15, 1, '1', '17', 'assigned', '2022-03-09 05:23:01', '2022-03-09 05:23:01'),
(16, 1, '1', '23', 'assigned', '2022-03-09 05:23:01', '2022-03-09 05:23:01'),
(18, 25, '22', '27', 'assigned', '2022-03-09 11:05:17', '2022-03-09 11:05:17'),
(19, 25, '22', '28', 'assigned', '2022-03-09 11:06:08', '2022-03-09 11:06:08'),
(20, 25, '22', '29', 'assigned', '2022-03-10 01:09:12', '2022-03-10 01:09:12'),
(21, 25, '22', '30', 'assigned', '2022-03-22 13:41:38', '2022-03-22 13:41:38'),
(22, 25, '22', '31', 'assigned', '2022-03-22 13:42:49', '2022-03-22 13:42:49'),
(23, 18, '7', '32', 'assigned', '2022-05-26 04:23:56', '2022-05-26 04:23:56'),
(24, 18, '6', '33', 'assigned', '2022-05-26 06:55:41', '2022-05-26 06:55:41'),
(25, 18, '6', '34', 'assigned', '2022-06-23 00:35:06', '2022-06-23 00:35:06'),
(26, 18, '6', '35', 'assigned', '2022-06-23 02:04:27', '2022-06-23 02:04:27'),
(27, 43, '42', '43', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `time_off_balances`
--

CREATE TABLE `time_off_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeoff_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_off_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remaining_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_allowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_off_balances`
--

INSERT INTO `time_off_balances` (`id`, `employee_id`, `timeoff_id`, `time_off_type_id`, `total_allowance`, `remaining_allowance`, `used_allowance`, `time_from`, `time_from_day`, `time_to`, `time_to_day`, `note`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '25', '24', '2', '2022-02-17', 'full-day', '2022-02-18', 'full-day', 'test', '2022-02-17 03:13:05', '2022-02-17 03:13:05'),
(2, '1', '1', '1', '25', '24', '2', '2022-03-06', 'full-day', '2022-03-07', 'full-day', 'test', '2022-03-05 00:23:00', '2022-03-05 00:23:00'),
(3, '1', '1', '1', '25', '24', '2', '2022-03-09', 'full-day', '2022-03-10', 'full-day', 'test1', '2022-03-05 00:26:03', '2022-03-05 00:26:03'),
(5, '27', '1', '22', '12', '11', '2', '2022-03-11', 'full-day', '2022-03-12', 'full-day', 'test', '2022-03-09 13:07:57', '2022-03-09 13:07:57'),
(6, '25', '3', '22', '12', '11', '2', '2022-03-11', 'full-day', '2022-03-12', 'full-day', 'test', '2022-03-10 07:40:49', '2022-03-10 07:40:49'),
(7, '25', '3', '22', '12', '10', '3', '2022-03-15', 'full-day', '2022-03-17', 'full-day', 'test2222', '2022-03-10 07:49:21', '2022-03-10 07:49:21'),
(8, '25', '3', '22', '12', '10', '3', '2022-03-16', 'full-day', '2022-03-18', 'full-day', 'test', '2022-03-10 08:25:44', '2022-03-10 08:25:44'),
(9, '25', '3', '22', '12', '11', '2', '2022-03-24', 'full-day', '2022-03-25', 'full-day', 'test', '2022-03-10 12:05:44', '2022-03-10 12:05:44'),
(10, '25', '4', '23', '24', '23', '2', '2022-03-23', 'full-day', '2022-03-24', 'full-day', 'sick leave', '2022-03-10 13:40:56', '2022-03-10 13:40:56'),
(11, '25', '2', '23', '24', '22', '3', '2022-03-11', 'full-day', '2022-03-13', 'full-day', 'holiday leave', '2022-03-11 12:56:37', '2022-03-11 12:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `time_off_policies`
--

CREATE TABLE `time_off_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_off_policies`
--

INSERT INTO `time_off_policies` (`id`, `company_id`, `policy_name`, `approver`, `created_at`, `updated_at`) VALUES
(1, 1, 'Contractors', '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(2, 1, 'Full-time', '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(3, 1, 'Interns', '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'Part-time', '1', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(5, 18, 'Contractors', '18', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(6, 18, 'Full-time', '18', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'Interns', '18', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'Part-time', '18', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 21, 'Contractors', '21', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(10, 21, 'Full-time', '21', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(11, 21, 'Interns', '21', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(12, 21, 'Part-time', '21', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 22, 'Contractors', '22', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(14, 22, 'Full-time', '22', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(15, 22, 'Interns', '22', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(16, 22, 'Part-time', '22', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(17, 24, 'Contractors', '24', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(18, 24, 'Full-time', '24', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(19, 24, 'Interns', '24', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(20, 24, 'Part-time', '24', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(21, 25, 'Contractors', '25', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(22, 25, 'Full-time', '25', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(23, 25, 'Interns', '25', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(24, 25, 'Part-time', '25', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(25, 1, 'my-policy-1', '1', '2022-03-08 10:01:36', '2022-03-08 10:01:36'),
(26, 39, 'Full-time', '39', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(27, 39, 'Contractors', '39', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(28, 39, 'Interns', '39', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(29, 39, 'Part-time', '39', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(30, 40, 'Full-time', '40', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(31, 40, 'Contractors', '40', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(32, 40, 'Interns', '40', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(33, 40, 'Part-time', '40', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(34, 41, 'Full-time', '41', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(35, 41, 'Contractors', '41', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(36, 41, 'Interns', '41', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(37, 41, 'Part-time', '41', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(38, 42, 'Full-time', '42', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(39, 42, 'Contractors', '42', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(40, 42, 'Interns', '42', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(41, 42, 'Part-time', '42', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(42, 43, 'Full-time', '43', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(43, 43, 'Contractors', '43', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(44, 43, 'Interns', '43', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(45, 43, 'Part-time', '43', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `time_off_types`
--

CREATE TABLE `time_off_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_off_types`
--

INSERT INTO `time_off_types` (`id`, `company_id`, `type_name`, `type_color`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vacation', 'blue', 'true', 'inactive', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(2, 1, 'Sick leave', 'red', 'true', 'inactive', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(3, 1, 'Compensatory', 'green', 'true', 'inactive', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(4, 1, 'Remote', 'orange', 'true', 'inactive', '2022-02-07 10:54:44', '2022-02-07 10:54:44'),
(5, 18, 'Vacation', '#FFA800', 'true', 'inactive', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(6, 18, 'Sick leave', '#FFA800', 'true', 'inactive', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(7, 18, 'Compensatory', '#FFA800', 'true', 'inactive', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(8, 18, 'Remote', '#FFA800', 'true', 'inactive', '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(9, 21, 'Vacation', '#FFA800', 'true', 'inactive', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(10, 21, 'Sick leave', '#FFA800', 'true', 'inactive', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(11, 21, 'Compensatory', '#FFA800', 'true', 'inactive', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(12, 21, 'Remote', '#FFA800', 'true', 'inactive', '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(13, 22, 'Vacation', '#FFA800', 'true', 'inactive', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(14, 22, 'Sick leave', '#FFA800', 'true', 'inactive', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(15, 22, 'Compensatory', '#FFA800', 'true', 'inactive', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(16, 22, 'Remote', '#FFA800', 'true', 'inactive', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(17, 24, 'Vacation', '#FFA800', 'true', 'inactive', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(18, 24, 'Sick leave', '#FFA800', 'true', 'inactive', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(19, 24, 'Compensatory', '#FFA800', 'true', 'inactive', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(20, 24, 'Remote', '#FFA800', 'true', 'inactive', '2022-02-13 04:54:38', '2022-02-13 04:54:38'),
(21, 1, 'my-type', 'slateblue', 'true', 'inactive', '2022-03-05 01:32:02', '2022-03-05 01:32:02'),
(22, 25, 'Vacation', 'blue', 'true', 'inactive', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(23, 25, 'Sick leave', 'red', 'true', 'inactive', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(24, 25, 'Compensatory', 'green', 'true', 'inactive', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(25, 25, 'Remote', 'orange', 'true', 'inactive', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(26, NULL, 'unpaid leave', NULL, NULL, 'inactive', '2022-03-09 02:04:05', '2022-03-09 02:04:05'),
(27, 1, 'unpaid leave', 'orange', NULL, 'inactive', '2022-03-09 03:00:27', '2022-03-09 03:00:27'),
(28, 39, 'Vacation', 'blue', 'true', 'inactive', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(29, 39, 'Sick leave', 'red', 'true', 'inactive', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(30, 39, 'Compensatory', 'green', 'true', 'inactive', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(31, 39, 'Remote', 'orange', 'true', 'inactive', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(32, 40, 'Vacation', 'blue', 'true', 'inactive', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(33, 40, 'Sick leave', 'red', 'true', 'inactive', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(34, 40, 'Compensatory', 'green', 'true', 'inactive', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(35, 40, 'Remote', 'orange', 'true', 'inactive', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(36, 41, 'Vacation', 'blue', 'true', 'inactive', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(37, 41, 'Sick leave', 'red', 'true', 'inactive', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(38, 41, 'Compensatory', 'green', 'true', 'inactive', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(39, 41, 'Remote', 'orange', 'true', 'inactive', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(40, 42, 'Vacation', 'blue', 'true', 'inactive', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(41, 42, 'Sick leave', 'red', 'true', 'inactive', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(42, 42, 'Compensatory', 'green', 'true', 'inactive', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(43, 42, 'Remote', 'orange', 'true', 'inactive', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(44, 43, 'Vacation', 'blue', 'true', 'inactive', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(45, 43, 'Sick leave', 'red', 'true', 'inactive', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(46, 43, 'Compensatory', 'green', 'true', 'inactive', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(47, 43, 'Remote', 'orange', 'true', 'inactive', '2022-07-15 02:22:50', '2022-07-15 02:22:50');

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
-- Table structure for table `user_template_items`
--

CREATE TABLE `user_template_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `workflow_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_template_items`
--

INSERT INTO `user_template_items` (`id`, `company_id`, `workflow_id`, `template_id`, `assignee_id`, `type`, `item_title`, `question`, `link_url`, `description`, `status`, `completed`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '1', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test1', 'off', 'yes', '1', '2022-02-21 01:01:38', '2022-02-21 01:11:59'),
(2, 1, '1', '1', '1', 'task', 'Select suitable value option-2', NULL, 'www.google.com', 'test2', 'off', 'yes', '2', '2022-02-21 01:01:38', '2022-02-21 01:11:59'),
(3, 1, '2', '2', '1', 'question', '123', 'hello guys', 'www.google.com', 'test', 'off', 'yes', '3', '2022-02-21 01:13:12', '2022-02-21 01:17:12'),
(4, 1, '3', '2', '1', 'question', '123', 'hehe', 'www.google.com', 'test', 'off', 'yes', '4', '2022-02-21 01:19:40', '2022-02-21 01:26:12'),
(5, 1, '4', '2', '1', 'question', '123', 'hello', 'www.google.com', 'test', 'off', 'yes', '5', '2022-02-21 01:34:41', '2022-02-21 01:35:06'),
(6, 1, '4', '2', '1', 'task', 'Confirm menu', NULL, 'www.google.com', 'test222', 'off', 'yes', '6', '2022-02-21 01:34:41', '2022-02-21 01:35:10'),
(7, 1, '4', '2', '1', 'task', 'Accept resignation letter', NULL, 'www.google.com', 'kkkk', 'off', 'yes', '7', '2022-02-21 01:34:41', '2022-02-21 01:35:10'),
(8, 1, '5', '2', '1', 'question', '123', 'test', 'www.google.com', 'test', 'off', 'yes', '8', '2022-02-23 00:35:42', '2022-03-09 01:35:56'),
(9, 1, '5', '2', '1', 'task', 'Confirm menu', NULL, 'www.google.com', 'test222', 'off', 'yes', '9', '2022-02-23 00:35:42', '2022-03-09 01:36:18'),
(10, 1, '5', '2', '1', 'task', 'Accept resignation letter', NULL, 'www.google.com', 'kkkk', 'off', 'yes', '10', '2022-02-23 00:35:42', '2022-03-09 01:36:18'),
(11, 1, '5', '2', '1', 'question', 'Accept resignation letter', 'hello', 'www.google.com', 'test', 'off', 'yes', '11', '2022-02-23 00:35:42', '2022-03-09 01:36:06'),
(12, 1, '6', '2', '1', 'question', '123', 'test', 'www.google.com', 'test', 'off', 'yes', '12', '2022-02-23 02:40:52', '2022-03-09 00:48:21'),
(13, 1, '6', '2', '1', 'task', 'Confirm menu', NULL, 'www.google.com', 'test222', 'off', 'yes', '13', '2022-02-23 02:40:52', '2022-03-09 00:48:46'),
(14, 1, '6', '2', '1', 'task', 'Accept resignation letter', NULL, 'www.google.com', 'kkkk', 'off', 'yes', '14', '2022-02-23 02:40:52', '2022-03-09 00:48:46'),
(15, 1, '6', '2', '1', 'question', 'Accept resignation letter', 'test2', 'www.google.com', 'test', 'off', 'yes', '15', '2022-02-23 02:40:52', '2022-03-09 00:48:32'),
(16, 1, '6', '2', '1', 'task', NULL, NULL, 'https://www.google.com', 'test2', 'off', 'yes', '16', '2022-02-23 02:40:52', '2022-03-09 00:48:46'),
(17, 1, '6', '2', '1', 'question', 'Select suitable value option-4', 'hello', 'https://www.google.com', 'test1111', 'off', 'yes', '17', '2022-02-23 02:40:52', '2022-03-09 00:48:43'),
(18, 1, '7', '1', '23', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test1', 'off', 'yes', '18', '2022-03-09 00:47:18', '2022-03-09 00:54:47'),
(19, 1, '7', '1', '23', 'task', 'Select suitable value option-2', NULL, 'www.google.com', 'test2', 'off', 'yes', '19', '2022-03-09 00:47:18', '2022-03-09 00:55:25'),
(20, 25, '8', '3', '27', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test', 'off', 'yes', '20', '2022-03-19 08:37:00', '2022-03-19 08:41:18'),
(21, 25, '9', '3', '27', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test', 'on', 'no', '21', '2022-03-19 08:44:42', '2022-03-19 08:44:42'),
(22, NULL, '11', NULL, NULL, 'question', 'Is it ocmpleted?', NULL, 'https://www.rixosys.com', 'jkgutdyrsfd', 'on', 'no', NULL, '2022-06-03 00:56:45', '2022-06-03 00:56:45'),
(23, NULL, '11', NULL, NULL, 'item', 'test', NULL, NULL, 'test', 'on', 'no', NULL, '2022-06-03 00:57:55', '2022-06-03 00:57:55'),
(24, NULL, '11', NULL, NULL, 'question', 'what?', NULL, 'https://www.rixosys.com', 'test', 'on', 'no', NULL, '2022-06-03 00:59:32', '2022-06-03 00:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` (`id`, `company_id`, `template_id`, `template_name`, `assignee_id`, `completed`, `due_date`, `approver`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Company event preparation', '1', 'yes', '2022-02-23', '1', '2022-02-21 01:01:38', '2022-02-21 01:11:59'),
(2, 1, '2', 'Employee offboarding', '1', 'yes', '2022-02-26', '1', '2022-02-21 01:13:12', '2022-02-21 01:17:15'),
(3, 1, '2', 'Employee offboarding', '1', 'yes', '2022-02-24', '1', '2022-02-21 01:19:40', '2022-02-21 01:33:36'),
(4, 1, '2', 'Employee offboarding', '1', 'yes', '2022-02-26', '1', '2022-02-21 01:34:41', '2022-02-21 01:35:10'),
(5, 1, '2', 'Employee offboarding', '1', 'yes', '2022-02-25', '1', '2022-02-23 00:35:42', '2022-03-09 01:36:18'),
(6, 1, '2', 'Employee offboarding', '1', 'yes', '2022-02-24', '1', '2022-02-23 02:40:52', '2022-03-09 01:35:42'),
(7, 1, '1', 'Company event preparation', '23', 'yes', NULL, '1', '2022-03-09 00:47:18', '2022-03-09 01:35:26'),
(8, 25, '3', 'Company event preparation', '27', 'yes', '2022-03-17', '25', '2022-03-19 08:37:00', '2022-03-19 08:41:18'),
(9, 25, '3', 'Company event preparation', '27', 'no', '2022-03-19', '25', '2022-03-19 08:44:42', '2022-03-19 08:44:42'),
(10, 18, '4', 'mkbn', '18', 'yes', '2022-05-31', '18', '2022-05-26 23:44:31', '2022-06-01 08:36:11'),
(11, 18, '5', 'accountant', '32', 'no', '2022-06-08', '18', '2022-06-01 00:29:46', '2022-06-01 00:29:46'),
(12, 18, '5', 'accountant', '20', 'no', '2022-06-22', '18', '2022-06-01 01:08:48', '2022-06-01 01:08:48'),
(13, 18, '4', 'mkbn', '1', 'yes', '2022-06-13', '18', '2022-06-01 02:33:02', '2022-06-23 02:45:14'),
(14, 18, '5', 'accountant', '1', 'no', '2022-06-13', '18', '2022-06-01 02:34:23', '2022-06-01 02:34:23'),
(15, 18, '4', 'mkbn', '1', 'no', '2022-06-08', '18', '2022-06-01 02:37:05', '2022-06-01 02:37:05'),
(16, 18, '5', 'accountant', '1', 'no', '2022-06-10', '18', '2022-06-01 02:40:05', '2022-06-01 02:40:05'),
(17, 18, '4', 'mkbn', '1', 'yes', '2022-06-08', '18', '2022-06-01 02:43:20', '2022-06-01 04:39:34'),
(18, 18, '4', 'mkbn', '1', 'no', '2022-06-08', '18', '2022-06-01 02:43:51', '2022-06-01 02:43:51'),
(19, 18, '5', 'accountant', '1', 'yes', '2022-06-06', '18', '2022-06-01 04:06:41', '2022-06-01 04:52:48'),
(20, 18, '4', 'mkbn', '1', 'yes', '2022-06-16', '18', '2022-06-01 04:29:37', '2022-06-01 04:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `workflow_templates`
--

CREATE TABLE `workflow_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflow_templates`
--

INSERT INTO `workflow_templates` (`id`, `company_id`, `template_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Company event preparation', '2022-02-16 11:00:46', '2022-02-16 11:00:46'),
(2, 1, 'Employee offboarding', '2022-02-16 23:45:30', '2022-02-16 23:45:30'),
(3, 25, 'Company event preparation', '2022-03-19 08:36:23', '2022-03-19 08:36:23'),
(4, 18, 'mkbn', '2022-05-26 05:01:43', '2022-05-26 05:01:43'),
(5, 18, 'accountant', '2022-06-01 00:23:24', '2022-06-01 00:23:24'),
(6, 18, 'hvhvhv', '2022-06-01 06:00:24', '2022-06-01 06:00:24'),
(7, 18, 'developer', '2022-06-02 02:08:28', '2022-06-02 02:08:28'),
(8, 18, 'accountant', '2022-06-02 04:28:24', '2022-06-02 04:28:24'),
(9, 18, 'accountant', '2022-06-02 05:55:26', '2022-06-02 05:55:26'),
(10, 18, 'developer', '2022-06-03 01:19:25', '2022-06-03 01:19:25'),
(11, 18, 'accountant', '2022-06-06 08:05:17', '2022-06-06 08:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `workflow_template_items`
--

CREATE TABLE `workflow_template_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflow_template_items`
--

INSERT INTO `workflow_template_items` (`id`, `company_id`, `template_id`, `type`, `item_title`, `question`, `link_url`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test1', '1', '2022-02-16 12:26:46', '2022-02-16 12:27:26'),
(2, 1, '1', 'task', 'Select suitable value option-2', NULL, 'www.google.com', 'test2', '2', '2022-02-16 12:27:06', '2022-02-16 12:27:26'),
(3, 1, '2', 'question', '123', NULL, 'www.google.com', 'test', '2', '2022-02-16 23:45:45', '2022-02-21 01:41:56'),
(4, 1, '2', 'task', 'Confirm menu', NULL, 'www.google.com', 'test222', '1', '2022-02-21 01:34:13', '2022-02-21 01:41:56'),
(5, 1, '2', 'task', 'Accept resignation letter', NULL, 'www.google.com', 'kkkk', '3', '2022-02-21 01:34:27', '2022-02-21 01:41:56'),
(7, 1, '2', 'question', 'Accept resignation letter', NULL, 'www.google.com', 'test', '7', '2022-02-23 00:35:04', '2022-02-23 00:35:04'),
(8, 1, '2', 'task', NULL, NULL, 'https://www.google.com', 'test2', '8', '2022-02-23 02:33:11', '2022-02-23 02:33:11'),
(9, 1, '2', 'question', 'Select suitable value option-4', NULL, 'https://www.google.com', 'test1111', '9', '2022-02-23 02:40:03', '2022-02-23 02:40:03'),
(10, 1, '1', 'task', 'Select suitable value option-3', NULL, 'https://www.google.com/', 'suitable-3', '10', '2022-03-09 10:35:40', '2022-03-09 10:35:40'),
(11, 25, '3', 'task', 'Select suitable value option', NULL, 'www.google.com', 'test', '11', '2022-03-19 08:36:40', '2022-03-19 08:36:40'),
(12, 18, '10', 'question', 'Is it ocmpleted?', NULL, 'https://www.rixosys.com', 'test sankar', '12', '2022-06-03 01:45:08', '2022-06-03 01:45:08'),
(13, 18, '10', 'item', 'test for item', NULL, 'https://www.youtube.com', 'testing', '13', '2022-06-03 02:58:54', '2022-06-03 02:58:54'),
(15, 18, '8', 'question', 'what is your name?', NULL, 'https://www.youtube.com', 'name de yaaaar', '15', '2022-06-03 04:48:01', '2022-06-03 04:48:01'),
(16, 18, '11', 'question', 'Is it ocmpleted?', NULL, 'https://www.rixosys.com', 'wdqwdwqd', '16', '2022-06-06 08:06:00', '2022-06-06 08:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `workschedule_workweeks`
--

CREATE TABLE `workschedule_workweeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workschedule_id` bigint(20) DEFAULT NULL,
  `working_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `break_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `break_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workschedule_workweeks`
--

INSERT INTO `workschedule_workweeks` (`id`, `workschedule_id`, `working_day`, `work_start`, `work_end`, `break_start`, `break_end`, `expected_hour`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monday', '09:00', '17:30', NULL, NULL, '08:30', '2022-01-11 06:42:19', '2022-03-01 07:43:23'),
(2, 1, 'Tuesday', '09:00', '17:30', '13:00', '13:30', '08:00', '2022-01-11 06:42:19', '2022-02-02 05:46:31'),
(3, 1, 'Wednesday', '09:00', '17:00', '13:00', '13:30', '07:30', '2022-01-11 06:42:19', '2022-02-02 05:47:17'),
(4, 1, 'Thursday', '09:00', '18:30', '14:00', '15:00', '08:30', '2022-01-11 06:42:19', '2022-02-03 01:25:03'),
(5, 1, 'Friday', '10:00', '18:00', NULL, NULL, '08:00', '2022-01-11 06:42:19', '2022-03-01 08:19:23'),
(6, 1, 'Saturday', NULL, NULL, NULL, NULL, '00:00', '2022-01-11 06:42:19', '2022-02-21 03:24:18'),
(7, 1, 'Sunday', NULL, NULL, NULL, NULL, '00:00', '2022-01-11 06:42:19', '2022-02-21 03:24:18'),
(8, 2, 'Monday', '09:00', '17:00', NULL, NULL, '08:00', '2022-01-12 01:08:48', '2022-02-07 01:27:29'),
(9, 2, 'Tuesday', '09:00', '17:00', NULL, NULL, '08:00', '2022-01-12 01:08:48', '2022-02-01 08:25:29'),
(10, 2, 'Wednesday', '09:00', '17:30', '14:00', '14:30', '08:00', '2022-01-12 01:08:48', '2022-02-02 06:28:09'),
(11, 2, 'Thursday', '09:00', '17:30', '14:00', '14:30', '08:00', '2022-01-12 01:08:48', '2022-02-03 01:25:35'),
(12, 2, 'Friday', '09:00', '17:30', NULL, NULL, '08:30', '2022-01-12 01:08:48', '2022-01-14 04:45:11'),
(13, 2, 'Saturday', '09:00', '17:30', NULL, NULL, '08:30', '2022-01-12 01:08:48', '2022-02-05 00:18:37'),
(14, 2, 'Sunday', NULL, NULL, NULL, NULL, '00:00', '2022-01-12 01:08:48', '2022-01-14 04:45:11'),
(15, 3, 'Monday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(16, 3, 'Tuesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(17, 3, 'Wednesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(18, 3, 'Thursday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(19, 3, 'Friday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(20, 3, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(21, 3, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(22, 4, 'Monday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(23, 4, 'Tuesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(24, 4, 'Wednesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(25, 4, 'Thursday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(26, 4, 'Friday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(27, 4, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(28, 4, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(29, 5, 'Monday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(30, 5, 'Tuesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(31, 5, 'Wednesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(32, 5, 'Thursday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(33, 5, 'Friday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(34, 5, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(35, 5, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(36, 6, 'Monday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(37, 6, 'Tuesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(38, 6, 'Wednesday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(39, 6, 'Thursday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(40, 6, 'Friday', '09:00', '05:00', NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(41, 6, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(42, 6, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(43, 7, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(44, 7, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(45, 7, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(46, 7, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(47, 7, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(48, 7, 'Saturday', NULL, NULL, NULL, NULL, 'Day off', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(49, 7, 'Sunday', NULL, NULL, NULL, NULL, 'Day off', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(50, 8, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(51, 8, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(52, 8, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(53, 8, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(54, 8, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(55, 8, 'Saturday', NULL, NULL, NULL, NULL, 'Day off', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(56, 8, 'Sunday', NULL, NULL, NULL, NULL, 'Day off', '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(57, 9, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(58, 9, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(59, 9, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(60, 9, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(61, 9, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(62, 9, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(63, 9, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(64, 10, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(65, 10, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(66, 10, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(67, 10, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(68, 10, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(69, 10, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(70, 10, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(71, 11, 'Monday', '09:00', '05:00', NULL, NULL, '20:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(72, 11, 'Tuesday', '09:00', '05:00', NULL, NULL, '20:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(73, 11, 'Wednesday', '09:00', '05:00', NULL, NULL, '20:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(74, 11, 'Thursday', '09:00', '05:00', NULL, NULL, '20:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(75, 11, 'Friday', '09:00', '05:00', NULL, NULL, '20:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(76, 11, 'Saturday', NULL, NULL, NULL, NULL, '00:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(77, 11, 'Sunday', NULL, NULL, NULL, NULL, '00:00', '2022-03-08 06:50:38', '2022-03-21 07:20:07'),
(78, 12, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(79, 12, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(80, 12, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(81, 12, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(82, 12, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(83, 12, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(84, 12, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(85, 13, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(86, 13, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(87, 13, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(88, 13, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(89, 13, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(90, 13, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(91, 13, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(92, 14, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(93, 14, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(94, 14, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(95, 14, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(96, 14, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(97, 14, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(98, 14, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(99, 15, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(100, 15, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(101, 15, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(102, 15, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(103, 15, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(104, 15, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(105, 15, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(106, 16, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(107, 16, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(108, 16, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(109, 16, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(110, 16, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(111, 16, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(112, 16, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(113, 17, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(114, 17, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(115, 17, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(116, 17, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(117, 17, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(118, 17, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(119, 17, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(120, 18, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(121, 18, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(122, 18, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(123, 18, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(124, 18, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(125, 18, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(126, 18, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(127, 19, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(128, 19, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(129, 19, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(130, 19, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(131, 19, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(132, 19, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(133, 19, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(134, 20, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(135, 20, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(136, 20, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(137, 20, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(138, 20, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(139, 20, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(140, 20, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(141, 21, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(142, 21, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(143, 21, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(144, 21, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(145, 21, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(146, 21, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(147, 21, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(148, 22, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(149, 22, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(150, 22, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(151, 22, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(152, 22, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(153, 22, 'Saturday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(154, 22, 'Sunday', NULL, NULL, NULL, NULL, NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `workweeks`
--

CREATE TABLE `workweeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `working_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `break_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `break_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workweeks`
--

INSERT INTO `workweeks` (`id`, `working_day`, `work_start`, `work_end`, `break_start`, `break_end`, `expected_hours`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '09:00', '05:00', NULL, NULL, '08:00', NULL, NULL),
(2, 'Tuesday', '09:00', '05:00', NULL, NULL, '08:00', NULL, NULL),
(3, 'Wednesday', '09:00', '05:00', NULL, NULL, '08:00', NULL, NULL),
(4, 'Thursday', '09:00', '05:00', NULL, NULL, '08:00', NULL, NULL),
(5, 'Friday', '09:00', '05:00', NULL, NULL, '08:00', NULL, NULL),
(6, 'Saturday', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sunday', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_schedules`
--

CREATE TABLE `work_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `work_schedule_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_overtime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overtime_frequency` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_timesheet_editing` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_timesheet_days` bigint(100) DEFAULT NULL,
  `meal_vouchers` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meal_vouchers_days` bigint(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_schedules`
--

INSERT INTO `work_schedules` (`id`, `company_id`, `work_schedule_name`, `track_overtime`, `overtime_frequency`, `limit_timesheet_editing`, `limit_timesheet_days`, `meal_vouchers`, `meal_vouchers_days`, `created_at`, `updated_at`) VALUES
(1, 1, 'Full-time(40h)', 'true', 'daily', 'false', 5, NULL, NULL, '2022-01-11 06:42:19', '2022-03-07 09:01:52'),
(2, 1, 'Full-time(35h)', 'true', 'daily', NULL, NULL, NULL, NULL, '2022-01-12 01:08:48', '2022-03-07 08:16:59'),
(3, 18, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(4, 18, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 01:18:00', '2022-02-13 01:18:00'),
(5, 21, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 02:45:02', '2022-02-13 02:45:02'),
(6, 21, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 02:45:03', '2022-02-13 02:45:03'),
(7, 22, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(8, 22, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 02:56:25', '2022-02-13 02:56:25'),
(9, 24, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(10, 24, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-02-13 04:54:39', '2022-02-13 04:54:39'),
(11, 25, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(12, 25, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-03-08 06:50:38', '2022-03-08 06:50:38'),
(13, 39, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(14, 39, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 00:59:55', '2022-07-15 00:59:55'),
(15, 40, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(16, 40, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:05:34', '2022-07-15 01:05:34'),
(17, 41, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(18, 41, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:07:40', '2022-07-15 01:07:40'),
(19, 42, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(20, 42, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 01:48:15', '2022-07-15 01:48:15'),
(21, 43, 'Full-time(40h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50'),
(22, 43, 'Full-time(35h)', 'false', NULL, 'true', 30, '6', NULL, '2022-07-15 02:22:50', '2022-07-15 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `work_schedule_breaks`
--

CREATE TABLE `work_schedule_breaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workschedule_id` bigint(20) DEFAULT NULL,
  `workschedule_break_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workschedule_worktime_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workschedule_break_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_compensation`
--
ALTER TABLE `additional_compensation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_types`
--
ALTER TABLE `additional_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `all_time_off_balances`
--
ALTER TABLE `all_time_off_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closed_additional_compensation`
--
ALTER TABLE `closed_additional_compensation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closed_payroll_compensation`
--
ALTER TABLE `closed_payroll_compensation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closed_payruns`
--
ALTER TABLE `closed_payruns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closed_payrun_salaries`
--
ALTER TABLE `closed_payrun_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_announcements`
--
ALTER TABLE `company_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_applications`
--
ALTER TABLE `company_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_assets`
--
ALTER TABLE `company_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_currencies`
--
ALTER TABLE `company_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_documents`
--
ALTER TABLE `company_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_folders`
--
ALTER TABLE `company_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_holidays`
--
ALTER TABLE `company_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_key_contacts`
--
ALTER TABLE `company_key_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payrolls`
--
ALTER TABLE `company_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposal_email_domains`
--
ALTER TABLE `disposal_email_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_invitations`
--
ALTER TABLE `email_invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_assigned_breaks`
--
ALTER TABLE `employee_assigned_breaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_assigned_projects`
--
ALTER TABLE `employee_assigned_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_folders`
--
ALTER TABLE `employee_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_notes`
--
ALTER TABLE `employee_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_personals`
--
ALTER TABLE `employee_personals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_timeoff_adjustments`
--
ALTER TABLE `employee_timeoff_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses_categories`
--
ALTER TABLE `expenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_roles`
--
ALTER TABLE `hr_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_balances`
--
ALTER TABLE `overtime_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_compensation`
--
ALTER TABLE `payroll_compensation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_infos`
--
ALTER TABLE `payroll_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payruns`
--
ALTER TABLE `payruns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrun_salaries`
--
ALTER TABLE `payrun_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_features`
--
ALTER TABLE `plan_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payment_methods`
--
ALTER TABLE `stripe_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmins`
--
ALTER TABLE `superadmins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `superadmins_email_unique` (`email`);

--
-- Indexes for table `superadmin_password_resets`
--
ALTER TABLE `superadmin_password_resets`
  ADD KEY `superadmin_password_resets_email_index` (`email`),
  ADD KEY `superadmin_password_resets_token_index` (`token`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_offs`
--
ALTER TABLE `time_offs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_off_assigneds`
--
ALTER TABLE `time_off_assigneds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_off_balances`
--
ALTER TABLE `time_off_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_off_policies`
--
ALTER TABLE `time_off_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_off_types`
--
ALTER TABLE `time_off_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_template_items`
--
ALTER TABLE `user_template_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workflow_templates`
--
ALTER TABLE `workflow_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workflow_template_items`
--
ALTER TABLE `workflow_template_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workschedule_workweeks`
--
ALTER TABLE `workschedule_workweeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workweeks`
--
ALTER TABLE `workweeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_schedules`
--
ALTER TABLE `work_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_schedule_breaks`
--
ALTER TABLE `work_schedule_breaks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_compensation`
--
ALTER TABLE `additional_compensation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `additional_types`
--
ALTER TABLE `additional_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `all_time_off_balances`
--
ALTER TABLE `all_time_off_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `closed_additional_compensation`
--
ALTER TABLE `closed_additional_compensation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `closed_payroll_compensation`
--
ALTER TABLE `closed_payroll_compensation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `closed_payruns`
--
ALTER TABLE `closed_payruns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `closed_payrun_salaries`
--
ALTER TABLE `closed_payrun_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_announcements`
--
ALTER TABLE `company_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_applications`
--
ALTER TABLE `company_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_assets`
--
ALTER TABLE `company_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_currencies`
--
ALTER TABLE `company_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_documents`
--
ALTER TABLE `company_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company_folders`
--
ALTER TABLE `company_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `company_holidays`
--
ALTER TABLE `company_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_key_contacts`
--
ALTER TABLE `company_key_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_payrolls`
--
ALTER TABLE `company_payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disposal_email_domains`
--
ALTER TABLE `disposal_email_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_invitations`
--
ALTER TABLE `email_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_assigned_breaks`
--
ALTER TABLE `employee_assigned_breaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_assigned_projects`
--
ALTER TABLE `employee_assigned_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_folders`
--
ALTER TABLE `employee_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `employee_notes`
--
ALTER TABLE `employee_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_personals`
--
ALTER TABLE `employee_personals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_timeoff_adjustments`
--
ALTER TABLE `employee_timeoff_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `expenses_categories`
--
ALTER TABLE `expenses_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `hr_roles`
--
ALTER TABLE `hr_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `overtime_balances`
--
ALTER TABLE `overtime_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_compensation`
--
ALTER TABLE `payroll_compensation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payroll_infos`
--
ALTER TABLE `payroll_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payruns`
--
ALTER TABLE `payruns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payrun_salaries`
--
ALTER TABLE `payrun_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan_features`
--
ALTER TABLE `plan_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_payment_methods`
--
ALTER TABLE `stripe_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `superadmins`
--
ALTER TABLE `superadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `time_offs`
--
ALTER TABLE `time_offs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_off_assigneds`
--
ALTER TABLE `time_off_assigneds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `time_off_balances`
--
ALTER TABLE `time_off_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `time_off_policies`
--
ALTER TABLE `time_off_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `time_off_types`
--
ALTER TABLE `time_off_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_template_items`
--
ALTER TABLE `user_template_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `workflow_templates`
--
ALTER TABLE `workflow_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `workflow_template_items`
--
ALTER TABLE `workflow_template_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `workschedule_workweeks`
--
ALTER TABLE `workschedule_workweeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `workweeks`
--
ALTER TABLE `workweeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `work_schedules`
--
ALTER TABLE `work_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `work_schedule_breaks`
--
ALTER TABLE `work_schedule_breaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
